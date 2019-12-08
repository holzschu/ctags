; ModuleID = 'python.c'
source_filename = "python.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.keywordTable = type { i8*, i32 }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct.sObjPool = type opaque
%struct.tokenInfo = type { i32, i32, %struct.sVString*, i32, i64, %struct._MIOPos }
%struct.NestingLevels = type { i8*, i32, i32, i64 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.NestingLevel = type { i32, [0 x i8] }
%struct.pythonNestingLevelUserData = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@PythonKinds = internal global [9 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8 1, i32 3, %struct.sRoleDesc* getelementptr inbounds ([3 x %struct.sRoleDesc], [3 x %struct.sRoleDesc]* @PythonModuleRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.14, i32 0, i32 0), i8 0, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @PythonUnknownRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* null], align 8
@PythonKeywordTable = internal constant [14 x %struct.keywordTable] [%struct.keywordTable { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 0 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 1 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 2 }, %struct.keywordTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 3 }, %struct.keywordTable { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 4 }, %struct.keywordTable { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 5 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 6 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 7 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 8 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 9 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 10 }, %struct.keywordTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 11 }, %struct.keywordTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 12 }], align 8
@PythonFields = internal global [1 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] zeroinitializer, i1 (%struct.sTagEntryInfo*)* null, i32 0, i32 0 }], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"class members\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"name referring a module defined in other file\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@PythonModuleRoles = internal global [3 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0) }], align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.14 = private unnamed_addr constant [72 x i8] c"name referring a class/variable/function/module defined in other module\00", align 1
@PythonUnknownRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.25, i32 0, i32 0) }], align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"function parameters\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"imported\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"imported modules\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"namespace from where classes/variables/functions are imported\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"indirectly-imported\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"module imported in alternative name\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"imported from the other module\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"classes/variables/functions/modules imported in alternative name\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"pyx\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"pxd\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"pxi\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"scons\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"python[23]*\00", align 1
@TokenPool = internal global %struct.sObjPool* null, align 8
@TokenContinuationDepth = internal global i32 0, align 4
@NextToken = internal global %struct.tokenInfo* null, align 8
@PythonNestingLevels = internal global %struct.NestingLevels* null, align 8
@Lang_python = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PythonAccesses = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)], align 8
@.str.33 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"cdef\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"cimport\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"cpdef\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"decorators\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"decorators on functions and classes\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @PythonParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PythonKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 9, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findPythonTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 6
  store void (i32)* @initialize, void (i32)** %initialize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 7
  store void (i32, i1)* @finalize, void (i32, i1)** %finalize, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 18
  store %struct.keywordTable* getelementptr inbounds ([14 x %struct.keywordTable], [14 x %struct.keywordTable]* @PythonKeywordTable, i64 0, i64 0), %struct.keywordTable** %keywordTable, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 19
  store i32 14, i32* %keywordCount, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 23
  store %struct.sFieldDefinition* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @PythonFields, i64 0, i64 0), %struct.sFieldDefinition** %fieldTable, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 24
  store i32 1, i32* %fieldCount, align 8
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %12, i32 0, i32 15
  store i8 1, i8* %requestAutomaticFQTag, align 1
  %13 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %13
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findPythonTags() #0 {
entry:
  %token = alloca %struct.tokenInfo*, align 8
  %decorators = alloca %struct.sVString*, align 8
  %atStatementStart = alloca i8, align 1
  %iterationTokenType = alloca i32, align 4
  %readNext = alloca i8, align 1
  %kind = alloca i32, align 4
  %lv = alloca %struct.NestingLevel*, align 8
  %lvEntry = alloca %struct.sTagEntryInfo*, align 8
  %kind46 = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %token, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %decorators, align 8
  store i8 1, i8* %atStatementStart, align 1
  store i32 0, i32* @TokenContinuationDepth, align 4
  store %struct.tokenInfo* null, %struct.tokenInfo** @NextToken, align 8
  %call2 = call %struct.NestingLevels* @nestingLevelsNew(i64 4)
  store %struct.NestingLevels* %call2, %struct.NestingLevels** @PythonNestingLevels, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readToken(%struct.tokenInfo* %2)
  br label %while.cond

while.cond:                                       ; preds = %if.end94, %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %4, 256
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type3, align 8
  store i32 %6, i32* %iterationTokenType, align 4
  store i8 1, i8* %readNext, align 1
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 1
  %8 = load i32, i32* %keyword, align 4
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readToken(%struct.tokenInfo* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %11, 258
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @setIndent(%struct.tokenInfo* %12)
  br label %if.end78

if.else:                                          ; preds = %if.end
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword8 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp eq i32 %14, 3
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword10 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 1
  %16 = load i32, i32* %keyword10, align 4
  %cmp11 = icmp eq i32 %16, 5
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %lor.lhs.false, %if.else
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %keyword13, align 4
  %cmp14 = icmp eq i32 %18, 3
  %19 = zext i1 %cmp14 to i64
  %cond = select i1 %cmp14, i32 0, i32 1
  store i32 %cond, i32* %kind, align 4
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %21 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  %22 = load i32, i32* %kind, align 4
  %call15 = call zeroext i1 @parseClassOrDef(%struct.tokenInfo* %20, %struct.sVString* %21, i32 %22, i1 zeroext false)
  %frombool = zext i1 %call15 to i8
  store i8 %frombool, i8* %readNext, align 1
  br label %if.end77

if.else16:                                        ; preds = %lor.lhs.false
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %keyword17, align 4
  %cmp18 = icmp eq i32 %24, 2
  br i1 %cmp18, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.else16
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword20 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %keyword20, align 4
  %cmp21 = icmp eq i32 %26, 4
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %lor.lhs.false19, %if.else16
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %28 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  %call23 = call zeroext i1 @parseClassOrDef(%struct.tokenInfo* %27, %struct.sVString* %28, i32 1, i1 zeroext true)
  %frombool24 = zext i1 %call23 to i8
  store i8 %frombool24, i8* %readNext, align 1
  br label %if.end76

if.else25:                                        ; preds = %lor.lhs.false19
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword26 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %29, i32 0, i32 1
  %30 = load i32, i32* %keyword26, align 4
  %cmp27 = icmp eq i32 %30, 7
  br i1 %cmp27, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.else25
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword29 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 1
  %32 = load i32, i32* %keyword29, align 4
  %cmp30 = icmp eq i32 %32, 8
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %lor.lhs.false28, %if.else25
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call32 = call zeroext i1 @parseImport(%struct.tokenInfo* %33)
  %frombool33 = zext i1 %call32 to i8
  store i8 %frombool33, i8* %readNext, align 1
  br label %if.end75

if.else34:                                        ; preds = %lor.lhs.false28
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type35 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type35, align 8
  %cmp36 = icmp eq i32 %35, 40
  br i1 %cmp36, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.else34
  %36 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %call38 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %36, i32 40, i32 41, %struct.sVString* null, i1 zeroext false)
  %frombool39 = zext i1 %call38 to i8
  store i8 %frombool39, i8* %readNext, align 1
  br label %if.end74

if.else40:                                        ; preds = %if.else34
  %37 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type41 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %37, i32 0, i32 0
  %38 = load i32, i32* %type41, align 8
  %cmp42 = icmp eq i32 %38, 261
  br i1 %cmp42, label %land.lhs.true, label %if.else54

land.lhs.true:                                    ; preds = %if.else40
  %39 = load i8, i8* %atStatementStart, align 1
  %tobool = trunc i8 %39 to i1
  br i1 %tobool, label %if.then43, label %if.else54

if.then43:                                        ; preds = %land.lhs.true
  %40 = load %struct.NestingLevels*, %struct.NestingLevels** @PythonNestingLevels, align 8
  %call44 = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %40)
  store %struct.NestingLevel* %call44, %struct.NestingLevel** %lv, align 8
  %41 = load %struct.NestingLevel*, %struct.NestingLevel** %lv, align 8
  %call45 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %41)
  store %struct.sTagEntryInfo* %call45, %struct.sTagEntryInfo** %lvEntry, align 8
  store i32 3, i32* %kind46, align 4
  %42 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %lvEntry, align 8
  %tobool47 = icmp ne %struct.sTagEntryInfo* %42, null
  br i1 %tobool47, label %land.lhs.true48, label %if.end51

land.lhs.true48:                                  ; preds = %if.then43
  %43 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %lvEntry, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %43, i32 0, i32 8
  %44 = load i32, i32* %kindIndex, align 8
  %cmp49 = icmp ne i32 %44, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true48
  store i32 8, i32* %kind46, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %land.lhs.true48, %if.then43
  %45 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %46 = load i32, i32* %kind46, align 4
  %call52 = call zeroext i1 @parseVariable(%struct.tokenInfo* %45, i32 %46)
  %frombool53 = zext i1 %call52 to i8
  store i8 %frombool53, i8* %readNext, align 1
  br label %if.end73

if.else54:                                        ; preds = %land.lhs.true, %if.else40
  %47 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type55 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %47, i32 0, i32 0
  %48 = load i32, i32* %type55, align 8
  %cmp56 = icmp eq i32 %48, 64
  br i1 %cmp56, label %land.lhs.true57, label %if.end72

land.lhs.true57:                                  ; preds = %if.else54
  %49 = load i8, i8* %atStatementStart, align 1
  %tobool58 = trunc i8 %49 to i1
  br i1 %tobool58, label %land.lhs.true59, label %if.end72

land.lhs.true59:                                  ; preds = %land.lhs.true57
  %50 = load i8, i8* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @PythonFields, i64 0, i64 0, i32 3), align 8
  %tobool60 = trunc i8 %50 to i1
  br i1 %tobool60, label %if.then61, label %if.end72

if.then61:                                        ; preds = %land.lhs.true59
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readQualifiedName(%struct.tokenInfo* %51)
  %52 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type62 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %52, i32 0, i32 0
  %53 = load i32, i32* %type62, align 8
  %cmp63 = icmp ne i32 %53, 261
  br i1 %cmp63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.then61
  store i8 0, i8* %readNext, align 1
  br label %if.end71

if.else65:                                        ; preds = %if.then61
  %54 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %54, i32 0, i32 0
  %55 = load i64, i64* %length, align 8
  %cmp66 = icmp ugt i64 %55, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.else65
  %56 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  call void @vStringPut(%struct.sVString* %56, i32 44)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.else65
  %57 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  %58 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %58, i32 0, i32 2
  %59 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %57, %struct.sVString* %59)
  %60 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readToken(%struct.tokenInfo* %60)
  %61 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %62 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  %call69 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %61, i32 40, i32 41, %struct.sVString* %62, i1 zeroext true)
  %frombool70 = zext i1 %call69 to i8
  store i8 %frombool70, i8* %readNext, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.end68, %if.then64
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %land.lhs.true59, %land.lhs.true57, %if.else54
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end51
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then37
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then31
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then22
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then12
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then7
  %63 = load i32, i32* %iterationTokenType, align 4
  %cmp79 = icmp ne i32 %63, 258
  br i1 %cmp79, label %land.lhs.true80, label %if.end86

land.lhs.true80:                                  ; preds = %if.end78
  %64 = load i32, i32* %iterationTokenType, align 4
  %cmp81 = icmp ne i32 %64, 64
  br i1 %cmp81, label %land.lhs.true82, label %if.end86

land.lhs.true82:                                  ; preds = %land.lhs.true80
  %65 = load i8, i8* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @PythonFields, i64 0, i64 0, i32 3), align 8
  %tobool83 = trunc i8 %65 to i1
  br i1 %tobool83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %land.lhs.true82
  br label %do.body

do.body:                                          ; preds = %if.then84
  %66 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  store %struct.sVString* %66, %struct.sVString** %vStringClear_s, align 8
  %67 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length85 = getelementptr inbounds %struct.sVString, %struct.sVString* %67, i32 0, i32 0
  store i64 0, i64* %length85, align 8
  %68 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %68, i32 0, i32 2
  %69 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %69, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end86

