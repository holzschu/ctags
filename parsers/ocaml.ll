; ModuleID = 'ocaml.c'
source_filename = "ocaml.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct._sOcamlContext = type { i32, i32, void (%struct.sVString*, i32, i32)*, %struct.sVString* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct._lexingState = type { %struct.sVString*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"OCaml\00", align 1
@OcamlKinds = internal global [12 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* null], align 8
@OcamlKeywordTable = internal constant [44 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 25 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 26 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 27 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 28 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 29 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 30 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 31 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i32 46 }, %struct.keywordTable { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i32 47 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 42 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 42 }], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Object's method\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Module or functor\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Global variable\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Signature item\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Type name\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"A function\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Constructor\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"A constructor\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RecordField\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"A 'structure' field\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"An exception\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"beginEnd\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"A begin end ???\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"A match ???\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"mli\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"aug\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"tuareg\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"caml\00", align 1
@tempIdent = internal global %struct.sVString* null, align 8
@lastModule = internal global %struct.sVString* null, align 8
@lastClass = internal global %struct.sVString* null, align 8
@ocaLineNumber = internal global i64 0, align 8
@ocaFilePosition = internal global %struct._MIOPos zeroinitializer, align 8
@toDoNext = internal global void (%struct.sVString*, i32, i32)* null, align 8
@stack = internal global [256 x %struct._sOcamlContext] zeroinitializer, align 8
@stackIndex = internal global i32 0, align 4
@globalScope.previousParser = internal global void (%struct.sVString*, i32, i32)* @globalScope, align 8
@needStrongPoping = internal global i8 0, align 1
@comeAfter = internal global void (%struct.sVString*, i32, i32)* null, align 8
@waitedToken = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [28 x i8] c"OCaml Maximum depth reached\00", align 1
@tempTag = internal global %struct.sTagEntryInfo zeroinitializer, align 8
@terminatingToken = internal global i32 0, align 4
@contextualTillToken.parentheses = internal global i32 0, align 4
@contextualTillToken.bracket = internal global i32 0, align 4
@contextualTillToken.curly = internal global i32 0, align 4
@exportLocalInfo = internal global i8 0, align 1
@dirtySpecialParam = internal global i8 0, align 1
@matchPattern.braceCount = internal global i32 0, align 4
@parseLabel.parCount = internal global i32 0, align 4
@parseOptionnal.parCount = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@Lang_Ocaml = internal global i32 0, align 4
@isOperator = internal global [256 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"fun\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"functor\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"mod \00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"land \00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"lor \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"lxor \00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"lsl \00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"lsr \00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"asr\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @OcamlParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([12 x %struct.sKindDefinition], [12 x %struct.sKindDefinition]* @OcamlKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 12, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findOcamlTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 6
  store void (i32)* @ocamlInitialize, void (i32)** %initialize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([44 x %struct.keywordTable], [44 x %struct.keywordTable]* @OcamlKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 19
  store i32 44, i32* %keywordCount, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %8
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findOcamlTags() #0 {
entry:
  %st = alloca %struct._lexingState, align 8
  %tok = alloca i32, align 4
  %nextSt = alloca %struct._lexingState, align 8
  %nextTok = alloca i32, align 4
  %temp_cp = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %tmp14 = alloca %struct._MIOPos, align 8
  %tmp20 = alloca %struct._MIOPos, align 8
  call void @initStack()
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** @tempIdent, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** @lastModule, align 8
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** @lastClass, align 8
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %temp_cp, align 8
  %call4 = call %struct.sVString* @vStringNew()
  %name = getelementptr inbounds %struct._lexingState, %struct._lexingState* %nextSt, i32 0, i32 0
  store %struct.sVString* %call4, %struct.sVString** %name, align 8
  %call5 = call i8* @readLineFromInputFile()
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %nextSt, i32 0, i32 1
  store i8* %call5, i8** %cp, align 8
  %call6 = call i64 @getInputLineNumber()
  store i64 %call6, i64* @ocaLineNumber, align 8
  %call7 = call [2 x i64] @getInputFilePosition()
  %0 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call7, [2 x i64]* %0, align 8
  %1 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* @ocaFilePosition to i8*), i8* align 8 %1, i64 16, i1 false)
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %call8 = call i32 @lex(%struct._lexingState* %nextSt)
  store i32 %call8, i32* %nextTok, align 4
  %2 = load i32, i32* %nextTok, align 4
  %cmp = icmp ne i32 %2, 50
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @computeModuleName()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %struct._lexingState* %st to i8*
  %4 = bitcast %struct._lexingState* %nextSt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  %name9 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  %5 = load %struct.sVString*, %struct.sVString** %name9, align 8
  %call10 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %5)
  %name11 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  store %struct.sVString* %call10, %struct.sVString** %name11, align 8
  %6 = load %struct.sVString*, %struct.sVString** %temp_cp, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %cp12 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 1
  store i8* %7, i8** %cp12, align 8
  %8 = load i32, i32* %nextTok, align 4
  store i32 %8, i32* %tok, align 4
  %call13 = call i64 @getInputLineNumber()
  store i64 %call13, i64* @ocaLineNumber, align 8
  %call15 = call [2 x i64] @getInputFilePosition()
  %9 = bitcast %struct._MIOPos* %tmp14 to [2 x i64]*
  store [2 x i64] %call15, [2 x i64]* %9, align 8
  %10 = bitcast %struct._MIOPos* %tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* @ocaFilePosition to i8*), i8* align 8 %10, i64 16, i1 false)
  %call16 = call i32 @lex(%struct._lexingState* %nextSt)
  store i32 %call16, i32* %nextTok, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end
  %11 = load i32, i32* %tok, align 4
  %cmp17 = icmp ne i32 %11, 50
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %name18 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  %13 = load %struct.sVString*, %struct.sVString** %name18, align 8
  %14 = load i32, i32* %tok, align 4
  %15 = load i32, i32* %nextTok, align 4
  call void %12(%struct.sVString* %13, i32 %14, i32 %15)
  %16 = load i32, i32* %nextTok, align 4
  store i32 %16, i32* %tok, align 4
  %call19 = call i64 @getInputLineNumber()
  store i64 %call19, i64* @ocaLineNumber, align 8
  %call21 = call [2 x i64] @getInputFilePosition()
  %17 = bitcast %struct._MIOPos* %tmp20 to [2 x i64]*
  store [2 x i64] %call21, [2 x i64]* %17, align 8
  %18 = bitcast %struct._MIOPos* %tmp20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._MIOPos* @ocaFilePosition to i8*), i8* align 8 %18, i64 16, i1 false)
  %19 = load i32, i32* %nextTok, align 4
  %cmp22 = icmp ne i32 %19, 50
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.body
  %20 = load %struct.sVString*, %struct.sVString** %temp_cp, align 8
  %cp24 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %nextSt, i32 0, i32 1
  %21 = load i8*, i8** %cp24, align 8
  call void @vStringCopyS(%struct.sVString* %20, i8* %21)
  %22 = load %struct.sVString*, %struct.sVString** %temp_cp, align 8
  %buffer25 = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer25, align 8
  %cp26 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 1
  store i8* %23, i8** %cp26, align 8
  %name27 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  %24 = load %struct.sVString*, %struct.sVString** %name27, align 8
  %name28 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %nextSt, i32 0, i32 0
  %25 = load %struct.sVString*, %struct.sVString** %name28, align 8
  call void @vStringCopy(%struct.sVString* %24, %struct.sVString* %25)
  %call29 = call i32 @lex(%struct._lexingState* %nextSt)
  store i32 %call29, i32* %nextTok, align 4
  br label %if.end30

if.else:                                          ; preds = %while.body
  br label %while.end

