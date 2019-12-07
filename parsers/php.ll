; ModuleID = 'php.c'
source_filename = "php.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sObjPool = type opaque
%struct.anon.1 = type { i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
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
%struct.tokenInfo = type { i32, i32, %struct.sVString*, %struct.sVString*, i64, %struct._MIOPos, i32 }

@.str = private unnamed_addr constant [4 x i8] c"PHP\00", align 1
@PhpKinds = internal global [9 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* getelementptr inbounds ([2 x %struct.sScopeSeparator], [2 x %struct.sScopeSeparator]* @PhpGenericSeparators, i32 0, i32 0), i32 2, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* null], align 8
@PhpKeywordTable = internal constant [60 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 29 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 12 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 13 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i32 14 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 15 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 16 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 17 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 18 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 19 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 20 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 21 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 22 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 23 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 24 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 25 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 26 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i32 27 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 28 }, %struct.keywordTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 29 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 30 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 31 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i32 32 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 33 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 34 }, %struct.keywordTable { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 35 }, %struct.keywordTable { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), i32 36 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 37 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 38 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 39 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i32 40 }, %struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32 41 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 42 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 43 }, %struct.keywordTable { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 44 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 45 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 46 }, %struct.keywordTable { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i32 47 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 48 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 49 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 50 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 51 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 52 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i32 53 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 54 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i32 55 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 56 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i32 57 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 58 }], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Zephir\00", align 1
@zephirExtensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* null], align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@PhpGenericSeparators = internal global [2 x %struct.sScopeSeparator] [%struct.sScopeSeparator { i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0) }, %struct.sScopeSeparator { i32 -3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0) }], align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"constant definitions\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"interfaces\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"namespaces\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"trait\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"traits\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"php3\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"php4\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"php5\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"php7\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"phtml\00", align 1
@TokenPool = internal global %struct.sObjPool* null, align 8
@InPhp = internal global i8 0, align 1
@CurrentStatement = internal global %struct.anon.1 zeroinitializer, align 4
@CurrentNamesapce = internal global %struct.sVString* null, align 8
@FullScope = internal global %struct.sVString* null, align 8
@AnonymousID = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [17 x i8] c"AnonymousClass%u\00", align 1
@accessToString.names = internal constant [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)], align 8
@.str.29 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@implToString.names = internal constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)], align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"abstract\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@Lang_php = internal global i32 0, align 4
@Lang_zephir = internal global i32 0, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"callable\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"cfunction\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"enddeclare\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"endfor\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"endforeach\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"endswitch\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"endwhile\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"implements\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"include_once\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"instanceof\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"insteadof\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"require_once\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"zep\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @PhpParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 9, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findPhpTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializePhpParser, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 7
  store void (i32, i1)* @finalize, void (i32, i1)** %finalize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([60 x %struct.keywordTable], [60 x %struct.keywordTable]* @PhpKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 19
  store i32 60, i32* %keywordCount, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %8
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findPhpTags() #0 {
entry:
  call void @findTags(i1 zeroext false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializePhpParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_php, align 4
  call void @initializePool()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @finalize(i32 %language, i1 zeroext %initialized) #0 {
entry:
  %language.addr = alloca i32, align 4
  %initialized.addr = alloca i8, align 1
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %initialized to i8
  store i8 %frombool, i8* %initialized.addr, align 1
  %0 = load i8, i8* %initialized.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end2

if.end:                                           ; preds = %entry
  %1 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %cmp = icmp ne %struct.sObjPool* %1, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %2 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  call void @objPoolDelete(%struct.sObjPool* %2)
  store %struct.sObjPool* null, %struct.sObjPool** @TokenPool, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @ZephirParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 9, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @zephirExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findZephirTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeZephirParser, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 7
  store void (i32, i1)* @finalize, void (i32, i1)** %finalize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([60 x %struct.keywordTable], [60 x %struct.keywordTable]* @PhpKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 19
  store i32 60, i32* %keywordCount, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findZephirTags() #0 {
entry:
  call void @findTags(i1 zeroext true)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeZephirParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_zephir, align 4
  call void @initializePool()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findTags(i1 zeroext %startsInPhpMode) #0 {
entry:
  %startsInPhpMode.addr = alloca i8, align 1
  %token = alloca %struct.tokenInfo*, align 8
  %frombool = zext i1 %startsInPhpMode to i8
  store i8 %frombool, i8* %startsInPhpMode.addr, align 1
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %token, align 8
  %2 = load i8, i8* %startsInPhpMode.addr, align 1
  %tobool = trunc i8 %2 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* @InPhp, align 1
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 1), align 4
  %call2 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call2, %struct.sVString** @CurrentNamesapce, align 8
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** @FullScope, align 8
  store i32 0, i32* @AnonymousID, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @enterScope(%struct.tokenInfo* %3, %struct.sVString* null, i32 -1)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %5, 1
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %7 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  call void @vStringDelete(%struct.sVString* %7)
  %8 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %10 = bitcast %struct.tokenInfo* %9 to i8*
  call void @objPoolPut(%struct.sObjPool* %8, i8* %10)
  ret void
}

declare i8* @objPoolGet(%struct.sObjPool*) #1

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @enterScope(%struct.tokenInfo* %parentToken, %struct.sVString* %extraScope, i32 %parentKind) #0 {
entry:
  %parentToken.addr = alloca %struct.tokenInfo*, align 8
  %extraScope.addr = alloca %struct.sVString*, align 8
  %parentKind.addr = alloca i32, align 4
  %token = alloca %struct.tokenInfo*, align 8
  %origParentKind = alloca i32, align 4
  %readNext = alloca i8, align 1
  %buf = alloca [32 x i8], align 1
  %name = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %parentToken, %struct.tokenInfo** %parentToken.addr, align 8
  store %struct.sVString* %extraScope, %struct.sVString** %extraScope.addr, align 8
  store i32 %parentKind, i32* %parentKind.addr, align 4
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %token, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %parentToken.addr, align 8
  %parentKind1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 6
  %3 = load i32, i32* %parentKind1, align 8
  store i32 %3, i32* %origParentKind, align 4
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %parentToken.addr, align 8
  call void @copyToken(%struct.tokenInfo* %4, %struct.tokenInfo* %5, i1 zeroext true)
  %6 = load %struct.sVString*, %struct.sVString** %extraScope.addr, align 8
  %tobool = icmp ne %struct.sVString* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %parentKind.addr, align 4
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %parentKind2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 6
  store i32 %7, i32* %parentKind2, align 8
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %10 = load %struct.sVString*, %struct.sVString** %extraScope.addr, align 8
  %11 = load i32, i32* %origParentKind, align 4
  call void @addToScope(%struct.tokenInfo* %9, %struct.sVString* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readToken(%struct.tokenInfo* %12)
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %if.end
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %14, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type3, align 8
  %cmp4 = icmp ne i32 %16, 14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i8 1, i8* %readNext, align 1
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type5, align 8
  switch i32 %19, label %sw.default51 [
    i32 13, label %sw.bb
    i32 7, label %sw.bb6
    i32 18, label %sw.bb48
  ]

sw.bb:                                            ; preds = %while.body
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @enterScope(%struct.tokenInfo* %20, %struct.sVString* null, i32 -1)
  br label %sw.epilog52

sw.bb6:                                           ; preds = %while.body
  %21 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword, align 4
  switch i32 %22, label %sw.default [
    i32 40, label %sw.bb7
    i32 7, label %sw.bb16
    i32 38, label %sw.bb19
    i32 52, label %sw.bb22
    i32 29, label %sw.bb25
    i32 9, label %sw.bb28
    i32 12, label %sw.bb31
    i32 54, label %sw.bb34
    i32 39, label %sw.bb40
    i32 43, label %sw.bb43
    i32 44, label %sw.bb44
    i32 45, label %sw.bb45
    i32 55, label %sw.bb46
    i32 0, label %sw.bb47
  ]

sw.bb7:                                           ; preds = %sw.bb6
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readToken(%struct.tokenInfo* %23)
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword8 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 1
  %25 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp ne i32 %25, 7
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb7
  store i8 0, i8* %readNext, align 1
  br label %if.end15

if.else:                                          ; preds = %sw.bb7
  %26 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call11 = call i8* @objPoolGet(%struct.sObjPool* %26)
  %27 = bitcast i8* %call11 to %struct.tokenInfo*
  store %struct.tokenInfo* %27, %struct.tokenInfo** %name, align 8
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @copyToken(%struct.tokenInfo* %28, %struct.tokenInfo* %29, i1 zeroext true)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  %30 = load i32, i32* @AnonymousID, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* @AnonymousID, align 4
  %call12 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %arraydecay, i64 32, i32 0, i64 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %inc)
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 2
  %32 = load %struct.sVString*, %struct.sVString** %string, align 8
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  call void @vStringCopyS(%struct.sVString* %32, i8* %arraydecay13)
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %call14 = call zeroext i1 @parseClassOrIface(%struct.tokenInfo* %33, i32 0, %struct.tokenInfo* %34)
  %frombool = zext i1 %call14 to i8
  store i8 %frombool, i8* %readNext, align 1
  %35 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %36 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %37 = bitcast %struct.tokenInfo* %36 to i8*
  call void @objPoolPut(%struct.sObjPool* %35, i8* %37)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  br label %sw.epilog

sw.bb16:                                          ; preds = %sw.bb6
  %38 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call17 = call zeroext i1 @parseClassOrIface(%struct.tokenInfo* %38, i32 0, %struct.tokenInfo* null)
  %frombool18 = zext i1 %call17 to i8
  store i8 %frombool18, i8* %readNext, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %sw.bb6
  %39 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call20 = call zeroext i1 @parseClassOrIface(%struct.tokenInfo* %39, i32 3, %struct.tokenInfo* null)
  %frombool21 = zext i1 %call20 to i8
  store i8 %frombool21, i8* %readNext, align 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %sw.bb6
  %40 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call23 = call zeroext i1 @parseTrait(%struct.tokenInfo* %40)
  %frombool24 = zext i1 %call23 to i8
  store i8 %frombool24, i8* %readNext, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %sw.bb6
  %41 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call26 = call zeroext i1 @parseFunction(%struct.tokenInfo* %41, %struct.tokenInfo* null)
  %frombool27 = zext i1 %call26 to i8
  store i8 %frombool27, i8* %readNext, align 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %sw.bb6
  %42 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call29 = call zeroext i1 @parseConstant(%struct.tokenInfo* %42)
  %frombool30 = zext i1 %call29 to i8
  store i8 %frombool30, i8* %readNext, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %sw.bb6
  %43 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call32 = call zeroext i1 @parseDefine(%struct.tokenInfo* %43)
  %frombool33 = zext i1 %call32 to i8
  store i8 %frombool33, i8* %readNext, align 1
  br label %sw.epilog

sw.bb34:                                          ; preds = %sw.bb6
  %44 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %44, i32 0, i32 3
  %45 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 0
  %46 = load i64, i64* %length, align 8
  %cmp35 = icmp eq i64 %46, 0
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %sw.bb34
  %47 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call37 = call zeroext i1 @parseUse(%struct.tokenInfo* %47)
  %frombool38 = zext i1 %call37 to i8
  store i8 %frombool38, i8* %readNext, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %sw.bb34
  br label %sw.epilog

sw.bb40:                                          ; preds = %sw.bb6
  %48 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call41 = call zeroext i1 @parseNamespace(%struct.tokenInfo* %48)
  %frombool42 = zext i1 %call41 to i8
  store i8 %frombool42, i8* %readNext, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %sw.bb6
  store i32 1, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %sw.bb6
  store i32 2, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %sw.bb6
  store i32 3, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %sw.bb6
  store i32 3, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %sw.bb6
  store i32 1, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 1), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb40, %if.end39, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %if.end15
  br label %sw.epilog52