if.end86:                                         ; preds = %do.end, %land.lhs.true82, %land.lhs.true80, %if.end78
  %70 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type87 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %70, i32 0, i32 0
  %71 = load i32, i32* %type87, align 8
  %cmp88 = icmp eq i32 %71, 258
  br i1 %cmp88, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end86
  %72 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type89 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %72, i32 0, i32 0
  %73 = load i32, i32* %type89, align 8
  %cmp90 = icmp eq i32 %73, 59
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end86
  %74 = phi i1 [ true, %if.end86 ], [ %cmp90, %lor.rhs ]
  %frombool91 = zext i1 %74 to i8
  store i8 %frombool91, i8* %atStatementStart, align 1
  %75 = load i8, i8* %readNext, align 1
  %tobool92 = trunc i8 %75 to i1
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.end
  %76 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @readToken(%struct.tokenInfo* %76)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %lor.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load %struct.NestingLevels*, %struct.NestingLevels** @PythonNestingLevels, align 8
  call void @nestingLevelsFree(%struct.NestingLevels* %77)
  %78 = load %struct.sVString*, %struct.sVString** %decorators, align 8
  call void @vStringDelete(%struct.sVString* %78)
  %79 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %80 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %81 = bitcast %struct.tokenInfo* %80 to i8*
  call void @objPoolPut(%struct.sObjPool* %79, i8* %81)
  br label %do.body95

do.body95:                                        ; preds = %while.end
  br label %do.end96

do.end96:                                         ; preds = %do.body95
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_python, align 4
  %call = call %struct.sObjPool* @objPoolNew(i32 16, i8* (i8*)* @newPoolToken, void (i8*)* @deletePoolToken, void (i8*)* @clearPoolToken, i8* null)
  store %struct.sObjPool* %call, %struct.sObjPool** @TokenPool, align 8
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
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  call void @objPoolDelete(%struct.sObjPool* %1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i8* @objPoolGet(%struct.sObjPool*) #1

declare %struct.sVString* @vStringNew() #1

declare %struct.NestingLevels* @nestingLevelsNew(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %0, i1 zeroext false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setIndent(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %lv = alloca %struct.NestingLevel*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.NestingLevels*, %struct.NestingLevels** @PythonNestingLevels, align 8
  %call = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %0)
  store %struct.NestingLevel* %call, %struct.NestingLevel** %lv, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.NestingLevel*, %struct.NestingLevel** %lv, align 8
  %tobool = icmp ne %struct.NestingLevel* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.NestingLevel*, %struct.NestingLevel** %lv, align 8
  %call1 = call i8* @nestingLevelGetUserData(%struct.NestingLevel* %2)
  %3 = bitcast i8* %call1 to %struct.pythonNestingLevelUserData*
  %indentation = getelementptr inbounds %struct.pythonNestingLevelUserData, %struct.pythonNestingLevelUserData* %3, i32 0, i32 0
  %4 = load i32, i32* %indentation, align 4
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %indent = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 3
  %6 = load i32, i32* %indent, align 8
  %cmp = icmp sge i32 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.NestingLevel*, %struct.NestingLevel** %lv, align 8
  %corkIndex = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %8, i32 0, i32 0
  %9 = load i32, i32* %corkIndex, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.NestingLevel*, %struct.NestingLevel** %lv, align 8
  %corkIndex3 = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %10, i32 0, i32 0
  %11 = load i32, i32* %corkIndex3, align 4
  %call4 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %11)
  store %struct.sTagEntryInfo* %call4, %struct.sTagEntryInfo** %e, align 8
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %12, i32 0, i32 4
  %13 = load i64, i64* %lineNumber, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %13, i64* %endLine, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load %struct.NestingLevels*, %struct.NestingLevels** @PythonNestingLevels, align 8
  call void @nestingLevelsPop(%struct.NestingLevels* %15)
  %16 = load %struct.NestingLevels*, %struct.NestingLevels** @PythonNestingLevels, align 8
  %call5 = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %16)
  store %struct.NestingLevel* %call5, %struct.NestingLevel** %lv, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseClassOrDef(%struct.tokenInfo* %token, %struct.sVString* %decorators, i32 %kind, i1 zeroext %isCDef) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.tokenInfo*, align 8
  %decorators.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %isCDef.addr = alloca i8, align 1
  %arglist = alloca %struct.sVString*, align 8
  %name = alloca %struct.tokenInfo*, align 8
  %parameterTokens = alloca [16 x %struct.tokenInfo*], align 8
  %parameterCount = alloca i32, align 4
  %lv = alloca %struct.NestingLevel*, align 8
  %corkIndex = alloca i32, align 4
  %prevTokenType = alloca i32, align 4
  %depth = alloca i32, align 4
  %parameterName = alloca %struct.tokenInfo*, align 8
  %i = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %decorators, %struct.sVString** %decorators.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %frombool = zext i1 %isCDef to i8
  store i8 %frombool, i8* %isCDef.addr, align 1
  store %struct.sVString* null, %struct.sVString** %arglist, align 8
  store %struct.tokenInfo* null, %struct.tokenInfo** %name, align 8
  %0 = bitcast [16 x %struct.tokenInfo*]* %parameterTokens to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 128, i1 false)
  store i32 0, i32* %parameterCount, align 4
  %1 = load i8, i8* %isCDef.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call = call zeroext i1 @readCDefName(%struct.tokenInfo* %2, i32* %kind.addr)
  br i1 %call, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end4

if.else:                                          ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %3)
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %5, 261
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end3, %if.end
  %6 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call5 = call i8* @objPoolGet(%struct.sObjPool* %6)
  %7 = bitcast i8* %call5 to %struct.tokenInfo*
  store %struct.tokenInfo* %7, %struct.tokenInfo** %name, align 8
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %8, %struct.tokenInfo* %9)
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %10)
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %12, 40
  br i1 %cmp7, label %if.then8, label %if.end75

if.then8:                                         ; preds = %if.end4
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type9, align 8
  store i32 %14, i32* %prevTokenType, align 4
  store i32 1, i32* %depth, align 4
  %call10 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call10, %struct.sVString** %arglist, align 8
  %15 = load i32, i32* %kind.addr, align 4
  %cmp11 = icmp ne i32 %15, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  %16 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @reprCat(%struct.sVString* %16, %struct.tokenInfo* %17)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end13
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type14, align 8
  %cmp15 = icmp ne i32 %19, 263
  br i1 %cmp15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %do.body
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type16, align 8
  %cmp17 = icmp ne i32 %21, 42
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type19, align 8
  store i32 %23, i32* %prevTokenType, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true, %do.body
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %24, i1 zeroext true)
  %25 = load i32, i32* %kind.addr, align 4
  %cmp21 = icmp ne i32 %25, 0
  br i1 %cmp21, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %26, i32 0, i32 0
  %27 = load i32, i32* %type22, align 8
  %cmp23 = icmp ne i32 %27, 41
  br i1 %cmp23, label %if.then26, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %28 = load i32, i32* %depth, align 4
  %cmp25 = icmp sgt i32 %28, 1
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false24, %lor.lhs.false, %if.end20
  %29 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @reprCat(%struct.sVString* %29, %struct.tokenInfo* %30)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %lor.lhs.false24
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %31, i32 0, i32 0
  %32 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %32, 40
  br i1 %cmp29, label %if.then36, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type31 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %33, i32 0, i32 0
  %34 = load i32, i32* %type31, align 8
  %cmp32 = icmp eq i32 %34, 91
  br i1 %cmp32, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %35 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type34 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %35, i32 0, i32 0
  %36 = load i32, i32* %type34, align 8
  %cmp35 = icmp eq i32 %36, 123
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %lor.lhs.false33, %lor.lhs.false30, %if.end27
  %37 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %depth, align 4
  br label %if.end69

if.else37:                                        ; preds = %lor.lhs.false33
  %38 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %38, i32 0, i32 0
  %39 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %39, 41
  br i1 %cmp39, label %if.then46, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.else37
  %40 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type41 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %40, i32 0, i32 0
  %41 = load i32, i32* %type41, align 8
  %cmp42 = icmp eq i32 %41, 93
  br i1 %cmp42, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %42 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type44 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %42, i32 0, i32 0
  %43 = load i32, i32* %type44, align 8
  %cmp45 = icmp eq i32 %43, 125
  br i1 %cmp45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %lor.lhs.false43, %lor.lhs.false40, %if.else37
  %44 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end68

if.else47:                                        ; preds = %lor.lhs.false43
  %45 = load i32, i32* %kind.addr, align 4
  %cmp48 = icmp ne i32 %45, 0
  br i1 %cmp48, label %land.lhs.true49, label %if.end67

land.lhs.true49:                                  ; preds = %if.else47
  %46 = load i32, i32* %depth, align 4
  %cmp50 = icmp eq i32 %46, 1
  br i1 %cmp50, label %land.lhs.true51, label %if.end67

land.lhs.true51:                                  ; preds = %land.lhs.true49
  %47 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type52 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %47, i32 0, i32 0
  %48 = load i32, i32* %type52, align 8
  %cmp53 = icmp eq i32 %48, 261
  br i1 %cmp53, label %land.lhs.true54, label %if.end67

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %49 = load i32, i32* %prevTokenType, align 4
  %cmp55 = icmp eq i32 %49, 40
  br i1 %cmp55, label %land.lhs.true58, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %land.lhs.true54
  %50 = load i32, i32* %prevTokenType, align 4
  %cmp57 = icmp eq i32 %50, 44
  br i1 %cmp57, label %land.lhs.true58, label %if.end67

land.lhs.true58:                                  ; preds = %lor.lhs.false56, %land.lhs.true54
  %51 = load i32, i32* %parameterCount, align 4
  %conv = zext i32 %51 to i64
  %cmp59 = icmp ult i64 %conv, 16
  br i1 %cmp59, label %land.lhs.true61, label %if.end67

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %52 = load i8, i8* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PythonKinds, i64 0, i64 7, i32 0), align 8
  %tobool62 = trunc i8 %52 to i1
  br i1 %tobool62, label %if.then64, label %if.end67

if.then64:                                        ; preds = %land.lhs.true61
  %53 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call65 = call i8* @objPoolGet(%struct.sObjPool* %53)
  %54 = bitcast i8* %call65 to %struct.tokenInfo*
  store %struct.tokenInfo* %54, %struct.tokenInfo** %parameterName, align 8
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %parameterName, align 8
  %56 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %55, %struct.tokenInfo* %56)
  %57 = load %struct.tokenInfo*, %struct.tokenInfo** %parameterName, align 8
  %58 = load i32, i32* %parameterCount, align 4
  %inc66 = add i32 %58, 1
  store i32 %inc66, i32* %parameterCount, align 4
  %idxprom = zext i32 %58 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.tokenInfo*], [16 x %struct.tokenInfo*]* %parameterTokens, i64 0, i64 %idxprom
  store %struct.tokenInfo* %57, %struct.tokenInfo** %arrayidx, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %land.lhs.true61, %land.lhs.true58, %lor.lhs.false56, %land.lhs.true51, %land.lhs.true49, %if.else47
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then46
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then36
  br label %do.cond

do.cond:                                          ; preds = %if.end69
  %59 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type70 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %59, i32 0, i32 0
  %60 = load i32, i32* %type70, align 8
  %cmp71 = icmp ne i32 %60, 256
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %61 = load i32, i32* %depth, align 4
  %cmp73 = icmp sgt i32 %61, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %62 = phi i1 [ false, %do.cond ], [ %cmp73, %land.rhs ]
  br i1 %62, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end75

if.end75:                                         ; preds = %do.end, %if.end4
  %63 = load i32, i32* %kind.addr, align 4
  %cmp76 = icmp eq i32 %63, 0
  br i1 %cmp76, label %if.then78, label %if.else80