if.end30:                                         ; preds = %if.then23
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %name31 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %st, i32 0, i32 0
  %26 = load %struct.sVString*, %struct.sVString** %name31, align 8
  call void @vStringDelete(%struct.sVString* %26)
  %name32 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %nextSt, i32 0, i32 0
  %27 = load %struct.sVString*, %struct.sVString** %name32, align 8
  call void @vStringDelete(%struct.sVString* %27)
  %28 = load %struct.sVString*, %struct.sVString** %temp_cp, align 8
  call void @vStringDelete(%struct.sVString* %28)
  %29 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  call void @vStringDelete(%struct.sVString* %29)
  %30 = load %struct.sVString*, %struct.sVString** @lastModule, align 8
  call void @vStringDelete(%struct.sVString* %30)
  %31 = load %struct.sVString*, %struct.sVString** @lastClass, align 8
  call void @vStringDelete(%struct.sVString* %31)
  call void @clearStack()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ocamlInitialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_Ocaml, align 4
  call void @initOperatorTable()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initStack() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.sVString* @vStringNew()
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 3
  store %struct.sVString* %call, %struct.sVString** %contextName, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @stackIndex, align 4
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @globalScope(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  %popped = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 27, label %sw.bb1
    i32 2, label %sw.bb2
    i32 18, label %sw.bb3
    i32 6, label %sw.bb4
    i32 17, label %sw.bb11
    i32 28, label %sw.bb12
    i32 14, label %sw.bb13
    i32 7, label %sw.bb14
    i32 48, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  call void @cleanupPreviousParser()
  %1 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @globalScope.previousParser, align 8
  store void (%struct.sVString*, i32, i32)* %1, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @cleanupPreviousParser()
  store void (%struct.sVString*, i32, i32)* @typeDecl, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @typeDecl, void (%struct.sVString*, i32, i32)** @globalScope.previousParser, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @cleanupPreviousParser()
  store void (%struct.sVString*, i32, i32)* @classDecl, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @classDecl, void (%struct.sVString*, i32, i32)** @globalScope.previousParser, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @cleanupPreviousParser()
  store void (%struct.sVString*, i32, i32)* @moduleDecl, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @moduleDecl, void (%struct.sVString*, i32, i32)** @globalScope.previousParser, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call = call i32 @killCurrentState()
  store i32 %call, i32* %popped, align 4
  %2 = load i32, i32* %whatNext.addr, align 4
  %cmp = icmp eq i32 %2, 41
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb4
  %3 = load i32, i32* %popped, align 4
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store void (%struct.sVString*, i32, i32)* @moduleDecl, void (%struct.sVString*, i32, i32)** @globalScope.previousParser, align 8
  store void (%struct.sVString*, i32, i32)* @moduleSpecif, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %sw.bb4
  %4 = load i32, i32* %whatNext.addr, align 4
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %if.else
  %5 = load i32, i32* %popped, align 4
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true7
  store void (%struct.sVString*, i32, i32)* @moduleDecl, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true7, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  store i8 0, i8* @needStrongPoping, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @cleanupPreviousParser()
  store void (%struct.sVString*, i32, i32)* @methodDecl, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @val, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @cleanupPreviousParser()
  store void (%struct.sVString*, i32, i32)* @globalLet, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @globalLet, void (%struct.sVString*, i32, i32)** @globalScope.previousParser, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @cleanupPreviousParser()
  store void (%struct.sVString*, i32, i32)* @exceptionDecl, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @globalScope.previousParser, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %if.end10, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @lex(%struct._lexingState* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct._lexingState*, align 8
  %retType = alloca i32, align 4
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %2, i32 0, i32 1
  %3 = load i8*, i8** %cp1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %5 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call = call i8* @readLineFromInputFile()
  %6 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp4 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %6, i32 0, i32 1
  store i8* %call, i8** %cp4, align 8
  %7 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp5 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %7, i32 0, i32 1
  %8 = load i8*, i8** %cp5, align 8
  %cmp6 = icmp eq i8* %8, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 50, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %9 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp8 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %9, i32 0, i32 1
  %10 = load i8*, i8** %cp8, align 8
  %11 = load i8, i8* %10, align 1
  %call9 = call zeroext i1 @isAlpha(i8 signext %11)
  br i1 %call9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %while.end
  %12 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @readIdentifier(%struct._lexingState* %12)
  %13 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name = getelementptr inbounds %struct._lexingState, %struct._lexingState* %13, i32 0, i32 0
  %14 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer, align 8
  %16 = load i32, i32* @Lang_Ocaml, align 4
  %call11 = call i32 @lookupKeyword(i8* %15, i32 %16)
  store i32 %call11, i32* %retType, align 4
  %17 = load i32, i32* %retType, align 4
  %cmp12 = icmp eq i32 %17, -1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  store i32 32, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then10
  %18 = load i32, i32* %retType, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else15:                                        ; preds = %while.end
  %19 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp16 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %19, i32 0, i32 1
  %20 = load i8*, i8** %cp16, align 8
  %21 = load i8, i8* %20, align 1
  %call17 = call zeroext i1 @isNum(i8 signext %21)
  br i1 %call17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %22 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %call19 = call i32 @eatNumber(%struct._lexingState* %22)
  store i32 %call19, i32* %retval, align 4
  br label %return

if.else20:                                        ; preds = %if.else15
  %23 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp21 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %23, i32 0, i32 1
  %24 = load i8*, i8** %cp21, align 8
  %25 = load i8, i8* %24, align 1
  %call22 = call zeroext i1 @isSpace(i8 signext %25)
  br i1 %call22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else20
  %26 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatWhiteSpace(%struct._lexingState* %26)
  %27 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %call24 = call i32 @lex(%struct._lexingState* %27)
  store i32 %call24, i32* %retval, align 4
  br label %return

if.else25:                                        ; preds = %if.else20
  %28 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp26 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %28, i32 0, i32 1
  %29 = load i8*, i8** %cp26, align 8
  %30 = load i8, i8* %29, align 1
  %conv27 = zext i8 %30 to i32
  %cmp28 = icmp eq i32 %conv27, 95
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else25
  %31 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @readIdentifier(%struct._lexingState* %31)
  store i32 42, i32* %retval, align 4
  br label %return

if.else31:                                        ; preds = %if.else25
  %32 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp32 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %32, i32 0, i32 1
  %33 = load i8*, i8** %cp32, align 8
  %34 = load i8, i8* %33, align 1
  %idxprom = zext i8 %34 to i64
  %arrayidx33 = getelementptr inbounds [256 x i8], [256 x i8]* @isOperator, i64 0, i64 %idxprom
  %35 = load i8, i8* %arrayidx33, align 1
  %tobool = trunc i8 %35 to i1
  br i1 %tobool, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else31
  %36 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %call35 = call i32 @eatOperator(%struct._lexingState* %36)
  store i32 %call35, i32* %retval, align 4
  br label %return

if.else36:                                        ; preds = %if.else31
  %37 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp37 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %37, i32 0, i32 1
  %38 = load i8*, i8** %cp37, align 8
  %39 = load i8, i8* %38, align 1
  %conv38 = zext i8 %39 to i32
  switch i32 %conv38, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb48
    i32 91, label %sw.bb51
    i32 93, label %sw.bb54
    i32 123, label %sw.bb57
    i32 125, label %sw.bb60
    i32 39, label %sw.bb63
    i32 44, label %sw.bb66
    i32 61, label %sw.bb69
    i32 59, label %sw.bb72
    i32 34, label %sw.bb75
    i32 35, label %sw.bb76
    i32 92, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.else36
  %40 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp39 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %40, i32 0, i32 1
  %41 = load i8*, i8** %cp39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %42 to i32
  %cmp42 = icmp eq i32 %conv41, 42
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %sw.bb
  %43 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatComment(%struct._lexingState* %43)
  %44 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %call45 = call i32 @lex(%struct._lexingState* %44)
  store i32 %call45, i32* %retval, align 4
  br label %return

if.else46:                                        ; preds = %sw.bb
  %45 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp47 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %45, i32 0, i32 1
  %46 = load i8*, i8** %cp47, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %cp47, align 8
  store i32 33, i32* %retval, align 4
  br label %return

sw.bb48:                                          ; preds = %if.else36
  %47 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp49 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %47, i32 0, i32 1
  %48 = load i8*, i8** %cp49, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr50, i8** %cp49, align 8
  store i32 34, i32* %retval, align 4
  br label %return

sw.bb51:                                          ; preds = %if.else36
  %49 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp52 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %49, i32 0, i32 1
  %50 = load i8*, i8** %cp52, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr53, i8** %cp52, align 8
  store i32 35, i32* %retval, align 4
  br label %return

sw.bb54:                                          ; preds = %if.else36
  %51 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp55 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %51, i32 0, i32 1
  %52 = load i8*, i8** %cp55, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr56, i8** %cp55, align 8
  store i32 36, i32* %retval, align 4
  br label %return

sw.bb57:                                          ; preds = %if.else36
  %53 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp58 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %53, i32 0, i32 1
  %54 = load i8*, i8** %cp58, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr59, i8** %cp58, align 8
  store i32 37, i32* %retval, align 4
  br label %return

sw.bb60:                                          ; preds = %if.else36
  %55 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp61 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %55, i32 0, i32 1
  %56 = load i8*, i8** %cp61, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr62, i8** %cp61, align 8
  store i32 38, i32* %retval, align 4
  br label %return

sw.bb63:                                          ; preds = %if.else36
  %57 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp64 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %57, i32 0, i32 1
  %58 = load i8*, i8** %cp64, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr65, i8** %cp64, align 8
  store i32 39, i32* %retval, align 4
  br label %return

sw.bb66:                                          ; preds = %if.else36
  %59 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp67 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %59, i32 0, i32 1
  %60 = load i8*, i8** %cp67, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr68, i8** %cp67, align 8
  store i32 45, i32* %retval, align 4
  br label %return

sw.bb69:                                          ; preds = %if.else36
  %61 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp70 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %61, i32 0, i32 1
  %62 = load i8*, i8** %cp70, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr71, i8** %cp70, align 8
  store i32 41, i32* %retval, align 4
  br label %return

sw.bb72:                                          ; preds = %if.else36
  %63 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp73 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %63, i32 0, i32 1
  %64 = load i8*, i8** %cp73, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr74, i8** %cp73, align 8
  store i32 44, i32* %retval, align 4
  br label %return

sw.bb75:                                          ; preds = %if.else36
  %65 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatString(%struct._lexingState* %65)
  store i32 42, i32* %retval, align 4
  br label %return

sw.bb76:                                          ; preds = %if.else36
  %66 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp77 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %66, i32 0, i32 1
  %67 = load i8*, i8** %cp77, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr78, i8** %cp77, align 8
  store i32 48, i32* %retval, align 4
  br label %return

sw.bb79:                                          ; preds = %if.else36
  %68 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp80 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %68, i32 0, i32 1
  %69 = load i8*, i8** %cp80, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr81, i8** %cp80, align 8
  store i32 49, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.else36
  %70 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp82 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %70, i32 0, i32 1
  %71 = load i8*, i8** %cp82, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr83, i8** %cp82, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end84

if.end84:                                         ; preds = %sw.epilog
  br label %if.end85

if.end85:                                         ; preds = %if.end84
  br label %if.end86

if.end86:                                         ; preds = %if.end85
  br label %if.end87

if.end87:                                         ; preds = %if.end86
  br label %if.end88

if.end88:                                         ; preds = %if.end87
  store i32 42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end88, %sw.bb79, %sw.bb76, %sw.bb75, %sw.bb72, %sw.bb69, %sw.bb66, %sw.bb63, %sw.bb60, %sw.bb57, %sw.bb54, %sw.bb51, %sw.bb48, %if.else46, %if.then44, %if.then34, %if.then30, %if.then23, %if.then18, %if.else, %if.then14, %if.then
  %72 = load i32, i32* %retval, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @computeModuleName() #0 {
entry:
  %filename = alloca i8*, align 8
  %beginIndex = alloca i32, align 4
  %endIndex = alloca i32, align 4
  %moduleName = alloca %struct.sVString*, align 8
  %call = call i8* @getInputFileName()
  store i8* %call, i8** %filename, align 8
  store i32 0, i32* %beginIndex, align 4
  %0 = load i8*, i8** %filename, align 8
  %call1 = call i64 @strlen(i8* %0)
  %sub = sub i64 %call1, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %endIndex, align 4
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** %moduleName, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %filename, align 8
  %2 = load i32, i32* %endIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv3, 46
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %endIndex, align 4
  %cmp5 = icmp sgt i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %endIndex, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %endIndex, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %endIndex, align 4
  store i32 %7, i32* %beginIndex, align 4
  br label %while.cond7

while.cond7:                                      ; preds = %if.end, %while.end
  %8 = load i32, i32* %beginIndex, align 4
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %while.body10, label %while.end22

while.body10:                                     ; preds = %while.cond7
  %9 = load i8*, i8** %filename, align 8
  %10 = load i32, i32* %beginIndex, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 92
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body10
  %12 = load i8*, i8** %filename, align 8
  %13 = load i32, i32* %beginIndex, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %idxprom16
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %14 to i32
  %cmp19 = icmp eq i32 %conv18, 47
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body10
  %15 = load i32, i32* %beginIndex, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %beginIndex, align 4
  br label %while.end22

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i32, i32* %beginIndex, align 4
  %dec21 = add nsw i32 %16, -1
  store i32 %dec21, i32* %beginIndex, align 4
  br label %while.cond7

while.end22:                                      ; preds = %if.then, %while.cond7
  %17 = load %struct.sVString*, %struct.sVString** %moduleName, align 8
  %18 = load i8*, i8** %filename, align 8
  %19 = load i32, i32* %beginIndex, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 %idxprom23
  %20 = load i32, i32* %endIndex, align 4
  %21 = load i32, i32* %beginIndex, align 4
  %sub25 = sub nsw i32 %20, %21
  %conv26 = sext i32 %sub25 to i64
  call void @vStringNCopyS(%struct.sVString* %17, i8* %arrayidx24, i64 %conv26)
  %22 = load %struct.sVString*, %struct.sVString** %moduleName, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx27, align 1
  %call28 = call zeroext i1 @isLowerAlpha(i8 signext %24)
  br i1 %call28, label %if.then29, label %if.end34

if.then29:                                        ; preds = %while.end22
  %25 = load %struct.sVString*, %struct.sVString** %moduleName, align 8
  %buffer30 = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %27 to i32
  %add = add nsw i32 %conv32, -32
  %conv33 = trunc i32 %add to i8
  store i8 %conv33, i8* %arrayidx31, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %while.end22
  %28 = load %struct.sVString*, %struct.sVString** %moduleName, align 8
  call void @addTag(%struct.sVString* %28, i32 2)
  %29 = load %struct.sVString*, %struct.sVString** %moduleName, align 8
  call void @vStringDelete(%struct.sVString* %29)
  ret void
}

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #1

declare void @vStringCopyS(%struct.sVString*, i8*) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearStack() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 3
  %2 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  call void @vStringDelete(%struct.sVString* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cleanupPreviousParser() #0 {
entry:
  %0 = load i8, i8* @needStrongPoping, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* @needStrongPoping, align 1
  %call = call i32 @popStrongContext()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @typeDecl(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 39, label %sw.bb
    i32 33, label %sw.bb1
    i32 32, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @typeDecl, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* @ignoreToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @typeDecl, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store i32 34, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @tillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %1, i32 5)
  %2 = load i32, i32* %whatNext.addr, align 4
  %cmp = icmp eq i32 %2, 41
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushStrongContext(%struct.sVString* %3, i32 0)
  call void @requestStrongPoping()
  store void (%struct.sVString*, i32, i32)* @typeSpecification, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb2
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %5 = load i32, i32* %what.addr, align 4
  %6 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %4, i32 %5, i32 %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @classDecl(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 35, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %1, i32 0)
  %2 = load %struct.sVString*, %struct.sVString** @lastClass, align 8
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %2, %struct.sVString* %3)
  store void (%struct.sVString*, i32, i32)* @contextualTillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i32 41, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @classSpecif, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @tillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i32 36, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @classDecl, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @moduleDecl(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 22, label %sw.bb
    i32 27, label %sw.bb
    i32 32, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %1, i32 2)
  %2 = load %struct.sVString*, %struct.sVString** @lastModule, align 8
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %2, %struct.sVString* %3)
  %4 = load i32, i32* %whatNext.addr, align 4
  %cmp = icmp eq i32 %4, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb1
  %5 = load i32, i32* %whatNext.addr, align 4
  %cmp2 = icmp eq i32 %5, 41
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.bb1
  store void (%struct.sVString*, i32, i32)* @moduleSpecif, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 41, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @moduleSpecif, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* @contextualTillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @killCurrentState() #0 {