sw.bb48:                                          ; preds = %while.body
  %49 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call49 = call zeroext i1 @parseVariable(%struct.tokenInfo* %49)
  %frombool50 = zext i1 %call49 to i8
  store i8 %frombool50, i8* %readNext, align 1
  br label %sw.epilog52

sw.default51:                                     ; preds = %while.body
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.default51, %sw.bb48, %sw.epilog, %sw.bb
  %50 = load i8, i8* %readNext, align 1
  %tobool53 = trunc i8 %50 to i1
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %sw.epilog52
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readToken(%struct.tokenInfo* %51)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %sw.epilog52
  br label %while.cond

while.end:                                        ; preds = %land.end
  %52 = load %struct.tokenInfo*, %struct.tokenInfo** %parentToken.addr, align 8
  %53 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @copyToken(%struct.tokenInfo* %52, %struct.tokenInfo* %53, i1 zeroext false)
  %54 = load i32, i32* %origParentKind, align 4
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %parentToken.addr, align 8
  %parentKind56 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %55, i32 0, i32 6
  store i32 %54, i32* %parentKind56, align 8
  %56 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %57 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %58 = bitcast %struct.tokenInfo* %57 to i8*
  call void @objPoolPut(%struct.sObjPool* %56, i8* %58)
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare void @objPoolPut(%struct.sObjPool*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.tokenInfo* %dest, %struct.tokenInfo* %src, i1 zeroext %scope) #0 {
entry:
  %dest.addr = alloca %struct.tokenInfo*, align 8
  %src.addr = alloca %struct.tokenInfo*, align 8
  %scope.addr = alloca i8, align 1
  store %struct.tokenInfo* %dest, %struct.tokenInfo** %dest.addr, align 8
  store %struct.tokenInfo* %src, %struct.tokenInfo** %src.addr, align 8
  %frombool = zext i1 %scope to i8
  store i8 %frombool, i8* %scope.addr, align 1
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 4
  %1 = load i64, i64* %lineNumber, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %lineNumber1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 4
  store i64 %1, i64* %lineNumber1, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 5
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 5
  %5 = bitcast %struct._MIOPos* %filePosition to i8*
  %6 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 0
  store i32 %8, i32* %type3, align 8
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword, align 4
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %keyword4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %12, i32 0, i32 1
  store i32 %11, i32* %keyword4, align 4
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %string5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %string5, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %16)
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %parentKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 6
  %18 = load i32, i32* %parentKind, align 8
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %parentKind6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %19, i32 0, i32 6
  store i32 %18, i32* %parentKind6, align 8
  %20 = load i8, i8* %scope.addr, align 1
  %tobool = trunc i8 %20 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %scope7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %21, i32 0, i32 3
  %22 = load %struct.sVString*, %struct.sVString** %scope7, align 8
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %scope8 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %23, i32 0, i32 3
  %24 = load %struct.sVString*, %struct.sVString** %scope8, align 8
  call void @vStringCopy(%struct.sVString* %22, %struct.sVString* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addToScope(%struct.tokenInfo* %token, %struct.sVString* %extra, i32 %kindOfUpperScope) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %extra.addr = alloca %struct.sVString*, align 8
  %kindOfUpperScope.addr = alloca i32, align 4
  %sep = alloca i8*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %extra, %struct.sVString** %extra.addr, align 8
  store i32 %kindOfUpperScope, i32* %kindOfUpperScope.addr, align 4
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 3
  %1 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %parentKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 6
  %4 = load i32, i32* %parentKind, align 8
  %5 = load i32, i32* %kindOfUpperScope.addr, align 4
  %call = call i8* @phpScopeSeparatorFor(i32 %4, i32 %5)
  store i8* %call, i8** %sep, align 8
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 3
  %7 = load %struct.sVString*, %struct.sVString** %scope1, align 8
  %8 = load i8*, i8** %sep, align 8
  call void @vStringCatS(%struct.sVString* %7, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 3
  %10 = load %struct.sVString*, %struct.sVString** %scope2, align 8
  %11 = load %struct.sVString*, %struct.sVString** %extra.addr, align 8
  call void @vStringCat(%struct.sVString* %10, %struct.sVString* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %d = alloca i32, align 4
  %tmp47 = alloca %struct._MIOPos, align 8
  %d50 = alloca i32, align 4
  %d99 = alloca i32, align 4
  %d110 = alloca i32, align 4
  %d139 = alloca i32, align 4
  %d154 = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
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
  br label %getNextChar

getNextChar:                                      ; preds = %if.then157, %do.end130, %if.then113, %sw.bb96, %if.then80, %do.end
  %7 = load i8, i8* @InPhp, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %getNextChar
  %call = call i32 @findPhpStart()
  store i32 %call, i32* %c, align 4
  %8 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %8, -1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i8 1, i8* @InPhp, align 1
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3

if.else:                                          ; preds = %getNextChar
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %9 = load i32, i32* %c, align 4
  %call4 = call i32 @skipWhitespaces(i32 %9)
  store i32 %call4, i32* %c, align 4
  %call5 = call i64 @getInputLineNumber()
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 4
  store i64 %call5, i64* %lineNumber, align 8
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 5
  %call6 = call [2 x i64] @getInputFilePosition()
  %12 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call6, [2 x i64]* %12, align 8
  %13 = bitcast %struct._MIOPos* %filePosition to i8*
  %14 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load i32, i32* %c, align 4
  switch i32 %15, label %sw.default [
    i32 -1, label %sw.bb
    i32 40, label %sw.bb8
    i32 41, label %sw.bb10
    i32 59, label %sw.bb12
    i32 44, label %sw.bb14
    i32 46, label %sw.bb16
    i32 58, label %sw.bb18
    i32 123, label %sw.bb20
    i32 125, label %sw.bb22
    i32 91, label %sw.bb24
    i32 93, label %sw.bb26
    i32 38, label %sw.bb28
    i32 92, label %sw.bb30
    i32 61, label %sw.bb32
    i32 39, label %sw.bb41
    i32 34, label %sw.bb41
    i32 60, label %sw.bb49
    i32 35, label %sw.bb96
    i32 43, label %sw.bb98
    i32 45, label %sw.bb98
    i32 42, label %sw.bb98
    i32 37, label %sw.bb98
    i32 47, label %sw.bb109
    i32 36, label %sw.bb138
    i32 63, label %sw.bb153
  ]

sw.bb:                                            ; preds = %if.end3
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 0
  store i32 1, i32* %type7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end3
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 0
  store i32 8, i32* %type9, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end3
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  store i32 3, i32* %type11, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end3
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %19, i32 0, i32 0
  store i32 4, i32* %type13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end3
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  store i32 6, i32* %type15, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end3
  %21 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %21, i32 0, i32 0
  store i32 12, i32* %type17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end3
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 0
  store i32 5, i32* %type19, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end3
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %23, i32 0, i32 0
  store i32 13, i32* %type21, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end3
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type23 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 0
  store i32 14, i32* %type23, align 8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end3
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type25 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %25, i32 0, i32 0
  store i32 16, i32* %type25, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end3
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type27 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %26, i32 0, i32 0
  store i32 17, i32* %type27, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end3
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type29 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %27, i32 0, i32 0
  store i32 19, i32* %type29, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end3
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %28, i32 0, i32 0
  store i32 20, i32* %type31, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end3
  %call33 = call i32 @getcFromInputFile()
  store i32 %call33, i32* %d, align 4
  %29 = load i32, i32* %d, align 4
  %cmp34 = icmp eq i32 %29, 61
  br i1 %cmp34, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb32
  %30 = load i32, i32* %d, align 4
  %cmp35 = icmp eq i32 %30, 62
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %lor.lhs.false, %sw.bb32
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type37 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 0
  store i32 9, i32* %type37, align 8
  br label %if.end40

if.else38:                                        ; preds = %lor.lhs.false
  %32 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %32)
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type39 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %33, i32 0, i32 0
  store i32 15, i32* %type39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then36
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end3, %if.end3
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type42 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 0
  store i32 11, i32* %type42, align 8
  %35 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string43 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %35, i32 0, i32 2
  %36 = load %struct.sVString*, %struct.sVString** %string43, align 8
  %37 = load i32, i32* %c, align 4
  call void @parseString(%struct.sVString* %36, i32 %37)
  %call44 = call i64 @getInputLineNumber()
  %38 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber45 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %38, i32 0, i32 4
  store i64 %call44, i64* %lineNumber45, align 8
  %39 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition46 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %39, i32 0, i32 5
  %call48 = call [2 x i64] @getInputFilePosition()
  %40 = bitcast %struct._MIOPos* %tmp47 to [2 x i64]*
  store [2 x i64] %call48, [2 x i64]* %40, align 8
  %41 = bitcast %struct._MIOPos* %filePosition46 to i8*
  %42 = bitcast %struct._MIOPos* %tmp47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end3
  %call51 = call i32 @getcFromInputFile()
  store i32 %call51, i32* %d50, align 4
  %43 = load i32, i32* %d50, align 4
  %cmp52 = icmp eq i32 %43, 47
  br i1 %cmp52, label %if.then53, label %if.else84

if.then53:                                        ; preds = %sw.bb49
  %call54 = call i32 @getcFromInputFile()
  store i32 %call54, i32* %d50, align 4
  %call55 = call i32 @tolower(i32 %call54) #4
  %cmp56 = icmp eq i32 %call55, 115
  br i1 %cmp56, label %land.lhs.true, label %if.else81

land.lhs.true:                                    ; preds = %if.then53
  %call57 = call i32 @getcFromInputFile()
  store i32 %call57, i32* %d50, align 4
  %call58 = call i32 @tolower(i32 %call57) #4
  %cmp59 = icmp eq i32 %call58, 99
  br i1 %cmp59, label %land.lhs.true60, label %if.else81

land.lhs.true60:                                  ; preds = %land.lhs.true
  %call61 = call i32 @getcFromInputFile()
  store i32 %call61, i32* %d50, align 4
  %call62 = call i32 @tolower(i32 %call61) #4
  %cmp63 = icmp eq i32 %call62, 114
  br i1 %cmp63, label %land.lhs.true64, label %if.else81

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call i32 @getcFromInputFile()
  store i32 %call65, i32* %d50, align 4
  %call66 = call i32 @tolower(i32 %call65) #4
  %cmp67 = icmp eq i32 %call66, 105
  br i1 %cmp67, label %land.lhs.true68, label %if.else81

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %call69 = call i32 @getcFromInputFile()
  store i32 %call69, i32* %d50, align 4
  %call70 = call i32 @tolower(i32 %call69) #4
  %cmp71 = icmp eq i32 %call70, 112
  br i1 %cmp71, label %land.lhs.true72, label %if.else81

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %call73 = call i32 @getcFromInputFile()
  store i32 %call73, i32* %d50, align 4
  %call74 = call i32 @tolower(i32 %call73) #4
  %cmp75 = icmp eq i32 %call74, 116
  br i1 %cmp75, label %land.lhs.true76, label %if.else81

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %call77 = call i32 @getcFromInputFile()
  %call78 = call i32 @skipWhitespaces(i32 %call77)
  store i32 %call78, i32* %d50, align 4
  %cmp79 = icmp eq i32 %call78, 62
  br i1 %cmp79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %land.lhs.true76
  store i8 0, i8* @InPhp, align 1
  br label %getNextChar

if.else81:                                        ; preds = %land.lhs.true76, %land.lhs.true72, %land.lhs.true68, %land.lhs.true64, %land.lhs.true60, %land.lhs.true, %if.then53
  %44 = load i32, i32* %d50, align 4
  call void @ungetcToInputFile(i32 %44)
  %45 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type82 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %45, i32 0, i32 0
  store i32 0, i32* %type82, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else81
  br label %if.end95

if.else84:                                        ; preds = %sw.bb49
  %46 = load i32, i32* %d50, align 4
  %cmp85 = icmp eq i32 %46, 60
  br i1 %cmp85, label %land.lhs.true86, label %if.else92

land.lhs.true86:                                  ; preds = %if.else84
  %call87 = call i32 @getcFromInputFile()
  store i32 %call87, i32* %d50, align 4
  %cmp88 = icmp eq i32 %call87, 60
  br i1 %cmp88, label %if.then89, label %if.else92

if.then89:                                        ; preds = %land.lhs.true86
  %47 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type90 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %47, i32 0, i32 0
  store i32 11, i32* %type90, align 8
  %48 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string91 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %48, i32 0, i32 2
  %49 = load %struct.sVString*, %struct.sVString** %string91, align 8
  call void @parseHeredoc(%struct.sVString* %49)
  br label %if.end94

if.else92:                                        ; preds = %land.lhs.true86, %if.else84
  %50 = load i32, i32* %d50, align 4
  call void @ungetcToInputFile(i32 %50)
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type93 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %51, i32 0, i32 0
  store i32 0, i32* %type93, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.else92, %if.then89
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end83
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end3
  %call97 = call i32 @skipSingleComment()
  br label %getNextChar

sw.bb98:                                          ; preds = %if.end3, %if.end3, %if.end3, %if.end3
  %call100 = call i32 @getcFromInputFile()
  store i32 %call100, i32* %d99, align 4
  %52 = load i32, i32* %d99, align 4
  %cmp101 = icmp ne i32 %52, 61
  br i1 %cmp101, label %land.lhs.true102, label %if.end107

land.lhs.true102:                                 ; preds = %sw.bb98
  %53 = load i32, i32* %c, align 4
  %cmp103 = icmp eq i32 %53, 45
  br i1 %cmp103, label %land.lhs.true104, label %if.then106

land.lhs.true104:                                 ; preds = %land.lhs.true102
  %54 = load i32, i32* %d99, align 4
  %cmp105 = icmp eq i32 %54, 62
  br i1 %cmp105, label %if.end107, label %if.then106

if.then106:                                       ; preds = %land.lhs.true104, %land.lhs.true102
  %55 = load i32, i32* %d99, align 4
  call void @ungetcToInputFile(i32 %55)
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %land.lhs.true104, %sw.bb98
  %56 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type108 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %56, i32 0, i32 0
  store i32 9, i32* %type108, align 8
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end3
  %call111 = call i32 @getcFromInputFile()
  store i32 %call111, i32* %d110, align 4
  %57 = load i32, i32* %d110, align 4
  %cmp112 = icmp eq i32 %57, 47
  br i1 %cmp112, label %if.then113, label %if.else115

if.then113:                                       ; preds = %sw.bb109
  %call114 = call i32 @skipSingleComment()
  br label %getNextChar

if.else115:                                       ; preds = %sw.bb109
  %58 = load i32, i32* %d110, align 4
  %cmp116 = icmp eq i32 %58, 42
  br i1 %cmp116, label %if.then117, label %if.else131

if.then117:                                       ; preds = %if.else115
  br label %do.body118

do.body118:                                       ; preds = %land.end, %if.then117
  %call119 = call i32 @skipToCharacter(i32 42)
  store i32 %call119, i32* %c, align 4
  %59 = load i32, i32* %c, align 4
  %cmp120 = icmp ne i32 %59, -1
  br i1 %cmp120, label %if.then121, label %if.end127

if.then121:                                       ; preds = %do.body118
  %call122 = call i32 @getcFromInputFile()
  store i32 %call122, i32* %c, align 4
  %60 = load i32, i32* %c, align 4
  %cmp123 = icmp eq i32 %60, 47
  br i1 %cmp123, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.then121
  br label %do.end130

if.else125:                                       ; preds = %if.then121
  %61 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %61)
  br label %if.end126

if.end126:                                        ; preds = %if.else125
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %do.body118
  br label %do.cond

do.cond:                                          ; preds = %if.end127
  %62 = load i32, i32* %c, align 4
  %cmp128 = icmp ne i32 %62, -1
  br i1 %cmp128, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %63 = load i32, i32* %c, align 4
  %cmp129 = icmp ne i32 %63, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %64 = phi i1 [ false, %do.cond ], [ %cmp129, %land.rhs ]
  br i1 %64, label %do.body118, label %do.end130

do.end130:                                        ; preds = %land.end, %if.then124
  br label %getNextChar

if.else131:                                       ; preds = %if.else115
  %65 = load i32, i32* %d110, align 4
  %cmp132 = icmp ne i32 %65, 61
  br i1 %cmp132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.else131
  %66 = load i32, i32* %d110, align 4
  call void @ungetcToInputFile(i32 %66)
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.else131
  %67 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type135 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %67, i32 0, i32 0
  store i32 9, i32* %type135, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.end134
  br label %if.end137

if.end137:                                        ; preds = %if.end136
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end3
  %call140 = call i32 @getcFromInputFile()
  store i32 %call140, i32* %d139, align 4
  %68 = load i32, i32* %d139, align 4
  %call141 = call i32 @isalnum(i32 %68) #4
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.else149, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %sw.bb138
  %69 = load i32, i32* %d139, align 4
  %cmp144 = icmp eq i32 %69, 95
  br i1 %cmp144, label %if.else149, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %lor.lhs.false143
  %70 = load i32, i32* %d139, align 4
  %cmp146 = icmp sge i32 %70, 128
  br i1 %cmp146, label %if.else149, label %if.then147

if.then147:                                       ; preds = %lor.lhs.false145
  %71 = load i32, i32* %d139, align 4
  call void @ungetcToInputFile(i32 %71)
  %72 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type148 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %72, i32 0, i32 0
  store i32 0, i32* %type148, align 8
  br label %if.end152

if.else149:                                       ; preds = %lor.lhs.false145, %lor.lhs.false143, %sw.bb138
  %73 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string150 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %73, i32 0, i32 2
  %74 = load %struct.sVString*, %struct.sVString** %string150, align 8
  %75 = load i32, i32* %d139, align 4
  call void @parseIdentifier(%struct.sVString* %74, i32 %75)
  %76 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type151 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %76, i32 0, i32 0
  store i32 18, i32* %type151, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.else149, %if.then147
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end3
  %call155 = call i32 @getcFromInputFile()
  store i32 %call155, i32* %d154, align 4
  %77 = load i32, i32* %d154, align 4
  %cmp156 = icmp eq i32 %77, 62
  br i1 %cmp156, label %if.then157, label %if.else158

if.then157:                                       ; preds = %sw.bb153
  store i8 0, i8* @InPhp, align 1
  br label %getNextChar

if.else158:                                       ; preds = %sw.bb153
  %78 = load i32, i32* %d154, align 4
  call void @ungetcToInputFile(i32 %78)
  %79 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type159 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %79, i32 0, i32 0
  store i32 0, i32* %type159, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.else158
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  %80 = load i32, i32* %c, align 4
  %call161 = call i32 @isalnum(i32 %80) #4
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.else169, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %sw.default
  %81 = load i32, i32* %c, align 4
  %cmp164 = icmp eq i32 %81, 95
  br i1 %cmp164, label %if.else169, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %lor.lhs.false163
  %82 = load i32, i32* %c, align 4
  %cmp166 = icmp sge i32 %82, 128
  br i1 %cmp166, label %if.else169, label %if.then167

if.then167:                                       ; preds = %lor.lhs.false165
  %83 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type168 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %83, i32 0, i32 0
  store i32 0, i32* %type168, align 8
  br label %if.end183

if.else169:                                       ; preds = %lor.lhs.false165, %lor.lhs.false163, %sw.default
  %84 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string170 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %84, i32 0, i32 2
  %85 = load %struct.sVString*, %struct.sVString** %string170, align 8
  %86 = load i32, i32* %c, align 4
  call void @parseIdentifier(%struct.sVString* %85, i32 %86)
  %87 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string171 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %87, i32 0, i32 2
  %88 = load %struct.sVString*, %struct.sVString** %string171, align 8
  %buffer172 = getelementptr inbounds %struct.sVString, %struct.sVString* %88, i32 0, i32 2
  %89 = load i8*, i8** %buffer172, align 8
  %call173 = call i32 @getInputLanguage()
  %call174 = call i32 @lookupCaseKeyword(i8* %89, i32 %call173)
  %90 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword175 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %90, i32 0, i32 1
  store i32 %call174, i32* %keyword175, align 4
  %91 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword176 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %91, i32 0, i32 1
  %92 = load i32, i32* %keyword176, align 4
  %cmp177 = icmp eq i32 %92, -1
  br i1 %cmp177, label %if.then178, label %if.else180

if.then178:                                       ; preds = %if.else169
  %93 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type179 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %93, i32 0, i32 0
  store i32 10, i32* %type179, align 8
  br label %if.end182

if.else180:                                       ; preds = %if.else169
  %94 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type181 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %94, i32 0, i32 0
  store i32 7, i32* %type181, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then178
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.then167
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end183, %if.end160, %if.end152, %if.end137, %if.end107, %if.end95, %sw.bb41, %if.end40, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %95 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type184 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %95, i32 0, i32 0
  %96 = load i32, i32* %type184, align 8
  %cmp185 = icmp eq i32 %96, 4
  br i1 %cmp185, label %if.then192, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %sw.epilog
  %97 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type187 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %97, i32 0, i32 0
  %98 = load i32, i32* %type187, align 8
  %cmp188 = icmp eq i32 %98, 13
  br i1 %cmp188, label %if.then192, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false186
  %99 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type190 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %99, i32 0, i32 0
  %100 = load i32, i32* %type190, align 8
  %cmp191 = icmp eq i32 %100, 14
  br i1 %cmp191, label %if.then192, label %if.end193

if.then192:                                       ; preds = %lor.lhs.false189, %lor.lhs.false186, %sw.epilog
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 1), align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %lor.lhs.false189
  ret void
}

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #1