if.then78:                                        ; preds = %if.end75
  %64 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %65 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %66 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %call79 = call i32 @makeClassTag(%struct.tokenInfo* %64, %struct.sVString* %65, %struct.sVString* %66)
  store i32 %call79, i32* %corkIndex, align 4
  br label %if.end82

if.else80:                                        ; preds = %if.end75
  %67 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %68 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %69 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %call81 = call i32 @makeFunctionTag(%struct.tokenInfo* %67, %struct.sVString* %68, %struct.sVString* %69)
  store i32 %call81, i32* %corkIndex, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then78
  %70 = load %struct.NestingLevels*, %struct.NestingLevels** @PythonNestingLevels, align 8
  %71 = load i32, i32* %corkIndex, align 4
  %call83 = call %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels* %70, i32 %71)
  store %struct.NestingLevel* %call83, %struct.NestingLevel** %lv, align 8
  %72 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %indent = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %72, i32 0, i32 3
  %73 = load i32, i32* %indent, align 8
  %74 = load %struct.NestingLevel*, %struct.NestingLevel** %lv, align 8
  %call84 = call i8* @nestingLevelGetUserData(%struct.NestingLevel* %74)
  %75 = bitcast i8* %call84 to %struct.pythonNestingLevelUserData*
  %indentation = getelementptr inbounds %struct.pythonNestingLevelUserData, %struct.pythonNestingLevelUserData* %75, i32 0, i32 0
  store i32 %73, i32* %indentation, align 4
  %76 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %77 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %78 = bitcast %struct.tokenInfo* %77 to i8*
  call void @objPoolPut(%struct.sObjPool* %76, i8* %78)
  %79 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringDelete(%struct.sVString* %79)
  %80 = load i32, i32* %parameterCount, align 4
  %cmp85 = icmp ugt i32 %80, 0
  br i1 %cmp85, label %if.then87, label %if.end96

if.then87:                                        ; preds = %if.end82
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then87
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %parameterCount, align 4
  %cmp88 = icmp ult i32 %81, %82
  br i1 %cmp88, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* %i, align 4
  %idxprom90 = zext i32 %83 to i64
  %arrayidx91 = getelementptr inbounds [16 x %struct.tokenInfo*], [16 x %struct.tokenInfo*]* %parameterTokens, i64 0, i64 %idxprom90
  %84 = load %struct.tokenInfo*, %struct.tokenInfo** %arrayidx91, align 8
  %call92 = call i32 @makeSimplePythonTag(%struct.tokenInfo* %84, i32 7)
  %85 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom93 = zext i32 %86 to i64
  %arrayidx94 = getelementptr inbounds [16 x %struct.tokenInfo*], [16 x %struct.tokenInfo*]* %parameterTokens, i64 0, i64 %idxprom93
  %87 = load %struct.tokenInfo*, %struct.tokenInfo** %arrayidx94, align 8
  %88 = bitcast %struct.tokenInfo* %87 to i8*
  call void @objPoolPut(%struct.sObjPool* %85, i8* %88)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %89 = load i32, i32* %i, align 4
  %inc95 = add i32 %89, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end96

if.end96:                                         ; preds = %for.end, %if.end82
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end96, %if.then2, %if.then1
  %90 = load i1, i1* %retval, align 1
  ret i1 %90
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseImport(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %fromModule = alloca %struct.tokenInfo*, align 8
  %parenthesized = alloca i8, align 1
  %name = alloca %struct.tokenInfo*, align 8
  %fq = alloca %struct.sVString*, align 8
  %fq47 = alloca %struct.sVString*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.tokenInfo* null, %struct.tokenInfo** %fromModule, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readQualifiedName(%struct.tokenInfo* %2)
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp1 = icmp eq i32 %4, 261
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %5)
  %6 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %6, %struct.tokenInfo** %fromModule, align 8
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %7, %struct.tokenInfo* %8)
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %9)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %keyword4, align 4
  %cmp5 = icmp eq i32 %11, 8
  br i1 %cmp5, label %if.then6, label %if.end66

if.then6:                                         ; preds = %if.end3
  store i8 0, i8* %parenthesized, align 1
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %tobool = icmp ne %struct.tokenInfo* %12, null
  br i1 %tobool, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then6
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %call8 = call i32 @makeSimplePythonRefTag(%struct.tokenInfo* %13, %struct.sVString* null, i32 5, i32 1, i32 -1)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then6
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end9
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readQualifiedName(%struct.tokenInfo* %14)
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %tobool10 = icmp ne %struct.tokenInfo* %15, null
  br i1 %tobool10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %do.body
  %16 = load i8, i8* %parenthesized, align 1
  %tobool11 = trunc i8 %16 to i1
  br i1 %tobool11, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %18, 40
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  store i8 1, i8* %parenthesized, align 1
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readQualifiedName(%struct.tokenInfo* %19)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true12, %land.lhs.true, %do.body
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type17, align 8
  %cmp18 = icmp eq i32 %21, 261
  br i1 %cmp18, label %if.then19, label %if.end57

if.then19:                                        ; preds = %if.end16
  %22 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call20 = call i8* @objPoolGet(%struct.sObjPool* %22)
  %23 = bitcast i8* %call20 to %struct.tokenInfo*
  store %struct.tokenInfo* %23, %struct.tokenInfo** %name, align 8
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %24, %struct.tokenInfo* %25)
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %26)
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword21 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %27, i32 0, i32 1
  %28 = load i32, i32* %keyword21, align 4
  %cmp22 = icmp eq i32 %28, 0
  br i1 %cmp22, label %if.then23, label %if.else41

if.then23:                                        ; preds = %if.then19
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %29)
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %30, i32 0, i32 0
  %31 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %31, 261
  br i1 %cmp25, label %if.then26, label %if.end40

if.then26:                                        ; preds = %if.then23
  %32 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %tobool27 = icmp ne %struct.tokenInfo* %32, null
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then26
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %call29 = call i32 @makeSimplePythonRefTag(%struct.tokenInfo* %33, %struct.sVString* null, i32 6, i32 1, i32 -1)
  %call30 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.then28
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 2
  %35 = load %struct.sVString*, %struct.sVString** %string, align 8
  %call32 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %35)
  store %struct.sVString* %call32, %struct.sVString** %fq, align 8
  %36 = load %struct.sVString*, %struct.sVString** %fq, align 8
  call void @vStringPut(%struct.sVString* %36, i32 46)
  %37 = load %struct.sVString*, %struct.sVString** %fq, align 8
  %38 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %string33 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %38, i32 0, i32 2
  %39 = load %struct.sVString*, %struct.sVString** %string33, align 8
  call void @vStringCat(%struct.sVString* %37, %struct.sVString* %39)
  %40 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %41 = load %struct.sVString*, %struct.sVString** %fq, align 8
  %call34 = call i32 @makeSimplePythonRefTag(%struct.tokenInfo* %40, %struct.sVString* %41, i32 6, i32 1, i32 3)
  %42 = load %struct.sVString*, %struct.sVString** %fq, align 8
  call void @vStringDelete(%struct.sVString* %42)
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then28
  %43 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call36 = call i32 @makeSimplePythonTag(%struct.tokenInfo* %43, i32 6)
  br label %if.end39

if.else:                                          ; preds = %if.then26
  %44 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %call37 = call i32 @makeSimplePythonRefTag(%struct.tokenInfo* %44, %struct.sVString* null, i32 5, i32 2, i32 -1)
  %45 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call38 = call i32 @makeSimplePythonTag(%struct.tokenInfo* %45, i32 4)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.end35
  %46 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %47 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %46, %struct.tokenInfo* %47)
  %48 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %48)
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then23
  br label %if.end56

if.else41:                                        ; preds = %if.then19
  %49 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %tobool42 = icmp ne %struct.tokenInfo* %49, null
  br i1 %tobool42, label %if.then43, label %if.else53

if.then43:                                        ; preds = %if.else41
  %50 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %call44 = call i32 @makeSimplePythonRefTag(%struct.tokenInfo* %50, %struct.sVString* null, i32 6, i32 0, i32 -1)
  %call45 = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call45, label %if.then46, label %if.end52

if.then46:                                        ; preds = %if.then43
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %string48 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %51, i32 0, i32 2
  %52 = load %struct.sVString*, %struct.sVString** %string48, align 8
  %call49 = call %struct.sVString* @vStringNewCopy(%struct.sVString* %52)
  store %struct.sVString* %call49, %struct.sVString** %fq47, align 8
  %53 = load %struct.sVString*, %struct.sVString** %fq47, align 8
  call void @vStringPut(%struct.sVString* %53, i32 46)
  %54 = load %struct.sVString*, %struct.sVString** %fq47, align 8
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %string50 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %55, i32 0, i32 2
  %56 = load %struct.sVString*, %struct.sVString** %string50, align 8
  call void @vStringCat(%struct.sVString* %54, %struct.sVString* %56)
  %57 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %58 = load %struct.sVString*, %struct.sVString** %fq47, align 8
  %call51 = call i32 @makeSimplePythonRefTag(%struct.tokenInfo* %57, %struct.sVString* %58, i32 6, i32 0, i32 3)
  %59 = load %struct.sVString*, %struct.sVString** %fq47, align 8
  call void @vStringDelete(%struct.sVString* %59)
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.then43
  br label %if.end55

if.else53:                                        ; preds = %if.else41
  %60 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %call54 = call i32 @makeSimplePythonRefTag(%struct.tokenInfo* %60, %struct.sVString* null, i32 5, i32 0, i32 -1)
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.end52
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end40
  %61 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %62 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %63 = bitcast %struct.tokenInfo* %62 to i8*
  call void @objPoolPut(%struct.sObjPool* %61, i8* %63)
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end16
  br label %do.cond

do.cond:                                          ; preds = %if.end57
  %64 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type58 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %64, i32 0, i32 0
  %65 = load i32, i32* %type58, align 8
  %cmp59 = icmp eq i32 %65, 44
  br i1 %cmp59, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %66 = load i8, i8* %parenthesized, align 1
  %tobool60 = trunc i8 %66 to i1
  br i1 %tobool60, label %land.lhs.true61, label %if.end65

land.lhs.true61:                                  ; preds = %do.end
  %67 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type62 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %67, i32 0, i32 0
  %68 = load i32, i32* %type62, align 8
  %cmp63 = icmp eq i32 %68, 41
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true61
  %69 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %69)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true61, %do.end
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end3
  %70 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %tobool67 = icmp ne %struct.tokenInfo* %70, null
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end66
  %71 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %72 = load %struct.tokenInfo*, %struct.tokenInfo** %fromModule, align 8
  %73 = bitcast %struct.tokenInfo* %72 to i8*
  call void @objPoolPut(%struct.sObjPool* %71, i8* %73)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipOverPair(%struct.tokenInfo* %token, i32 %tOpen, i32 %tClose, %struct.sVString* %repr, i1 zeroext %reprOuterPair) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %tOpen.addr = alloca i32, align 4
  %tClose.addr = alloca i32, align 4
  %repr.addr = alloca %struct.sVString*, align 8
  %reprOuterPair.addr = alloca i8, align 1
  %depth = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %tOpen, i32* %tOpen.addr, align 4
  store i32 %tClose, i32* %tClose.addr, align 4
  store %struct.sVString* %repr, %struct.sVString** %repr.addr, align 8
  %frombool = zext i1 %reprOuterPair to i8
  store i8 %frombool, i8* %reprOuterPair.addr, align 1
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %2 = load i32, i32* %tOpen.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  store i32 1, i32* %depth, align 4
  %3 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool = icmp ne %struct.sVString* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8, i8* %reprOuterPair.addr, align 1
  %tobool1 = trunc i8 %4 to i1
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %land.lhs.true
  %5 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @reprCat(%struct.sVString* %5, %struct.tokenInfo* %6)
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %7, i1 zeroext true)
  %8 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool3 = icmp ne %struct.sVString* %8, null
  br i1 %tobool3, label %land.lhs.true4, label %if.end11