entry:
  %popped = alloca i32, align 4
  %call = call i32 @popStrongContext()
  store i32 %call, i32* %popped, align 4
  %0 = load i32, i32* %popped, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb4
    i32 0, label %sw.bb6
    i32 7, label %sw.bb8
    i32 6, label %sw.bb10
    i32 1, label %sw.bb11
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call i32 @popStrongContext()
  store i32 %call1, i32* %popped, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = call i32 @popStrongContext()
  store i32 %call3, i32* %popped, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = call i32 @popStrongContext()
  store i32 %call5, i32* %popped, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call7 = call i32 @popStrongContext()
  store i32 %call7, i32* %popped, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 @popStrongContext()
  store i32 %call9, i32* %popped, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %1 = load i32, i32* %popped, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @moduleSpecif(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 9, label %sw.bb
    i32 24, label %sw.bb1
    i32 23, label %sw.bb1
    i32 33, label %sw.bb2
    i32 47, label %sw.bb3
    i32 41, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @contextualTillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i32 46, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @moduleSpecif, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  %1 = load %struct.sVString*, %struct.sVString** @lastModule, align 8
  call void @pushStrongContext(%struct.sVString* %1, i32 1)
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i8 0, i8* @needStrongPoping, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @contextualTillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store i32 34, i32* @waitedToken, align 4
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %3 = load i32, i32* %what.addr, align 4
  %4 = load i32, i32* %whatNext.addr, align 4
  call void @contextualTillToken(%struct.sVString* %2, i32 %3, i32 %4)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %5 = load %struct.sVString*, %struct.sVString** @lastModule, align 8
  store %struct.sVString* %5, %struct.sVString** %vStringClear_s, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @methodDecl(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 19, label %sw.bb1
    i32 29, label %sw.bb1
    i32 22, label %sw.bb1
    i32 32, label %sw.bb2
    i32 6, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %1, i32 1)
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushStrongContext(%struct.sVString* %2, i32 5)
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %4 = load i32, i32* %what.addr, align 4
  %5 = load i32, i32* %whatNext.addr, align 4
  call void @localScope(%struct.sVString* %3, i32 %4, i32 %5)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @val(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 22, label %sw.bb
    i32 43, label %sw.bb1
    i32 42, label %sw.bb2
    i32 32, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %1, i32 4)
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %2, i32 4)
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @globalLet(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  %fakeIdent = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 19, label %sw.bb1
    i32 29, label %sw.bb1
    i32 22, label %sw.bb1
    i32 43, label %sw.bb2
    i32 42, label %sw.bb3
    i32 32, label %sw.bb8
    i32 6, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %whatNext.addr, align 4
  %cmp = icmp eq i32 %1, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %call = call %struct.sVString* @vStringNewInit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  store %struct.sVString* %call, %struct.sVString** %fakeIdent, align 8
  %2 = load %struct.sVString*, %struct.sVString** %fakeIdent, align 8
  call void @addTag(%struct.sVString* %2, i32 6)
  %3 = load %struct.sVString*, %struct.sVString** %fakeIdent, align 8
  call void @pushStrongContext(%struct.sVString* %3, i32 4)
  %4 = load %struct.sVString*, %struct.sVString** %fakeIdent, align 8
  call void @vStringDelete(%struct.sVString* %4)
  call void @requestStrongPoping()
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %5, i32 6)
  %6 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushStrongContext(%struct.sVString* %6, i32 4)
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv, 95
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %sw.bb3
  %10 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %10, i32 6)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sw.bb3
  %11 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushStrongContext(%struct.sVString* %11, i32 4)
  call void @requestStrongPoping()
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %12 = load i32, i32* %whatNext.addr, align 4
  %cmp9 = icmp eq i32 %12, 32
  br i1 %cmp9, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb8
  %13 = load i32, i32* %whatNext.addr, align 4
  %cmp11 = icmp eq i32 %13, 33
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %sw.bb8
  %14 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %14, i32 6)
  %15 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushStrongContext(%struct.sVString* %15, i32 4)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %16, i32 3)
  %17 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushStrongContext(%struct.sVString* %17, i32 3)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  call void @requestStrongPoping()
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %18 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %19 = load i32, i32* %what.addr, align 4
  %20 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %18, i32 %19, i32 %20)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %if.end14, %if.end7, %sw.bb2, %sw.bb1, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @exceptionDecl(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %1, i32 9)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %3 = load i32, i32* %what.addr, align 4
  %4 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %2, i32 %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @popStrongContext() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %0 = load i32, i32* @stackIndex, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %kind = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %kind, align 8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* @stackIndex, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom2
  %callback = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx3, i32 0, i32 2
  %6 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** %callback, align 8
  store void (%struct.sVString*, i32, i32)* %6, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom4
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx5, i32 0, i32 3
  %8 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  store %struct.sVString* %8, %struct.sVString** %vStringClear_s, align 8
  %9 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %arrayidx6, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom7
  %type = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx8, i32 0, i32 1
  %13 = load i32, i32* %type, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @stackIndex, align 4
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %do.end
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ignoreToken(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* %0, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tillToken(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %1 = load i32, i32* @waitedToken, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* %2, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %what.addr, align 4
  %cmp1 = icmp eq i32 %3, 6
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %call = call i32 @popStrongContext()
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addTag(%struct.sVString* %ident, i32 %kind) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %toCreate = alloca %struct.sTagEntryInfo, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.sKindDefinition], [12 x %struct.sKindDefinition]* @OcamlKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %cmp = icmp ne %struct.sVString* %2, null
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %5 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %6 = load i32, i32* %kind.addr, align 4
  call void @prepareTag(%struct.sTagEntryInfo* %toCreate, %struct.sVString* %5, i32 %6)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %toCreate)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pushStrongContext(%struct.sVString* %name, i32 %type) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %type.addr = alloca i32, align 4
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @pushContext(i32 0, i32 %0, void (%struct.sVString*, i32, i32)* @globalScope, %struct.sVString* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @requestStrongPoping() #0 {
entry:
  store i8 1, i8* @needStrongPoping, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @typeSpecification(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 0, label %sw.bb6
    i32 28, label %sw.bb7
    i32 35, label %sw.bb8
    i32 36, label %sw.bb8
    i32 40, label %sw.bb8
    i32 37, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %call = call zeroext i1 @isUpperAlpha(i8 signext %3)
  br i1 %call, label %if.then, label %if.else4

if.then:                                          ; preds = %sw.bb
  %4 = load i8, i8* getelementptr inbounds ([12 x %struct.sKindDefinition], [12 x %struct.sKindDefinition]* @OcamlKinds, i64 0, i64 7, i32 0), align 8
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then1
  %5 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  store %struct.sVString* %5, %struct.sVString** %vStringClear_s, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer2 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx3, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  %10 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @vStringCopy(%struct.sVString* %9, %struct.sVString* %10)
  %11 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  call void @prepareTag(%struct.sTagEntryInfo* @tempTag, %struct.sVString* %11, i32 7)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  store void (%struct.sVString*, i32, i32)* @constructorValidation, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end5

if.else4:                                         ; preds = %sw.bb
  store void (%struct.sVString*, i32, i32)* @tillTokenOrFallback, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @typeSpecification, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store i32 40, i32* @waitedToken, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @typeDecl, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @val, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @typeRecord, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %if.end5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @prepareTag(%struct.sTagEntryInfo* %tag, %struct.sVString* %name, i32 %kind) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %parentIndex = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  %3 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %0, i8* %2, i32 %3)
  %4 = load i64, i64* @ocaLineNumber, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 1
  store i64 %4, i64* %lineNumber, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 4
  %7 = bitcast %struct._MIOPos* %filePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct._MIOPos* @ocaFilePosition to i8*), i64 16, i1 false)
  %call = call i32 @getLastNamedIndex()
  store i32 %call, i32* %parentIndex, align 4
  %8 = load i32, i32* %parentIndex, align 4
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %parentIndex, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %type = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 1
  %10 = load i32, i32* %type, align 4
  %call1 = call i32 @contextDescription(i32 %10)
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %11, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 %call1, i32* %scopeKindIndex, align 4
  %12 = load i32, i32* %parentIndex, align 4
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom2
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx3, i32 0, i32 3
  %13 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  %buffer4 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer4, align 8
  %15 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %15, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 6
  store i8* %14, i8** %scopeName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getLastNamedIndex() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* @stackIndex, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 3
  %3 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp1 = icmp ugt i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @contextDescription(i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb1
    i32 3, label %sw.bb2
    i32 1, label %sw.bb3
    i32 0, label %sw.bb4
    i32 2, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  store i32 6, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 10, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 11, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pushContext(i32 %kind, i32 %type, void (%struct.sVString*, i32, i32)* %after, %struct.sVString* %contextName) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %after.addr = alloca void (%struct.sVString*, i32, i32)*, align 8
  %contextName.addr = alloca %struct.sVString*, align 8
  %parentIndex = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store void (%struct.sVString*, i32, i32)* %after, void (%struct.sVString*, i32, i32)** %after.addr, align 8
  store %struct.sVString* %contextName, %struct.sVString** %contextName.addr, align 8
  %0 = load i32, i32* @stackIndex, align 4
  %cmp = icmp sge i32 %0, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %kind.addr, align 4
  %2 = load i32, i32* @stackIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %kind1 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 0
  store i32 %1, i32* %kind1, align 8
  %3 = load i32, i32* %type.addr, align 4
  %4 = load i32, i32* @stackIndex, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom2
  %type4 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx3, i32 0, i32 1
  store i32 %3, i32* %type4, align 4
  %5 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** %after.addr, align 8
  %6 = load i32, i32* @stackIndex, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom5
  %callback = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx6, i32 0, i32 2
  store void (%struct.sVString*, i32, i32)* %5, void (%struct.sVString*, i32, i32)** %callback, align 8
  %call = call i32 @getLastNamedIndex()
  store i32 %call, i32* %parentIndex, align 4
  %7 = load %struct.sVString*, %struct.sVString** %contextName.addr, align 8
  %cmp7 = icmp eq %struct.sVString* %7, null
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then8
  %8 = load i32, i32* @stackIndex, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @stackIndex, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom9
  %contextName11 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx10, i32 0, i32 3
  %9 = load %struct.sVString*, %struct.sVString** %contextName11, align 8
  store %struct.sVString* %9, %struct.sVString** %vStringClear_s, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx12, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %return

if.end13:                                         ; preds = %if.end
  %13 = load i32, i32* %parentIndex, align 4
  %cmp14 = icmp sge i32 %13, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %14 = load i32, i32* @stackIndex, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom16
  %contextName18 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx17, i32 0, i32 3
  %15 = load %struct.sVString*, %struct.sVString** %contextName18, align 8
  %16 = load i32, i32* %parentIndex, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom19
  %contextName21 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx20, i32 0, i32 3
  %17 = load %struct.sVString*, %struct.sVString** %contextName21, align 8
  call void @vStringCopy(%struct.sVString* %15, %struct.sVString* %17)
  %18 = load i32, i32* @stackIndex, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom22
  %contextName24 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx23, i32 0, i32 3
  %19 = load %struct.sVString*, %struct.sVString** %contextName24, align 8
  %20 = load i32, i32* %parentIndex, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom25
  %type27 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx26, i32 0, i32 1
  %21 = load i32, i32* %type27, align 4
  %call28 = call signext i8 @contextTypeSuffix(i32 %21)
  %conv = sext i8 %call28 to i32
  call void @vStringPut(%struct.sVString* %19, i32 %conv)
  %22 = load i32, i32* @stackIndex, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom29
  %contextName31 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx30, i32 0, i32 3
  %23 = load %struct.sVString*, %struct.sVString** %contextName31, align 8
  %24 = load %struct.sVString*, %struct.sVString** %contextName.addr, align 8
  call void @vStringCat(%struct.sVString* %23, %struct.sVString* %24)
  br label %if.end35

if.else:                                          ; preds = %if.end13
  %25 = load i32, i32* @stackIndex, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom32
  %contextName34 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx33, i32 0, i32 3
  %26 = load %struct.sVString*, %struct.sVString** %contextName34, align 8
  %27 = load %struct.sVString*, %struct.sVString** %contextName.addr, align 8
  call void @vStringCopy(%struct.sVString* %26, %struct.sVString* %27)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then15
  %28 = load i32, i32* @stackIndex, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* @stackIndex, align 4
  br label %return

return:                                           ; preds = %if.end35, %do.end, %if.then
  ret void
}