declare void @vStringCopyS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseClassOrIface(%struct.tokenInfo* %token, i32 %kind, %struct.tokenInfo* %name) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %name.addr = alloca %struct.tokenInfo*, align 8
  %readNext = alloca i8, align 1
  %impl = alloca i32, align 4
  %nameFree = alloca %struct.tokenInfo*, align 8
  %inheritance = alloca %struct.sVString*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.tokenInfo* %name, %struct.tokenInfo** %name.addr, align 8
  store i8 1, i8* %readNext, align 1
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 1), align 4
  store i32 %0, i32* %impl, align 4
  store %struct.tokenInfo* null, %struct.tokenInfo** %nameFree, align 8
  store %struct.sVString* null, %struct.sVString** %inheritance, align 8
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %1)
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %name.addr, align 8
  %tobool = icmp ne %struct.tokenInfo* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.tokenInfo* %3)
  br label %if.end2

if.else:                                          ; preds = %entry
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %5, 10
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %6)
  %7 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %7, %struct.tokenInfo** %nameFree, align 8
  store %struct.tokenInfo* %7, %struct.tokenInfo** %name.addr, align 8
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %nameFree, align 8
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %8, %struct.tokenInfo* %9, i1 zeroext true)
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %10)
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %inheritance, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end2
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %12, 10
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %14, 7
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %16, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %17 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %19, 10
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %while.body
  %20 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 0
  %21 = load i64, i64* %length, align 8
  %cmp13 = icmp ugt i64 %21, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  %22 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @vStringPut(%struct.sVString* %22, i32 44)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %23 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 2
  %25 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %23, %struct.sVString* %25)
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %while.body
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %26)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %27 = load i32, i32* %kind.addr, align 4
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %name.addr, align 8
  %29 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  %30 = load i32, i32* %impl, align 4
  call void @makeClassOrIfaceTag(i32 %27, %struct.tokenInfo* %28, %struct.sVString* %29, i32 %30)
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type17, align 8
  %cmp18 = icmp eq i32 %32, 13
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %while.end
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %name.addr, align 8
  %string20 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 2
  %35 = load %struct.sVString*, %struct.sVString** %string20, align 8
  %36 = load i32, i32* %kind.addr, align 4
  call void @enterScope(%struct.tokenInfo* %33, %struct.sVString* %35, i32 %36)
  br label %if.end22