land.lhs.true4:                                   ; preds = %do.body
  %9 = load i8, i8* %reprOuterPair.addr, align 1
  %tobool5 = trunc i8 %9 to i1
  br i1 %tobool5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type6, align 8
  %12 = load i32, i32* %tClose.addr, align 4
  %cmp7 = icmp ne i32 %11, %12
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %13 = load i32, i32* %depth, align 4
  %cmp9 = icmp sgt i32 %13, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %land.lhs.true4
  %14 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @reprCat(%struct.sVString* %14, %struct.tokenInfo* %15)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false8, %do.body
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type12, align 8
  %18 = load i32, i32* %tOpen.addr, align 4
  %cmp13 = icmp eq i32 %17, %18
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %19 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %depth, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end11
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type15, align 8
  %22 = load i32, i32* %tClose.addr, align 4
  %cmp16 = icmp eq i32 %21, %22
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  %23 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then14
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 0
  %25 = load i32, i32* %type20, align 8
  %cmp21 = icmp ne i32 %25, 256
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %26 = load i32, i32* %depth, align 4
  %cmp22 = icmp sgt i32 %26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %27 = phi i1 [ false, %do.cond ], [ %cmp22, %land.rhs ]
  br i1 %27, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %28, i32 0, i32 0
  %29 = load i32, i32* %type24, align 8
  %30 = load i32, i32* %tClose.addr, align 4
  %cmp25 = icmp eq i32 %29, %30
  ret i1 %cmp25
}

declare %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels*) #1

declare %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseVariable(%struct.tokenInfo* %token, i32 %kind) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %nameTokens = alloca [8 x %struct.tokenInfo*], align 8
  %nameCount = alloca i32, align 4
  %name = alloca %struct.tokenInfo*, align 8
  %i = alloca i32, align 4
  %nameToken = alloca %struct.tokenInfo*, align 8
  %arglist = alloca %struct.sVString*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = bitcast [8 x %struct.tokenInfo*]* %nameTokens to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 64, i1 false)
  store i32 0, i32* %nameCount, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %entry
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 261
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %nameCount, align 4
  %conv = zext i32 %3 to i64
  %cmp1 = icmp ult i64 %conv, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %5)
  %6 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %6, %struct.tokenInfo** %name, align 8
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %7, %struct.tokenInfo* %8)
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %9)
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type3, align 8
  %cmp4 = icmp eq i32 %11, 46
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %14 = bitcast %struct.tokenInfo* %13 to i8*
  call void @objPoolPut(%struct.sObjPool* %12, i8* %14)
  store %struct.tokenInfo* null, %struct.tokenInfo** %name, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %15)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %17, 261
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %19, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %20 = phi i1 [ true, %do.cond ], [ %cmp10, %lor.rhs ]
  br i1 %20, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body
  %21 = load %struct.tokenInfo*, %struct.tokenInfo** %name, align 8
  %22 = load i32, i32* %nameCount, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %nameCount, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.tokenInfo*], [8 x %struct.tokenInfo*]* %nameTokens, i64 0, i64 %idxprom
  store %struct.tokenInfo* %21, %struct.tokenInfo** %arrayidx, align 8
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type12, align 8
  %cmp13 = icmp eq i32 %24, 58
  br i1 %cmp13, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call15 = call zeroext i1 @skipTypeAnnotation(%struct.tokenInfo* %25)
  br i1 %call15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %26)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %28, 44
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end18
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %29)
  br label %if.end23

if.else:                                          ; preds = %if.end18
  br label %while.end

if.end23:                                         ; preds = %if.then22
  br label %while.cond

while.end:                                        ; preds = %if.else, %land.end
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %30, i32 0, i32 0
  %31 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %31, 61
  br i1 %cmp25, label %if.then27, label %if.end85

if.then27:                                        ; preds = %while.end
  store i32 0, i32* %i, align 4
  br label %do.body28

do.body28:                                        ; preds = %land.end72, %if.then27
  %32 = load i32, i32* %i, align 4
  %inc29 = add i32 %32, 1
  store i32 %inc29, i32* %i, align 4
  %idxprom30 = zext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds [8 x %struct.tokenInfo*], [8 x %struct.tokenInfo*]* %nameTokens, i64 0, i64 %idxprom30
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %arrayidx31, align 8
  store %struct.tokenInfo* %33, %struct.tokenInfo** %nameToken, align 8
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %34)
  %35 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  %tobool = icmp ne %struct.tokenInfo* %35, null
  br i1 %tobool, label %if.else33, label %if.then32

if.then32:                                        ; preds = %do.body28
  br label %if.end43

if.else33:                                        ; preds = %do.body28
  %36 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %36, i32 0, i32 1
  %37 = load i32, i32* %keyword, align 4
  %cmp34 = icmp ne i32 %37, 10
  br i1 %cmp34, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else33
  %38 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  %39 = load i32, i32* %kind.addr, align 4
  %call37 = call i32 @makeSimplePythonTag(%struct.tokenInfo* %38, i32 %39)
  br label %if.end42

if.else38:                                        ; preds = %if.else33
  %call39 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call39, %struct.sVString** %arglist, align 8
  %40 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %40)
  %41 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %41, i32 40)
  %42 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %43 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %call40 = call zeroext i1 @skipLambdaArglist(%struct.tokenInfo* %42, %struct.sVString* %43)
  %44 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringPut(%struct.sVString* %44, i32 41)
  %45 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken, align 8
  %46 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  %call41 = call i32 @makeFunctionTag(%struct.tokenInfo* %45, %struct.sVString* %46, %struct.sVString* null)
  %47 = load %struct.sVString*, %struct.sVString** %arglist, align 8
  call void @vStringDelete(%struct.sVString* %47)
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then36
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then32
  br label %while.cond44

while.cond44:                                     ; preds = %while.body63, %if.end43
  %48 = load i32, i32* @TokenContinuationDepth, align 4
  %cmp45 = icmp ugt i32 %48, 0
  br i1 %cmp45, label %land.lhs.true50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond44
  %49 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %49, i32 0, i32 0
  %50 = load i32, i32* %type47, align 8
  %cmp48 = icmp ne i32 %50, 44
  br i1 %cmp48, label %land.lhs.true50, label %land.end62

land.lhs.true50:                                  ; preds = %lor.lhs.false, %while.cond44
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type51 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %51, i32 0, i32 0
  %52 = load i32, i32* %type51, align 8
  %cmp52 = icmp ne i32 %52, 256
  br i1 %cmp52, label %land.lhs.true54, label %land.end62

land.lhs.true54:                                  ; preds = %land.lhs.true50
  %53 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type55 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %53, i32 0, i32 0
  %54 = load i32, i32* %type55, align 8
  %cmp56 = icmp ne i32 %54, 59
  br i1 %cmp56, label %land.rhs58, label %land.end62

land.rhs58:                                       ; preds = %land.lhs.true54
  %55 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type59 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %55, i32 0, i32 0
  %56 = load i32, i32* %type59, align 8
  %cmp60 = icmp ne i32 %56, 258
  br label %land.end62

land.end62:                                       ; preds = %land.rhs58, %land.lhs.true54, %land.lhs.true50, %lor.lhs.false
  %57 = phi i1 [ false, %land.lhs.true54 ], [ false, %land.lhs.true50 ], [ false, %lor.lhs.false ], [ %cmp60, %land.rhs58 ]
  br i1 %57, label %while.body63, label %while.end64

while.body63:                                     ; preds = %land.end62
  %58 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %58)
  br label %while.cond44

while.end64:                                      ; preds = %land.end62
  br label %do.cond65

do.cond65:                                        ; preds = %while.end64
  %59 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type66 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %59, i32 0, i32 0
  %60 = load i32, i32* %type66, align 8
  %cmp67 = icmp eq i32 %60, 44
  br i1 %cmp67, label %land.rhs69, label %land.end72

land.rhs69:                                       ; preds = %do.cond65
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %nameCount, align 4
  %cmp70 = icmp ult i32 %61, %62
  br label %land.end72

land.end72:                                       ; preds = %land.rhs69, %do.cond65
  %63 = phi i1 [ false, %do.cond65 ], [ %cmp70, %land.rhs69 ]
  br i1 %63, label %do.body28, label %do.end73

do.end73:                                         ; preds = %land.end72
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end73
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %nameCount, align 4
  %cmp74 = icmp ult i32 %64, %65
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %i, align 4
  %idxprom76 = zext i32 %66 to i64
  %arrayidx77 = getelementptr inbounds [8 x %struct.tokenInfo*], [8 x %struct.tokenInfo*]* %nameTokens, i64 0, i64 %idxprom76
  %67 = load %struct.tokenInfo*, %struct.tokenInfo** %arrayidx77, align 8
  %tobool78 = icmp ne %struct.tokenInfo* %67, null
  br i1 %tobool78, label %if.then79, label %if.end83

if.then79:                                        ; preds = %for.body
  %68 = load i32, i32* %i, align 4
  %idxprom80 = zext i32 %68 to i64
  %arrayidx81 = getelementptr inbounds [8 x %struct.tokenInfo*], [8 x %struct.tokenInfo*]* %nameTokens, i64 0, i64 %idxprom80
  %69 = load %struct.tokenInfo*, %struct.tokenInfo** %arrayidx81, align 8
  %70 = load i32, i32* %kind.addr, align 4
  %call82 = call i32 @makeSimplePythonTag(%struct.tokenInfo* %69, i32 %70)
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end83
  %71 = load i32, i32* %i, align 4
  %inc84 = add i32 %71, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end85

if.end85:                                         ; preds = %for.end, %while.end
  br label %while.cond86

while.cond86:                                     ; preds = %if.end96, %if.end85
  %72 = load i32, i32* %nameCount, align 4
  %cmp87 = icmp ugt i32 %72, 0
  br i1 %cmp87, label %while.body89, label %while.end97

while.body89:                                     ; preds = %while.cond86
  %73 = load i32, i32* %nameCount, align 4
  %dec = add i32 %73, -1
  store i32 %dec, i32* %nameCount, align 4
  %idxprom90 = zext i32 %dec to i64
  %arrayidx91 = getelementptr inbounds [8 x %struct.tokenInfo*], [8 x %struct.tokenInfo*]* %nameTokens, i64 0, i64 %idxprom90
  %74 = load %struct.tokenInfo*, %struct.tokenInfo** %arrayidx91, align 8
  %tobool92 = icmp ne %struct.tokenInfo* %74, null
  br i1 %tobool92, label %if.then93, label %if.end96

if.then93:                                        ; preds = %while.body89
  %75 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %76 = load i32, i32* %nameCount, align 4
  %idxprom94 = zext i32 %76 to i64
  %arrayidx95 = getelementptr inbounds [8 x %struct.tokenInfo*], [8 x %struct.tokenInfo*]* %nameTokens, i64 0, i64 %idxprom94
  %77 = load %struct.tokenInfo*, %struct.tokenInfo** %arrayidx95, align 8
  %78 = bitcast %struct.tokenInfo* %77 to i8*
  call void @objPoolPut(%struct.sObjPool* %75, i8* %78)
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %while.body89
  br label %while.cond86