declare void @verbose(i8*, ...) #1

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
define internal signext i8 @contextTypeSuffix(i32 %t) #0 {
entry:
  %retval = alloca i8, align 1
  %t.addr = alloca i32, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb2
    i32 6, label %sw.bb3
    i32 7, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i8 47, i8* %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8 46, i8* %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8 35, i8* %retval, align 1
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8 32, i8* %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8 124, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i8 36, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8, i8* %retval, align 1
  ret i8 %1
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isUpperAlpha(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @constructorValidation(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s10 = alloca %struct.sVString*, align 8
  %vStringClear_s21 = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 43, label %sw.bb
    i32 21, label %sw.bb1
    i32 40, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %call = call i32 @popStrongContext()
  store i8 0, i8* @needStrongPoping, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %call2 = call i32 @makeTagEntry(%struct.sTagEntryInfo* @tempTag)
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  store %struct.sVString* %3, %struct.sVString** %vStringClear_s, align 8
  %4 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length3 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  store i64 0, i64* %length3, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb1
  store void (%struct.sVString*, i32, i32)* @tillTokenOrFallback, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @typeSpecification, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store i32 40, i32* @waitedToken, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %7 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  %length5 = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length5, align 8
  %cmp6 = icmp ugt i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %sw.bb4
  %call8 = call i32 @makeTagEntry(%struct.sTagEntryInfo* @tempTag)
  br label %do.body9

do.body9:                                         ; preds = %if.then7
  %9 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  store %struct.sVString* %9, %struct.sVString** %vStringClear_s10, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s10, align 8
  %length11 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  store i64 0, i64* %length11, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s10, align 8
  %buffer12 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx13, align 1
  br label %do.end14

do.end14:                                         ; preds = %do.body9
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %sw.bb4
  store void (%struct.sVString*, i32, i32)* @typeSpecification, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  %length16 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 0
  %14 = load i64, i64* %length16, align 8
  %cmp17 = icmp ugt i64 %14, 0
  br i1 %cmp17, label %if.then18, label %if.end26

if.then18:                                        ; preds = %sw.default
  %call19 = call i32 @makeTagEntry(%struct.sTagEntryInfo* @tempTag)
  br label %do.body20

do.body20:                                        ; preds = %if.then18
  %15 = load %struct.sVString*, %struct.sVString** @tempIdent, align 8
  store %struct.sVString* %15, %struct.sVString** %vStringClear_s21, align 8
  %16 = load %struct.sVString*, %struct.sVString** %vStringClear_s21, align 8
  %length22 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 0
  store i64 0, i64* %length22, align 8
  %17 = load %struct.sVString*, %struct.sVString** %vStringClear_s21, align 8
  %buffer23 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %arrayidx24, align 1
  br label %do.end25

do.end25:                                         ; preds = %do.body20
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %sw.default
  store void (%struct.sVString*, i32, i32)* @tillTokenOrFallback, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @typeSpecification, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store i32 40, i32* @waitedToken, align 4
  %call27 = call i32 @popStrongContext()
  store i8 0, i8* @needStrongPoping, align 1
  %19 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %20 = load i32, i32* %what.addr, align 4
  %21 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %19, i32 %20, i32 %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end26, %if.end15, %if.end, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tillTokenOrFallback(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %1 = load i32, i32* @waitedToken, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* %2, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %4 = load i32, i32* %what.addr, align 4
  %5 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %3, i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @typeRecord(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 19, label %sw.bb1
    i32 38, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %1, i32 8)
  store i32 38, i32* @terminatingToken, align 4
  store i32 44, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @typeRecord, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* @tillTokenOrTerminatingOrFallback, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call = call i32 @popStrongContext()
  store i8 0, i8* @needStrongPoping, align 1
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @tillTokenOrTerminatingOrFallback(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %1 = load i32, i32* @waitedToken, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* %2, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %what.addr, align 4
  %4 = load i32, i32* @terminatingToken, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.else3:                                         ; preds = %if.else
  %5 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %6 = load i32, i32* %what.addr, align 4
  %7 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %5, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @contextualTillToken(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 34, label %sw.bb1
    i32 37, label %sw.bb2
    i32 38, label %sw.bb4
    i32 35, label %sw.bb6
    i32 36, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* @contextualTillToken.parentheses, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @contextualTillToken.parentheses, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32, i32* @contextualTillToken.parentheses, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @contextualTillToken.parentheses, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load i32, i32* @contextualTillToken.curly, align 4
  %dec3 = add nsw i32 %3, -1
  store i32 %dec3, i32* @contextualTillToken.curly, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load i32, i32* @contextualTillToken.curly, align 4
  %inc5 = add nsw i32 %4, 1
  store i32 %inc5, i32* @contextualTillToken.curly, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %5 = load i32, i32* @contextualTillToken.bracket, align 4
  %dec7 = add nsw i32 %5, -1
  store i32 %dec7, i32* @contextualTillToken.bracket, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %6 = load i32, i32* @contextualTillToken.bracket, align 4
  %inc9 = add nsw i32 %6, 1
  store i32 %inc9, i32* @contextualTillToken.bracket, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %7 = load i32, i32* %what.addr, align 4
  %8 = load i32, i32* @waitedToken, align 4
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %9 = load i32, i32* @contextualTillToken.parentheses, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* @contextualTillToken.bracket, align 4
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %11 = load i32, i32* @contextualTillToken.curly, align 4
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true13
  %12 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* %12, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true11, %land.lhs.true, %sw.epilog
  %13 = load i32, i32* %what.addr, align 4
  %cmp15 = icmp eq i32 %13, 6
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else
  %14 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %15 = load i32, i32* %what.addr, align 4
  %16 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %14, i32 %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @classSpecif(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 20, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** @lastClass, align 8
  call void @pushStrongContext(%struct.sVString* %1, i32 2)
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %2 = load %struct.sVString*, %struct.sVString** @lastClass, align 8
  store %struct.sVString* %2, %struct.sVString** %vStringClear_s, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %4 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @letParam(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default6 [
    i32 46, label %sw.bb
    i32 41, label %sw.bb
    i32 32, label %sw.bb1
    i32 43, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog7

sw.bb1:                                           ; preds = %entry
  %1 = load i8, i8* @exportLocalInfo, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %2, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  br label %sw.epilog7

sw.bb2:                                           ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 58, label %sw.bb3
    i32 126, label %sw.bb4
    i32 63, label %sw.bb5
  ]

sw.bb3:                                           ; preds = %sw.bb2
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  store void (%struct.sVString*, i32, i32)* @tillTokenOrFallback, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i32 41, i32* @waitedToken, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb2
  store void (%struct.sVString*, i32, i32)* @parseLabel, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i8 0, i8* @dirtySpecialParam, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb2
  store void (%struct.sVString*, i32, i32)* @parseOptionnal, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i8 0, i8* @dirtySpecialParam, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3
  br label %sw.epilog7

sw.default6:                                      ; preds = %entry
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.default6, %sw.epilog, %if.end, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @localScope(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 40, label %sw.bb
    i32 34, label %sw.bb1
    i32 36, label %sw.bb1
    i32 38, label %sw.bb1
    i32 1, label %sw.bb2
    i32 13, label %sw.bb3
    i32 37, label %sw.bb4
    i32 44, label %sw.bb5
    i32 43, label %sw.bb6
    i32 33, label %sw.bb7
    i32 35, label %sw.bb7
    i32 0, label %sw.bb8
    i32 5, label %sw.bb13
    i32 25, label %sw.bb13
    i32 12, label %sw.bb14
    i32 16, label %sw.bb15
    i32 31, label %sw.bb16
    i32 10, label %sw.bb17
    i32 4, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  call void @jumpToMatchContext()
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry
  call void @popSoftContext()
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @pushContext(i32 0, i32 6, void (%struct.sVString*, i32, i32)* @mayRedeclare, %struct.sVString* null)
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @popLastNamed()
  call void @pushEmptyContext(void (%struct.sVString*, i32, i32)* @localScope)
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @contextualTillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i32 38, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @localScope, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %2 = load i32, i32* %what.addr, align 4
  %3 = load i32, i32* %whatNext.addr, align 4
  call void @contextualTillToken(%struct.sVString* %1, i32 %2, i32 %3)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %4 = load i32, i32* %whatNext.addr, align 4
  %cmp = icmp eq i32 %4, 44
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb5
  %call = call i32 @popStrongContext()
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb5
  br label %sw.bb6

sw.bb6:                                           ; preds = %entry, %if.end
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry
  call void @pushEmptyContext(void (%struct.sVString*, i32, i32)* @localScope)
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %5 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %cmp9 = icmp eq void (%struct.sVString*, i32, i32)* %5, @mayRedeclare
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb8
  call void @popSoftContext()
  call void @pushEmptyContext(void (%struct.sVString*, i32, i32)* @localScope)
  store void (%struct.sVString*, i32, i32)* @localLet, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end12

if.else:                                          ; preds = %sw.bb8
  call void @popLastNamed()
  %6 = load i32, i32* @stackIndex, align 4
  %cmp11 = icmp eq i32 %6, 0
  %7 = zext i1 %cmp11 to i64
  %cond = select i1 %cmp11, void (%struct.sVString*, i32, i32)* @globalLet, void (%struct.sVString*, i32, i32)* @localLet
  store void (%struct.sVString*, i32, i32)* %cond, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry, %entry
  call void @popSoftContext()
  call void @pushEmptyContext(void (%struct.sVString*, i32, i32)* @localScope)
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @pushEmptyContext(void (%struct.sVString*, i32, i32)* @localScope)
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @pushEmptyContext(void (%struct.sVString*, i32, i32)* @localScope)
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @popSoftContext()
  store void (%struct.sVString*, i32, i32)* @matchPattern, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  call void @pushSoftContext(void (%struct.sVString*, i32, i32)* @matchPattern, %struct.sVString* null, i32 7)
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @requestStrongPoping()
  %8 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %9 = load i32, i32* %what.addr, align 4
  %10 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %8, i32 %9, i32 %10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %if.end12, %sw.bb7, %sw.bb6, %if.then, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @mayRedeclare(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 15, label %sw.bb
    i32 14, label %sw.bb1
    i32 28, label %sw.bb2
    i32 20, label %sw.bb3
    i32 8, label %sw.bb4
    i32 30, label %sw.bb4
    i32 26, label %sw.bb5
    i32 11, label %sw.bb6
    i32 10, label %sw.bb7
    i32 44, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %2 = load i32, i32* %what.addr, align 4
  %3 = load i32, i32* %whatNext.addr, align 4
  call void @globalScope(%struct.sVString* %1, i32 %2, i32 %3)
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  store void (%struct.sVString*, i32, i32)* @localLet, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @val, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb3
  %4 = load %struct.sVString*, %struct.sVString** @lastClass, align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @pushContext(i32 0, i32 2, void (%struct.sVString*, i32, i32)* @localScope, %struct.sVString* null)
  store i8 0, i8* @needStrongPoping, align 1
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry
  store void (%struct.sVString*, i32, i32)* @tillToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store i32 3, i32* @waitedToken, align 4
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %8 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushSoftContext(void (%struct.sVString*, i32, i32)* @matchPattern, %struct.sVString* %8, i32 4)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @matchPattern, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  call void @pushSoftContext(void (%struct.sVString*, i32, i32)* @matchPattern, %struct.sVString* null, i32 7)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb8
  store void (%struct.sVString*, i32, i32)* @localScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %9 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %10 = load i32, i32* %what.addr, align 4
  %11 = load i32, i32* %whatNext.addr, align 4
  call void @localScope(%struct.sVString* %9, i32 %10, i32 %11)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %do.end, %sw.bb2, %sw.bb1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseLabel(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb4
    i32 34, label %sw.bb5
    i32 43, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* @dirtySpecialParam, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %sw.bb
  %2 = load i8, i8* @exportLocalInfo, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %3, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i8 1, i8* @dirtySpecialParam, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %sw.bb
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load i32, i32* @parseLabel.parCount, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @parseLabel.parCount, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %5 = load i32, i32* @parseLabel.parCount, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @parseLabel.parCount, align 4
  %6 = load i32, i32* @parseLabel.parCount, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %sw.bb5
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sw.bb5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %7 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv, 58
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.bb8
  store void (%struct.sVString*, i32, i32)* @ignoreToken, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @comeAfter, align 8
  br label %if.end18

if.else:                                          ; preds = %sw.bb8
  %10 = load i32, i32* @parseLabel.parCount, align 4
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %11 = load i8, i8* @dirtySpecialParam, align 1
  %tobool14 = trunc i8 %11 to i1
  br i1 %tobool14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %12 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %13 = load i32, i32* %what.addr, align 4
  %14 = load i32, i32* %whatNext.addr, align 4
  call void @letParam(%struct.sVString* %12, i32 %13, i32 %14)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load i32, i32* @parseLabel.parCount, align 4
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %land.lhs.true21, label %if.end25

land.lhs.true21:                                  ; preds = %sw.default
  %16 = load i8, i8* @dirtySpecialParam, align 1
  %tobool22 = trunc i8 %16 to i1
  br i1 %tobool22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true21
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %17 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %18 = load i32, i32* %what.addr, align 4
  %19 = load i32, i32* %whatNext.addr, align 4
  call void @letParam(%struct.sVString* %17, i32 %18, i32 %19)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true21, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %if.end18, %if.end7, %sw.bb4, %if.end3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseOptionnal(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb6
    i32 34, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* @dirtySpecialParam, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %sw.bb
  %2 = load i8, i8* @exportLocalInfo, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %3, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i8 1, i8* @dirtySpecialParam, align 1
  %4 = load i32, i32* @parseOptionnal.parCount, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %sw.bb
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %5 = load i32, i32* @parseOptionnal.parCount, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @parseOptionnal.parCount, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %6 = load i32, i32* @parseOptionnal.parCount, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @parseOptionnal.parCount, align 4
  %7 = load i32, i32* @parseOptionnal.parCount, align 4
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb7
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end10, %sw.bb6, %if.end5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @localLet(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 22, label %sw.bb1
    i32 43, label %sw.bb2
    i32 42, label %sw.bb3
    i32 32, label %sw.bb3
    i32 6, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = load i8, i8* @exportLocalInfo, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %2, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2
  %3 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushSoftContext(void (%struct.sVString*, i32, i32)* @mayRedeclare, %struct.sVString* %3, i32 4)
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  %4 = load i32, i32* %whatNext.addr, align 4
  %cmp = icmp eq i32 %4, 32
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb3
  %5 = load i32, i32* %whatNext.addr, align 4
  %cmp4 = icmp eq i32 %5, 33
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %lor.lhs.false, %sw.bb3
  %6 = load i8, i8* @exportLocalInfo, align 1
  %tobool6 = trunc i8 %6 to i1
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %7 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %7, i32 6)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %8 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushSoftContext(void (%struct.sVString*, i32, i32)* @mayRedeclare, %struct.sVString* %8, i32 4)
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i8, i8* @exportLocalInfo, align 1
  %tobool9 = trunc i8 %9 to i1
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  %10 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @addTag(%struct.sVString* %10, i32 3)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.else
  %11 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  call void @pushSoftContext(void (%struct.sVString*, i32, i32)* @mayRedeclare, %struct.sVString* %11, i32 3)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end8
  store void (%struct.sVString*, i32, i32)* @letParam, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %12 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %13 = load i32, i32* %what.addr, align 4
  %14 = load i32, i32* %whatNext.addr, align 4
  call void @localScope(%struct.sVString* %12, i32 %13, i32 %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @localScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %if.end12, %if.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pushSoftContext(void (%struct.sVString*, i32, i32)* %continuation, %struct.sVString* %name, i32 %type) #0 {
entry:
  %continuation.addr = alloca void (%struct.sVString*, i32, i32)*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %type.addr = alloca i32, align 4
  store void (%struct.sVString*, i32, i32)* %continuation, void (%struct.sVString*, i32, i32)** %continuation.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %1 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** %continuation.addr, align 8
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @pushContext(i32 1, i32 %0, void (%struct.sVString*, i32, i32)* %1, %struct.sVString* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @matchPattern(%struct.sVString* %ident, i32 %what, i32 %whatNext) #0 {
entry:
  %ident.addr = alloca %struct.sVString*, align 8
  %what.addr = alloca i32, align 4
  %whatNext.addr = alloca i32, align 4
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store i32 %whatNext, i32* %whatNext.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  switch i32 %0, label %sw.default [
    i32 46, label %sw.bb
    i32 35, label %sw.bb1
    i32 15, label %sw.bb2
    i32 0, label %sw.bb3
    i32 6, label %sw.bb3
    i32 13, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @pushEmptyContext(void (%struct.sVString*, i32, i32)* @matchPattern)
  store void (%struct.sVString*, i32, i32)* @mayRedeclare, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load i32, i32* @matchPattern.braceCount, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @matchPattern.braceCount, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @popLastNamed()
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %entry, %sw.bb2
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %3 = load i32, i32* %what.addr, align 4
  %4 = load i32, i32* %whatNext.addr, align 4
  call void @localScope(%struct.sVString* %2, i32 %3, i32 %4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @popLastNamed()
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pushEmptyContext(void (%struct.sVString*, i32, i32)* %continuation) #0 {
entry:
  %continuation.addr = alloca void (%struct.sVString*, i32, i32)*, align 8
  store void (%struct.sVString*, i32, i32)* %continuation, void (%struct.sVString*, i32, i32)** %continuation.addr, align 8
  %0 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** %continuation.addr, align 8
  call void @pushContext(i32 1, i32 3, void (%struct.sVString*, i32, i32)* %0, %struct.sVString* null)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @popLastNamed() #0 {
entry:
  %i = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %call = call i32 @getLastNamedIndex()
  store i32 %call, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* @stackIndex, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %callback = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 2
  %3 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** %callback, align 8
  store void (%struct.sVString*, i32, i32)* %3, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom1
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx2, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  store %struct.sVString* %5, %struct.sVString** %vStringClear_s, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx3, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @stackIndex, align 4
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @jumpToMatchContext() #0 {
entry:
  %i = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %0 = load i32, i32* @stackIndex, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %type = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %type, align 4
  %cmp1 = icmp eq i32 %3, 7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* @stackIndex, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom2
  %callback = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx3, i32 0, i32 2
  %6 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** %callback, align 8
  store void (%struct.sVString*, i32, i32)* %6, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  %7 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %7, 1
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom5
  %callback7 = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx6, i32 0, i32 2
  store void (%struct.sVString*, i32, i32)* null, void (%struct.sVString*, i32, i32)** %callback7, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %8, 1
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom9
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx10, i32 0, i32 3
  %9 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  store %struct.sVString* %9, %struct.sVString** %vStringClear_s, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx11, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %do.end, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @popSoftContext() #0 {
entry:
  %vStringClear_s = alloca %struct.sVString*, align 8
  %0 = load i32, i32* @stackIndex, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store void (%struct.sVString*, i32, i32)* @globalScope, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @stackIndex, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @stackIndex, align 4
  %2 = load i32, i32* @stackIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom
  %callback = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx, i32 0, i32 2
  %3 = load void (%struct.sVString*, i32, i32)*, void (%struct.sVString*, i32, i32)** %callback, align 8
  store void (%struct.sVString*, i32, i32)* %3, void (%struct.sVString*, i32, i32)** @toDoNext, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %4 = load i32, i32* @stackIndex, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct._sOcamlContext], [256 x %struct._sOcamlContext]* @stack, i64 0, i64 %idxprom1
  %contextName = getelementptr inbounds %struct._sOcamlContext, %struct._sOcamlContext* %arrayidx2, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %contextName, align 8
  store %struct.sVString* %5, %struct.sVString** %vStringClear_s, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %arrayidx3, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

declare %struct.sVString* @vStringNewInit(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isAlpha(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %call = call zeroext i1 @isLowerAlpha(i8 signext %0)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %call1 = call zeroext i1 @isUpperAlpha(i8 signext %1)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 0
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
  %5 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %5, i32 0, i32 1
  %6 = load i8*, i8** %cp, align 8
  %7 = load i8, i8* %6, align 1
  %call = call zeroext i1 @isAlpha(i8 signext %7)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %8 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %8, i32 0, i32 1
  %9 = load i8*, i8** %cp1, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %11 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name3 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %11, i32 0, i32 0
  %12 = load %struct.sVString*, %struct.sVString** %name3, align 8
  %13 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp4 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %13, i32 0, i32 1
  %14 = load i8*, i8** %cp4, align 8
  %15 = load i8, i8* %14, align 1
  %conv5 = zext i8 %15 to i32
  call void @vStringPut(%struct.sVString* %12, i32 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %16 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp6 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %16, i32 0, i32 1
  %17 = load i8*, i8** %cp6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %call7 = call zeroext i1 @isIdent(i8 signext %19)
  br i1 %call7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name8 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %20, i32 0, i32 0
  %21 = load %struct.sVString*, %struct.sVString** %name8, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv9 = zext i8 %23 to i32
  call void @vStringPut(%struct.sVString* %21, i32 %conv9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** %p, align 8
  %26 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp10 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %26, i32 0, i32 1
  store i8* %25, i8** %cp10, align 8
  ret void
}

declare i32 @lookupKeyword(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isNum(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @eatNumber(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %call = call zeroext i1 @isNum(i8 signext %2)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %3, i32 0, i32 1
  %4 = load i8*, i8** %cp1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %cp1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 42
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSpace(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %c.addr, align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp eq i32 %conv6, 13
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false5
  %3 = load i8, i8* %c.addr, align 1
  %conv9 = sext i8 %3 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @eatWhiteSpace(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %cp = alloca i8*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp1, align 8
  store i8* %1, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  %call = call zeroext i1 @isSpace(i8 signext %3)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %cp, align 8
  %6 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp2 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %6, i32 0, i32 1
  store i8* %5, i8** %cp2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @eatOperator(%struct._lexingState* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct._lexingState*, align 8
  %count = alloca i32, align 4
  %root = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  store i8* %1, i8** %root, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name = getelementptr inbounds %struct._lexingState, %struct._lexingState* %2, i32 0, i32 0
  %3 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %3, %struct.sVString** %vStringClear_s, align 8
  %4 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %7 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp1 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %7, i32 0, i32 1
  %8 = load i8*, i8** %cp1, align 8
  %9 = load i32, i32* %count, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %10 = load i8, i8* %arrayidx2, align 1
  %idxprom3 = zext i8 %10 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @isOperator, i64 0, i64 %idxprom3
  %11 = load i8, i8* %arrayidx4, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %name5 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %12, i32 0, i32 0
  %13 = load %struct.sVString*, %struct.sVString** %name5, align 8
  %14 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp6 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %14, i32 0, i32 1
  %15 = load i8*, i8** %cp6, align 8
  %16 = load i32, i32* %count, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 %idxprom7
  %17 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %17 to i32
  call void @vStringPut(%struct.sVString* %13, i32 %conv)
  %18 = load i32, i32* %count, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %count, align 4
  %20 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp9 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %20, i32 0, i32 1
  %21 = load i8*, i8** %cp9, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %cp9, align 8
  %22 = load i32, i32* %count, align 4
  %cmp = icmp sle i32 %22, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %23 = load i8*, i8** %root, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %24 to i32
  switch i32 %conv12, label %sw.default [
    i32 124, label %sw.bb
    i32 61, label %sw.bb13
    i32 58, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.then
  store i32 40, i32* %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %if.then
  store i32 41, i32* %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %if.then
  store i32 47, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.then
  store i32 43, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  %25 = load i32, i32* %count, align 4
  %cmp15 = icmp eq i32 %25, 2
  br i1 %cmp15, label %land.lhs.true, label %if.else27

land.lhs.true:                                    ; preds = %if.else
  %26 = load i8*, i8** %root, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %27 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %land.lhs.true21, label %if.else27

land.lhs.true21:                                  ; preds = %land.lhs.true
  %28 = load i8*, i8** %root, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %29 to i32
  %cmp24 = icmp eq i32 %conv23, 62
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %land.lhs.true21
  store i32 46, i32* %retval, align 4
  br label %return

if.else27:                                        ; preds = %land.lhs.true21, %land.lhs.true, %if.else
  %30 = load i32, i32* %count, align 4
  %cmp28 = icmp eq i32 %30, 2
  br i1 %cmp28, label %land.lhs.true30, label %if.else41

land.lhs.true30:                                  ; preds = %if.else27
  %31 = load i8*, i8** %root, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %32 to i32
  %cmp33 = icmp eq i32 %conv32, 124
  br i1 %cmp33, label %land.lhs.true35, label %if.else41

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %33 = load i8*, i8** %root, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %33, i64 1
  %34 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %cmp38 = icmp eq i32 %conv37, 62
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %land.lhs.true35
  store i32 43, i32* %retval, align 4
  br label %return

if.else41:                                        ; preds = %land.lhs.true35, %land.lhs.true30, %if.else27
  store i32 43, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else41, %if.then40, %if.then26, %sw.default, %sw.bb14, %sw.bb13, %sw.bb
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @eatComment(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %unfinished = alloca i8, align 1
  %lastIsStar = alloca i8, align 1
  %c = alloca i8*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  store i8 1, i8* %unfinished, align 1
  store i8 0, i8* %lastIsStar, align 1
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  store i8* %add.ptr, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end47, %entry
  %2 = load i8, i8* %unfinished, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %c, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8*, i8** %c, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %call = call i8* @readLineFromInputFile()
  %6 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp3 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %6, i32 0, i32 1
  store i8* %call, i8** %cp3, align 8
  %7 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp4 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %7, i32 0, i32 1
  %8 = load i8*, i8** %cp4, align 8
  %cmp5 = icmp eq i8* %8, null
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp8 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %9, i32 0, i32 1
  %10 = load i8*, i8** %cp8, align 8
  store i8* %10, i8** %c, align 8
  br label %if.end47

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %c, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 41
  br i1 %cmp10, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8, i8* %lastIsStar, align 1
  %tobool12 = trunc i8 %13 to i1
  br i1 %tobool12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %land.lhs.true
  store i8 0, i8* %unfinished, align 1
  %14 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %if.end46

if.else15:                                        ; preds = %land.lhs.true, %if.else
  %15 = load i8*, i8** %c, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv16 = zext i8 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 40
  br i1 %cmp17, label %land.lhs.true19, label %if.else32

land.lhs.true19:                                  ; preds = %if.else15
  %17 = load i8*, i8** %c, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 42
  br i1 %cmp22, label %if.then24, label %if.else32

if.then24:                                        ; preds = %land.lhs.true19
  %19 = load i8*, i8** %c, align 8
  %20 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp25 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %20, i32 0, i32 1
  store i8* %19, i8** %cp25, align 8
  %21 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatComment(%struct._lexingState* %21)
  %22 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp26 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %22, i32 0, i32 1
  %23 = load i8*, i8** %cp26, align 8
  store i8* %23, i8** %c, align 8
  %24 = load i8*, i8** %c, align 8
  %cmp27 = icmp eq i8* %24, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then24
  br label %return

if.end30:                                         ; preds = %if.then24
  store i8 0, i8* %lastIsStar, align 1
  %25 = load i8*, i8** %c, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr31, i8** %c, align 8
  br label %if.end45

if.else32:                                        ; preds = %land.lhs.true19, %if.else15
  %26 = load i8*, i8** %c, align 8
  %27 = load i8, i8* %26, align 1
  %conv33 = zext i8 %27 to i32
  %cmp34 = icmp eq i32 %conv33, 34
  br i1 %cmp34, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.else32
  %28 = load i8*, i8** %c, align 8
  %29 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp37 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %29, i32 0, i32 1
  store i8* %28, i8** %cp37, align 8
  %30 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  call void @eatString(%struct._lexingState* %30)
  %31 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp38 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %31, i32 0, i32 1
  %32 = load i8*, i8** %cp38, align 8
  store i8* %32, i8** %c, align 8
  br label %if.end44

if.else39:                                        ; preds = %if.else32
  %33 = load i8*, i8** %c, align 8
  %34 = load i8, i8* %33, align 1
  %conv40 = zext i8 %34 to i32
  %cmp41 = icmp eq i32 42, %conv40
  %frombool = zext i1 %cmp41 to i8
  store i8 %frombool, i8* %lastIsStar, align 1
  %35 = load i8*, i8** %c, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr43, i8** %c, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else39, %if.then36
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end30
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then14
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i8*, i8** %c, align 8
  %37 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp48 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %37, i32 0, i32 1
  store i8* %36, i8** %cp48, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then29, %if.then7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @eatString(%struct._lexingState* %st) #0 {
entry:
  %st.addr = alloca %struct._lexingState*, align 8
  %lastIsBackSlash = alloca i8, align 1
  %unfinished = alloca i8, align 1
  %c = alloca i8*, align 8
  store %struct._lexingState* %st, %struct._lexingState** %st.addr, align 8
  store i8 0, i8* %lastIsBackSlash, align 1
  store i8 1, i8* %unfinished, align 1
  %0 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp = getelementptr inbounds %struct._lexingState, %struct._lexingState* %0, i32 0, i32 1
  %1 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %add.ptr, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %2 = load i8, i8* %unfinished, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %c, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8*, i8** %c, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i8*, i8** %c, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 34
  br i1 %cmp4, label %land.lhs.true, label %if.else8

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8, i8* %lastIsBackSlash, align 1
  %tobool6 = trunc i8 %8 to i1
  br i1 %tobool6, label %if.else8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  store i8 0, i8* %unfinished, align 1
  br label %if.end

if.else8:                                         ; preds = %land.lhs.true, %if.else
  %9 = load i8*, i8** %c, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 92
  %frombool = zext i1 %cmp10 to i8
  store i8 %frombool, i8* %lastIsBackSlash, align 1
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end
  %11 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load i8*, i8** %c, align 8
  %13 = load %struct._lexingState*, %struct._lexingState** %st.addr, align 8
  %cp13 = getelementptr inbounds %struct._lexingState, %struct._lexingState* %13, i32 0, i32 1
  store i8* %12, i8** %cp13, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isLowerAlpha(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isIdent(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %call = call zeroext i1 @isNum(i8 signext %0)
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %call1 = call zeroext i1 @isAlpha(i8 signext %1)
  br i1 %call1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false2
  %3 = load i8, i8* %c.addr, align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 39
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp5, %lor.rhs ]
  ret i1 %4
}

declare i8* @getInputFileName() #1

declare i64 @strlen(i8*) #1

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initOperatorTable() #0 {
entry:
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 33), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 36), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 37), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 38), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 42), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 43), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 45), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 46), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 47), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 58), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 60), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 61), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 62), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 63), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 64), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 94), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 126), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @isOperator, i64 0, i64 124), align 1
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