if.else21:                                        ; preds = %while.end
  store i8 0, i8* %readNext, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then19
  %37 = load %struct.tokenInfo*, %struct.tokenInfo** %nameFree, align 8
  %tobool23 = icmp ne %struct.tokenInfo* %37, null
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %38 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %39 = load %struct.tokenInfo*, %struct.tokenInfo** %nameFree, align 8
  %40 = bitcast %struct.tokenInfo* %39 to i8*
  call void @objPoolPut(%struct.sObjPool* %38, i8* %40)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %41 = load %struct.sVString*, %struct.sVString** %inheritance, align 8
  call void @vStringDelete(%struct.sVString* %41)
  %42 = load i8, i8* %readNext, align 1
  %tobool26 = trunc i8 %42 to i1
  store i1 %tobool26, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end25, %if.then1
  %43 = load i1, i1* %retval, align 1
  ret i1 %43
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseTrait(%struct.tokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.tokenInfo*, align 8
  %readNext = alloca i8, align 1
  %name = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i8 1, i8* %readNext, align 1
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %0)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %3)
  %4 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %4, %struct.tokenInfo** %name, align 8
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %5, %struct.tokenInfo* %6, i1 zeroext true)
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  call void @makeSimplePhpTag(%struct.tokenInfo* %7, i32 6, i32 0)
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %8)
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %10, 13
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %12, i32 0, i32 2
  %13 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @enterScope(%struct.tokenInfo* %11, %struct.sVString* %13, i32 6)
  br label %if.end4

if.else:                                          ; preds = %if.end
  store i8 0, i8* %readNext, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %14 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %16 = bitcast %struct.tokenInfo* %15 to i8*
  call void @objPoolPut(%struct.sObjPool* %14, i8* %16)
  %17 = load i8, i8* %readNext, align 1
  %tobool = trunc i8 %17 to i1
  store i1 %tobool, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseFunction(%struct.tokenInfo* %token, %struct.tokenInfo* %name) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.tokenInfo*, align 8
  %name.addr = alloca %struct.tokenInfo*, align 8
  %readNext = alloca i8, align 1
  %access = alloca i32, align 4
  %impl = alloca i32, align 4
  %nameFree = alloca %struct.tokenInfo*, align 8
  %arglist = alloca %struct.sVString*, align 8
  %depth = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.tokenInfo* %name, %struct.tokenInfo** %name.addr, align 8
  store i8 1, i8* %readNext, align 1
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  store i32 %0, i32* %access, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 1), align 4
  store i32 %1, i32* %impl, align 4
  store %struct.tokenInfo* null, %struct.tokenInfo** %nameFree, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %2)
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %name.addr, align 8
  %tobool = icmp ne %struct.tokenInfo* %6, null
  br i1 %tobool, label %if.end8, label %if.then1

if.then1:                                         ; preds = %if.end
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type2, align 8
  %cmp3 = icmp ne i32 %8, 10
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.then1
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type4, align 8
  %cmp5 = icmp ne i32 %10, 7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %if.then1
  %11 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %11)
  %12 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %12, %struct.tokenInfo** %nameFree, align 8
  store %struct.tokenInfo* %12, %struct.tokenInfo** %name.addr, align 8
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %nameFree, align 8
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %13, %struct.tokenInfo* %14, i1 zeroext true)
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %15)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %17, 8
  br i1 %cmp10, label %if.then11, label %if.end47

if.then11:                                        ; preds = %if.end8
  %call12 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call12, %struct.sVString** %arglist, align 8
  store i32 1, i32* %depth, align 4
  %18 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %18, i32 40)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then11
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %19)
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type13, align 8
  switch i32 %21, label %sw.default [
    i32 8, label %sw.bb
    i32 3, label %sw.bb14
  ]

sw.bb:                                            ; preds = %do.body
  %22 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %depth, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.body
  %23 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %depth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type15, align 8
  switch i32 %25, label %sw.default40 [
    i32 19, label %sw.bb16
    i32 14, label %sw.bb17
    i32 3, label %sw.bb18
    i32 17, label %sw.bb19
    i32 5, label %sw.bb20
    i32 6, label %sw.bb21
    i32 15, label %sw.bb22
    i32 13, label %sw.bb23
    i32 8, label %sw.bb24
    i32 16, label %sw.bb25
    i32 12, label %sw.bb26
    i32 4, label %sw.bb27
    i32 20, label %sw.bb28
    i32 11, label %sw.bb29
    i32 10, label %sw.bb30
    i32 7, label %sw.bb30
    i32 18, label %sw.bb30
  ]

sw.bb16:                                          ; preds = %sw.epilog
  %26 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %26, i32 38)
  br label %sw.epilog41

sw.bb17:                                          ; preds = %sw.epilog
  %27 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %27, i32 125)
  br label %sw.epilog41

sw.bb18:                                          ; preds = %sw.epilog
  %28 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %28, i32 41)
  br label %sw.epilog41

sw.bb19:                                          ; preds = %sw.epilog
  %29 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %29, i32 93)
  br label %sw.epilog41

sw.bb20:                                          ; preds = %sw.epilog
  %30 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %30, i32 58)
  br label %sw.epilog41

sw.bb21:                                          ; preds = %sw.epilog
  %31 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringCatS(%struct.sVString* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %sw.epilog41

sw.bb22:                                          ; preds = %sw.epilog
  %32 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringCatS(%struct.sVString* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  br label %sw.epilog41

sw.bb23:                                          ; preds = %sw.epilog
  %33 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %33, i32 123)
  br label %sw.epilog41

sw.bb24:                                          ; preds = %sw.epilog
  %34 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %34, i32 40)
  br label %sw.epilog41

sw.bb25:                                          ; preds = %sw.epilog
  %35 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %35, i32 91)
  br label %sw.epilog41

sw.bb26:                                          ; preds = %sw.epilog
  %36 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %36, i32 46)
  br label %sw.epilog41

sw.bb27:                                          ; preds = %sw.epilog
  %37 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %37, i32 59)
  br label %sw.epilog41

sw.bb28:                                          ; preds = %sw.epilog
  %38 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %38, i32 92)
  br label %sw.epilog41

sw.bb29:                                          ; preds = %sw.epilog
  %39 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %39, i32 39)
  %40 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %41 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %41, i32 0, i32 2
  %42 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %40, %struct.sVString* %42)
  %43 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %43, i32 39)
  br label %sw.epilog41

sw.bb30:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %44 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %44, i32 0, i32 2
  %45 = load i8*, i8** %buffer, align 8
  %46 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 0
  %47 = load i64, i64* %length, align 8
  %sub = sub i64 %47, 1
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 %sub
  %48 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %48 to i32
  switch i32 %conv, label %sw.default32 [
    i32 0, label %sw.bb31
    i32 32, label %sw.bb31
    i32 123, label %sw.bb31
    i32 40, label %sw.bb31
    i32 91, label %sw.bb31
    i32 46, label %sw.bb31
    i32 92, label %sw.bb31
  ]

sw.bb31:                                          ; preds = %sw.bb30, %sw.bb30, %sw.bb30, %sw.bb30, %sw.bb30, %sw.bb30, %sw.bb30
  br label %sw.epilog33

sw.default32:                                     ; preds = %sw.bb30
  %49 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %49, i32 32)
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default32, %sw.bb31
  %50 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type34 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %50, i32 0, i32 0
  %51 = load i32, i32* %type34, align 8
  %cmp35 = icmp eq i32 %51, 18
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.epilog33
  %52 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %52, i32 36)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %sw.epilog33
  %53 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %54 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string39 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %54, i32 0, i32 2
  %55 = load %struct.sVString*, %struct.sVString** %string39, align 8
  call void @vStringCat(%struct.sVString* %53, %struct.sVString* %55)
  br label %sw.epilog41

sw.default40:                                     ; preds = %sw.epilog
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.default40, %if.end38, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog41
  %56 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type42 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %56, i32 0, i32 0
  %57 = load i32, i32* %type42, align 8
  %cmp43 = icmp ne i32 %57, 1
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %58 = load i32, i32* %depth, align 4
  %cmp45 = icmp sgt i32 %58, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %59 = phi i1 [ false, %do.cond ], [ %cmp45, %land.rhs ]
  br i1 %59, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %60 = load %struct.tokenInfo*, %struct.tokenInfo** %name.addr, align 8
  %61 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %62 = load i32, i32* %access, align 4
  %63 = load i32, i32* %impl, align 4
  call void @makeFunctionTag(%struct.tokenInfo* %60, %struct.sVString* %61, i32 %62, i32 %63)
  %64 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringDelete(%struct.sVString* %64)
  %65 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %65)
  br label %if.end47

if.end47:                                         ; preds = %do.end, %if.end8
  %66 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type48 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %66, i32 0, i32 0
  %67 = load i32, i32* %type48, align 8
  %cmp49 = icmp eq i32 %67, 7
  br i1 %cmp49, label %land.lhs.true51, label %if.end55