while.end97:                                      ; preds = %while.cond86
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readQualifiedName(%struct.tokenInfo* %nameToken) #0 {
entry:
  %nameToken.addr = alloca %struct.tokenInfo*, align 8
  %qualifiedName = alloca %struct.sVString*, align 8
  %token = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %nameToken, %struct.tokenInfo** %nameToken.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  call void @readToken(%struct.tokenInfo* %0)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 261
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 0
  %4 = load i32, i32* %type1, align 8
  %cmp2 = icmp eq i32 %4, 46
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %qualifiedName, align 8
  %5 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call3 = call i8* @objPoolGet(%struct.sObjPool* %5)
  %6 = bitcast i8* %call3 to %struct.tokenInfo*
  store %struct.tokenInfo* %6, %struct.tokenInfo** %token, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %type4 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type4, align 8
  %cmp5 = icmp eq i32 %8, 261
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %type6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %10, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %11 = phi i1 [ true, %while.cond ], [ %cmp7, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load %struct.sVString*, %struct.sVString** %qualifiedName, align 8
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %12, %struct.sVString* %14)
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  call void @copyToken(%struct.tokenInfo* %15, %struct.tokenInfo* %16)
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  call void @readToken(%struct.tokenInfo* %17)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  call void @ungetToken(%struct.tokenInfo* %18)
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  call void @copyToken(%struct.tokenInfo* %19, %struct.tokenInfo* %20)
  %21 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %type8 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %21, i32 0, i32 0
  store i32 261, i32* %type8, align 8
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %nameToken.addr, align 8
  %string9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 2
  %23 = load %struct.sVString*, %struct.sVString** %string9, align 8
  %24 = load %struct.sVString*, %struct.sVString** %qualifiedName, align 8
  call void @vStringCopy(%struct.sVString* %23, %struct.sVString* %24)
  %25 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %27 = bitcast %struct.tokenInfo* %26 to i8*
  call void @objPoolPut(%struct.sObjPool* %25, i8* %27)
  %28 = load %struct.sVString*, %struct.sVString** %qualifiedName, align 8
  call void @vStringDelete(%struct.sVString* %28)
  br label %if.end

if.end:                                           ; preds = %while.end, %lor.lhs.false
  ret void
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

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare void @nestingLevelsFree(%struct.NestingLevels*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @objPoolPut(%struct.sObjPool*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readTokenFull(%struct.tokenInfo* %token, i1 zeroext %inclWhitespaces) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %inclWhitespaces.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %d = alloca i32, align 4
  %tmp36 = alloca %struct._MIOPos, align 8
  %d39 = alloca i32, align 4
  %d50 = alloca i32, align 4
  %d61 = alloca i32, align 4
  %indent = alloca i32, align 4
  %d85 = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %frombool = zext i1 %inclWhitespaces to i8
  store i8 %frombool, i8* %inclWhitespaces.addr, align 1
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** @NextToken, align 8
  %tobool = icmp ne %struct.tokenInfo* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** @NextToken, align 8
  call void @copyToken(%struct.tokenInfo* %1, %struct.tokenInfo* %2)
  %3 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** @NextToken, align 8
  %5 = bitcast %struct.tokenInfo* %4 to i8*
  call void @objPoolPut(%struct.sObjPool* %3, i8* %5)
  store %struct.tokenInfo* null, %struct.tokenInfo** @NextToken, align 8
  br label %if.end173

if.end:                                           ; preds = %entry
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 0
  store i32 257, i32* %type, align 8
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 2
  %9 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %9, %struct.sVString** %vStringClear_s, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %getNextChar

getNextChar:                                      ; preds = %if.else121, %if.end69, %do.end
  store i32 0, i32* %n, align 4
  br label %do.body1

do.body1:                                         ; preds = %lor.end, %getNextChar
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %13 = load i32, i32* %n, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %n, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body1
  %14 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %14, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %15 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %15, 9
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %16, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %17 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp3, %lor.rhs ]
  br i1 %17, label %do.body1, label %do.end4

do.end4:                                          ; preds = %lor.end
  %call5 = call i64 @getInputLineNumber()
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 4
  store i64 %call5, i64* %lineNumber, align 8
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %19, i32 0, i32 5
  %call6 = call [2 x i64] @getInputFilePosition()
  %20 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call6, [2 x i64]* %20, align 8
  %21 = bitcast %struct._MIOPos* %filePosition to i8*
  %22 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = load i8, i8* %inclWhitespaces.addr, align 1
  %tobool7 = trunc i8 %23 to i1
  br i1 %tobool7, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %do.end4
  %24 = load i32, i32* %n, align 4
  %cmp8 = icmp sgt i32 %24, 1
  br i1 %cmp8, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %land.lhs.true
  %25 = load i32, i32* %c, align 4
  %cmp10 = icmp ne i32 %25, 13
  br i1 %cmp10, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %26 = load i32, i32* %c, align 4
  %cmp12 = icmp ne i32 %26, 10
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %land.lhs.true11
  %27 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %27)
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string14 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %28, i32 0, i32 2
  %29 = load %struct.sVString*, %struct.sVString** %string14, align 8
  call void @vStringPut(%struct.sVString* %29, i32 32)
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type15 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %30, i32 0, i32 0
  store i32 263, i32* %type15, align 8
  br label %if.end173

if.end16:                                         ; preds = %land.lhs.true11, %land.lhs.true9, %land.lhs.true, %do.end4
  %31 = load i32, i32* %c, align 4
  switch i32 %31, label %sw.default [
    i32 -1, label %sw.bb
    i32 39, label %sw.bb18
    i32 34, label %sw.bb18
    i32 61, label %sw.bb38
    i32 43, label %sw.bb49
    i32 45, label %sw.bb49
    i32 42, label %sw.bb49
    i32 37, label %sw.bb49
    i32 60, label %sw.bb49
    i32 62, label %sw.bb49
    i32 47, label %sw.bb49
    i32 92, label %sw.bb60
    i32 35, label %sw.bb70
    i32 13, label %sw.bb70
    i32 10, label %sw.bb70
  ]

sw.bb:                                            ; preds = %if.end16
  %32 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %32, i32 0, i32 0
  store i32 256, i32* %type17, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end16, %if.end16
  %call19 = call i32 @getcFromInputFile()
  store i32 %call19, i32* %d, align 4
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %33, i32 0, i32 0
  store i32 262, i32* %type20, align 8
  %34 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string21 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %34, i32 0, i32 2
  %35 = load %struct.sVString*, %struct.sVString** %string21, align 8
  %36 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %35, i32 %36)
  %37 = load i32, i32* %d, align 4
  %38 = load i32, i32* %c, align 4
  %cmp22 = icmp ne i32 %37, %38
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %sw.bb18
  %39 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %39)
  %40 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string24 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %40, i32 0, i32 2
  %41 = load %struct.sVString*, %struct.sVString** %string24, align 8
  %42 = load i32, i32* %c, align 4
  call void @readString(%struct.sVString* %41, i32 %42)
  br label %if.end31

if.else:                                          ; preds = %sw.bb18
  %call25 = call i32 @getcFromInputFile()
  store i32 %call25, i32* %d, align 4
  %43 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %call25, %43
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  %44 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string28 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %44, i32 0, i32 2
  %45 = load %struct.sVString*, %struct.sVString** %string28, align 8
  %46 = load i32, i32* %c, align 4
  call void @readTripleString(%struct.sVString* %45, i32 %46)
  br label %if.end30

if.else29:                                        ; preds = %if.else
  %47 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %47)
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then27
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then23
  %48 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string32 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %48, i32 0, i32 2
  %49 = load %struct.sVString*, %struct.sVString** %string32, align 8
  %50 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %49, i32 %50)
  %call33 = call i64 @getInputLineNumber()
  %51 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber34 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %51, i32 0, i32 4
  store i64 %call33, i64* %lineNumber34, align 8
  %52 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition35 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %52, i32 0, i32 5
  %call37 = call [2 x i64] @getInputFilePosition()
  %53 = bitcast %struct._MIOPos* %tmp36 to [2 x i64]*
  store [2 x i64] %call37, [2 x i64]* %53, align 8
  %54 = bitcast %struct._MIOPos* %filePosition35 to i8*
  %55 = bitcast %struct._MIOPos* %tmp36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end16
  %call40 = call i32 @getcFromInputFile()
  store i32 %call40, i32* %d39, align 4
  %56 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string41 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %56, i32 0, i32 2
  %57 = load %struct.sVString*, %struct.sVString** %string41, align 8
  %58 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %57, i32 %58)
  %59 = load i32, i32* %d39, align 4
  %60 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %59, %60
  br i1 %cmp42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %sw.bb38
  %61 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string44 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %61, i32 0, i32 2
  %62 = load %struct.sVString*, %struct.sVString** %string44, align 8
  %63 = load i32, i32* %d39, align 4
  call void @vStringPut(%struct.sVString* %62, i32 %63)
  %64 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type45 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %64, i32 0, i32 0
  store i32 260, i32* %type45, align 8
  br label %if.end48

if.else46:                                        ; preds = %sw.bb38
  %65 = load i32, i32* %d39, align 4
  call void @ungetcToInputFile(i32 %65)
  %66 = load i32, i32* %c, align 4
  %67 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %67, i32 0, i32 0
  store i32 %66, i32* %type47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then43
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end16, %if.end16, %if.end16, %if.end16, %if.end16, %if.end16, %if.end16
  %call51 = call i32 @getcFromInputFile()
  store i32 %call51, i32* %d50, align 4
  %68 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string52 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %68, i32 0, i32 2
  %69 = load %struct.sVString*, %struct.sVString** %string52, align 8
  %70 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %69, i32 %70)
  %71 = load i32, i32* %d50, align 4
  %cmp53 = icmp ne i32 %71, 61
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %sw.bb49
  %72 = load i32, i32* %d50, align 4
  call void @ungetcToInputFile(i32 %72)
  %73 = load i32, i32* %c, align 4
  %74 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type55 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %74, i32 0, i32 0
  store i32 %73, i32* %type55, align 8
  br label %if.end59

if.else56:                                        ; preds = %sw.bb49
  %75 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string57 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %75, i32 0, i32 2
  %76 = load %struct.sVString*, %struct.sVString** %string57, align 8
  %77 = load i32, i32* %d50, align 4
  call void @vStringPut(%struct.sVString* %76, i32 %77)
  %78 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type58 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %78, i32 0, i32 0
  store i32 260, i32* %type58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then54
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end16
  %call62 = call i32 @getcFromInputFile()
  store i32 %call62, i32* %d61, align 4
  %79 = load i32, i32* %d61, align 4
  %cmp63 = icmp eq i32 %79, 13
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %sw.bb60
  %call65 = call i32 @getcFromInputFile()
  store i32 %call65, i32* %d61, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %sw.bb60
  %80 = load i32, i32* %d61, align 4
  %cmp67 = icmp ne i32 %80, 10
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end66
  %81 = load i32, i32* %d61, align 4
  call void @ungetcToInputFile(i32 %81)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66
  br label %getNextChar

sw.bb70:                                          ; preds = %if.end16, %if.end16, %if.end16
  store i32 0, i32* %indent, align 4
  br label %do.body71

do.body71:                                        ; preds = %lor.end113, %sw.bb70
  %82 = load i32, i32* %c, align 4
  %cmp72 = icmp eq i32 %82, 35
  br i1 %cmp72, label %if.then73, label %if.end82

if.then73:                                        ; preds = %do.body71
  br label %do.body74

do.body74:                                        ; preds = %land.end, %if.then73
  %call75 = call i32 @getcFromInputFile()
  store i32 %call75, i32* %c, align 4
  br label %do.cond76

do.cond76:                                        ; preds = %do.body74
  %83 = load i32, i32* %c, align 4
  %cmp77 = icmp ne i32 %83, -1
  br i1 %cmp77, label %land.lhs.true78, label %land.end

land.lhs.true78:                                  ; preds = %do.cond76
  %84 = load i32, i32* %c, align 4
  %cmp79 = icmp ne i32 %84, 13
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true78
  %85 = load i32, i32* %c, align 4
  %cmp80 = icmp ne i32 %85, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true78, %do.cond76
  %86 = phi i1 [ false, %land.lhs.true78 ], [ false, %do.cond76 ], [ %cmp80, %land.rhs ]
  br i1 %86, label %do.body74, label %do.end81

do.end81:                                         ; preds = %land.end
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %do.body71
  %87 = load i32, i32* %c, align 4
  %cmp83 = icmp eq i32 %87, 13
  br i1 %cmp83, label %if.then84, label %if.end90

