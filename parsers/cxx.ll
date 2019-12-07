; ModuleID = 'cxx/cxx.c'
source_filename = "cxx/cxx.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._MIO = type opaque
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
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
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@cExtensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* null], align 8
@cSelectors = internal global [2 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByObjectiveCKeywords, i8* (%struct._MIO*, i32*, i32)* null], align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@cppDependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null }], align 8
@cppExtensions = internal constant [13 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* null], align 8
@cppSelectors = internal global [2 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByObjectiveCKeywords, i8* (%struct._MIO*, i32*, i32)* null], align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"CUDA\00", align 1
@cudaDependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null }], align 8
@cudaExtensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* null], align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"cpp\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cxx\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"h++\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"hh\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"hpp\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"hxx\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"inl\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"cu\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"cuh\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @CParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %call1 = call %struct.sKindDefinition* @cxxTagGetCKindDefinitions()
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kindTable, align 8
  %call2 = call i32 @cxxTagGetCKindDefinitionCount()
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 %call2, i32* %kindCount, align 8
  %call3 = call %struct.sFieldDefinition* @cxxTagGetCFieldDefinitionifiers()
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 23
  store %struct.sFieldDefinition* %call3, %struct.sFieldDefinition** %fieldTable, align 8
  %call4 = call i32 @cxxTagGetCFieldDefinitionifierCount()
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 24
  store i32 %call4, i32* %fieldCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @cExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 9
  store i32 (i32)* @cxxCParserMain, i32 (i32)** %parser2, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 6
  store void (i32)* @cxxCParserInitialize, void (i32)** %initialize, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 7
  store void (i32, i1)* @cxxParserCleanup, void (i32, i1)** %finalize, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([2 x i8* (%struct._MIO*, i32*, i32)*], [2 x i8* (%struct._MIO*, i32*, i32)*]* @cSelectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %10
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

declare %struct.sKindDefinition* @cxxTagGetCKindDefinitions() #1

declare i32 @cxxTagGetCKindDefinitionCount() #1

declare %struct.sFieldDefinition* @cxxTagGetCFieldDefinitionifiers() #1

declare i32 @cxxTagGetCFieldDefinitionifierCount() #1

declare i32 @cxxCParserMain(i32) #1

declare void @cxxCParserInitialize(i32) #1

declare void @cxxParserCleanup(i32, i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @CppParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @cppDependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %call1 = call %struct.sKindDefinition* @cxxTagGetCPPKindDefinitions()
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kindTable, align 8
  %call2 = call i32 @cxxTagGetCPPKindDefinitionCount()
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 %call2, i32* %kindCount, align 8
  %call3 = call %struct.sFieldDefinition* @cxxTagGetCPPFieldDefinitionifiers()
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 23
  store %struct.sFieldDefinition* %call3, %struct.sFieldDefinition** %fieldTable, align 8
  %call4 = call i32 @cxxTagGetCPPFieldDefinitionifierCount()
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 24
  store i32 %call4, i32* %fieldCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 3
  store i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @cppExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 9
  store i32 (i32)* @cxxCppParserMain, i32 (i32)** %parser2, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 6
  store void (i32)* @cxxCppParserInitialize, void (i32)** %initialize, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 7
  store void (i32, i1)* @cxxParserCleanup, void (i32, i1)** %finalize, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([2 x i8* (%struct._MIO*, i32*, i32)*], [2 x i8* (%struct._MIO*, i32*, i32)*]* @cppSelectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %12
}

declare %struct.sKindDefinition* @cxxTagGetCPPKindDefinitions() #1

declare i32 @cxxTagGetCPPKindDefinitionCount() #1

declare %struct.sFieldDefinition* @cxxTagGetCPPFieldDefinitionifiers() #1

declare i32 @cxxTagGetCPPFieldDefinitionifierCount() #1

declare i32 @cxxCppParserMain(i32) #1

declare void @cxxCppParserInitialize(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @CUDAParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @cudaDependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %call1 = call %struct.sKindDefinition* @cxxTagGetCUDAKindDefinitions()
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kindTable, align 8
  %call2 = call i32 @cxxTagGetCUDAKindDefinitionCount()
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 %call2, i32* %kindCount, align 8
  %call3 = call %struct.sFieldDefinition* @cxxTagGetCUDAFieldDefinitionifiers()
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 23
  store %struct.sFieldDefinition* %call3, %struct.sFieldDefinition** %fieldTable, align 8
  %call4 = call i32 @cxxTagGetCUDAFieldDefinitionifierCount()
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %fieldCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 24
  store i32 %call4, i32* %fieldCount, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @cudaExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 9
  store i32 (i32)* @cxxCUDAParserMain, i32 (i32)** %parser2, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 6
  store void (i32)* @cxxCUDAParserInitialize, void (i32)** %initialize, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 7
  store void (i32, i1)* @cxxParserCleanup, void (i32, i1)** %finalize, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** null, i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %12
}

declare %struct.sKindDefinition* @cxxTagGetCUDAKindDefinitions() #1

declare i32 @cxxTagGetCUDAKindDefinitionCount() #1

declare %struct.sFieldDefinition* @cxxTagGetCUDAFieldDefinitionifiers() #1

declare i32 @cxxTagGetCUDAFieldDefinitionifierCount() #1

declare i32 @cxxCUDAParserMain(i32) #1

declare void @cxxCUDAParserInitialize(i32) #1

declare i8* @selectByObjectiveCKeywords(%struct._MIO*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