land.lhs.true51:                                  ; preds = %if.end47
  %68 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %68, i32 0, i32 1
  %69 = load i32, i32* %keyword, align 4
  %cmp52 = icmp eq i32 %69, 54
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %land.lhs.true51
  %70 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %70)
  %71 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @skipOverParens(%struct.tokenInfo* %71)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %land.lhs.true51, %if.end47
  %call56 = call i32 @getInputLanguage()
  %72 = load i32, i32* @Lang_php, align 4
  %cmp57 = icmp eq i32 %call56, %72
  br i1 %cmp57, label %land.lhs.true59, label %lor.lhs.false

land.lhs.true59:                                  ; preds = %if.end55
  %73 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type60 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %73, i32 0, i32 0
  %74 = load i32, i32* %type60, align 8
  %cmp61 = icmp eq i32 %74, 5
  br i1 %cmp61, label %if.then70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true59, %if.end55
  %call63 = call i32 @getInputLanguage()
  %75 = load i32, i32* @Lang_zephir, align 4
  %cmp64 = icmp eq i32 %call63, %75
  br i1 %cmp64, label %land.lhs.true66, label %if.end80

land.lhs.true66:                                  ; preds = %lor.lhs.false
  %76 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type67 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %76, i32 0, i32 0
  %77 = load i32, i32* %type67, align 8
  %cmp68 = icmp eq i32 %77, 9
  br i1 %cmp68, label %if.then70, label %if.end80

if.then70:                                        ; preds = %land.lhs.true66, %land.lhs.true59
  br label %do.body71

do.body71:                                        ; preds = %lor.end, %if.then70
  %78 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %78)
  br label %do.cond72

do.cond72:                                        ; preds = %do.body71
  %79 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type73 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %79, i32 0, i32 0
  %80 = load i32, i32* %type73, align 8
  %cmp74 = icmp eq i32 %80, 10
  br i1 %cmp74, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond72
  %81 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type76 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %81, i32 0, i32 0
  %82 = load i32, i32* %type76, align 8
  %cmp77 = icmp eq i32 %82, 20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond72
  %83 = phi i1 [ true, %do.cond72 ], [ %cmp77, %lor.rhs ]
  br i1 %83, label %do.body71, label %do.end79

do.end79:                                         ; preds = %lor.end
  br label %if.end80

if.end80:                                         ; preds = %do.end79, %land.lhs.true66, %lor.lhs.false
  %84 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type81 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %84, i32 0, i32 0
  %85 = load i32, i32* %type81, align 8
  %cmp82 = icmp eq i32 %85, 13
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end80
  %86 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %87 = load %struct.tokenInfo*, %struct.tokenInfo** %name.addr, align 8
  %string85 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %87, i32 0, i32 2
  %88 = load %struct.sVString*, %struct.sVString** %string85, align 8
  call void @enterScope(%struct.tokenInfo* %86, %struct.sVString* %88, i32 2)
  br label %if.end86

if.else:                                          ; preds = %if.end80
  store i8 0, i8* %readNext, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then84
  %89 = load %struct.tokenInfo*, %struct.tokenInfo** %nameFree, align 8
  %tobool87 = icmp ne %struct.tokenInfo* %89, null
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end86
  %90 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %91 = load %struct.tokenInfo*, %struct.tokenInfo** %nameFree, align 8
  %92 = bitcast %struct.tokenInfo* %91 to i8*
  call void @objPoolPut(%struct.sObjPool* %90, i8* %92)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end86
  %93 = load i8, i8* %readNext, align 1
  %tobool90 = trunc i8 %93 to i1
  store i1 %tobool90, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end89, %if.then6
  %94 = load i1, i1* %retval, align 1
  ret i1 %94
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseConstant(%struct.tokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.tokenInfo*, align 8
  %name = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %0)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %2, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp ne i32 %4, 7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %5)
  %6 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %6, %struct.tokenInfo** %name, align 8
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %7, %struct.tokenInfo* %8, i1 zeroext true)
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %9)
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %11, 15
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  call void @makeSimplePhpTag(%struct.tokenInfo* %12, i32 1, i32 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %13 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %15 = bitcast %struct.tokenInfo* %14 to i8*
  call void @objPoolPut(%struct.sObjPool* %13, i8* %15)
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %17, 15
  store i1 %cmp8, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseDefine(%struct.tokenInfo* %token) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.tokenInfo*, align 8
  %depth = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 1, i32* %depth, align 4
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %0)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %3)
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %5, 11
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %7, 10
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @makeSimplePhpTag(%struct.tokenInfo* %8, i32 1, i32 0)
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %9)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end6
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type7, align 8
  %cmp8 = icmp ne i32 %11, 1
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %depth, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type10, align 8
  switch i32 %15, label %sw.default [
    i32 8, label %sw.bb
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  %16 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %depth, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  %17 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %depth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %18)
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %19 = load i1, i1* %retval, align 1
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseUse(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %readNext = alloca i8, align 1
  %refType = alloca i8*, align 8
  %refName = alloca %struct.sVString*, align 8
  %nameToken = alloca %struct.tokenInfo*, align 8
  %grouped = alloca i8, align 1
  %refNamePrefixLength = alloca i64, align 8
  %entry28 = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i8 0, i8* %readNext, align 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8** %refType, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %refName, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call1 = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call1 to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %nameToken, align 8
  store i8 0, i8* %grouped, align 1
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %2)
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 1
  %6 = load i32, i32* %keyword, align 4
  %cmp2 = icmp eq i32 %6, 29
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %8, 9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword5, align 4
  switch i32 %10, label %sw.default [
    i32 29, label %sw.bb
    i32 9, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load i8*, i8** getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 2, i32 2), align 8
  store i8* %11, i8** %refType, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  %12 = load i8*, i8** getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 1, i32 2), align 8
  store i8* %12, i8** %refType, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  store i8 1, i8* %readNext, align 1
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %lor.lhs.false, %entry
  %13 = load i8, i8* %readNext, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %14)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %16 = load %struct.sVString*, %struct.sVString** %refName, align 8
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  call void @readQualifiedName(%struct.tokenInfo* %15, %struct.sVString* %16, %struct.tokenInfo* %17)
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %19, 13
  %frombool = zext i1 %cmp10 to i8
  store i8 %frombool, i8* %readNext, align 1
  %frombool11 = zext i1 %cmp10 to i8
  store i8 %frombool11, i8* %grouped, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end8
  %20 = load i8, i8* %grouped, align 1
  %tobool12 = trunc i8 %20 to i1
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %21 = load %struct.sVString*, %struct.sVString** %refName, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 0
  %22 = load i64, i64* %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %refNamePrefixLength, align 8
  %23 = load i8, i8* %readNext, align 1
  %tobool13 = trunc i8 %23 to i1
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %cond.end
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %24)
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %26 = load %struct.sVString*, %struct.sVString** %refName, align 8
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  call void @readQualifiedName(%struct.tokenInfo* %25, %struct.sVString* %26, %struct.tokenInfo* %27)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %cond.end
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %28, i32 0, i32 0
  %29 = load i32, i32* %type16, align 8
  %cmp17 = icmp eq i32 %29, 7
  br i1 %cmp17, label %land.lhs.true18, label %if.end22

land.lhs.true18:                                  ; preds = %if.end15
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword19 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %30, i32 0, i32 1
  %31 = load i32, i32* %keyword19, align 4
  %cmp20 = icmp eq i32 %31, 2
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true18
  %32 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %32)
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %33, %struct.tokenInfo* %34, i1 zeroext true)
  %35 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %35)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true18, %if.end15
  %36 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  %type23 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %36, i32 0, i32 0
  %37 = load i32, i32* %type23, align 8
  %cmp24 = icmp eq i32 %37, 10
  br i1 %cmp24, label %land.lhs.true25, label %if.end32

land.lhs.true25:                                  ; preds = %if.end22
  %38 = load i8, i8* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 8, i32 0), align 8
  %tobool26 = trunc i8 %38 to i1
  br i1 %tobool26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %land.lhs.true25
  %39 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  call void @initPhpEntry(%struct.sTagEntryInfo* %entry28, %struct.tokenInfo* %39, i32 8, i32 0)
  %40 = load i8*, i8** %refType, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %entry28, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 0
  store i8* %40, i8** %arrayidx, align 8
  %41 = load %struct.sVString*, %struct.sVString** %refName, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %41, i32 0, i32 2
  %42 = load i8*, i8** %buffer, align 8
  %extensionFields29 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %entry28, i32 0, i32 11
  %typeRef30 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields29, i32 0, i32 9
  %arrayidx31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef30, i64 0, i64 1
  store i8* %42, i8** %arrayidx31, align 8
  call void @makePhpTagEntry(%struct.sTagEntryInfo* %entry28)
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true25, %if.end22
  %43 = load %struct.sVString*, %struct.sVString** %refName, align 8
  %44 = load i64, i64* %refNamePrefixLength, align 8
  call void @vStringTruncate(%struct.sVString* %43, i64 %44)
  store i8 1, i8* %readNext, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end32
  %45 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type33 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %45, i32 0, i32 0
  %46 = load i32, i32* %type33, align 8
  %cmp34 = icmp eq i32 %46, 6
  br i1 %cmp34, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load i8, i8* %grouped, align 1
  %tobool35 = trunc i8 %47 to i1
  br i1 %tobool35, label %land.lhs.true36, label %if.end40

land.lhs.true36:                                  ; preds = %do.end
  %48 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type37 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %48, i32 0, i32 0
  %49 = load i32, i32* %type37, align 8
  %cmp38 = icmp eq i32 %49, 14
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true36
  %50 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %50)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true36, %do.end
  %51 = load %struct.sVString*, %struct.sVString** %refName, align 8
  call void @vStringDelete(%struct.sVString* %51)
  %52 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %53 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  %54 = bitcast %struct.tokenInfo* %53 to i8*
  call void @objPoolPut(%struct.sObjPool* %52, i8* %54)
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type41 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %55, i32 0, i32 0
  %56 = load i32, i32* %type41, align 8
  %cmp42 = icmp eq i32 %56, 4
  ret i1 %cmp42
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseNamespace(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %nsToken = alloca %struct.tokenInfo*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %sep = alloca i8*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %nsToken, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
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
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %nsToken, align 8
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %6, %struct.tokenInfo* %7, i1 zeroext false)
  br label %do.body1

do.body1:                                         ; preds = %land.end, %do.end
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %8)
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %10, 10
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body1
  %11 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  %length2 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length2, align 8
  %cmp3 = icmp ugt i64 %12, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = call i8* @phpScopeSeparatorFor(i32 5, i32 5)
  store i8* %call5, i8** %sep, align 8
  %13 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  %14 = load i8*, i8** %sep, align 8
  call void @vStringCatS(%struct.sVString* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %15 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 2
  %17 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %15, %struct.sVString* %17)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body1
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type7, align 8
  %cmp8 = icmp ne i32 %19, 1
  br i1 %cmp8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type9, align 8
  %cmp10 = icmp ne i32 %21, 4
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type11, align 8
  %cmp12 = icmp ne i32 %23, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %24 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp12, %land.rhs ]
  br i1 %24, label %do.body1, label %do.end13