if.then84:                                        ; preds = %if.end82
  %call86 = call i32 @getcFromInputFile()
  store i32 %call86, i32* %d85, align 4
  %88 = load i32, i32* %d85, align 4
  %cmp87 = icmp ne i32 %88, 10
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then84
  %89 = load i32, i32* %d85, align 4
  call void @ungetcToInputFile(i32 %89)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.then84
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end82
  store i32 0, i32* %indent, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end106, %if.end90
  %call91 = call i32 @getcFromInputFile()
  store i32 %call91, i32* %c, align 4
  %cmp92 = icmp eq i32 %call91, 32
  br i1 %cmp92, label %lor.end97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %while.cond
  %90 = load i32, i32* %c, align 4
  %cmp94 = icmp eq i32 %90, 9
  br i1 %cmp94, label %lor.end97, label %lor.rhs95

lor.rhs95:                                        ; preds = %lor.lhs.false93
  %91 = load i32, i32* %c, align 4
  %cmp96 = icmp eq i32 %91, 12
  br label %lor.end97

lor.end97:                                        ; preds = %lor.rhs95, %lor.lhs.false93, %while.cond
  %92 = phi i1 [ true, %lor.lhs.false93 ], [ true, %while.cond ], [ %cmp96, %lor.rhs95 ]
  br i1 %92, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end97
  %93 = load i32, i32* %c, align 4
  %cmp98 = icmp eq i32 %93, 9
  br i1 %cmp98, label %if.then99, label %if.else100

if.then99:                                        ; preds = %while.body
  %94 = load i32, i32* %indent, align 4
  %rem = srem i32 %94, 8
  %sub = sub nsw i32 8, %rem
  %95 = load i32, i32* %indent, align 4
  %add = add nsw i32 %95, %sub
  store i32 %add, i32* %indent, align 4
  br label %if.end106

if.else100:                                       ; preds = %while.body
  %96 = load i32, i32* %c, align 4
  %cmp101 = icmp eq i32 %96, 12
  br i1 %cmp101, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else100
  store i32 0, i32* %indent, align 4
  br label %if.end105

if.else103:                                       ; preds = %if.else100
  %97 = load i32, i32* %indent, align 4
  %inc104 = add nsw i32 %97, 1
  store i32 %inc104, i32* %indent, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else103, %if.then102
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then99
  br label %while.cond

while.end:                                        ; preds = %lor.end97
  br label %do.cond107

do.cond107:                                       ; preds = %while.end
  %98 = load i32, i32* %c, align 4
  %cmp108 = icmp eq i32 %98, 13
  br i1 %cmp108, label %lor.end113, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %do.cond107
  %99 = load i32, i32* %c, align 4
  %cmp110 = icmp eq i32 %99, 10
  br i1 %cmp110, label %lor.end113, label %lor.rhs111

lor.rhs111:                                       ; preds = %lor.lhs.false109
  %100 = load i32, i32* %c, align 4
  %cmp112 = icmp eq i32 %100, 35
  br label %lor.end113

lor.end113:                                       ; preds = %lor.rhs111, %lor.lhs.false109, %do.cond107
  %101 = phi i1 [ true, %lor.lhs.false109 ], [ true, %do.cond107 ], [ %cmp112, %lor.rhs111 ]
  br i1 %101, label %do.body71, label %do.end114

do.end114:                                        ; preds = %lor.end113
  %102 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %102)
  %103 = load i32, i32* @TokenContinuationDepth, align 4
  %cmp115 = icmp ugt i32 %103, 0
  br i1 %cmp115, label %if.then116, label %if.else123

if.then116:                                       ; preds = %do.end114
  %104 = load i8, i8* %inclWhitespaces.addr, align 1
  %tobool117 = trunc i8 %104 to i1
  br i1 %tobool117, label %if.then118, label %if.else121

if.then118:                                       ; preds = %if.then116
  %105 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string119 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %105, i32 0, i32 2
  %106 = load %struct.sVString*, %struct.sVString** %string119, align 8
  call void @vStringPut(%struct.sVString* %106, i32 32)
  %107 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type120 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %107, i32 0, i32 0
  store i32 263, i32* %type120, align 8
  br label %if.end122

if.else121:                                       ; preds = %if.then116
  br label %getNextChar

if.end122:                                        ; preds = %if.then118
  br label %if.end126

if.else123:                                       ; preds = %do.end114
  %108 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type124 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %108, i32 0, i32 0
  store i32 258, i32* %type124, align 8
  %109 = load i32, i32* %indent, align 4
  %110 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %indent125 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %110, i32 0, i32 3
  store i32 %109, i32* %indent125, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.else123, %if.end122
  br label %sw.epilog

sw.default:                                       ; preds = %if.end16
  %111 = load i32, i32* %c, align 4
  %call127 = call i32 @isalnum(i32 %111) #4
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.else136, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %sw.default
  %112 = load i32, i32* %c, align 4
  %cmp130 = icmp eq i32 %112, 95
  br i1 %cmp130, label %if.else136, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false129
  %113 = load i32, i32* %c, align 4
  %cmp132 = icmp sge i32 %113, 128
  br i1 %cmp132, label %if.else136, label %if.then133

if.then133:                                       ; preds = %lor.lhs.false131
  %114 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string134 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %114, i32 0, i32 2
  %115 = load %struct.sVString*, %struct.sVString** %string134, align 8
  %116 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %115, i32 %116)
  %117 = load i32, i32* %c, align 4
  %118 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type135 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %118, i32 0, i32 0
  store i32 %117, i32* %type135, align 8
  br label %if.end149

if.else136:                                       ; preds = %lor.lhs.false131, %lor.lhs.false129, %sw.default
  %119 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string137 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %119, i32 0, i32 2
  %120 = load %struct.sVString*, %struct.sVString** %string137, align 8
  %121 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sVString* %120, i32 %121)
  %122 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string138 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %122, i32 0, i32 2
  %123 = load %struct.sVString*, %struct.sVString** %string138, align 8
  %buffer139 = getelementptr inbounds %struct.sVString, %struct.sVString* %123, i32 0, i32 2
  %124 = load i8*, i8** %buffer139, align 8
  %125 = load i32, i32* @Lang_python, align 4
  %call140 = call i32 @lookupKeyword(i8* %124, i32 %125)
  %126 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword141 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %126, i32 0, i32 1
  store i32 %call140, i32* %keyword141, align 4
  %127 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword142 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %127, i32 0, i32 1
  %128 = load i32, i32* %keyword142, align 4
  %cmp143 = icmp eq i32 %128, -1
  br i1 %cmp143, label %if.then144, label %if.else146

if.then144:                                       ; preds = %if.else136
  %129 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type145 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %129, i32 0, i32 0
  store i32 261, i32* %type145, align 8
  br label %if.end148

if.else146:                                       ; preds = %if.else136
  %130 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type147 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %130, i32 0, i32 0
  store i32 259, i32* %type147, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %if.then144
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.then133
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end149, %if.end126, %if.end59, %if.end48, %if.end31, %sw.bb
  %131 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type150 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %131, i32 0, i32 0
  %132 = load i32, i32* %type150, align 8
  %cmp151 = icmp eq i32 %132, 40
  br i1 %cmp151, label %if.then158, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %sw.epilog
  %133 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type153 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %133, i32 0, i32 0
  %134 = load i32, i32* %type153, align 8
  %cmp154 = icmp eq i32 %134, 123
  br i1 %cmp154, label %if.then158, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false152
  %135 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type156 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %135, i32 0, i32 0
  %136 = load i32, i32* %type156, align 8
  %cmp157 = icmp eq i32 %136, 91
  br i1 %cmp157, label %if.then158, label %if.else160

if.then158:                                       ; preds = %lor.lhs.false155, %lor.lhs.false152, %sw.epilog
  %137 = load i32, i32* @TokenContinuationDepth, align 4
  %inc159 = add i32 %137, 1
  store i32 %inc159, i32* @TokenContinuationDepth, align 4
  br label %if.end173

if.else160:                                       ; preds = %lor.lhs.false155
  %138 = load i32, i32* @TokenContinuationDepth, align 4
  %cmp161 = icmp ugt i32 %138, 0
  br i1 %cmp161, label %land.lhs.true162, label %if.end172

land.lhs.true162:                                 ; preds = %if.else160
  %139 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type163 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %139, i32 0, i32 0
  %140 = load i32, i32* %type163, align 8
  %cmp164 = icmp eq i32 %140, 41
  br i1 %cmp164, label %if.then171, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %land.lhs.true162
  %141 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type166 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %141, i32 0, i32 0
  %142 = load i32, i32* %type166, align 8
  %cmp167 = icmp eq i32 %142, 125
  br i1 %cmp167, label %if.then171, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false165
  %143 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type169 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %143, i32 0, i32 0
  %144 = load i32, i32* %type169, align 8
  %cmp170 = icmp eq i32 %144, 93
  br i1 %cmp170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %lor.lhs.false168, %lor.lhs.false165, %land.lhs.true162
  %145 = load i32, i32* @TokenContinuationDepth, align 4
  %dec = add i32 %145, -1
  store i32 %dec, i32* @TokenContinuationDepth, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %lor.lhs.false168, %if.else160
  br label %if.end173

if.end173:                                        ; preds = %if.then, %if.then13, %if.end172, %if.then158
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.tokenInfo* %dest, %struct.tokenInfo* %src) #0 {
entry:
  %dest.addr = alloca %struct.tokenInfo*, align 8
  %src.addr = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %dest, %struct.tokenInfo** %dest.addr, align 8
  store %struct.tokenInfo* %src, %struct.tokenInfo** %src.addr, align 8
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
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %indent = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 3
  %14 = load i32, i32* %indent, align 8
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %indent5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 3
  store i32 %14, i32* %indent5, align 8
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %dest.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 2
  %17 = load %struct.sVString*, %struct.sVString** %string, align 8
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %src.addr, align 8
  %string6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 2
  %19 = load %struct.sVString*, %struct.sVString** %string6, align 8
  call void @vStringCopy(%struct.sVString* %17, %struct.sVString* %19)
  ret void
}

declare i32 @getcFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @ungetcToInputFile(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readString(%struct.sVString* %string, i32 %delimiter) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %delimiter.addr = alloca i32, align 4
  %escaped = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  store i32 0, i32* %escaped, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %escaped, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %2 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %1, i32 %2)
  %3 = load i32, i32* %escaped, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %escaped, align 4
  br label %if.end14

if.else:                                          ; preds = %while.body
  %4 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %4, 92
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %5 = load i32, i32* %escaped, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %escaped, align 4
  br label %if.end13

if.else3:                                         ; preds = %if.else
  %6 = load i32, i32* %c, align 4
  %7 = load i32, i32* %delimiter.addr, align 4
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else3
  %8 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %8, 10
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %9 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %9, 13
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.else3
  %10 = load i32, i32* %c, align 4
  %11 = load i32, i32* %delimiter.addr, align 4
  %cmp9 = icmp ne i32 %10, %11
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then8
  %12 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then8
  br label %while.end

if.else11:                                        ; preds = %lor.lhs.false6
  %13 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %14 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %13, i32 %14)
  br label %if.end12

if.end12:                                         ; preds = %if.else11
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then2
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.end, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readTripleString(%struct.sVString* %string, i32 %delimiter) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %delimiter.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %escaped = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store i32 %delimiter, i32* %delimiter.addr, align 4
  store i32 0, i32* %escaped, align 4
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %entry
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %1 = load i32, i32* %delimiter.addr, align 4
  %cmp1 = icmp eq i32 %0, %1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* %escaped, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %n, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %n, align 4
  %cmp2 = icmp sge i32 %inc, 3
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %while.body
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %n, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %6 = load i32, i32* %delimiter.addr, align 4
  call void @vStringPut(%struct.sVString* %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %n, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %c, align 4
  %cmp5 = icmp ne i32 %8, 92
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %9 = load i32, i32* %escaped, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %for.end
  %10 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %11 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %10, i32 %11)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  store i32 0, i32* %n, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %12 = load i32, i32* %escaped, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.end9
  %13 = load i32, i32* %escaped, align 4
  %dec12 = add nsw i32 %13, -1
  store i32 %dec12, i32* %escaped, align 4
  br label %if.end18