do.end13:                                         ; preds = %land.end
  %25 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  %length14 = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 0
  %26 = load i64, i64* %length14, align 8
  %cmp15 = icmp ugt i64 %26, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end13
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %nsToken, align 8
  %28 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  call void @makeNamespacePhpTag(%struct.tokenInfo* %27, %struct.sVString* %28)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end13
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type18 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %type18, align 8
  %cmp19 = icmp eq i32 %30, 13
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @enterScope(%struct.tokenInfo* %31, %struct.sVString* null, i32 -1)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %32 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %nsToken, align 8
  %34 = bitcast %struct.tokenInfo* %33 to i8*
  call void @objPoolPut(%struct.sObjPool* %32, i8* %34)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseVariable(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %name = alloca %struct.tokenInfo*, align 8
  %readNext = alloca i8, align 1
  %access = alloca i32, align 4
  %kind = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i8 1, i8* %readNext, align 1
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @CurrentStatement, i32 0, i32 0), align 4
  store i32 %0, i32* %access, align 4
  %1 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %1)
  %2 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %2, %struct.tokenInfo** %name, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %3, %struct.tokenInfo* %4, i1 zeroext true)
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %5)
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %7, 15
  br i1 %cmp, label %if.then, label %if.else14

if.then:                                          ; preds = %entry
  store i32 7, i32* %kind, align 4
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %parentKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 6
  %9 = load i32, i32* %parentKind, align 8
  %cmp1 = icmp eq i32 %9, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 4, i32* %kind, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %10)
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %12, 7
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword, align 4
  %cmp5 = icmp eq i32 %14, 29
  br i1 %cmp5, label %land.lhs.true6, label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %15 = load i32, i32* %kind, align 4
  %idxprom = zext i32 %15 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %16 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %16 to i1
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true6
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %call8 = call zeroext i1 @parseFunction(%struct.tokenInfo* %17, %struct.tokenInfo* %18)
  br i1 %call8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %19)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %21, 4
  %frombool = zext i1 %cmp12 to i8
  store i8 %frombool, i8* %readNext, align 1
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %23 = load i32, i32* %kind, align 4
  %24 = load i32, i32* %access, align 4
  call void @makeSimplePhpTag(%struct.tokenInfo* %22, i32 %23, i32 %24)
  store i8 0, i8* %readNext, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end10
  br label %if.end29

if.else14:                                        ; preds = %entry
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type15, align 8
  %cmp16 = icmp eq i32 %26, 4
  br i1 %cmp16, label %if.then17, label %if.else27

if.then17:                                        ; preds = %if.else14
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %parentKind18 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %27, i32 0, i32 6
  %28 = load i32, i32* %parentKind18, align 8
  %cmp19 = icmp eq i32 %28, 0
  br i1 %cmp19, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then17
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %parentKind20 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %29, i32 0, i32 6
  %30 = load i32, i32* %parentKind20, align 8
  %cmp21 = icmp eq i32 %30, 3
  br i1 %cmp21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %parentKind23 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 6
  %32 = load i32, i32* %parentKind23, align 8
  %cmp24 = icmp eq i32 %32, 6
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %if.then17
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %34 = load i32, i32* %access, align 4
  call void @makeSimplePhpTag(%struct.tokenInfo* %33, i32 7, i32 %34)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false22
  br label %if.end28

if.else27:                                        ; preds = %if.else14
  store i8 0, i8* %readNext, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.end26
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end13
  %35 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %36 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %37 = bitcast %struct.tokenInfo* %36 to i8*
  call void @objPoolPut(%struct.sObjPool* %35, i8* %37)
  %38 = load i8, i8* %readNext, align 1
  %tobool30 = trunc i8 %38 to i1
  ret i1 %tobool30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @phpScopeSeparatorFor(i32 %kind, i32 %upperScopeKind) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %upperScopeKind.addr = alloca i32, align 4
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %upperScopeKind, i32* %upperScopeKind.addr, align 4
  %call = call i32 @getInputLanguage()
  %0 = load i32, i32* %kind.addr, align 4
  %1 = load i32, i32* %upperScopeKind.addr, align 4
  %call1 = call i8* @scopeSeparatorFor(i32 %call, i32 %0, i32 %1)
  ret i8* %call1
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare i8* @scopeSeparatorFor(i32, i32, i32) #1

declare i32 @getInputLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @findPhpStart() #0 {
entry:
  %c = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp eq i32 %call, 60
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %do.body
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %0, 63
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c, align 4
  %call5 = call i32 @tolower(i32 %call4) #4
  %cmp6 = icmp ne i32 %call5, 120
  br i1 %cmp6, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %call7 = call i32 @getcFromInputFile()
  store i32 %call7, i32* %c, align 4
  %call8 = call i32 @tolower(i32 %call7) #4
  %cmp9 = icmp ne i32 %call8, 109
  br i1 %cmp9, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = call i32 @getcFromInputFile()
  store i32 %call11, i32* %c, align 4
  %call12 = call i32 @tolower(i32 %call11) #4
  %cmp13 = icmp ne i32 %call12, 108
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.then3
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false10
  br label %if.end18

if.else:                                          ; preds = %if.then
  %1 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %1)
  %call15 = call zeroext i1 @isOpenScriptLanguagePhp(i32 60)
  br i1 %call15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  br label %do.end

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  %2 = load i32, i32* %c, align 4
  %cmp20 = icmp ne i32 %2, -1
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then16, %if.then14
  %3 = load i32, i32* %c, align 4
  ret i32 %3
}

declare i32 @getcFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipWhitespaces(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %c.addr, align 4
  %call = call zeroext i1 @isSpace(i32 %0)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load i32, i32* %c.addr, align 4
  ret i32 %1
}

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseString(%struct.sVString* %string, i32 %delimiter) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %delimiter.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end12
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 92
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, -1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  %conv = trunc i32 %2 to i8
  %conv3 = sext i8 %conv to i32
  call void @vStringPut(%struct.sVString* %1, i32 %conv3)
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %while.body
  %3 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %3, -1
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i32, i32* %c, align 4
  %5 = load i32, i32* %delimiter.addr, align 4
  %cmp6 = icmp eq i32 %4, %5
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  br label %while.end

if.else9:                                         ; preds = %lor.lhs.false
  %6 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %7 = load i32, i32* %c, align 4
  %conv10 = trunc i32 %7 to i8
  %conv11 = sext i8 %conv10 to i32
  call void @vStringPut(%struct.sVString* %6, i32 %conv11)
  br label %if.end

if.end:                                           ; preds = %if.else9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %while.body

while.end:                                        ; preds = %if.then8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseHeredoc(%struct.sVString* %string) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %len = alloca i32, align 4
  %delimiter = alloca [64 x i8], align 1
  %quote = alloca i32, align 4
  %nl = alloca i32, align 4
  %extra = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 0, i32* %quote, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %1, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %2 = phi i1 [ true, %do.cond ], [ %cmp1, %lor.rhs ]
  br i1 %2, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 39
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %4, 34
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %5 = load i32, i32* %c, align 4
  store i32 %5, i32* %quote, align 4
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %len, align 4
  %conv = zext i32 %6 to i64
  %cmp5 = icmp ult i64 %conv, 63
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %c, align 4
  %call7 = call i32 @isalnum(i32 %7) #4
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end15, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %for.body
  %8 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %8, 95
  br i1 %cmp9, label %if.end15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %9 = load i32, i32* %c, align 4
  %cmp12 = icmp sge i32 %9, 128
  br i1 %cmp12, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11
  br label %for.end

if.end15:                                         ; preds = %lor.lhs.false11, %lor.lhs.false8, %for.body
  %10 = load i32, i32* %c, align 4
  %conv16 = trunc i32 %10 to i8
  %11 = load i32, i32* %len, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %delimiter, i64 0, i64 %idxprom
  store i8 %conv16, i8* %arrayidx, align 1
  %call17 = call i32 @getcFromInputFile()
  store i32 %call17, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %12 = load i32, i32* %len, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then14, %for.cond
  %13 = load i32, i32* %len, align 4
  %idxprom18 = zext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [64 x i8], [64 x i8]* %delimiter, i64 0, i64 %idxprom18
  store i8 0, i8* %arrayidx19, align 1
  %14 = load i32, i32* %len, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  br label %error

if.end23:                                         ; preds = %for.end
  %15 = load i32, i32* %quote, align 4
  %tobool24 = icmp ne i32 %15, 0
  br i1 %tobool24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end23
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %quote, align 4
  %cmp26 = icmp ne i32 %16, %17
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  br label %error

if.end29:                                         ; preds = %if.then25
  %call30 = call i32 @getcFromInputFile()
  store i32 %call30, i32* %c, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end23
  %18 = load i32, i32* %c, align 4
  %cmp32 = icmp ne i32 %18, 13
  br i1 %cmp32, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end31
  %19 = load i32, i32* %c, align 4
  %cmp34 = icmp ne i32 %19, 10
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true
  br label %error

if.end37:                                         ; preds = %land.lhs.true, %if.end31
  br label %do.body38

do.body38:                                        ; preds = %do.cond101, %if.end37
  %call39 = call i32 @getcFromInputFile()
  store i32 %call39, i32* %c, align 4
  %20 = load i32, i32* %c, align 4
  %cmp40 = icmp ne i32 %20, 13
  br i1 %cmp40, label %land.lhs.true42, label %if.else

land.lhs.true42:                                  ; preds = %do.body38
  %21 = load i32, i32* %c, align 4
  %cmp43 = icmp ne i32 %21, 10
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %land.lhs.true42
  %22 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %23 = load i32, i32* %c, align 4
  %conv46 = trunc i32 %23 to i8
  %conv47 = sext i8 %conv46 to i32
  call void @vStringPut(%struct.sVString* %22, i32 %conv47)
  br label %if.end100

if.else:                                          ; preds = %land.lhs.true42, %do.body38
  %24 = load i32, i32* %c, align 4
  store i32 %24, i32* %nl, align 4
  store i32 -1, i32* %extra, align 4
  %call48 = call i32 @getcFromInputFile()
  store i32 %call48, i32* %c, align 4
  store i32 0, i32* %len, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc59, %if.else
  %25 = load i32, i32* %c, align 4
  %cmp50 = icmp ne i32 %25, 0
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond49
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %len, align 4
  %idxprom52 = zext i32 %27 to i64
  %arrayidx53 = getelementptr inbounds [64 x i8], [64 x i8]* %delimiter, i64 0, i64 %idxprom52
  %28 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %28 to i32
  %sub = sub nsw i32 %26, %conv54
  %cmp55 = icmp eq i32 %sub, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond49
  %29 = phi i1 [ false, %for.cond49 ], [ %cmp55, %land.rhs ]
  br i1 %29, label %for.body57, label %for.end61

for.body57:                                       ; preds = %land.end
  %call58 = call i32 @getcFromInputFile()
  store i32 %call58, i32* %c, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %for.body57
  %30 = load i32, i32* %len, align 4
  %inc60 = add i32 %30, 1
  store i32 %inc60, i32* %len, align 4
  br label %for.cond49

for.end61:                                        ; preds = %land.end
  %31 = load i32, i32* %len, align 4
  %idxprom62 = zext i32 %31 to i64
  %arrayidx63 = getelementptr inbounds [64 x i8], [64 x i8]* %delimiter, i64 0, i64 %idxprom62
  %32 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %32 to i32
  %cmp65 = icmp ne i32 %conv64, 0
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %for.end61
  %33 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %33)
  br label %if.end90

if.else68:                                        ; preds = %for.end61
  %34 = load i32, i32* %c, align 4
  %cmp69 = icmp eq i32 %34, 13
  br i1 %cmp69, label %if.then74, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.else68
  %35 = load i32, i32* %c, align 4
  %cmp72 = icmp eq i32 %35, 10
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %lor.lhs.false71, %if.else68
  %36 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %36)
  br label %do.end104

if.else75:                                        ; preds = %lor.lhs.false71
  %37 = load i32, i32* %c, align 4
  %cmp76 = icmp eq i32 %37, 59
  br i1 %cmp76, label %if.then78, label %if.end88

if.then78:                                        ; preds = %if.else75
  %call79 = call i32 @getcFromInputFile()
  store i32 %call79, i32* %d, align 4
  %38 = load i32, i32* %d, align 4
  %cmp80 = icmp eq i32 %38, 13
  br i1 %cmp80, label %if.then85, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.then78
  %39 = load i32, i32* %d, align 4
  %cmp83 = icmp eq i32 %39, 10
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %lor.lhs.false82, %if.then78
  call void @ungetcToInputFile(i32 59)
  br label %do.end104

if.else86:                                        ; preds = %lor.lhs.false82
  store i32 59, i32* %extra, align 4
  %40 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %40)
  br label %if.end87

if.end87:                                         ; preds = %if.else86
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.else75
  br label %if.end89

if.end89:                                         ; preds = %if.end88
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then67
  %41 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %42 = load i32, i32* %nl, align 4
  %conv91 = trunc i32 %42 to i8
  %conv92 = sext i8 %conv91 to i32
  call void @vStringPut(%struct.sVString* %41, i32 %conv92)
  %43 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %delimiter, i64 0, i64 0
  %44 = load i32, i32* %len, align 4
  %conv93 = zext i32 %44 to i64
  call void @vStringNCatS(%struct.sVString* %43, i8* %arraydecay, i64 %conv93)
  %45 = load i32, i32* %extra, align 4
  %cmp94 = icmp ne i32 %45, -1
  br i1 %cmp94, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end90
  %46 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %47 = load i32, i32* %extra, align 4
  %conv97 = trunc i32 %47 to i8
  %conv98 = sext i8 %conv97 to i32
  call void @vStringPut(%struct.sVString* %46, i32 %conv98)
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end90
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then45
  br label %do.cond101

do.cond101:                                       ; preds = %if.end100
  %48 = load i32, i32* %c, align 4
  %cmp102 = icmp ne i32 %48, -1
  br i1 %cmp102, label %do.body38, label %do.end104

do.end104:                                        ; preds = %do.cond101, %if.then85, %if.then74
  br label %return

error:                                            ; preds = %if.then36, %if.then28, %if.then22
  %49 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %49)
  br label %return

return:                                           ; preds = %error, %do.end104
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipSingleComment() #0 {
entry:
  %c = alloca i32, align 4
  %next = alloca i32, align 4
  %next7 = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 13
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %do.body
  %call1 = call i32 @getcFromInputFile()
  store i32 %call1, i32* %next, align 4
  %1 = load i32, i32* %next, align 4
  %cmp2 = icmp ne i32 %1, 10
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %2 = load i32, i32* %next, align 4
  call void @ungetcToInputFile(i32 %2)
  br label %if.end

if.else:                                          ; preds = %if.then
  %3 = load i32, i32* %next, align 4
  store i32 %3, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end14

if.else4:                                         ; preds = %do.body
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %4, 63
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.else4
  %call8 = call i32 @getcFromInputFile()
  store i32 %call8, i32* %next7, align 4
  %5 = load i32, i32* %next7, align 4
  %cmp9 = icmp eq i32 %5, 62
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.then6
  store i8 0, i8* @InPhp, align 1
  br label %if.end12

if.else11:                                        ; preds = %if.then6
  %6 = load i32, i32* %next7, align 4
  call void @ungetcToInputFile(i32 %6)
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.else4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end14
  %7 = load i8, i8* @InPhp, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %8 = load i32, i32* %c, align 4
  %cmp15 = icmp ne i32 %8, -1
  br i1 %cmp15, label %land.lhs.true16, label %land.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %c, align 4
  %cmp17 = icmp ne i32 %9, 10
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true16
  %10 = load i32, i32* %c, align 4
  %cmp18 = icmp ne i32 %10, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true16, %land.lhs.true, %do.cond
  %11 = phi i1 [ false, %land.lhs.true16 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp18, %land.rhs ]
  br i1 %11, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %12 = load i32, i32* %c, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToCharacter(i32 %c) #0 {
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

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseIdentifier(%struct.sVString* %string, i32 %firstChar) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %firstChar.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %firstChar, i32* %firstChar.addr, align 4
  %0 = load i32, i32* %firstChar.addr, align 4
  store i32 %0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  %conv = trunc i32 %2 to i8
  %conv1 = sext i8 %conv to i32
  call void @vStringPut(%struct.sVString* %1, i32 %conv1)
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %c, align 4
  %call2 = call i32 @isalnum(i32 %3) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %cmp4 = icmp sge i32 %5, 128
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp4, %lor.rhs ]
  br i1 %6, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %7 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %7)
  ret void
}

declare i32 @lookupCaseKeyword(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isOpenScriptLanguagePhp(i32 %c) #0 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  %quote = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %quote, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 60
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c.addr, align 4
  %call1 = call i32 @tolower(i32 %call) #4
  %cmp2 = icmp ne i32 %call1, 115
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call i32 @getcFromInputFile()
  store i32 %call4, i32* %c.addr, align 4
  %call5 = call i32 @tolower(i32 %call4) #4
  %cmp6 = icmp ne i32 %call5, 99
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %call8 = call i32 @getcFromInputFile()
  store i32 %call8, i32* %c.addr, align 4
  %call9 = call i32 @tolower(i32 %call8) #4
  %cmp10 = icmp ne i32 %call9, 114
  br i1 %cmp10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %call12 = call i32 @getcFromInputFile()
  store i32 %call12, i32* %c.addr, align 4
  %call13 = call i32 @tolower(i32 %call12) #4
  %cmp14 = icmp ne i32 %call13, 105
  br i1 %cmp14, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %call16 = call i32 @getcFromInputFile()
  store i32 %call16, i32* %c.addr, align 4
  %call17 = call i32 @tolower(i32 %call16) #4
  %cmp18 = icmp ne i32 %call17, 112
  br i1 %cmp18, label %if.then, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %call20 = call i32 @getcFromInputFile()
  store i32 %call20, i32* %c.addr, align 4
  %call21 = call i32 @tolower(i32 %call20) #4
  %cmp22 = icmp ne i32 %call21, 116
  br i1 %cmp22, label %if.then, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %call24 = call i32 @getcFromInputFile()
  store i32 %call24, i32* %c.addr, align 4
  %call25 = call zeroext i1 @isSpace(i32 %call24)
  br i1 %call25, label %lor.lhs.false26, label %if.then

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %1 = load i32, i32* %c.addr, align 4
  %call27 = call i32 @skipWhitespaces(i32 %1)
  store i32 %call27, i32* %c.addr, align 4
  %call28 = call i32 @tolower(i32 %call27) #4
  %cmp29 = icmp ne i32 %call28, 108
  br i1 %cmp29, label %if.then, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %call31 = call i32 @getcFromInputFile()
  store i32 %call31, i32* %c.addr, align 4
  %call32 = call i32 @tolower(i32 %call31) #4
  %cmp33 = icmp ne i32 %call32, 97
  br i1 %cmp33, label %if.then, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %call35 = call i32 @getcFromInputFile()
  store i32 %call35, i32* %c.addr, align 4
  %call36 = call i32 @tolower(i32 %call35) #4
  %cmp37 = icmp ne i32 %call36, 110
  br i1 %cmp37, label %if.then, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %call39 = call i32 @getcFromInputFile()
  store i32 %call39, i32* %c.addr, align 4
  %call40 = call i32 @tolower(i32 %call39) #4
  %cmp41 = icmp ne i32 %call40, 103
  br i1 %cmp41, label %if.then, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %call43 = call i32 @getcFromInputFile()
  store i32 %call43, i32* %c.addr, align 4
  %call44 = call i32 @tolower(i32 %call43) #4
  %cmp45 = icmp ne i32 %call44, 117
  br i1 %cmp45, label %if.then, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %call47 = call i32 @getcFromInputFile()
  store i32 %call47, i32* %c.addr, align 4
  %call48 = call i32 @tolower(i32 %call47) #4
  %cmp49 = icmp ne i32 %call48, 97
  br i1 %cmp49, label %if.then, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %call51 = call i32 @getcFromInputFile()
  store i32 %call51, i32* %c.addr, align 4
  %call52 = call i32 @tolower(i32 %call51) #4
  %cmp53 = icmp ne i32 %call52, 103
  br i1 %cmp53, label %if.then, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %call55 = call i32 @getcFromInputFile()
  store i32 %call55, i32* %c.addr, align 4
  %call56 = call i32 @tolower(i32 %call55) #4
  %cmp57 = icmp ne i32 %call56, 101
  br i1 %cmp57, label %if.then, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false54
  %call59 = call i32 @getcFromInputFile()
  %call60 = call i32 @skipWhitespaces(i32 %call59)
  store i32 %call60, i32* %c.addr, align 4
  %cmp61 = icmp ne i32 %call60, 61
  br i1 %cmp61, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false58, %lor.lhs.false54, %lor.lhs.false50, %lor.lhs.false46, %lor.lhs.false42, %lor.lhs.false38, %lor.lhs.false34, %lor.lhs.false30, %lor.lhs.false26, %lor.lhs.false23, %lor.lhs.false19, %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false58
  %call62 = call i32 @getcFromInputFile()
  %call63 = call i32 @skipWhitespaces(i32 %call62)
  store i32 %call63, i32* %c.addr, align 4
  %2 = load i32, i32* %c.addr, align 4
  %cmp64 = icmp eq i32 %2, 34
  br i1 %cmp64, label %if.then67, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end
  %3 = load i32, i32* %c.addr, align 4
  %cmp66 = icmp eq i32 %3, 39
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %lor.lhs.false65, %if.end
  %4 = load i32, i32* %c.addr, align 4
  store i32 %4, i32* %quote, align 4
  %call68 = call i32 @getcFromInputFile()
  store i32 %call68, i32* %c.addr, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %lor.lhs.false65
  %5 = load i32, i32* %c.addr, align 4
  %call70 = call i32 @tolower(i32 %5) #4
  %cmp71 = icmp ne i32 %call70, 112
  br i1 %cmp71, label %if.then88, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end69
  %call73 = call i32 @getcFromInputFile()
  store i32 %call73, i32* %c.addr, align 4
  %call74 = call i32 @tolower(i32 %call73) #4
  %cmp75 = icmp ne i32 %call74, 104
  br i1 %cmp75, label %if.then88, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %call77 = call i32 @getcFromInputFile()
  store i32 %call77, i32* %c.addr, align 4
  %call78 = call i32 @tolower(i32 %call77) #4
  %cmp79 = icmp ne i32 %call78, 112
  br i1 %cmp79, label %if.then88, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %6 = load i32, i32* %quote, align 4
  %cmp81 = icmp ne i32 %6, 0
  br i1 %cmp81, label %land.lhs.true, label %lor.lhs.false84

land.lhs.true:                                    ; preds = %lor.lhs.false80
  %call82 = call i32 @getcFromInputFile()
  store i32 %call82, i32* %c.addr, align 4
  %7 = load i32, i32* %quote, align 4
  %cmp83 = icmp ne i32 %call82, %7
  br i1 %cmp83, label %if.then88, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %land.lhs.true, %lor.lhs.false80
  %call85 = call i32 @getcFromInputFile()
  %call86 = call i32 @skipWhitespaces(i32 %call85)
  store i32 %call86, i32* %c.addr, align 4
  %cmp87 = icmp ne i32 %call86, 62
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %lor.lhs.false84, %land.lhs.true, %lor.lhs.false76, %lor.lhs.false72, %if.end69
  store i1 false, i1* %retval, align 1
  br label %return

if.end89:                                         ; preds = %lor.lhs.false84
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end89, %if.then88, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSpace(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 9
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %1, 32
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %2, 11
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %c.addr, align 4
  %cmp5 = icmp eq i32 %3, 10
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp eq i32 %4, 13
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false6
  %5 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp eq i32 %5, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp8, %lor.rhs ]
  ret i1 %6
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

declare void @vStringResize(%struct.sVString*, i64) #1

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipOverParens(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %depth = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %depth, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %2)
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  switch i32 %4, label %sw.default [
    i32 8, label %sw.bb
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %do.body
  %5 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %depth, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %do.body
  %6 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %depth, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type3, align 8
  %cmp4 = icmp ne i32 %8, 1
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %9 = load i32, i32* %depth, align 4
  %cmp5 = icmp sgt i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %10 = phi i1 [ false, %do.cond ], [ %cmp5, %land.rhs ]
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %11)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeClassOrIfaceTag(i32 %kind, %struct.tokenInfo* %token, %struct.sVString* %inheritance, i32 %impl) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %token.addr = alloca %struct.tokenInfo*, align 8
  %inheritance.addr = alloca %struct.sVString*, align 8
  %impl.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %inheritance, %struct.sVString** %inheritance.addr, align 8
  store i32 %impl, i32* %impl.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %3 = load i32, i32* %kind.addr, align 4
  call void @initPhpEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %2, i32 %3, i32 0)
  %4 = load i32, i32* %impl.addr, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load i32, i32* %impl.addr, align 4
  %call = call i8* @implToString(i32 %5)
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %implementation = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 2
  store i8* %call, i8** %implementation, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %6 = load %struct.sVString*, %struct.sVString** %inheritance.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %cmp2 = icmp ugt i64 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %8 = load %struct.sVString*, %struct.sVString** %inheritance.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %extensionFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %inheritance5 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields4, i32 0, i32 3
  store i8* %9, i8** %inheritance5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  call void @makePhpTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initPhpEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %token, i32 %kind, i32 %access) #0 {