if.else13:                                        ; preds = %if.end9
  %14 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %14, 92
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else13
  %15 = load i32, i32* %escaped, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, i32* %escaped, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then11
  br label %while.cond

while.end:                                        ; preds = %if.then3, %while.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct.sVString* %string, i32 %firstChar) #0 {
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

declare i32 @lookupKeyword(i8*, i32) #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

declare i8* @nestingLevelGetUserData(%struct.NestingLevel*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

declare void @nestingLevelsPop(%struct.NestingLevels*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @readCDefName(%struct.tokenInfo* %token, i32* %kind) #0 {
entry:
  %retval = alloca i1, align 1
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32*, align 8
  %candidate = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32* %kind, i32** %kind.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %0)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword1, align 4
  %cmp2 = icmp eq i32 %4, 8
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %5)
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword3, align 4
  %cmp4 = icmp eq i32 %7, 7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %lor.lhs.false
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 1
  %9 = load i32, i32* %keyword7, align 4
  %cmp8 = icmp eq i32 %9, 3
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %10 = load i32*, i32** %kind.addr, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %11)
  br label %if.end46

if.else:                                          ; preds = %if.end6
  %12 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %12)
  %13 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %13, %struct.tokenInfo** %candidate, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end45, %if.else
  %14 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type, align 8
  %cmp10 = icmp ne i32 %15, 256
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %16 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %16, i32 0, i32 0
  %17 = load i32, i32* %type11, align 8
  %cmp12 = icmp ne i32 %17, 258
  br i1 %cmp12, label %land.lhs.true13, label %land.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type14 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %18, i32 0, i32 0
  %19 = load i32, i32* %type14, align 8
  %cmp15 = icmp ne i32 %19, 61
  br i1 %cmp15, label %land.lhs.true16, label %land.end

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type17, align 8
  %cmp18 = icmp ne i32 %21, 44
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true16
  %22 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type19 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %22, i32 0, i32 0
  %23 = load i32, i32* %type19, align 8
  %cmp20 = icmp ne i32 %23, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true16, %land.lhs.true13, %land.lhs.true, %while.cond
  %24 = phi i1 [ false, %land.lhs.true16 ], [ false, %land.lhs.true13 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type21 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type21, align 8
  %cmp22 = icmp eq i32 %26, 91
  br i1 %cmp22, label %if.then23, label %if.else27

if.then23:                                        ; preds = %while.body
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call24 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %27, i32 91, i32 93, %struct.sVString* null, i1 zeroext false)
  br i1 %call24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then23
  %28 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %28)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then23
  br label %if.end45

if.else27:                                        ; preds = %while.body
  %29 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %29, i32 0, i32 0
  %30 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %30, 40
  br i1 %cmp29, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.else27
  %31 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call31 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %31, i32 40, i32 41, %struct.sVString* null, i1 zeroext false)
  br i1 %call31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  %32 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %32)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30
  br label %if.end44

if.else34:                                        ; preds = %if.else27
  %33 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type35 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %33, i32 0, i32 0
  %34 = load i32, i32* %type35, align 8
  %cmp36 = icmp eq i32 %34, 261
  br i1 %cmp36, label %if.then37, label %if.else42

if.then37:                                        ; preds = %if.else34
  %35 = load %struct.tokenInfo*, %struct.tokenInfo** %candidate, align 8
  %36 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %35, %struct.tokenInfo* %36)
  %37 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %37)
  %38 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type38 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %38, i32 0, i32 0
  %39 = load i32, i32* %type38, align 8
  %cmp39 = icmp eq i32 %39, 40
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then37
  %40 = load i32*, i32** %kind.addr, align 8
  store i32 1, i32* %40, align 4
  %41 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @ungetToken(%struct.tokenInfo* %41)
  %42 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %43 = load %struct.tokenInfo*, %struct.tokenInfo** %candidate, align 8
  call void @copyToken(%struct.tokenInfo* %42, %struct.tokenInfo* %43)
  br label %while.end

if.end41:                                         ; preds = %if.then37
  br label %if.end43

if.else42:                                        ; preds = %if.else34
  %44 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %44)
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end41
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end33
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end26
  br label %while.cond

while.end:                                        ; preds = %if.then40, %land.end
  %45 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %46 = load %struct.tokenInfo*, %struct.tokenInfo** %candidate, align 8
  %47 = bitcast %struct.tokenInfo* %46 to i8*
  call void @objPoolPut(%struct.sObjPool* %45, i8* %47)
  br label %if.end46

if.end46:                                         ; preds = %while.end, %if.then9
  %48 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type47 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %48, i32 0, i32 0
  %49 = load i32, i32* %type47, align 8
  %cmp48 = icmp eq i32 %49, 261
  store i1 %cmp48, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end46, %if.then5
  %50 = load i1, i1* %retval, align 1
  ret i1 %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @reprCat(%struct.sVString* %repr, %struct.tokenInfo* %token) #0 {
entry:
  %repr.addr = alloca %struct.sVString*, align 8
  %token.addr = alloca %struct.tokenInfo*, align 8
  store %struct.sVString* %repr, %struct.sVString** %repr.addr, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %1, 258
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp ne i32 %3, 263
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 2
  %6 = load %struct.sVString*, %struct.sVString** %string, align 8
  call void @vStringCat(%struct.sVString* %4, %struct.sVString* %6)
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  %8 = load i64, i64* %length, align 8
  %cmp3 = icmp ugt i64 %8, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %if.else
  %9 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %11 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %length5 = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length5, align 8
  %sub = sub i64 %12, 1
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp6 = icmp ne i32 %conv, 32
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true4
  %14 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  call void @vStringPut(%struct.sVString* %14, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true4, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeClassTag(%struct.tokenInfo* %token, %struct.sVString* %inheritance, %struct.sVString* %decorators) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.tokenInfo*, align 8
  %inheritance.addr = alloca %struct.sVString*, align 8
  %decorators.addr = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %inheritance, %struct.sVString** %inheritance.addr, align 8
  store %struct.sVString* %decorators, %struct.sVString** %decorators.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PythonKinds, i64 0, i64 0, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @initPythonEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %1, i32 0)
  %2 = load %struct.sVString*, %struct.sVString** %inheritance.addr, align 8
  %tobool1 = icmp ne %struct.sVString* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** %inheritance.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0), %cond.false ]
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %inheritance2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 3
  store i8* %cond, i8** %inheritance2, align 8
  %5 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %tobool3 = icmp ne %struct.sVString* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @PythonFields, i64 0, i64 0, i32 7), align 4
  %9 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer5, align 8
  call void @attachParserField(%struct.sTagEntryInfo* %e, i32 %8, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %cond.end
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.end
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeFunctionTag(%struct.tokenInfo* %token, %struct.sVString* %arglist, %struct.sVString* %decorators) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.tokenInfo*, align 8
  %arglist.addr = alloca %struct.sVString*, align 8
  %decorators.addr = alloca %struct.sVString*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %arglist, %struct.sVString** %arglist.addr, align 8
  store %struct.sVString* %decorators, %struct.sVString** %decorators.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PythonKinds, i64 0, i64 1, i32 0), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @initPythonEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %1, i32 1)
  %2 = load %struct.sVString*, %struct.sVString** %arglist.addr, align 8
  %tobool1 = icmp ne %struct.sVString* %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** %arglist.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %4, i8** %signature, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %tobool3 = icmp ne %struct.sVString* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* getelementptr inbounds ([1 x %struct.sFieldDefinition], [1 x %struct.sFieldDefinition]* @PythonFields, i64 0, i64 0, i32 7), align 4
  %9 = load %struct.sVString*, %struct.sVString** %decorators.addr, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer5, align 8
  call void @attachParserField(%struct.sTagEntryInfo* %e, i32 %8, i8* %10)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.end6
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare %struct.NestingLevel* @nestingLevelsPush(%struct.NestingLevels*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeSimplePythonTag(%struct.tokenInfo* %token, i32 %kind) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PythonKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %3 = load i32, i32* %kind.addr, align 4
  call void @initPythonEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %2, i32 %3)
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @ungetToken(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sObjPool*, %struct.sObjPool** @TokenPool, align 8
  %call = call i8* @objPoolGet(%struct.sObjPool* %0)
  %1 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** @NextToken, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** @NextToken, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @copyToken(%struct.tokenInfo* %2, %struct.tokenInfo* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initPythonEntry(%struct.sTagEntryInfo* %e, %struct.tokenInfo* %token, i32 %kind) #0 {
entry:
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %token.addr = alloca %struct.tokenInfo*, align 8
  %kind.addr = alloca i32, align 4
  %access = alloca i32, align 4
  %parentKind = alloca i32, align 4
  %nl = alloca %struct.NestingLevel*, align 8
  %nlEntry = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 -1, i32* %parentKind, align 4
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 2
  %2 = load %struct.sVString*, %struct.sVString** %string, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %0, i8* %3, i32 %4)
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 4
  %6 = load i64, i64* %lineNumber, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %lineNumber1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 1
  store i64 %6, i64* %lineNumber1, align 8
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 4
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 5
  %10 = bitcast %struct._MIOPos* %filePosition to i8*
  %11 = bitcast %struct._MIOPos* %filePosition2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load %struct.NestingLevels*, %struct.NestingLevels** @PythonNestingLevels, align 8
  %call = call %struct.NestingLevel* @nestingLevelsGetCurrent(%struct.NestingLevels* %12)
  store %struct.NestingLevel* %call, %struct.NestingLevel** %nl, align 8
  %13 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %tobool = icmp ne %struct.NestingLevel* %13, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %14 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %call3 = call %struct.sTagEntryInfo* @getEntryOfNestingLevel(%struct.NestingLevel* %14)
  store %struct.sTagEntryInfo* %call3, %struct.sTagEntryInfo** %nlEntry, align 8
  %15 = load %struct.NestingLevel*, %struct.NestingLevel** %nl, align 8
  %corkIndex = getelementptr inbounds %struct.NestingLevel, %struct.NestingLevel* %15, i32 0, i32 0
  %16 = load i32, i32* %corkIndex, align 4
  %17 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %17, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %16, i32* %scopeIndex, align 8
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %nlEntry, align 8
  %tobool4 = icmp ne %struct.sTagEntryInfo* %18, null
  br i1 %tobool4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.then
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %nlEntry, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %19, i32 0, i32 8
  %20 = load i32, i32* %kindIndex, align 8
  store i32 %20, i32* %parentKind, align 4
  %21 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %21, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then5
  %22 = load i32, i32* %parentKind, align 4
  %cmp6 = icmp eq i32 %22, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  %23 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %kindIndex8 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %23, i32 0, i32 8
  store i32 2, i32* %kindIndex8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %24, i32 0, i32 2
  %25 = load %struct.sVString*, %struct.sVString** %string11, align 8
  %26 = load i32, i32* %kind.addr, align 4
  %27 = load i32, i32* %parentKind, align 4
  %call12 = call i32 @accessFromIdentifier(%struct.sVString* %25, i32 %26, i32 %27)
  store i32 %call12, i32* %access, align 4
  %28 = load i32, i32* %access, align 4
  %idxprom = zext i32 %28 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @PythonAccesses, i64 0, i64 %idxprom
  %29 = load i8*, i8** %arrayidx, align 8
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields13 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %30, i32 0, i32 11
  %access14 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields13, i32 0, i32 0
  store i8* %29, i8** %access14, align 8
  %31 = load i32, i32* %access, align 4
  %cmp15 = icmp eq i32 %31, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %33 = bitcast %struct.sTagEntryInfo* %32 to i8*
  %bf.load = load i8, i8* %33, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %33, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end10
  ret void
}

declare void @attachParserField(%struct.sTagEntryInfo*, i32, i8*) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @accessFromIdentifier(%struct.sVString* %ident, i32 %kind, i32 %parentKind) #0 {
entry:
  %retval = alloca i32, align 4
  %ident.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %parentKind.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.sVString* %ident, %struct.sVString** %ident.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %parentKind, i32* %parentKind.addr, align 4
  %0 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct.sVString*, %struct.sVString** %ident.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  store i64 %3, i64* %len, align 8
  %4 = load i32, i32* %parentKind.addr, align 4
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %parentKind.addr, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %len, align 8
  %cmp2 = icmp ult i64 %6, 1
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 95
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  store i32 2, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %kind.addr, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %land.lhs.true9, label %if.else32

land.lhs.true9:                                   ; preds = %if.else6
  %10 = load i32, i32* %parentKind.addr, align 4
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.else32

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %11 = load i64, i64* %len, align 8
  %cmp13 = icmp ugt i64 %11, 3
  br i1 %cmp13, label %land.lhs.true15, label %if.else32

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %12 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp eq i32 %conv17, 95
  br i1 %cmp18, label %land.lhs.true20, label %if.else32

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %len, align 8
  %sub = sub i64 %15, 2
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 %sub
  %16 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv22, 95
  br i1 %cmp23, label %land.lhs.true25, label %if.else32

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %17 = load i8*, i8** %p, align 8
  %18 = load i64, i64* %len, align 8
  %sub26 = sub i64 %18, 1
  %arrayidx27 = getelementptr inbounds i8, i8* %17, i64 %sub26
  %19 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %19 to i32
  %cmp29 = icmp eq i32 %conv28, 95
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %land.lhs.true25
  store i32 2, i32* %retval, align 4
  br label %return

if.else32:                                        ; preds = %land.lhs.true25, %land.lhs.true20, %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %if.else6
  %20 = load i32, i32* %parentKind.addr, align 4
  %cmp33 = icmp eq i32 %20, 0
  br i1 %cmp33, label %land.lhs.true35, label %if.else44

land.lhs.true35:                                  ; preds = %if.else32
  %21 = load i64, i64* %len, align 8
  %cmp36 = icmp ugt i64 %21, 1
  br i1 %cmp36, label %land.lhs.true38, label %if.else44

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %22 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %23 to i32
  %cmp41 = icmp eq i32 %conv40, 95
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %land.lhs.true38
  store i32 0, i32* %retval, align 4
  br label %return

if.else44:                                        ; preds = %land.lhs.true38, %land.lhs.true35, %if.else32
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else44, %if.then43, %if.then31, %if.then5, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeSimplePythonRefTag(%struct.tokenInfo* %token, %struct.sVString* %altName, i32 %kind, i32 %roleIndex, i32 %xtag) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.tokenInfo*, align 8
  %altName.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  %xtag.addr = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %altName, %struct.sVString** %altName.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  store i32 %xtag, i32* %xtag.addr, align 4
  %call = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @PythonKinds, i64 0, i64 %idxprom
  %roles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 6
  %1 = load %struct.sRoleDesc*, %struct.sRoleDesc** %roles, align 8
  %2 = load i32, i32* %roleIndex.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %1, i64 %idxprom1
  %enabled = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %arrayidx2, i32 0, i32 0
  %3 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sVString*, %struct.sVString** %altName.addr, align 8
  %tobool3 = icmp ne %struct.sVString* %4, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load %struct.sVString*, %struct.sVString** %altName.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 2
  %7 = load %struct.sVString*, %struct.sVString** %string, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sVString* [ %5, %cond.true ], [ %7, %cond.false ]
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %cond, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %9 = load i32, i32* %kind.addr, align 4
  %10 = load i32, i32* %roleIndex.addr, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %8, i32 %9, i32 %10)
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 4
  %12 = load i64, i64* %lineNumber, align 8
  %lineNumber4 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %12, i64* %lineNumber4, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %filePosition5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %13, i32 0, i32 5
  %14 = bitcast %struct._MIOPos* %filePosition to i8*
  %15 = bitcast %struct._MIOPos* %filePosition5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i32, i32* %xtag.addr, align 4
  %cmp = icmp ne i32 %16, -1
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %cond.end
  %17 = load i32, i32* %xtag.addr, align 4
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.then6, %cond.end
  %call7 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.end
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare zeroext i1 @isXtagEnabled(i32) #1

declare %struct.sVString* @vStringNewCopy(%struct.sVString*) #1

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipTypeAnnotation(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %readNext = alloca i8, align 1
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store i8 1, i8* %readNext, align 1
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %0)
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %sw.epilog [
    i32 91, label %sw.bb
    i32 40, label %sw.bb1
    i32 123, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call = call zeroext i1 @skipOverPair(%struct.tokenInfo* %3, i32 91, i32 93, %struct.sVString* null, i1 zeroext false)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %readNext, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call2 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %4, i32 40, i32 41, %struct.sVString* null, i1 zeroext false)
  %frombool3 = zext i1 %call2 to i8
  store i8 %frombool3, i8* %readNext, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call5 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %5, i32 123, i32 125, %struct.sVString* null, i1 zeroext false)
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, i8* %readNext, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb1, %sw.bb
  %6 = load i8, i8* %readNext, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %8 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type7, align 8
  %cmp = icmp eq i32 %9, 91
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %10 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type8 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %10, i32 0, i32 0
  %11 = load i32, i32* %type8, align 8
  %cmp9 = icmp eq i32 %11, 40
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %12 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type10 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type10, align 8
  %cmp11 = icmp eq i32 %13, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %14 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type12 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type12, align 8
  switch i32 %16, label %sw.default [
    i32 91, label %sw.bb13
    i32 40, label %sw.bb16
    i32 46, label %sw.bb19
  ]

sw.bb13:                                          ; preds = %while.body
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call14 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %17, i32 91, i32 93, %struct.sVString* null, i1 zeroext false)
  %frombool15 = zext i1 %call14 to i8
  store i8 %frombool15, i8* %readNext, align 1
  br label %sw.epilog23

sw.bb16:                                          ; preds = %while.body
  %18 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %call17 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %18, i32 40, i32 41, %struct.sVString* null, i1 zeroext false)
  %frombool18 = zext i1 %call17 to i8
  store i8 %frombool18, i8* %readNext, align 1
  br label %sw.epilog23

sw.bb19:                                          ; preds = %while.body
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %19)
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type20 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 0
  %21 = load i32, i32* %type20, align 8
  %cmp21 = icmp eq i32 %21, 261
  %frombool22 = zext i1 %cmp21 to i8
  store i8 %frombool22, i8* %readNext, align 1
  br label %sw.epilog23

sw.default:                                       ; preds = %while.body
  store i8 0, i8* %readNext, align 1
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.default, %sw.bb19, %sw.bb16, %sw.bb13
  %22 = load i8, i8* %readNext, align 1
  %tobool24 = trunc i8 %22 to i1
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.epilog23
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readToken(%struct.tokenInfo* %23)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.epilog23
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipLambdaArglist(%struct.tokenInfo* %token, %struct.sVString* %repr) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %repr.addr = alloca %struct.sVString*, align 8
  %readNext = alloca i8, align 1
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  store %struct.sVString* %repr, %struct.sVString** %repr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp ne i32 %1, 256
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type1, align 8
  %cmp2 = icmp ne i32 %3, 58
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type3, align 8
  %cmp4 = icmp ne i32 %5, 258
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i8 1, i8* %readNext, align 1
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type5, align 8
  %cmp6 = icmp eq i32 %8, 40
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %10 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %call = call zeroext i1 @skipOverPair(%struct.tokenInfo* %9, i32 40, i32 41, %struct.sVString* %10, i1 zeroext true)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %readNext, align 1
  br label %if.end40

if.else:                                          ; preds = %while.body
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type7 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 0
  %12 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %12, 91
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else
  %13 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %14 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %call10 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %13, i32 91, i32 93, %struct.sVString* %14, i1 zeroext true)
  %frombool11 = zext i1 %call10 to i8
  store i8 %frombool11, i8* %readNext, align 1
  br label %if.end39

if.else12:                                        ; preds = %if.else
  %15 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %16, 123
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else12
  %17 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %18 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %call16 = call zeroext i1 @skipOverPair(%struct.tokenInfo* %17, i32 123, i32 125, %struct.sVString* %18, i1 zeroext true)
  %frombool17 = zext i1 %call16 to i8
  store i8 %frombool17, i8* %readNext, align 1
  br label %if.end38

if.else18:                                        ; preds = %if.else12
  %19 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %19, i32 0, i32 1
  %20 = load i32, i32* %keyword, align 4
  %cmp19 = icmp eq i32 %20, 10
  br i1 %cmp19, label %if.then20, label %if.else33

if.then20:                                        ; preds = %if.else18
  %21 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool = icmp ne %struct.sVString* %21, null
  br i1 %tobool, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then20
  %22 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @reprCat(%struct.sVString* %22, %struct.tokenInfo* %23)
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then20
  %24 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %24, i1 zeroext true)
  %25 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %26 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %call22 = call zeroext i1 @skipLambdaArglist(%struct.tokenInfo* %25, %struct.sVString* %26)
  %frombool23 = zext i1 %call22 to i8
  store i8 %frombool23, i8* %readNext, align 1
  %27 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type24 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %27, i32 0, i32 0
  %28 = load i32, i32* %type24, align 8
  %cmp25 = icmp eq i32 %28, 58
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end
  store i8 1, i8* %readNext, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end
  %29 = load i8, i8* %readNext, align 1
  %tobool28 = trunc i8 %29 to i1
  br i1 %tobool28, label %land.lhs.true29, label %if.end32

land.lhs.true29:                                  ; preds = %if.end27
  %30 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool30 = icmp ne %struct.sVString* %30, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true29
  %31 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %32 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @reprCat(%struct.sVString* %31, %struct.tokenInfo* %32)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true29, %if.end27
  br label %if.end37

if.else33:                                        ; preds = %if.else18
  %33 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %tobool34 = icmp ne %struct.sVString* %33, null
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else33
  %34 = load %struct.sVString*, %struct.sVString** %repr.addr, align 8
  %35 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @reprCat(%struct.sVString* %34, %struct.tokenInfo* %35)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then15
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then9
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then
  %36 = load i8, i8* %readNext, align 1
  %tobool41 = trunc i8 %36 to i1
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  %37 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  call void @readTokenFull(%struct.tokenInfo* %37, i1 zeroext true)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret i1 false
}

declare void @vStringResize(%struct.sVString*, i64) #1

declare %struct.sObjPool* @objPoolNew(i32, i8* (i8*)*, void (i8*)*, void (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @newPoolToken(i8* %createArg) #0 {
entry:
  %createArg.addr = alloca i8*, align 8
  %token = alloca %struct.tokenInfo*, align 8
  store i8* %createArg, i8** %createArg.addr, align 8
  %call = call i8* @eMalloc(i64 48)
  %0 = bitcast i8* %call to %struct.tokenInfo*
  store %struct.tokenInfo* %0, %struct.tokenInfo** %token, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %1 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %1, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %string, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %3 = bitcast %struct.tokenInfo* %2 to i8*
  ret i8* %3
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
  %5 = bitcast %struct.tokenInfo* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearPoolToken(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %token = alloca %struct.tokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.tokenInfo*
  store %struct.tokenInfo* %1, %struct.tokenInfo** %token, align 8
  %2 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %2, i32 0, i32 0
  store i32 257, i32* %type, align 8
  %3 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %3, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %4 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %indent = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %4, i32 0, i32 3
  store i32 0, i32* %indent, align 8
  %call = call i64 @getInputLineNumber()
  %5 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %5, i32 0, i32 4
  store i64 %call, i64* %lineNumber, align 8
  %6 = load %struct.tokenInfo*, %struct.tokenInfo** %token, align 8
  %filePosition = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %6, i32 0, i32 5
  %call1 = call [2 x i64] @getInputFilePosition()
  %7 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call1, [2 x i64]* %7, align 8
  %8 = bitcast %struct._MIOPos* %filePosition to i8*
  %9 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
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