entry:
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %access.addr = alloca i32, align 4
  %parentKind = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %sep = alloca i8*, align 8
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %access, i32* %access.addr, align 4
  store i32 -1, i32* %parentKind, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
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
  %4 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length1, align 8
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 5, i32* %parentKind, align 4
  %6 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
  %7 = load %struct.sVString*, %struct.sVString** @CurrentNamesapce, align 8
  call void @vStringCat(%struct.sVString* %6, %struct.sVString* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer2 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer2, align 8
  %12 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %8, i8* %11, i32 %12)
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 4
  %14 = load i64, i64* %lineNumber, align 8
  %15 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %lineNumber3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %15, i32 0, i32 1
  store i64 %14, i64* %lineNumber3, align 8
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 4
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 5
  %18 = bitcast %struct._MIOPos* %filePosition to i8*
  %19 = bitcast %struct._MIOPos* %filePosition4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load i32, i32* %access.addr, align 4
  %cmp5 = icmp ne i32 %20, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %21 = load i32, i32* %access.addr, align 4
  %call = call i8* @accessToString(i32 %21)
  %22 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %22, i32 0, i32 11
  %access7 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 0
  store i8* %call, i8** %access7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %23, i32 0, i32 3
  %24 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %length9 = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 0
  %25 = load i64, i64* %length9, align 8
  %cmp10 = icmp ugt i64 %25, 0
  br i1 %cmp10, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end8
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %parentKind12 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %26, i32 0, i32 6
  %27 = load i32, i32* %parentKind12, align 8
  store i32 %27, i32* %parentKind, align 4
  %28 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
  %length13 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  %29 = load i64, i64* %length13, align 8
  %cmp14 = icmp ugt i64 %29, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then11
  %30 = load i32, i32* %parentKind, align 4
  %call16 = call i8* @phpScopeSeparatorFor(i32 %30, i32 5)
  store i8* %call16, i8** %sep, align 8
  %31 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
  %32 = load i8*, i8** %sep, align 8
  call void @vStringCatS(%struct.sVString* %31, i8* %32)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then11
  %33 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %scope18 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 3
  %35 = load %struct.sVString*, %struct.sVString** %scope18, align 8
  call void @vStringCat(%struct.sVString* %33, %struct.sVString* %35)
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end8
  %36 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
  %length20 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 0
  %37 = load i64, i64* %length20, align 8
  %cmp21 = icmp ugt i64 %37, 0
  br i1 %cmp21, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end19
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.end24

do.end24:                                         ; preds = %do.body23
  %38 = load i32, i32* %parentKind, align 4
  %39 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields25 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %39, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields25, i32 0, i32 5
  store i32 %38, i32* %scopeKindIndex, align 4
  %40 = load %struct.sVString*, %struct.sVString** @FullScope, align 8
  %buffer26 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer26, align 8
  %42 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields27 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %42, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields27, i32 0, i32 6
  store i8* %41, i8** %scopeName, align 8
  br label %if.end28

if.end28:                                         ; preds = %do.end24, %if.end19
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @implToString(i32 %impl) #0 {
entry:
  %impl.addr = alloca i32, align 4
  store i32 %impl, i32* %impl.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %impl.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @implToString.names, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makePhpTagEntry(%struct.sTagEntryInfo* %e) #0 {
entry:
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %0)
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %call1 = call i32 @makeQualifiedTagEntry(%struct.sTagEntryInfo* %1)
  ret void
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @accessToString(i32 %access) #0 {
entry:
  %access.addr = alloca i32, align 4
  store i32 %access, i32* %access.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %access.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @accessToString.names, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i32 @makeQualifiedTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSimplePhpTag(%struct.tokenInfo* %token, i32 %kind, i32 %access) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %access.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %access, i32* %access.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %3 = load i32, i32* %kind.addr, align 4
  %4 = load i32, i32* %access.addr, align 4
  call void @initPhpEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %2, i32 %3, i32 %4)
  call void @makePhpTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeFunctionTag(%struct.tokenInfo* %token, %struct.sVString* %arglist, i32 %access, i32 %impl) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %arglist.addr = alloca %struct.sVString*, align 8
  %access.addr = alloca i32, align 4
  %impl.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %arglist, %struct.sVString** %arglist.addr, align 8
  store i32 %access, i32* %access.addr, align 4
  store i32 %impl, i32* %impl.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 2, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %2 = load i32, i32* %access.addr, align 4
  call void @initPhpEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %1, i32 2, i32 %2)
  %3 = load i32, i32* %impl.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %4 = load i32, i32* %impl.addr, align 4
  %call = call i8* @implToString(i32 %4)
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %implementation = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 2
  store i8* %call, i8** %implementation, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load %struct.sVString*, %struct.sVString** %arglist.addr, align 8
  %tobool2 = icmp ne %struct.sVString* %5, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load %struct.sVString*, %struct.sVString** %arglist.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %extensionFields4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields4, i32 0, i32 8
  store i8* %7, i8** %signature, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  call void @makePhpTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readQualifiedName(%struct.tokenInfo* %token, %struct.sVString* %name, %struct.tokenInfo* %lastToken) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %lastToken.addr = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store %struct.tokenInfo* %lastToken, %struct.tokenInfo** %lastToken.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %3, 20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %6, 20
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  call void @vStringPut(%struct.sVString* %7, i32 92)
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %8, %struct.sVString* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %lastToken.addr, align 8
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %11, %struct.tokenInfo* %12, i1 zeroext true)
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %13)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

declare void @vStringTruncate(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeNamespacePhpTag(%struct.tokenInfo* %token, %struct.sVString* %name) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PhpKinds, i64 0, i64 5, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %2, i32 5)
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 4
  %4 = load i64, i64* %lineNumber, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %4, i64* %lineNumber1, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 5
  %6 = bitcast %struct._MIOPos* %filePosition to i8*
  %7 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  call void @makePhpTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializePool() #0 {
entry:
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %cmp = icmp eq %struct.sObjPool* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.sObjPool* @objPoolNew(i32 16, i8* (i8*)* @newPoolToken, void (i8*)* @deletePoolToken, void (i8*)* @clearPoolToken, i8* null)
  store %struct.sObjPool* %call, %struct.sObjPool** @TokenPool, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.sObjPool* @objPoolNew(i32, i8* (i8*)*, void (i8*)*, void (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @newPoolToken(i8* %createArg) #0 {
entry:
  %createArg.addr = alloca i8*, align 8
  %token = alloca %struct.tokenInfo*, align 8
  store i8* %createArg, i8** %createArg.addr, align 8
  %call = call i8* @eMalloc(i64 56)
  %0 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %0, %struct.tokenInfo** %token, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %call2 = call %struct.sVString* @vStringNew()
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 3
  store %struct.sVString* %call2, %struct.sVString** %scope, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %4 = bitcast %struct.tokenInfo* %3 to i8*
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deletePoolToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.tokenInfo*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %token, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringDelete(%struct.sVString* %3)
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 3
  %5 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %5)
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %7 = bitcast %struct.tokenInfo* %6 to i8*
  call void @eFree(i8* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearPoolToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.tokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %vStringClear_s3 = alloca %struct.sVString*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %token, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %call = call i64 @getInputLineNumber()
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 4
  store i64 %call, i64* %lineNumber, align 8
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 5
  %call1 = call [2 x i64] @getInputFilePosition()
  %6 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call1, [2 x i64]* %6, align 8
  %7 = bitcast %struct._MIOPos* %filePosition to i8*
  %8 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %parentKind = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 6
  store i32 -1, i32* %parentKind, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 2
  %11 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %11, %struct.sVString** %vStringClear_s, align 8
  %12 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %13 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %scope = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 3
  %16 = load %struct.sVString*, %struct.sVString** %scope, align 8
  store %struct.sVString* %16, %struct.sVString** %vStringClear_s3, align 8
  %17 = load %struct.sVString*, %struct.sVString** %vStringClear_s3, align 8
  %length4 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  store i64 0, i64* %length4, align 8
  %18 = load %struct.sVString*, %struct.sVString** %vStringClear_s3, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %arrayidx6, align 1
  br label %do.end7

do.end7:                                          ; preds = %do.body2
  ret void
}

declare i8* @eMalloc(i64) #1

declare void @eFree(i8*) #1

declare void @objPoolDelete(%struct.sObjPool*) #1

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
