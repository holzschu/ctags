; ModuleID = 'c.c'
source_filename = "c.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct._MIO = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct.sStatementInfo = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [3 x %struct.sTokenInfo*], %struct.sTokenInfo*, %struct.sTokenInfo*, %struct.sMemberInfo, %struct.sVString*, %struct.sStatementInfo* }
%struct.sTokenInfo = type { i32, i32, %struct.sVString*, i64, %struct._MIOPos }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.sMemberInfo = type { i32, i32 }
%struct.sKeywordDesc = type { i8*, i32, [6 x i16] }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
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
%struct.sParenInfo = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.sCppMacroInfo = type { i8, %struct.sCppMacroReplacementPartInfo* }
%struct.sCppMacroReplacementPartInfo = type { i32, i32, %struct.sVString*, %struct.sCppMacroReplacementPartInfo* }

@.str = private unnamed_addr constant [5 x i8] c"OldC\00", align 1
@CKinds = internal global [16 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @CMacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @CHeaderRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@oldCxtensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@DKinds = internal global [18 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.206, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.210, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.211, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@dExtensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i32 0, i32 0), i8* null], align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"OldC++\00", align 1
@oldCppExtensions = internal constant [13 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.225, i32 0, i32 0), i8* null], align 8
@oldCppSelectors = internal global [2 x i8* (%struct._MIO*, i32*, i32)*] [i8* (%struct._MIO*, i32*, i32)* @selectByObjectiveCKeywords, i8* (%struct._MIO*, i32*, i32)* null], align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@CsharpKinds = internal global [13 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.226, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.228, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.230, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@csharpExtensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.233, i32 0, i32 0), i8* null], align 8
@csharpAliases = internal constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.234, i32 0, i32 0), i8* null], align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Java\00", align 1
@JavaKinds = internal global [9 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.236, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.238, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.228, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.239, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.230, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.240, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @JavaPackageRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@javaExtensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.243, i32 0, i32 0), i8* null], align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"Vera\00", align 1
@VeraKinds = internal global [16 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @VeraMacroRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.244, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.246, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.247, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.206, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8 1, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @VeraHeaderRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@veraExtensions = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.250, i32 0, i32 0), i8* null], align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"macro definitions\00", align 1
@CMacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0) }], align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"enumerator\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"enumerators (values inside an enumeration)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"function definitions\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"enumeration names\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"included header files\00", align 1
@CHeaderRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0) }], align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"class, struct, and union members\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"namespaces\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"function prototypes\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"structure names\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"typedefs\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"union names\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"variable definitions\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"externvar\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"external and forward variable declarations\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"goto label\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"system header\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"local header\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@AnonymousID = internal global i32 0, align 4
@Lang_c = internal global i32 0, align 4
@Lang_cpp = internal global i32 0, align 4
@Lang_vera = internal global i32 0, align 4
@Lang_csharp = internal global i32 0, align 4
@Signature = internal global %struct.sVString* null, align 8
@Exception = internal global [48 x i32] zeroinitializer, align 4
@.str.44 = private unnamed_addr constant [58 x i8] c"%s: retrying file with fallback brace matching algorithm\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"%s: unexpected closing brace at line %lu\0A\00", align 1
@CurrentStatement = internal global %struct.sStatementInfo* null, align 8
@Lang_java = internal global i32 0, align 4
@Lang_d = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@CollectingSignature = internal global i8 0, align 1
@.str.47 = private unnamed_addr constant [3 x i8] c",;\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"{;,=\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"%s: confusing argument declarations beginning at line %lu\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"override\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"+-*/%^&|~!=<>,[]\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"(;\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"%s: failed to find match for '%c' at line %lu\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@implementationString.names = internal constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0)], align 8
@.str.61 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"abstract\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"pure virtual\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@accessString.names = internal constant [6 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0)], align 8
@.str.66 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"__anon%d\00", align 1
@KeywordTable = internal constant [152 x %struct.sKeywordDesc] [%struct.sKeywordDesc { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i32 1, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 2, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 0, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 108, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i32 109, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 110, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 111, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 5, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 6, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 7, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i32 8, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i32 9, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i32 112, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 113, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 3, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 114, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i32 4, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 10, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i32 115, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 11, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 116, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i32 117, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i32 118, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 12, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 13, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i32 14, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 15, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), i32 16, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i32 119, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i32 17, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i32 18, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i32 120, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0), i32 121, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i32 122, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 19, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i32 20, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 21, [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), i32 123, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i32 22, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i32 23, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 24, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 25, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i32 29, [6 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i32 26, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i32 124, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i32 28, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i32 27, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i32 125, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 30, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i32 126, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i32 31, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0), i32 32, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i32 33, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0), i32 127, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 34, [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 35, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i32 36, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i32 37, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i32 128, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i32 38, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), i32 129, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i32 39, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 40, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i32 130, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i32 41, [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i32 43, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i32 44, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i32 42, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i32 45, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i32 46, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), i32 47, [6 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32 131, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i32 132, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i32 133, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i32 134, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 48, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i32 49, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i32 0, i32 0), i32 50, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i32 51, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), i32 52, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i32 0, i32 0), i32 53, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i32 135, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i32 136, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), i32 54, [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 55, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0), i32 58, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i32 0, i32 0), i32 56, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0), i32 57, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.149, i32 0, i32 0), i32 59, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0), i32 60, [6 x i16] [i16 0, i16 1, i16 0, i16 0, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), i32 61, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), i32 137, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.153, i32 0, i32 0), i32 62, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0), i32 138, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i32 63, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0), i32 64, [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 65, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i32 68, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i32 0, i32 0), i32 66, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0), i32 69, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), i32 67, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i32 0, i32 0), i32 139, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i32 70, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i32 71, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 72, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i32 0, i32 0), i32 73, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 74, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 140, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), i32 75, [6 x i16] [i16 1, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.166, i32 0, i32 0), i32 76, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i32 141, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.168, i32 0, i32 0), i32 77, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i32 79, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i32 0, i32 0), i32 80, [6 x i16] [i16 1, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i32 0, i32 0), i32 78, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i32 0, i32 0), i32 81, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 82, [6 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 83, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.174, i32 0, i32 0), i32 142, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), i32 84, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), i32 85, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i32 0, i32 0), i32 86, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.178, i32 0, i32 0), i32 87, [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i32 88, [6 x i16] [i16 0, i16 1, i16 1, i16 0, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i32 89, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.181, i32 0, i32 0), i32 90, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i32 92, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i32 0, i32 0), i32 91, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i32 0, i32 0), i32 93, [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), i32 143, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.186, i32 0, i32 0), i32 94, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 95, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.187, i32 0, i32 0), i32 144, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.188, i32 0, i32 0), i32 96, [6 x i16] [i16 0, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.189, i32 0, i32 0), i32 145, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i32 146, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i32 147, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i32 0, i32 0), i32 97, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i32 0, i32 0), i32 98, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 99, [6 x i16] [i16 1, i16 1, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.194, i32 0, i32 0), i32 148, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.195, i32 0, i32 0), i32 100, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), i32 101, [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i32 0, i32 0), i32 102, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i32 149, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 103, [6 x i16] [i16 0, i16 1, i16 1, i16 1, i16 0, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i32 0, i32 0), i32 104, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.200, i32 0, i32 0), i32 105, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i32 150, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.202, i32 0, i32 0), i32 106, [6 x i16] [i16 0, i16 1, i16 1, i16 0, i16 0, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0), i32 107, [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 0] }, %struct.sKeywordDesc { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.204, i32 0, i32 0), i32 151, [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 0, i16 0] }], align 8
@.str.71 = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"bad_state\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"bad_trans\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"bind_var\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"cdouble\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"cent\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"cfloat\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"CLOCK\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"coverage_block\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"coverage_def\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"creal\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"dchar\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"delegate\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"extends\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"foreach_reverse\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"hdl_node\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"idouble\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"ifloat\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"implements\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"invariant\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"ireal\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"lazy\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"m_bad_state\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"m_bad_trans\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"m_state\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"m_trans\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"mixin\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"newcov\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"NHOLD\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"noexcept\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"NSAMPLE\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"overload\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"PHOLD\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"PSAMPLE\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"shadow\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"synchronized\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"throws\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"transient\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"transition\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"typeof\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"ubyte\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"ucent\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"ulong\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"unittest\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"wchar\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.206 = private unnamed_addr constant [31 x i8] c"external variable declarations\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"interfaces\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"mixins\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"templates\00", align 1
@.str.211 = private unnamed_addr constant [19 x i8] c"version statements\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.217 = private unnamed_addr constant [4 x i8] c"cpp\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"cxx\00", align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"h++\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"hh\00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"hpp\00", align 1
@.str.224 = private unnamed_addr constant [4 x i8] c"hxx\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"inl\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"methods\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.233 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"csharp\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.236 = private unnamed_addr constant [24 x i8] c"annotation declarations\00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"enumConstant\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c"enum constants\00", align 1
@.str.239 = private unnamed_addr constant [11 x i8] c"enum types\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"packages\00", align 1
@JavaPackageRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.242, i32 0, i32 0) }], align 8
@.str.241 = private unnamed_addr constant [9 x i8] c"imported\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"imported package\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@VeraMacroRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0) }], align 8
@.str.244 = private unnamed_addr constant [9 x i8] c"programs\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.246 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@VeraHeaderRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0) }], align 8
@.str.248 = private unnamed_addr constant [3 x i8] c"vr\00", align 1
@.str.249 = private unnamed_addr constant [4 x i8] c"vri\00", align 1
@.str.250 = private unnamed_addr constant [4 x i8] c"vrh\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @OldCParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([16 x %struct.sKindDefinition], [16 x %struct.sKindDefinition]* @CKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 16, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @oldCxtensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 9
  store i32 (i32)* @findCTags, i32 (i32)** %parser2, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeCParser, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %enabled, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @findCTags(i32 %passCount) #0 {
entry:
  %passCount.addr = alloca i32, align 4
  %exception = alloca i32, align 4
  %rescan = alloca i32, align 4
  %kind_for_define = alloca i32, align 4
  %kind_for_header = alloca i32, align 4
  %role_for_macro_undef = alloca i32, align 4
  %role_for_header_system = alloca i32, align 4
  %role_for_header_local = alloca i32, align 4
  store i32 %passCount, i32* %passCount.addr, align 4
  store i32 -1, i32* %kind_for_define, align 4
  store i32 -1, i32* %kind_for_header, align 4
  store i32 -1, i32* %role_for_macro_undef, align 4
  store i32 -1, i32* %role_for_header_system, align 4
  store i32 -1, i32* %role_for_header_local, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* @AnonymousID, align 4
  %0 = load i32, i32* @Lang_c, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %1 = load i32, i32* @Lang_cpp, align 4
  %call1 = call zeroext i1 @isInputLanguage(i32 %1)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 1, i32* %kind_for_define, align 4
  store i32 5, i32* %kind_for_header, align 4
  store i32 0, i32* %role_for_macro_undef, align 4
  store i32 0, i32* %role_for_header_system, align 4
  store i32 1, i32* %role_for_header_local, align 4
  br label %if.end4

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* @Lang_vera, align 4
  %call2 = call zeroext i1 @isInputLanguage(i32 %2)
  br i1 %call2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %kind_for_define, align 4
  store i32 15, i32* %kind_for_header, align 4
  store i32 0, i32* %role_for_macro_undef, align 4
  store i32 0, i32* %role_for_header_system, align 4
  store i32 1, i32* %role_for_header_local, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %3 = load i32, i32* %passCount.addr, align 4
  %cmp = icmp ugt i32 %3, 1
  %4 = load i32, i32* @Lang_csharp, align 4
  %call5 = call zeroext i1 @isInputLanguage(i32 %4)
  %5 = load i32, i32* @Lang_cpp, align 4
  %call6 = call zeroext i1 @isInputLanguage(i32 %5)
  %6 = load i32, i32* @Lang_vera, align 4
  %call7 = call zeroext i1 @isInputLanguage(i32 %6)
  %7 = load i32, i32* %kind_for_define, align 4
  %8 = load i32, i32* %role_for_macro_undef, align 4
  %9 = load i32, i32* %kind_for_header, align 4
  %10 = load i32, i32* %role_for_header_system, align 4
  %11 = load i32, i32* %role_for_header_local, align 4
  call void @cppInit(i1 zeroext %cmp, i1 zeroext %call5, i1 zeroext %call6, i1 zeroext %call7, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %call8 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call8, %struct.sVString** @Signature, align 8
  %call9 = call i32 @setjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0)) #6
  store i32 %call9, i32* %exception, align 4
  store i32 0, i32* %rescan, align 4
  %12 = load i32, i32* %exception, align 4
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.end4
  call void @createTags(i32 0, %struct.sStatementInfo* null)
  br label %if.end18

if.else12:                                        ; preds = %if.end4
  call void @deleteAllStatements()
  %13 = load i32, i32* %exception, align 4
  %cmp13 = icmp eq i32 %13, 3
  br i1 %cmp13, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.else12
  %14 = load i32, i32* %passCount.addr, align 4
  %cmp14 = icmp eq i32 %14, 1
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  store i32 1, i32* %rescan, align 4
  %call16 = call i8* @getInputFileName()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.44, i64 0, i64 0), i8* %call16)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %if.else12
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then11
  %15 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  call void @vStringDelete(%struct.sVString* %15)
  call void @cppTerminate()
  %16 = load i32, i32* %rescan, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeCParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_c, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @DParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([18 x %struct.sKindDefinition], [18 x %struct.sKindDefinition]* @DKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 18, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @dExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 9
  store i32 (i32)* @findCTags, i32 (i32)** %parser2, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeDParser, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeDParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_d, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @OldCppParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([16 x %struct.sKindDefinition], [16 x %struct.sKindDefinition]* @CKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 16, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @oldCppExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 9
  store i32 (i32)* @findCTags, i32 (i32)** %parser2, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeCppParser, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 10
  store i8* (%struct._MIO*, i32*, i32)** getelementptr inbounds ([2 x i8* (%struct._MIO*, i32*, i32)*], [2 x i8* (%struct._MIO*, i32*, i32)*]* @oldCppSelectors, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %enabled, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeCppParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_cpp, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @CsharpParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([13 x %struct.sKindDefinition], [13 x %struct.sKindDefinition]* @CsharpKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 13, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @csharpExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @csharpAliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 9
  store i32 (i32)* @findCTags, i32 (i32)** %parser2, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 6
  store void (i32)* @initializeCsharpParser, void (i32)** %initialize, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeCsharpParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_csharp, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @JavaParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @JavaKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 9, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @javaExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 9
  store i32 (i32)* @findCTags, i32 (i32)** %parser2, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeJavaParser, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeJavaParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_java, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @VeraParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([16 x %struct.sKindDefinition], [16 x %struct.sKindDefinition]* @VeraKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 16, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @veraExtensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 9
  store i32 (i32)* @findCTags, i32 (i32)** %parser2, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 6
  store void (i32)* @initializeVeraParser, void (i32)** %initialize, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeVeraParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  store i32 %0, i32* @Lang_vera, align 4
  %1 = load i32, i32* %language.addr, align 4
  call void @buildKeywordHash(i32 %1, i32 5)
  ret void
}

declare zeroext i1 @isInputLanguage(i32) #1

declare void @cppInit(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext, i32, i32, i32, i32, i32) #1

declare %struct.sVString* @vStringNew() #1

; Function Attrs: returns_twice
declare i32 @setjmp(i32*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @createTags(i32 %nestLevel, %struct.sStatementInfo* %parent) #0 {
entry:
  %nestLevel.addr = alloca i32, align 4
  %parent.addr = alloca %struct.sStatementInfo*, align 8
  %st = alloca %struct.sStatementInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  store i32 %nestLevel, i32* %nestLevel.addr, align 4
  store %struct.sStatementInfo* %parent, %struct.sStatementInfo** %parent.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent.addr, align 8
  %call = call %struct.sStatementInfo* @newStatement(%struct.sStatementInfo* %0)
  store %struct.sStatementInfo* %call, %struct.sStatementInfo** %st, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end17
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  call void @nextToken(%struct.sStatementInfo* %1)
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 12
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 11
  %4 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %5, %struct.sTokenInfo** %token, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %nestLevel.addr, align 4
  %cmp2 = icmp ugt i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  br label %while.end

if.else:                                          ; preds = %if.then
  %call4 = call i8* @getInputFileName()
  %call5 = call i64 @getInputLineNumber()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0), i8* %call4, i64 %call5)
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 3) #7
  unreachable

if.else6:                                         ; preds = %while.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %10, 6
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else6
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %call10 = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %12, i32 1)
  call void @addContext(%struct.sStatementInfo* %11, %struct.sTokenInfo* %call10)
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  call void @advanceToken(%struct.sStatementInfo* %13)
  br label %if.end16

if.else11:                                        ; preds = %if.else6
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %call12 = call i32 @tagCheck(%struct.sStatementInfo* %14)
  store i32 %call12, i32* %corkIndex, align 4
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %16, 3
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else11
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %18 = load i32, i32* %nestLevel.addr, align 4
  %add = add i32 %18, 1
  call void @nest(%struct.sStatementInfo* %17, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else11
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %20 = load i32, i32* %corkIndex, align 4
  call void @checkStatementEnd(%struct.sStatementInfo* %19, i32 %20)
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then9
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %while.body

while.end:                                        ; preds = %if.then3
  call void @deleteStatement()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteAllStatements() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** @CurrentStatement, align 8
  %cmp = icmp ne %struct.sStatementInfo* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @deleteStatement()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @verbose(i8*, ...) #1

declare i8* @getInputFileName() #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @cppTerminate() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sStatementInfo* @newStatement(%struct.sStatementInfo* %parent) #0 {
entry:
  %parent.addr = alloca %struct.sStatementInfo*, align 8
  %st = alloca %struct.sStatementInfo*, align 8
  %i = alloca i32, align 4
  store %struct.sStatementInfo* %parent, %struct.sStatementInfo** %parent.addr, align 8
  %call = call i8* @eMalloc(i64 88)
  %0 = bitcast i8* %call to %struct.sStatementInfo*
  store %struct.sStatementInfo* %0, %struct.sStatementInfo** %st, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call %struct.sTokenInfo* @newToken()
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %token = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 12
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token, i64 0, i64 %idxprom
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call %struct.sTokenInfo* @newToken()
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 13
  store %struct.sTokenInfo* %call2, %struct.sTokenInfo** %context, align 8
  %call3 = call %struct.sTokenInfo* @newToken()
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %blockName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 14
  store %struct.sTokenInfo* %call3, %struct.sTokenInfo** %blockName, align 8
  %call4 = call %struct.sVString* @vStringNew()
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %parentClasses = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %7, i32 0, i32 16
  store %struct.sVString* %call4, %struct.sVString** %parentClasses, align 8
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent.addr, align 8
  call void @initStatement(%struct.sStatementInfo* %8, %struct.sStatementInfo* %9)
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  store %struct.sStatementInfo* %10, %struct.sStatementInfo** @CurrentStatement, align 8
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  ret %struct.sStatementInfo* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nextToken(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 40, label %sw.bb1
    i32 60, label %sw.bb2
    i32 42, label %sw.bb3
    i32 44, label %sw.bb4
    i32 58, label %sw.bb5
    i32 59, label %sw.bb6
    i32 61, label %sw.bb7
    i32 91, label %sw.bb8
    i32 123, label %sw.bb9
    i32 125, label %sw.bb10
  ]

sw.bb:                                            ; preds = %do.body
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 1) #7
  unreachable

sw.bb1:                                           ; preds = %do.body
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @analyzeParens(%struct.sStatementInfo* %1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %do.body
  call void @processAngleBracket()
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 3
  store i8 0, i8* %haveQualifyingName, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %3, i32 5)
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processColon(%struct.sStatementInfo* %4)
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %5, i32 11)
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processInitializer(%struct.sStatementInfo* %6)
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0))
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %7, i32 3)
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %8, i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %10 = load i32, i32* %c, align 4
  call void @parseGeneralToken(%struct.sStatementInfo* %9, i32 %10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token11 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %11, i32 0, i32 12
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 11
  %13 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token11, i64 0, i64 %idxprom
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %14, %struct.sTokenInfo** %token, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 0
  %16 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare i64 @getInputLineNumber() #1

; Function Attrs: noreturn
declare void @longjmp(i32*, i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addContext(%struct.sStatementInfo* %st, %struct.sTokenInfo* %token) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 13
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 2
  %4 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length, align 8
  %cmp1 = icmp ugt i64 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.then
  %6 = load i32, i32* @Lang_c, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %6)
  br i1 %call, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %7 = load i32, i32* @Lang_cpp, align 4
  %call3 = call zeroext i1 @isInputLanguage(i32 %7)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then2
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context5 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 13
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context5, align 8
  %name6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %name6, align 8
  call void @vStringCatS(%struct.sVString* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0))
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i32, i32* @Lang_java, align 4
  %call7 = call zeroext i1 @isInputLanguage(i32 %11)
  br i1 %call7, label %if.then12, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.else
  %12 = load i32, i32* @Lang_csharp, align 4
  %call9 = call zeroext i1 @isInputLanguage(i32 %12)
  br i1 %call9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %13 = load i32, i32* @Lang_d, align 4
  %call11 = call zeroext i1 @isInputLanguage(i32 %13)
  br i1 %call11, label %if.then12, label %if.end

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false8, %if.else
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context13 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %14, i32 0, i32 13
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context13, align 8
  %name14 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %name14, align 8
  call void @vStringPut(%struct.sVString* %16, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then12, %lor.lhs.false10
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context17 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %17, i32 0, i32 13
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context17, align 8
  %name18 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %18, i32 0, i32 2
  %19 = load %struct.sVString*, %struct.sVString** %name18, align 8
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 2
  %21 = load %struct.sVString*, %struct.sVString** %name19, align 8
  call void @vStringCat(%struct.sVString* %19, %struct.sVString* %21)
  %22 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context20 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %22, i32 0, i32 13
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context20, align 8
  %type21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  store i32 8, i32* %type21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %st, i32 %n) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %n.addr = alloca i32, align 4
  %tokenIndex = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 3, i32* %num, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 11
  %1 = load i32, i32* %tokenIndex1, align 4
  %2 = load i32, i32* %num, align 4
  %add = add i32 %1, %2
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub i32 %add, %3
  %4 = load i32, i32* %num, align 4
  %rem = urem i32 %sub, %4
  store i32 %rem, i32* %tokenIndex, align 4
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 12
  %6 = load i32, i32* %tokenIndex, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token, i64 0, i64 %idxprom
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  ret %struct.sTokenInfo* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @advanceToken(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 11
  %1 = load i32, i32* %tokenIndex, align 4
  %cmp = icmp uge i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 11
  store i32 0, i32* %tokenIndex1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 11
  %4 = load i32, i32* %tokenIndex2, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %tokenIndex2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 12
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex3 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 11
  %7 = load i32, i32* %tokenIndex3, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token, i64 0, i64 %idxprom
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  call void @initToken(%struct.sTokenInfo* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @tagCheck(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %prev = alloca %struct.sTokenInfo*, align 8
  %prev2 = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  %name_token = alloca %struct.sTokenInfo*, align 8
  %buf = alloca [20 x i8], align 1
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %4, i32 1)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %prev, align 8
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call2 = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %5, i32 2)
  store %struct.sTokenInfo* %call2, %struct.sTokenInfo** %prev2, align 8
  store i32 0, i32* %corkIndex, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  switch i32 %7, label %sw.default [
    i32 8, label %sw.bb
    i32 3, label %sw.bb45
    i32 7, label %sw.bb138
    i32 11, label %sw.bb155
    i32 5, label %sw.bb155
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 17
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp = icmp eq %struct.sStatementInfo* %9, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br i1 false, label %if.then, label %if.end

cond.false:                                       ; preds = %sw.bb
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent3 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 17
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent3, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %11, i32 0, i32 1
  %12 = load i32, i32* %declaration, align 4
  %cmp4 = icmp eq i32 %12, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call5 = call i32 @qualifyEnumeratorTag(%struct.sStatementInfo* %13, %struct.sTokenInfo* %14)
  store i32 %call5, i32* %corkIndex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration6 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %15, i32 0, i32 1
  %16 = load i32, i32* %declaration6, align 4
  %cmp7 = icmp eq i32 %16, 9
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %18 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call9 = call i32 @makeTag(%struct.sTokenInfo* %17, %struct.sStatementInfo* %18, i1 zeroext false, i32 11)
  store i32 %call9, i32* %corkIndex, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %19 = load i32, i32* @Lang_vera, align 4
  %call11 = call zeroext i1 @isInputLanguage(i32 %19)
  br i1 %call11, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.end10
  %20 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent12 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %20, i32 0, i32 17
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent12, align 8
  %cmp13 = icmp eq %struct.sStatementInfo* %21, null
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %land.lhs.true
  br i1 false, label %if.then19, label %if.end44

cond.false15:                                     ; preds = %land.lhs.true
  %22 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent16 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %22, i32 0, i32 17
  %23 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent16, align 8
  %declaration17 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %declaration17, align 4
  %cmp18 = icmp eq i32 %24, 8
  br i1 %cmp18, label %if.then19, label %if.end44

if.then19:                                        ; preds = %cond.false15, %cond.true14
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type20 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 0
  %26 = load i32, i32* %type20, align 8
  %cmp21 = icmp eq i32 %26, 7
  br i1 %cmp21, label %land.lhs.true22, label %lor.lhs.false28

land.lhs.true22:                                  ; preds = %if.then19
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %27, i32 0, i32 1
  %28 = load i32, i32* %keyword, align 4
  %cmp23 = icmp eq i32 %28, 44
  br i1 %cmp23, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true22
  %29 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %29, i32 0, i32 1
  %30 = load i32, i32* %keyword24, align 4
  %cmp25 = icmp eq i32 %30, 63
  br i1 %cmp25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword26 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %31, i32 0, i32 1
  %32 = load i32, i32* %keyword26, align 4
  %cmp27 = icmp eq i32 %32, 43
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.lhs.true22
  %33 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true22 ], [ %cmp27, %lor.rhs ]
  br i1 %33, label %if.then41, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.end, %if.then19
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %type29 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type29, align 8
  %cmp30 = icmp eq i32 %35, 7
  br i1 %cmp30, label %land.lhs.true31, label %if.end43

land.lhs.true31:                                  ; preds = %lor.lhs.false28
  %36 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %36, i32 0, i32 1
  %37 = load i32, i32* %keyword32, align 4
  %cmp33 = icmp eq i32 %37, 44
  br i1 %cmp33, label %lor.end40, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true31
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 1
  %39 = load i32, i32* %keyword35, align 4
  %cmp36 = icmp eq i32 %39, 63
  br i1 %cmp36, label %lor.end40, label %lor.rhs37

lor.rhs37:                                        ; preds = %lor.lhs.false34
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword38 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 1
  %41 = load i32, i32* %keyword38, align 4
  %cmp39 = icmp eq i32 %41, 43
  br label %lor.end40

lor.end40:                                        ; preds = %lor.rhs37, %lor.lhs.false34, %land.lhs.true31
  %42 = phi i1 [ true, %lor.lhs.false34 ], [ true, %land.lhs.true31 ], [ %cmp39, %lor.rhs37 ]
  br i1 %42, label %if.then41, label %if.end43

if.then41:                                        ; preds = %lor.end40, %lor.end
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %44 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call42 = call i32 @makeTag(%struct.sTokenInfo* %43, %struct.sStatementInfo* %44, i1 zeroext false, i32 18)
  store i32 %call42, i32* %corkIndex, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %lor.end40, %lor.lhs.false28
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %cond.false15, %cond.true14, %if.end10
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type46 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 0
  %46 = load i32, i32* %type46, align 8
  %cmp47 = icmp eq i32 %46, 1
  br i1 %cmp47, label %if.then48, label %if.else95

if.then48:                                        ; preds = %sw.bb45
  %47 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration49 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %47, i32 0, i32 1
  %48 = load i32, i32* %declaration49, align 4
  %cmp50 = icmp eq i32 %48, 20
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.then48
  %49 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %call52 = call i32 @qualifyBlockTag(%struct.sStatementInfo* %49, %struct.sTokenInfo* %50)
  store i32 %call52, i32* %corkIndex, align 4
  br label %if.end94

if.else:                                          ; preds = %if.then48
  %51 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration53 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %51, i32 0, i32 1
  %52 = load i32, i32* %declaration53, align 4
  %cmp54 = icmp eq i32 %52, 6
  br i1 %cmp54, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else
  %53 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %54 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %54, i32 0, i32 14
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName, align 8
  %call56 = call i32 @qualifyFunctionTag(%struct.sStatementInfo* %53, %struct.sTokenInfo* %55)
  store i32 %call56, i32* %corkIndex, align 4
  br label %if.end93

if.else57:                                        ; preds = %if.else
  %56 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %56, i32 0, i32 3
  %57 = load i8, i8* %haveQualifyingName, align 1
  %tobool = trunc i8 %57 to i1
  br i1 %tobool, label %if.then58, label %if.end92

if.then58:                                        ; preds = %if.else57
  %58 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %type59 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %58, i32 0, i32 0
  %59 = load i32, i32* %type59, align 8
  %cmp60 = icmp eq i32 %59, 8
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then58
  %60 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName62 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %60, i32 0, i32 14
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName62, align 8
  %62 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  call void @copyToken(%struct.sTokenInfo* %61, %struct.sTokenInfo* %62)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then58
  %63 = load i32, i32* @Lang_d, align 4
  %call64 = call zeroext i1 @isInputLanguage(i32 %63)
  br i1 %call64, label %land.lhs.true65, label %if.else79

land.lhs.true65:                                  ; preds = %if.end63
  %64 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration66 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %64, i32 0, i32 1
  %65 = load i32, i32* %declaration66, align 4
  %cmp67 = icmp eq i32 %65, 2
  br i1 %cmp67, label %if.then77, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %land.lhs.true65
  %66 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration69 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %66, i32 0, i32 1
  %67 = load i32, i32* %declaration69, align 4
  %cmp70 = icmp eq i32 %67, 18
  br i1 %cmp70, label %if.then77, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false68
  %68 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration72 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %68, i32 0, i32 1
  %69 = load i32, i32* %declaration72, align 4
  %cmp73 = icmp eq i32 %69, 8
  br i1 %cmp73, label %if.then77, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false71
  %70 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration75 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %70, i32 0, i32 1
  %71 = load i32, i32* %declaration75, align 4
  %cmp76 = icmp eq i32 %71, 21
  br i1 %cmp76, label %if.then77, label %if.else79

if.then77:                                        ; preds = %lor.lhs.false74, %lor.lhs.false71, %lor.lhs.false68, %land.lhs.true65
  %72 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %call78 = call i32 @qualifyBlockTag(%struct.sStatementInfo* %72, %struct.sTokenInfo* %73)
  store i32 %call78, i32* %corkIndex, align 4
  br label %if.end91

if.else79:                                        ; preds = %lor.lhs.false74, %if.end63
  %74 = load i32, i32* @Lang_cpp, align 4
  %call80 = call zeroext i1 @isInputLanguage(i32 %74)
  br i1 %call80, label %land.lhs.true81, label %if.else84

land.lhs.true81:                                  ; preds = %if.else79
  %75 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %75, i32 0, i32 7
  %76 = load i8, i8* %inFunction, align 1
  %tobool82 = trunc i8 %76 to i1
  br i1 %tobool82, label %if.then83, label %if.else84

if.then83:                                        ; preds = %land.lhs.true81
  br label %if.end90

if.else84:                                        ; preds = %land.lhs.true81, %if.else79
  %77 = load i32, i32* @Lang_vera, align 4
  %call85 = call zeroext i1 @isInputLanguage(i32 %77)
  br i1 %call85, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.else84
  %78 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration87 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %78, i32 0, i32 1
  store i32 5, i32* %declaration87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.else84
  %79 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %80 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %call89 = call i32 @qualifyFunctionTag(%struct.sStatementInfo* %79, %struct.sTokenInfo* %80)
  store i32 %call89, i32* %corkIndex, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end88, %if.then83
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then77
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.else57
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then55
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then51
  br label %if.end137

if.else95:                                        ; preds = %sw.bb45
  %81 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call96 = call zeroext i1 @isContextualStatement(%struct.sStatementInfo* %81)
  br i1 %call96, label %if.then103, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.else95
  %82 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration98 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %82, i32 0, i32 1
  %83 = load i32, i32* %declaration98, align 4
  %cmp99 = icmp eq i32 %83, 23
  br i1 %cmp99, label %if.then103, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %84 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration101 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %84, i32 0, i32 1
  %85 = load i32, i32* %declaration101, align 4
  %cmp102 = icmp eq i32 %85, 15
  br i1 %cmp102, label %if.then103, label %if.else131

if.then103:                                       ; preds = %lor.lhs.false100, %lor.lhs.false97, %if.else95
  %86 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  store %struct.sTokenInfo* %86, %struct.sTokenInfo** %name_token, align 8
  %87 = load i32, i32* @Lang_cpp, align 4
  %call104 = call zeroext i1 @isInputLanguage(i32 %87)
  br i1 %call104, label %land.lhs.true105, label %if.end115

land.lhs.true105:                                 ; preds = %if.then103
  %88 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type106 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %88, i32 0, i32 0
  %89 = load i32, i32* %type106, align 8
  %cmp107 = icmp eq i32 %89, 8
  br i1 %cmp107, label %land.lhs.true108, label %if.end115

land.lhs.true108:                                 ; preds = %land.lhs.true105
  %90 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %90, i32 0, i32 2
  %91 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %91, i32 0, i32 2
  %92 = load i8*, i8** %buffer, align 8
  %call109 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* %92)
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %land.lhs.true111, label %if.end115

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %93 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %type112 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %93, i32 0, i32 0
  %94 = load i32, i32* %type112, align 8
  %cmp113 = icmp eq i32 %94, 8
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %land.lhs.true111
  %95 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  store %struct.sTokenInfo* %95, %struct.sTokenInfo** %name_token, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %land.lhs.true111, %land.lhs.true108, %land.lhs.true105, %if.then103
  %96 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name_token, align 8
  %type116 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %96, i32 0, i32 0
  %97 = load i32, i32* %type116, align 8
  %cmp117 = icmp eq i32 %97, 8
  br i1 %cmp117, label %if.then118, label %if.else120

if.then118:                                       ; preds = %if.end115
  %98 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName119 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %98, i32 0, i32 14
  %99 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName119, align 8
  %100 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name_token, align 8
  call void @copyToken(%struct.sTokenInfo* %99, %struct.sTokenInfo* %100)
  br label %if.end129

if.else120:                                       ; preds = %if.end115
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  %101 = load i32, i32* @AnonymousID, align 4
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* @AnonymousID, align 4
  %call121 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i32 %inc)
  %102 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName122 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %102, i32 0, i32 14
  %103 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName122, align 8
  %name123 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %103, i32 0, i32 2
  %104 = load %struct.sVString*, %struct.sVString** %name123, align 8
  %arraydecay124 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @vStringCopyS(%struct.sVString* %104, i8* %arraydecay124)
  %105 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName125 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %105, i32 0, i32 14
  %106 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName125, align 8
  %type126 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %106, i32 0, i32 0
  store i32 8, i32* %type126, align 8
  %107 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName127 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %107, i32 0, i32 14
  %108 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName127, align 8
  %keyword128 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %108, i32 0, i32 1
  store i32 -1, i32* %keyword128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else120, %if.then118
  %109 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %110 = load %struct.sTokenInfo*, %struct.sTokenInfo** %name_token, align 8
  %call130 = call i32 @qualifyBlockTag(%struct.sStatementInfo* %109, %struct.sTokenInfo* %110)
  store i32 %call130, i32* %corkIndex, align 4
  br label %if.end136

if.else131:                                       ; preds = %lor.lhs.false100
  %111 = load i32, i32* @Lang_csharp, align 4
  %call132 = call zeroext i1 @isInputLanguage(i32 %111)
  br i1 %call132, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.else131
  %112 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %113 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call134 = call i32 @makeTag(%struct.sTokenInfo* %112, %struct.sStatementInfo* %113, i1 zeroext false, i32 16)
  store i32 %call134, i32* %corkIndex, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.else131
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end129
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end94
  br label %sw.epilog

sw.bb138:                                         ; preds = %entry
  %114 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword139 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %114, i32 0, i32 1
  %115 = load i32, i32* %keyword139, align 4
  %cmp140 = icmp eq i32 %115, 19
  br i1 %cmp140, label %land.lhs.true141, label %if.end154

land.lhs.true141:                                 ; preds = %sw.bb138
  %116 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type142 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %116, i32 0, i32 0
  %117 = load i32, i32* %type142, align 8
  %cmp143 = icmp eq i32 %117, 1
  br i1 %cmp143, label %land.lhs.true144, label %if.end154

land.lhs.true144:                                 ; preds = %land.lhs.true141
  %118 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent145 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %118, i32 0, i32 17
  %119 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent145, align 8
  %cmp146 = icmp eq %struct.sStatementInfo* %119, null
  br i1 %cmp146, label %cond.true147, label %cond.false148

cond.true147:                                     ; preds = %land.lhs.true144
  br i1 false, label %if.then152, label %if.end154

cond.false148:                                    ; preds = %land.lhs.true144
  %120 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent149 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %120, i32 0, i32 17
  %121 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent149, align 8
  %declaration150 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %121, i32 0, i32 1
  %122 = load i32, i32* %declaration150, align 4
  %cmp151 = icmp eq i32 %122, 24
  br i1 %cmp151, label %if.then152, label %if.end154

if.then152:                                       ; preds = %cond.false148, %cond.true147
  %123 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %124 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %call153 = call i32 @qualifyFunctionDeclTag(%struct.sStatementInfo* %123, %struct.sTokenInfo* %124)
  store i32 %call153, i32* %corkIndex, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %cond.false148, %cond.true147, %land.lhs.true141, %sw.bb138
  br label %sw.epilog

sw.bb155:                                         ; preds = %entry, %entry
  %125 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent156 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %125, i32 0, i32 17
  %126 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent156, align 8
  %cmp157 = icmp eq %struct.sStatementInfo* %126, null
  br i1 %cmp157, label %cond.true158, label %cond.false159

cond.true158:                                     ; preds = %sw.bb155
  br i1 false, label %if.then163, label %if.else164

cond.false159:                                    ; preds = %sw.bb155
  %127 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent160 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %127, i32 0, i32 17
  %128 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent160, align 8
  %declaration161 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %128, i32 0, i32 1
  %129 = load i32, i32* %declaration161, align 4
  %cmp162 = icmp eq i32 %129, 3
  br i1 %cmp162, label %if.then163, label %if.else164

if.then163:                                       ; preds = %cond.false159, %cond.true158
  br label %if.end192

if.else164:                                       ; preds = %cond.false159, %cond.true158
  %130 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type165 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %130, i32 0, i32 0
  %131 = load i32, i32* %type165, align 8
  %cmp166 = icmp eq i32 %131, 8
  br i1 %cmp166, label %if.then167, label %if.else174

if.then167:                                       ; preds = %if.else164
  %132 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %call168 = call zeroext i1 @isContextualKeyword(%struct.sTokenInfo* %132)
  br i1 %call168, label %if.then169, label %if.else171

if.then169:                                       ; preds = %if.then167
  %133 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %134 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call170 = call i32 @makeTag(%struct.sTokenInfo* %133, %struct.sStatementInfo* %134, i1 zeroext true, i32 25)
  store i32 %call170, i32* %corkIndex, align 4
  br label %if.end173

if.else171:                                       ; preds = %if.then167
  %135 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %136 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %call172 = call i32 @qualifyVariableTag(%struct.sStatementInfo* %135, %struct.sTokenInfo* %136)
  store i32 %call172, i32* %corkIndex, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.else171, %if.then169
  br label %if.end191

if.else174:                                       ; preds = %if.else164
  %137 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type175 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %137, i32 0, i32 0
  %138 = load i32, i32* %type175, align 8
  %cmp176 = icmp eq i32 %138, 1
  br i1 %cmp176, label %land.lhs.true177, label %if.end190

land.lhs.true177:                                 ; preds = %if.else174
  %139 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %type178 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %139, i32 0, i32 0
  %140 = load i32, i32* %type178, align 8
  %cmp179 = icmp eq i32 %140, 8
  br i1 %cmp179, label %if.then180, label %if.end190

if.then180:                                       ; preds = %land.lhs.true177
  %141 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %isPointer = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %141, i32 0, i32 6
  %142 = load i8, i8* %isPointer, align 4
  %tobool181 = trunc i8 %142 to i1
  br i1 %tobool181, label %if.then185, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %if.then180
  %143 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction183 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %143, i32 0, i32 7
  %144 = load i8, i8* %inFunction183, align 1
  %tobool184 = trunc i8 %144 to i1
  br i1 %tobool184, label %if.then185, label %if.else187

if.then185:                                       ; preds = %lor.lhs.false182, %if.then180
  %145 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %146 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %call186 = call i32 @qualifyVariableTag(%struct.sStatementInfo* %145, %struct.sTokenInfo* %146)
  store i32 %call186, i32* %corkIndex, align 4
  br label %if.end189

if.else187:                                       ; preds = %lor.lhs.false182
  %147 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %148 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %call188 = call i32 @qualifyFunctionDeclTag(%struct.sStatementInfo* %147, %struct.sTokenInfo* %148)
  store i32 %call188, i32* %corkIndex, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.else187, %if.then185
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %land.lhs.true177, %if.else174
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.end173
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then163
  %149 = load i32, i32* @Lang_java, align 4
  %call193 = call zeroext i1 @isInputLanguage(i32 %149)
  br i1 %call193, label %land.lhs.true194, label %if.end208

land.lhs.true194:                                 ; preds = %if.end192
  %150 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type195 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %150, i32 0, i32 0
  %151 = load i32, i32* %type195, align 8
  %cmp196 = icmp eq i32 %151, 11
  br i1 %cmp196, label %land.lhs.true197, label %if.end208

land.lhs.true197:                                 ; preds = %land.lhs.true194
  %152 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent198 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %152, i32 0, i32 17
  %153 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent198, align 8
  %cmp199 = icmp eq %struct.sStatementInfo* %153, null
  br i1 %cmp199, label %cond.true200, label %cond.false201

cond.true200:                                     ; preds = %land.lhs.true197
  br i1 false, label %if.then205, label %if.end208

cond.false201:                                    ; preds = %land.lhs.true197
  %154 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent202 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %154, i32 0, i32 17
  %155 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent202, align 8
  %declaration203 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %155, i32 0, i32 1
  %156 = load i32, i32* %declaration203, align 4
  %cmp204 = icmp eq i32 %156, 3
  br i1 %cmp204, label %if.then205, label %if.end208

if.then205:                                       ; preds = %cond.false201, %cond.true200
  %157 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent206 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %157, i32 0, i32 17
  %158 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent206, align 8
  %declaration207 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %158, i32 0, i32 1
  store i32 2, i32* %declaration207, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %cond.false201, %cond.true200, %land.lhs.true194, %if.end192
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end208, %if.end154, %if.end137, %if.end44
  %159 = load i32, i32* %corkIndex, align 4
  ret i32 %159
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @nest(%struct.sStatementInfo* %st, i32 %nestLevel) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %nestLevel.addr = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %nestLevel, i32* %nestLevel.addr, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %declaration, align 4
  switch i32 %1, label %sw.default [
    i32 20, label %sw.bb
    i32 23, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
    i32 8, label %sw.bb1
    i32 10, label %sw.bb1
    i32 11, label %sw.bb1
    i32 14, label %sw.bb1
    i32 16, label %sw.bb1
    i32 17, label %sw.bb1
    i32 18, label %sw.bb1
    i32 21, label %sw.bb1
    i32 24, label %sw.bb1
    i32 5, label %sw.bb2
    i32 19, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 7
  store i8 0, i8* %inFunction, align 1
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb
  %3 = load i32, i32* %nestLevel.addr, align 4
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @createTags(i32 %3, %struct.sStatementInfo* %4)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction3 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 7
  store i8 1, i8* %inFunction3, align 1
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb2
  %call = call zeroext i1 @includeTag(i32 8, i1 zeroext false)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %call4 = call zeroext i1 @includeTag(i32 27, i1 zeroext false)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.default
  %6 = load i32, i32* %nestLevel.addr, align 4
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @createTags(i32 %6, %struct.sStatementInfo* %7)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb1
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @advanceToken(%struct.sStatementInfo* %8)
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %9, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @checkStatementEnd(%struct.sStatementInfo* %st, i32 %corkIndex) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %corkIndex.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  %e = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %corkIndex, i32* %corkIndex.addr, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %4 = load i32, i32* %corkIndex.addr, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %corkIndex.addr, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %5)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %e, align 8
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 3
  %7 = load i64, i64* %lineNumber, align 8
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  store i64 %7, i64* %endLine, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp2 = icmp eq i32 %10, 5
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %11, i1 zeroext true)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call4 = call zeroext i1 @isStatementEnd(%struct.sStatementInfo* %12)
  br i1 %call4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %13, i1 zeroext false)
  call void @cppEndStatement()
  br label %if.end7

if.else6:                                         ; preds = %if.else
  call void @cppBeginStatement()
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @advanceToken(%struct.sStatementInfo* %14)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteStatement() #0 {
entry:
  %st = alloca %struct.sStatementInfo*, align 8
  %parent = alloca %struct.sStatementInfo*, align 8
  %i = alloca i32, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** @CurrentStatement, align 8
  store %struct.sStatementInfo* %0, %struct.sStatementInfo** %st, align 8
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %parent1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 17
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent1, align 8
  store %struct.sStatementInfo* %2, %struct.sStatementInfo** %parent, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %token = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 12
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token, i64 0, i64 %idxprom
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  call void @deleteToken(%struct.sTokenInfo* %6)
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %token2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %7, i32 0, i32 12
  %8 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token2, i64 0, i64 %idxprom3
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %blockName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 14
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName, align 8
  call void @deleteToken(%struct.sTokenInfo* %11)
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %blockName5 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 14
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %blockName5, align 8
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %13, i32 0, i32 13
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context, align 8
  call void @deleteToken(%struct.sTokenInfo* %14)
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %context6 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %15, i32 0, i32 13
  store %struct.sTokenInfo* null, %struct.sTokenInfo** %context6, align 8
  %16 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %parentClasses = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %16, i32 0, i32 16
  %17 = load %struct.sVString*, %struct.sVString** %parentClasses, align 8
  call void @vStringDelete(%struct.sVString* %17)
  %18 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %parentClasses7 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %18, i32 0, i32 16
  store %struct.sVString* null, %struct.sVString** %parentClasses7, align 8
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st, align 8
  %20 = bitcast %struct.sStatementInfo* %19 to i8*
  call void @eFree(i8* %20)
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  store %struct.sStatementInfo* %21, %struct.sStatementInfo** @CurrentStatement, align 8
  ret void
}

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTokenInfo* @newToken() #0 {
entry:
  %token = alloca %struct.sTokenInfo*, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sTokenInfo*
  store %struct.sTokenInfo* %0, %struct.sTokenInfo** %token, align 8
  %call1 = call %struct.sVString* @vStringNew()
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  store %struct.sVString* %call1, %struct.sVString** %name, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @initToken(%struct.sTokenInfo* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  ret %struct.sTokenInfo* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initStatement(%struct.sStatementInfo* %st, %struct.sStatementInfo* %parent) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %parent.addr = alloca %struct.sStatementInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sStatementInfo* %parent, %struct.sStatementInfo** %parent.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent.addr, align 8
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 17
  store %struct.sStatementInfo* %0, %struct.sStatementInfo** %parent1, align 8
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @initMemberInfo(%struct.sStatementInfo* %2)
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %3, i1 zeroext false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initToken(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 1
  store i32 -1, i32* %keyword, align 4
  %call = call i64 @getInputLineNumber()
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 3
  store i64 %call, i64* %lineNumber, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 4
  %call1 = call [2 x i64] @getInputFilePosition()
  %4 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call1, [2 x i64]* %4, align 8
  %5 = bitcast %struct._MIOPos* %filePosition to i8*
  %6 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 2
  %8 = load %struct.sVString*, %struct.sVString** %name, align 8
  store %struct.sVString* %8, %struct.sVString** %vStringClear_s, align 8
  %9 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %10 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initMemberInfo(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %accessDefault = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 0, i32* %accessDefault, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 17
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp = icmp ne %struct.sStatementInfo* %1, null
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 17
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent1, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %declaration, align 4
  switch i32 %4, label %sw.default [
    i32 14, label %sw.bb
    i32 16, label %sw.bb2
    i32 17, label %sw.bb3
    i32 3, label %sw.bb4
    i32 10, label %sw.bb5
    i32 2, label %sw.bb6
    i32 8, label %sw.bb13
    i32 18, label %sw.bb13
    i32 21, label %sw.bb13
    i32 24, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.then
  store i32 2, i32* %accessDefault, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  store i32 3, i32* %accessDefault, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  store i32 4, i32* %accessDefault, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  %5 = load i32, i32* @Lang_java, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %5)
  %6 = zext i1 %call to i64
  %cond = select i1 %call, i32 4, i32 0
  store i32 %cond, i32* %accessDefault, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  store i32 0, i32* %accessDefault, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  %7 = load i32, i32* @Lang_java, align 4
  %call7 = call zeroext i1 @isInputLanguage(i32 %7)
  br i1 %call7, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb6
  store i32 5, i32* %accessDefault, align 4
  br label %if.end12

if.else:                                          ; preds = %sw.bb6
  %8 = load i32, i32* @Lang_d, align 4
  %call9 = call zeroext i1 @isInputLanguage(i32 %8)
  br i1 %call9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  store i32 4, i32* %accessDefault, align 4
  br label %if.end

if.else11:                                        ; preds = %if.else
  store i32 2, i32* %accessDefault, align 4
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then, %if.then, %if.then, %if.then
  store i32 4, i32* %accessDefault, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %if.end12, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  br label %if.end14

if.end14:                                         ; preds = %sw.epilog, %entry
  %9 = load i32, i32* %accessDefault, align 4
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 15
  %accessDefault15 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member, i32 0, i32 1
  store i32 %9, i32* %accessDefault15, align 4
  %11 = load i32, i32* %accessDefault, align 4
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member16 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 15
  %access = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member16, i32 0, i32 0
  store i32 %11, i32* %access, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @reinitStatement(%struct.sStatementInfo* %st, i1 zeroext %partial) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %partial.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %frombool = zext i1 %partial to i8
  store i8 %frombool, i8* %partial.addr, align 1
  %0 = load i8, i8* %partial.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 0
  store i32 0, i32* %scope, align 8
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 17
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %call = call zeroext i1 @isContextualStatement(%struct.sStatementInfo* %3)
  br i1 %call, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 1
  store i32 1, i32* %declaration, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 1
  store i32 0, i32* %declaration2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotParenName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 4
  store i8 0, i8* %gotParenName, align 2
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %isPointer = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %7, i32 0, i32 6
  store i8 0, i8* %isPointer, align 4
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 7
  store i8 0, i8* %inFunction, align 1
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %assignment = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %9, i32 0, i32 8
  store i8 0, i8* %assignment, align 2
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %notVariable = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 9
  store i8 0, i8* %notVariable, align 1
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %11, i32 0, i32 10
  store i32 0, i32* %implementation, align 8
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotArgs = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 5
  store i8 0, i8* %gotArgs, align 1
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %13, i32 0, i32 2
  store i8 0, i8* %gotName, align 8
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %14, i32 0, i32 3
  store i8 0, i8* %haveQualifyingName, align 1
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %15, i32 0, i32 11
  store i32 0, i32* %tokenIndex, align 4
  %16 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent4 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %16, i32 0, i32 17
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent4, align 8
  %cmp = icmp ne %struct.sStatementInfo* %17, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end3
  %18 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent6 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %18, i32 0, i32 17
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent6, align 8
  %inFunction7 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %19, i32 0, i32 7
  %20 = load i8, i8* %inFunction7, align 1
  %tobool8 = trunc i8 %20 to i1
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction9 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %21, i32 0, i32 7
  %frombool10 = zext i1 %tobool8 to i8
  store i8 %frombool10, i8* %inFunction9, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %22 = load i32, i32* %i, align 4
  %cmp12 = icmp ult i32 %22, 3
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %23, i32 0, i32 12
  %24 = load i32, i32* %i, align 4
  %idxprom = zext i32 %24 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token, i64 0, i64 %idxprom
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  call void @initToken(%struct.sTokenInfo* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %27, i32 0, i32 13
  %28 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context, align 8
  call void @initToken(%struct.sTokenInfo* %28)
  %29 = load i8, i8* %partial.addr, align 1
  %tobool13 = trunc i8 %29 to i1
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.end
  %30 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %30, i32 0, i32 14
  %31 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName, align 8
  call void @initToken(%struct.sTokenInfo* %31)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.end
  br label %do.body

do.body:                                          ; preds = %if.end15
  %32 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parentClasses = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %32, i32 0, i32 16
  %33 = load %struct.sVString*, %struct.sVString** %parentClasses, align 8
  store %struct.sVString* %33, %struct.sVString** %vStringClear_s, align 8
  %34 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %35 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %35, i32 0, i32 2
  %36 = load i8*, i8** %buffer, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %arrayidx16, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %37 = load i8, i8* %partial.addr, align 1
  %tobool17 = trunc i8 %37 to i1
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %do.end
  %38 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %38, i32 0, i32 15
  %accessDefault = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member, i32 0, i32 1
  %39 = load i32, i32* %accessDefault, align 4
  %40 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member19 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %40, i32 0, i32 15
  %access = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member19, i32 0, i32 0
  store i32 %39, i32* %access, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isContextualStatement(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %cmp = icmp ne %struct.sStatementInfo* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %declaration, align 4
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 14, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 21, label %sw.bb
    i32 20, label %sw.bb
    i32 24, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %3 = load i8, i8* %result, align 1
  %tobool = trunc i8 %3 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToNonWhite() #0 {
entry:
  %found = alloca i8, align 1
  %c = alloca i32, align 4
  store i8 0, i8* %found, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %call = call i32 @cppGetc()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %call1 = call i32 @isspace(i32 %0) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i8 1, i8* %found, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.body

while.end:                                        ; preds = %if.else
  %1 = load i8, i8* @CollectingSignature, align 1
  %tobool2 = trunc i8 %1 to i1
  br i1 %tobool2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %while.end
  %2 = load i8, i8* %found, align 1
  %tobool3 = trunc i8 %2 to i1
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %3 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  call void @vStringPut(%struct.sVString* %3, i32 32)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %while.end
  %4 = load i32, i32* %c, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @analyzeParens(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %prev = alloca %struct.sTokenInfo*, align 8
  %prev2 = alloca %struct.sTokenInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %info = alloca %struct.sParenInfo, align 4
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %0, i32 1)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %prev, align 8
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call1 = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %1, i32 2)
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %prev2, align 8
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 7
  %3 = load i8, i8* %inFunction, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %assignment = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 8
  %5 = load i8, i8* %assignment, align 2
  %tobool2 = trunc i8 %5 to i1
  br i1 %tobool2, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load i32, i32* @Lang_cpp, align 4
  %call4 = call zeroext i1 @isInputLanguage(i32 %6)
  br i1 %call4, label %land.lhs.true5, label %if.then

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %8, 8
  br i1 %cmp, label %land.lhs.true6, label %if.then

land.lhs.true6:                                   ; preds = %land.lhs.true5
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %type7 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 0
  %10 = load i32, i32* %type7, align 8
  %cmp8 = icmp eq i32 %10, 8
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true6, %land.lhs.true5, %land.lhs.true3
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %notVariable = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %11, i32 0, i32 9
  store i8 1, i8* %notVariable, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true, %entry
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type9 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 0
  %13 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.end72, label %if.then11

if.then11:                                        ; preds = %if.end
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token12 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %14, i32 0, i32 12
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %15, i32 0, i32 11
  %16 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token12, i64 0, i64 %idxprom
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %17, %struct.sTokenInfo** %token, align 8
  call void @initParenInfo(%struct.sParenInfo* %info)
  %18 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call13 = call i32 @parseParens(%struct.sStatementInfo* %18, %struct.sParenInfo* %info)
  %call14 = call i32 @skipToNonWhite()
  store i32 %call14, i32* %c, align 4
  %19 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %19)
  %invalidContents = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %info, i32 0, i32 4
  %20 = load i8, i8* %invalidContents, align 4
  %tobool15 = trunc i8 %20 to i1
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then11
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %21, i1 zeroext false)
  br label %if.end71

if.else:                                          ; preds = %if.then11
  %isNameCandidate = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %info, i32 0, i32 3
  %22 = load i8, i8* %isNameCandidate, align 1
  %tobool17 = trunc i8 %22 to i1
  br i1 %tobool17, label %land.lhs.true18, label %if.else58

land.lhs.true18:                                  ; preds = %if.else
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %24, 10
  br i1 %cmp20, label %land.lhs.true21, label %if.else58

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %25 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotParenName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %25, i32 0, i32 4
  %26 = load i8, i8* %gotParenName, align 2
  %tobool22 = trunc i8 %26 to i1
  br i1 %tobool22, label %if.else58, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %isParamList = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %info, i32 0, i32 1
  %27 = load i8, i8* %isParamList, align 1
  %tobool24 = trunc i8 %27 to i1
  br i1 %tobool24, label %lor.lhs.false, label %if.then39

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %28 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %28, i32 0, i32 3
  %29 = load i8, i8* %haveQualifyingName, align 1
  %tobool25 = trunc i8 %29 to i1
  br i1 %tobool25, label %lor.lhs.false26, label %if.then39

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %30 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %30, 40
  br i1 %cmp27, label %if.then39, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %31 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %31, 61
  br i1 %cmp29, label %land.lhs.true30, label %lor.lhs.false34

land.lhs.true30:                                  ; preds = %lor.lhs.false28
  %32 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %32, i32 0, i32 10
  %33 = load i32, i32* %implementation, align 8
  %cmp31 = icmp ne i32 %33, 2
  br i1 %cmp31, label %land.lhs.true32, label %lor.lhs.false34

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %34 = load i32, i32* @Lang_cpp, align 4
  %call33 = call zeroext i1 @isInputLanguage(i32 %34)
  br i1 %call33, label %lor.lhs.false34, label %if.then39

lor.lhs.false34:                                  ; preds = %land.lhs.true32, %land.lhs.true30, %lor.lhs.false28
  %35 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %35, i32 0, i32 1
  %36 = load i32, i32* %declaration, align 4
  %cmp35 = icmp eq i32 %36, 0
  br i1 %cmp35, label %land.lhs.true36, label %if.else58

land.lhs.true36:                                  ; preds = %lor.lhs.false34
  %37 = load i32, i32* %c, align 4
  %call37 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i32 %37)
  %cmp38 = icmp ne i8* %call37, null
  br i1 %cmp38, label %if.then39, label %if.else58

if.then39:                                        ; preds = %land.lhs.true36, %land.lhs.true32, %lor.lhs.false26, %lor.lhs.false, %land.lhs.true23
  %38 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %38, i32 0, i32 0
  store i32 8, i32* %type40, align 8
  %39 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processName(%struct.sStatementInfo* %39)
  %40 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotParenName41 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %40, i32 0, i32 4
  store i8 1, i8* %gotParenName41, align 2
  %41 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %41, 40
  br i1 %cmp42, label %land.lhs.true43, label %if.then45

land.lhs.true43:                                  ; preds = %if.then39
  %nestedArgs = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %info, i32 0, i32 5
  %42 = load i8, i8* %nestedArgs, align 1
  %tobool44 = trunc i8 %42 to i1
  br i1 %tobool44, label %if.end48, label %if.then45

if.then45:                                        ; preds = %land.lhs.true43, %if.then39
  %isPointer = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %info, i32 0, i32 0
  %43 = load i8, i8* %isPointer, align 4
  %tobool46 = trunc i8 %43 to i1
  %44 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %isPointer47 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %44, i32 0, i32 6
  %frombool = zext i1 %tobool46 to i8
  store i8 %frombool, i8* %isPointer47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true43
  %45 = load i32, i32* @Lang_d, align 4
  %call49 = call zeroext i1 @isInputLanguage(i32 %45)
  br i1 %call49, label %land.lhs.true50, label %if.end57

land.lhs.true50:                                  ; preds = %if.end48
  %46 = load i32, i32* %c, align 4
  %cmp51 = icmp eq i32 %46, 40
  br i1 %cmp51, label %land.lhs.true52, label %if.end57

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type53 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %47, i32 0, i32 0
  %48 = load i32, i32* %type53, align 8
  %cmp54 = icmp eq i32 %48, 8
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %land.lhs.true52
  %49 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration56 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %49, i32 0, i32 1
  store i32 6, i32* %declaration56, align 4
  %50 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %50, i32 0, i32 14
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName, align 8
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  call void @copyToken(%struct.sTokenInfo* %51, %struct.sTokenInfo* %52)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true52, %land.lhs.true50, %if.end48
  br label %if.end70

if.else58:                                        ; preds = %land.lhs.true36, %lor.lhs.false34, %land.lhs.true21, %land.lhs.true18, %if.else
  %53 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotArgs = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %53, i32 0, i32 5
  %54 = load i8, i8* %gotArgs, align 1
  %tobool59 = trunc i8 %54 to i1
  br i1 %tobool59, label %if.else68, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.else58
  %isParamList61 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %info, i32 0, i32 1
  %55 = load i8, i8* %isParamList61, align 1
  %tobool62 = trunc i8 %55 to i1
  br i1 %tobool62, label %if.then63, label %if.else68

if.then63:                                        ; preds = %land.lhs.true60
  %56 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotArgs64 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %56, i32 0, i32 5
  store i8 1, i8* %gotArgs64, align 1
  %57 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %57, i32 1)
  %58 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @advanceToken(%struct.sStatementInfo* %58)
  %59 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %59, i32 0, i32 0
  %60 = load i32, i32* %scope, align 8
  %cmp65 = icmp ne i32 %60, 4
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then63
  %61 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @analyzePostParens(%struct.sStatementInfo* %61, %struct.sParenInfo* %info)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then63
  br label %if.end69

if.else68:                                        ; preds = %land.lhs.true60, %if.else58
  %62 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %62, i32 0)
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.end67
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end57
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then16
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processAngleBracket() #0 {
entry:
  %c = alloca i32, align 4
  %call = call i32 @cppGetc()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 62
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end19

if.else:                                          ; preds = %entry
  %call1 = call zeroext i1 @languageSupportsGenerics()
  br i1 %call1, label %land.lhs.true, label %if.else9

land.lhs.true:                                    ; preds = %if.else
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %1, 60
  br i1 %cmp2, label %land.lhs.true3, label %if.else9

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  %cmp4 = icmp ne i32 %2, 61
  br i1 %cmp4, label %if.then5, label %if.else9

if.then5:                                         ; preds = %land.lhs.true3
  %3 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %3)
  %4 = load i32, i32* @Lang_cpp, align 4
  %call6 = call zeroext i1 @isInputLanguage(i32 %4)
  br i1 %call6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.then5
  call void @skipCppTemplateParameterList()
  br label %if.end

if.else8:                                         ; preds = %if.then5
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end18

if.else9:                                         ; preds = %land.lhs.true3, %land.lhs.true, %if.else
  %5 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %5, 60
  br i1 %cmp10, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else9
  %call12 = call i32 @cppGetc()
  store i32 %call12, i32* %c, align 4
  %6 = load i32, i32* %c, align 4
  %cmp13 = icmp ne i32 %6, 61
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  %7 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %7)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then11
  br label %if.end17

if.else16:                                        ; preds = %if.else9
  %8 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %8)
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.end15
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setToken(%struct.sStatementInfo* %st, i32 %type) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %type.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @initToken(%struct.sTokenInfo* %4)
  %5 = load i32, i32* %type.addr, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  store i32 %5, i32* %type2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processColon(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %c = alloca i32, align 4
  %doubleColon = alloca i8, align 1
  %prev = alloca %struct.sTokenInfo*, align 8
  %prev2 = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load i32, i32* @Lang_cpp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i32 @cppGetc()
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i32 @skipToNonWhite()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  store i32 %cond, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 58
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %doubleColon, align 1
  %2 = load i8, i8* %doubleColon, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %3, i32 6)
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 3
  store i8 0, i8* %haveQualifyingName, align 1
  br label %if.end49

if.else:                                          ; preds = %cond.end
  %5 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %5)
  %6 = load i32, i32* @Lang_cpp, align 4
  %call3 = call zeroext i1 @isInputLanguage(i32 %6)
  br i1 %call3, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i32, i32* @Lang_csharp, align 4
  %call4 = call zeroext i1 @isInputLanguage(i32 %7)
  br i1 %call4, label %land.lhs.true, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* @Lang_d, align 4
  %call6 = call zeroext i1 @isInputLanguage(i32 %8)
  br i1 %call6, label %land.lhs.true, label %if.else9

land.lhs.true:                                    ; preds = %lor.lhs.false5, %lor.lhs.false, %if.else
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %declaration, align 4
  %call7 = call zeroext i1 @inheritingDeclaration(i32 %10)
  br i1 %call7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %land.lhs.true
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readParents(%struct.sStatementInfo* %11, i32 58)
  br label %if.end48

if.else9:                                         ; preds = %land.lhs.true, %lor.lhs.false5
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 17
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp10 = icmp eq %struct.sStatementInfo* %13, null
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %if.else9
  br label %cond.end15

cond.false12:                                     ; preds = %if.else9
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent13 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %14, i32 0, i32 17
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent13, align 8
  %declaration14 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %15, i32 0, i32 1
  %16 = load i32, i32* %declaration14, align 4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false12, %cond.true11
  %cond16 = phi i32 [ 0, %cond.true11 ], [ %16, %cond.false12 ]
  %cmp17 = icmp eq i32 %cond16, 18
  br i1 %cmp17, label %if.then18, label %if.else26

if.then18:                                        ; preds = %cond.end15
  %call19 = call i32 @skipToOneOf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0))
  store i32 %call19, i32* %c, align 4
  %17 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %17, 44
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.then18
  %18 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %18, i32 5)
  br label %if.end25

if.else22:                                        ; preds = %if.then18
  %19 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %19, 59
  br i1 %cmp23, label %if.then24, label %if.end

if.then24:                                        ; preds = %if.else22
  %20 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %20, i32 11)
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.else22
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then21
  br label %if.end47

if.else26:                                        ; preds = %cond.end15
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call27 = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %21, i32 1)
  store %struct.sTokenInfo* %call27, %struct.sTokenInfo** %prev, align 8
  %22 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call28 = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %22, i32 2)
  store %struct.sTokenInfo* %call28, %struct.sTokenInfo** %prev2, align 8
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %keyword, align 4
  %cmp29 = icmp eq i32 %24, 19
  br i1 %cmp29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.else26
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %keyword31 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %keyword31, align 4
  %cmp32 = icmp eq i32 %26, 10
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %lor.lhs.false30, %if.else26
  %27 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %27, i1 zeroext false)
  br label %if.end46

if.else34:                                        ; preds = %lor.lhs.false30
  %28 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent35 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %28, i32 0, i32 17
  %29 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent35, align 8
  %cmp36 = icmp ne %struct.sStatementInfo* %29, null
  br i1 %cmp36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.else34
  %30 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent38 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %30, i32 0, i32 17
  %31 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent38, align 8
  %call39 = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %31, i32 1)
  %keyword40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %call39, i32 0, i32 1
  %32 = load i32, i32* %keyword40, align 4
  %cmp41 = icmp ne i32 %32, 84
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then37
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %34 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call43 = call i32 @makeTag(%struct.sTokenInfo* %33, %struct.sStatementInfo* %34, i1 zeroext false, i32 27)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then37
  %35 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %35, i1 zeroext false)
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.else34
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then33
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end25
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then8
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processInitializer(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %inEnumBody = alloca i8, align 1
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 17
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp = icmp eq %struct.sStatementInfo* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 17
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent1, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %declaration, align 4
  %cmp2 = icmp eq i32 %4, 3
  %conv = zext i1 %cmp2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %inEnumBody, align 1
  %call = call i32 @cppGetc()
  store i32 %call, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %5, 61
  br i1 %cmp3, label %if.then, label %if.end25

if.then:                                          ; preds = %cond.end
  %6 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %6)
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call5 = call i32 @skipInitializer(%struct.sStatementInfo* %7)
  store i32 %call5, i32* %c, align 4
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %assignment = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 8
  store i8 1, i8* %assignment, align 2
  %9 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %9, 59
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %10, i32 11)
  br label %if.end19

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %11, 44
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %12, i32 5)
  br label %if.end18

if.else12:                                        ; preds = %if.else
  %13 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %13, 125
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else12
  %14 = load i8, i8* %inEnumBody, align 1
  %tobool15 = trunc i8 %14 to i1
  br i1 %tobool15, label %if.then17, label %if.end

if.then17:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %15)
  %16 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %16, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.then17, %land.lhs.true, %if.else12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then8
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %17, i32 0, i32 0
  %18 = load i32, i32* %scope, align 8
  %cmp20 = icmp eq i32 %18, 2
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope23 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %19, i32 0, i32 0
  store i32 0, i32* %scope23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %cond.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToMatch(i8* %pair) #0 {
entry:
  %pair.addr = alloca i8*, align 8
  %braceMatching = alloca i8, align 1
  %braceFormatting = alloca i8, align 1
  %initialLevel = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %inputLineNumber = alloca i64, align 8
  %matchLevel = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %pair, i8** %pair.addr, align 8
  %0 = load i8*, i8** %pair.addr, align 8
  %call = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %0)
  %cmp = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %braceMatching, align 1
  %call1 = call zeroext i1 @cppIsBraceFormat()
  br i1 %call1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %braceMatching, align 1
  %tobool = trunc i8 %1 to i1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %frombool2 = zext i1 %2 to i8
  store i8 %frombool2, i8* %braceFormatting, align 1
  %call3 = call i32 @cppGetDirectiveNestLevel()
  store i32 %call3, i32* %initialLevel, align 4
  %3 = load i8*, i8** %pair.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %begin, align 4
  %5 = load i8*, i8** %pair.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %6 to i32
  store i32 %conv5, i32* %end, align 4
  %call6 = call i64 @getInputLineNumber()
  store i64 %call6, i64* %inputLineNumber, align 8
  store i32 1, i32* %matchLevel, align 4
  store i32 0, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %land.end
  %7 = load i32, i32* %matchLevel, align 4
  %cmp7 = icmp sgt i32 %7, 0
  br i1 %cmp7, label %land.rhs9, label %land.end13

land.rhs9:                                        ; preds = %while.cond
  %call10 = call i32 @skipToNonWhite()
  store i32 %call10, i32* %c, align 4
  %cmp11 = icmp ne i32 %call10, -1
  br label %land.end13

land.end13:                                       ; preds = %land.rhs9, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs9 ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end13
  %9 = load i8, i8* @CollectingSignature, align 1
  %tobool14 = trunc i8 %9 to i1
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %11 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load i32, i32* %c, align 4
  %13 = load i32, i32* %begin, align 4
  %cmp15 = icmp eq i32 %12, %13
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end
  %14 = load i32, i32* %matchLevel, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %matchLevel, align 4
  %15 = load i8, i8* %braceFormatting, align 1
  %tobool18 = trunc i8 %15 to i1
  br i1 %tobool18, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.then17
  %call20 = call i32 @cppGetDirectiveNestLevel()
  %16 = load i32, i32* %initialLevel, align 4
  %cmp21 = icmp ne i32 %call20, %16
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  call void @skipToFormattedBraceMatch()
  br label %while.end

if.end24:                                         ; preds = %land.lhs.true, %if.then17
  br label %if.end37

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %end, align 4
  %cmp25 = icmp eq i32 %17, %18
  br i1 %cmp25, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.else
  %19 = load i32, i32* %matchLevel, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %matchLevel, align 4
  %20 = load i8, i8* %braceFormatting, align 1
  %tobool28 = trunc i8 %20 to i1
  br i1 %tobool28, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %if.then27
  %call31 = call i32 @cppGetDirectiveNestLevel()
  %21 = load i32, i32* %initialLevel, align 4
  %cmp32 = icmp ne i32 %call31, %21
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true30
  call void @skipToFormattedBraceMatch()
  br label %while.end

if.end35:                                         ; preds = %land.lhs.true30, %if.then27
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end24
  br label %while.cond

while.end:                                        ; preds = %if.then34, %if.then23, %land.end13
  %22 = load i32, i32* %c, align 4
  %cmp38 = icmp eq i32 %22, -1
  br i1 %cmp38, label %if.then40, label %if.end45

if.then40:                                        ; preds = %while.end
  %call41 = call i8* @getInputFileName()
  %23 = load i32, i32* %begin, align 4
  %24 = load i64, i64* %inputLineNumber, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i64 0, i64 0), i8* %call41, i32 %23, i64 %24)
  %25 = load i8, i8* %braceMatching, align 1
  %tobool42 = trunc i8 %25 to i1
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then40
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 3) #7
  unreachable

if.else44:                                        ; preds = %if.then40
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 2) #7
  unreachable

if.end45:                                         ; preds = %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseGeneralToken(%struct.sStatementInfo* %st, i32 %c) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %c.addr = alloca i32, align 4
  %prev = alloca %struct.sTokenInfo*, align 8
  %c2 = alloca i32, align 4
  %c245 = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %0, i32 1)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %prev, align 8
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp slt i32 %2, 128
  br i1 %cmp1, label %land.lhs.true2, label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %c.addr, align 4
  %call3 = call i32 @isalpha(i32 %3) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i32, i32* %c.addr, align 4
  %cmp4 = icmp eq i32 %4, 95
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp eq i32 %5, 126
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load i32, i32* %c.addr, align 4
  %cmp8 = icmp eq i32 %6, 36
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %7 = load i32, i32* @Lang_java, align 4
  %call10 = call zeroext i1 @isInputLanguage(i32 %7)
  br i1 %call10, label %land.lhs.true11, label %if.else

land.lhs.true11:                                  ; preds = %lor.lhs.false9
  %8 = load i32, i32* %c.addr, align 4
  %cmp12 = icmp ne i32 %8, -1
  br i1 %cmp12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %9 = load i32, i32* %c.addr, align 4
  %cmp14 = icmp uge i32 %9, 192
  br i1 %cmp14, label %land.lhs.true15, label %if.else

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %10 = load i32, i32* %c.addr, align 4
  %cmp16 = icmp ule i32 %10, 255
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true15, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %land.lhs.true2
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %12 = load i32, i32* %c.addr, align 4
  call void @parseIdentifier(%struct.sStatementInfo* %11, i32 %12)
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %13, i32 0, i32 13
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %14, i32 0, i32 0
  %15 = load i32, i32* %type, align 8
  %cmp17 = icmp eq i32 %15, 8
  br i1 %cmp17, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %if.then
  %16 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %16, i32 0, i32 12
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %17, i32 0, i32 11
  %18 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token, i64 0, i64 %idxprom
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  %type19 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 0
  %20 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %20, 8
  br i1 %cmp20, label %land.lhs.true21, label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 0
  %22 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %22, 8
  br i1 %cmp23, label %if.then24, label %if.end

if.then24:                                        ; preds = %land.lhs.true21
  %23 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context25 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %23, i32 0, i32 13
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context25, align 8
  call void @initToken(%struct.sTokenInfo* %24)
  br label %if.end

if.end:                                           ; preds = %if.then24, %land.lhs.true21, %land.lhs.true18, %if.then
  br label %if.end70

if.else:                                          ; preds = %land.lhs.true15, %land.lhs.true13, %land.lhs.true11, %lor.lhs.false9
  %25 = load i32, i32* %c.addr, align 4
  %cmp26 = icmp eq i32 %25, 46
  br i1 %cmp26, label %if.then29, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.else
  %26 = load i32, i32* %c.addr, align 4
  %cmp28 = icmp eq i32 %26, 45
  br i1 %cmp28, label %if.then29, label %if.else40

if.then29:                                        ; preds = %lor.lhs.false27, %if.else
  %27 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %assignment = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %27, i32 0, i32 8
  %28 = load i8, i8* %assignment, align 2
  %tobool30 = trunc i8 %28 to i1
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.then29
  %29 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %notVariable = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %29, i32 0, i32 9
  store i8 1, i8* %notVariable, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29
  %30 = load i32, i32* %c.addr, align 4
  %cmp33 = icmp eq i32 %30, 45
  br i1 %cmp33, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.end32
  %call35 = call i32 @cppGetc()
  store i32 %call35, i32* %c2, align 4
  %31 = load i32, i32* %c2, align 4
  %cmp36 = icmp ne i32 %31, 62
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then34
  %32 = load i32, i32* %c2, align 4
  call void @cppUngetc(i32 %32)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.then34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end32
  br label %if.end69

if.else40:                                        ; preds = %lor.lhs.false27
  %33 = load i32, i32* %c.addr, align 4
  %cmp41 = icmp eq i32 %33, 33
  br i1 %cmp41, label %if.then44, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.else40
  %34 = load i32, i32* %c.addr, align 4
  %cmp43 = icmp eq i32 %34, 62
  br i1 %cmp43, label %if.then44, label %if.else50

if.then44:                                        ; preds = %lor.lhs.false42, %if.else40
  %call46 = call i32 @cppGetc()
  store i32 %call46, i32* %c245, align 4
  %35 = load i32, i32* %c245, align 4
  %cmp47 = icmp ne i32 %35, 61
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then44
  %36 = load i32, i32* %c245, align 4
  call void @cppUngetc(i32 %36)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then44
  br label %if.end68

if.else50:                                        ; preds = %lor.lhs.false42
  %37 = load i32, i32* %c.addr, align 4
  %cmp51 = icmp eq i32 %37, 64
  br i1 %cmp51, label %land.lhs.true52, label %if.else55

land.lhs.true52:                                  ; preds = %if.else50
  %38 = load i32, i32* @Lang_java, align 4
  %call53 = call zeroext i1 @isInputLanguage(i32 %38)
  br i1 %call53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %land.lhs.true52
  %39 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @parseJavaAnnotation(%struct.sStatementInfo* %39)
  br label %if.end67

if.else55:                                        ; preds = %land.lhs.true52, %if.else50
  %40 = load i32, i32* %c.addr, align 4
  %cmp56 = icmp eq i32 %40, 338
  br i1 %cmp56, label %land.lhs.true57, label %land.end

land.lhs.true57:                                  ; preds = %if.else55
  %41 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %41, i32 0, i32 3
  %42 = load i8, i8* %haveQualifyingName, align 1
  %tobool58 = trunc i8 %42 to i1
  br i1 %tobool58, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true57
  %43 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %scope, align 8
  %cmp59 = icmp eq i32 %44, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true57, %if.else55
  %45 = phi i1 [ false, %land.lhs.true57 ], [ false, %if.else55 ], [ %cmp59, %land.rhs ]
  br i1 %45, label %if.then60, label %if.else62

if.then60:                                        ; preds = %land.end
  %46 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %46, i32 0, i32 1
  store i32 11, i32* %declaration, align 4
  %47 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope61 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %47, i32 0, i32 0
  store i32 0, i32* %scope61, align 8
  br label %if.end66

if.else62:                                        ; preds = %land.end
  %48 = load i32, i32* %c.addr, align 4
  %cmp63 = icmp eq i32 %48, 338
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.else62
  %49 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %49, i32 0)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.else62
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then60
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then54
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end49
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end39
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end
  ret void
}

declare i32 @cppGetc() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #5

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
define internal void @initParenInfo(%struct.sParenInfo* %info) #0 {
entry:
  %info.addr = alloca %struct.sParenInfo*, align 8
  store %struct.sParenInfo* %info, %struct.sParenInfo** %info.addr, align 8
  %0 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isPointer = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %0, i32 0, i32 0
  store i8 0, i8* %isPointer, align 4
  %1 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isParamList = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %1, i32 0, i32 1
  store i8 1, i8* %isParamList, align 1
  %2 = load i32, i32* @Lang_c, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %2)
  %3 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %3, i32 0, i32 2
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isKnrParamList, align 2
  %4 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %4, i32 0, i32 3
  store i8 1, i8* %isNameCandidate, align 1
  %5 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %invalidContents = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %5, i32 0, i32 4
  store i8 0, i8* %invalidContents, align 4
  %6 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %nestedArgs = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %6, i32 0, i32 5
  store i8 0, i8* %nestedArgs, align 1
  %7 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %parameterCount = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %7, i32 0, i32 6
  store i32 0, i32* %parameterCount, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @parseParens(%struct.sStatementInfo* %st, %struct.sParenInfo* %info) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %info.addr = alloca %struct.sParenInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %identifierCount = alloca i32, align 4
  %depth = alloca i32, align 4
  %firstChar = alloca i8, align 1
  %nextChar = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %vStringClear_s47 = alloca %struct.sVString*, align 8
  %vStringClear_s140 = alloca %struct.sVString*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sParenInfo* %info, %struct.sParenInfo** %info.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  store i32 0, i32* %identifierCount, align 4
  store i32 1, i32* %depth, align 4
  store i8 1, i8* %firstChar, align 1
  store i32 0, i32* %nextChar, align 4
  store i8 1, i8* @CollectingSignature, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx2, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  call void @vStringPut(%struct.sVString* %8, i32 40)
  %9 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %parameterCount = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %9, i32 0, i32 6
  store i32 1, i32* %parameterCount, align 4
  br label %do.body3

do.body3:                                         ; preds = %land.end, %do.end
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  %10 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %11 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %10, i32 %11)
  %12 = load i32, i32* %c, align 4
  switch i32 %12, label %sw.default [
    i32 94, label %sw.bb
    i32 38, label %sw.bb4
    i32 42, label %sw.bb4
    i32 58, label %sw.bb5
    i32 46, label %sw.bb7
    i32 44, label %sw.bb19
    i32 61, label %sw.bb25
    i32 91, label %sw.bb32
    i32 60, label %sw.bb34
    i32 41, label %sw.bb36
    i32 40, label %sw.bb41
  ]

sw.bb:                                            ; preds = %do.body3
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body3, %do.body3
  %13 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isPointer = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %13, i32 0, i32 0
  store i8 1, i8* %isPointer, align 4
  %14 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %14, i32 0, i32 2
  store i8 0, i8* %isKnrParamList, align 2
  %15 = load i32, i32* %identifierCount, align 4
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb4
  %16 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isParamList = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %16, i32 0, i32 1
  store i8 0, i8* %isParamList, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb4
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @initToken(%struct.sTokenInfo* %17)
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body3
  %18 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList6 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %18, i32 0, i32 2
  store i8 0, i8* %isKnrParamList6, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body3
  %19 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %19, i32 0, i32 3
  store i8 0, i8* %isNameCandidate, align 1
  %call8 = call i32 @cppGetc()
  store i32 %call8, i32* %c, align 4
  %20 = load i32, i32* %c, align 4
  %cmp9 = icmp ne i32 %20, 46
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb7
  %21 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %21)
  %22 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList11 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %22, i32 0, i32 2
  store i8 0, i8* %isKnrParamList11, align 2
  br label %if.end18

if.else:                                          ; preds = %sw.bb7
  %call12 = call i32 @cppGetc()
  store i32 %call12, i32* %c, align 4
  %23 = load i32, i32* %c, align 4
  %cmp13 = icmp ne i32 %23, 46
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else
  %24 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %24)
  %25 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList15 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %25, i32 0, i32 2
  store i8 0, i8* %isKnrParamList15, align 2
  br label %if.end17

if.else16:                                        ; preds = %if.else
  %26 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  call void @vStringCatS(%struct.sVString* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0))
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then10
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.body3
  %27 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate20 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %27, i32 0, i32 3
  store i8 0, i8* %isNameCandidate20, align 1
  %28 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList21 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %28, i32 0, i32 2
  %29 = load i8, i8* %isKnrParamList21, align 2
  %tobool = trunc i8 %29 to i1
  br i1 %tobool, label %if.then22, label %if.end24

if.then22:                                        ; preds = %sw.bb19
  %30 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %parameterCount23 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %30, i32 0, i32 6
  %31 = load i32, i32* %parameterCount23, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %parameterCount23, align 4
  store i32 0, i32* %identifierCount, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %sw.bb19
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.body3
  %32 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList26 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %32, i32 0, i32 2
  store i8 0, i8* %isKnrParamList26, align 2
  %33 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate27 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %33, i32 0, i32 3
  store i8 0, i8* %isNameCandidate27, align 1
  %34 = load i8, i8* %firstChar, align 1
  %tobool28 = trunc i8 %34 to i1
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %sw.bb25
  %35 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isParamList30 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %35, i32 0, i32 1
  store i8 0, i8* %isParamList30, align 1
  %36 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @skipMacro(%struct.sStatementInfo* %36)
  store i32 0, i32* %depth, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %sw.bb25
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.body3
  %37 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList33 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %37, i32 0, i32 2
  store i8 0, i8* %isKnrParamList33, align 2
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0))
  br label %sw.epilog

sw.bb34:                                          ; preds = %do.body3
  %38 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList35 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %38, i32 0, i32 2
  store i8 0, i8* %isKnrParamList35, align 2
  call void @processAngleBracket()
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.body3
  %39 = load i8, i8* %firstChar, align 1
  %tobool37 = trunc i8 %39 to i1
  br i1 %tobool37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %sw.bb36
  %40 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %parameterCount39 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %40, i32 0, i32 6
  store i32 0, i32* %parameterCount39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %sw.bb36
  %41 = load i32, i32* %depth, align 4
  %dec = add i32 %41, -1
  store i32 %dec, i32* %depth, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.body3
  %42 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList42 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %42, i32 0, i32 2
  store i8 0, i8* %isKnrParamList42, align 2
  %43 = load i8, i8* %firstChar, align 1
  %tobool43 = trunc i8 %43 to i1
  br i1 %tobool43, label %if.then44, label %if.else52

if.then44:                                        ; preds = %sw.bb41
  %44 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate45 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %44, i32 0, i32 3
  store i8 0, i8* %isNameCandidate45, align 1
  %45 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %45)
  br label %do.body46

do.body46:                                        ; preds = %if.then44
  %46 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  store %struct.sVString* %46, %struct.sVString** %vStringClear_s47, align 8
  %47 = load %struct.sVString*, %struct.sVString** %vStringClear_s47, align 8
  %length48 = getelementptr inbounds %struct.sVString, %struct.sVString* %47, i32 0, i32 0
  store i64 0, i64* %length48, align 8
  %48 = load %struct.sVString*, %struct.sVString** %vStringClear_s47, align 8
  %buffer49 = getelementptr inbounds %struct.sVString, %struct.sVString* %48, i32 0, i32 2
  %49 = load i8*, i8** %buffer49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %arrayidx50, align 1
  br label %do.end51

do.end51:                                         ; preds = %do.body46
  %50 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @skipMacro(%struct.sStatementInfo* %50)
  store i32 0, i32* %depth, align 4
  %51 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  call void @vStringChop(%struct.sVString* %51)
  br label %if.end68

if.else52:                                        ; preds = %sw.bb41
  %52 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %52, i32 0, i32 0
  %53 = load i32, i32* %type, align 8
  %cmp53 = icmp eq i32 %53, 10
  br i1 %cmp53, label %if.then54, label %if.else65

if.then54:                                        ; preds = %if.else52
  %call55 = call i32 @skipToNonWhite()
  store i32 %call55, i32* %c, align 4
  %54 = load i32, i32* %c, align 4
  %cmp56 = icmp eq i32 %54, 42
  br i1 %cmp56, label %if.then57, label %if.else63

if.then57:                                        ; preds = %if.then54
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  %call58 = call i32 @skipToNonWhite()
  store i32 %call58, i32* %c, align 4
  %55 = load i32, i32* %c, align 4
  %cmp59 = icmp eq i32 %55, 40
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then57
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %if.end62

if.else61:                                        ; preds = %if.then57
  %56 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %56)
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  br label %if.end64

if.else63:                                        ; preds = %if.then54
  %57 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %57)
  call void @cppUngetc(i32 40)
  %58 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %nestedArgs = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %58, i32 0, i32 5
  store i8 1, i8* %nestedArgs, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.end62
  br label %if.end67

if.else65:                                        ; preds = %if.else52
  %59 = load i32, i32* %depth, align 4
  %inc66 = add i32 %59, 1
  store i32 %inc66, i32* %depth, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.end64
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %do.end51
  br label %sw.epilog

sw.default:                                       ; preds = %do.body3
  %60 = load i32, i32* %c, align 4
  %cmp69 = icmp eq i32 %60, 64
  br i1 %cmp69, label %land.lhs.true, label %if.else72

land.lhs.true:                                    ; preds = %sw.default
  %61 = load i32, i32* @Lang_java, align 4
  %call70 = call zeroext i1 @isInputLanguage(i32 %61)
  br i1 %call70, label %if.then71, label %if.else72

if.then71:                                        ; preds = %land.lhs.true
  %62 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @parseJavaAnnotation(%struct.sStatementInfo* %62)
  br label %if.end116

if.else72:                                        ; preds = %land.lhs.true, %sw.default
  %63 = load i32, i32* %c, align 4
  %cmp73 = icmp sge i32 %63, 0
  br i1 %cmp73, label %land.lhs.true74, label %lor.lhs.false

land.lhs.true74:                                  ; preds = %if.else72
  %64 = load i32, i32* %c, align 4
  %cmp75 = icmp slt i32 %64, 128
  br i1 %cmp75, label %land.lhs.true76, label %lor.lhs.false

land.lhs.true76:                                  ; preds = %land.lhs.true74
  %65 = load i32, i32* %c, align 4
  %call77 = call i32 @isalpha(i32 %65) #8
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true76, %land.lhs.true74, %if.else72
  %66 = load i32, i32* %c, align 4
  %cmp79 = icmp eq i32 %66, 95
  br i1 %cmp79, label %if.then84, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false
  %67 = load i32, i32* %c, align 4
  %cmp81 = icmp eq i32 %67, 126
  br i1 %cmp81, label %if.then84, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false80
  %68 = load i32, i32* %c, align 4
  %cmp83 = icmp eq i32 %68, 36
  br i1 %cmp83, label %if.then84, label %if.else111

if.then84:                                        ; preds = %lor.lhs.false82, %lor.lhs.false80, %lor.lhs.false, %land.lhs.true76
  %69 = load i32, i32* %identifierCount, align 4
  %inc85 = add i32 %69, 1
  store i32 %inc85, i32* %identifierCount, align 4
  %cmp86 = icmp ugt i32 %inc85, 1
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.then84
  %70 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList88 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %70, i32 0, i32 2
  store i8 0, i8* %isKnrParamList88, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.then84
  %71 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %72 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %71, i32 %72)
  %73 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type90 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %73, i32 0, i32 0
  %74 = load i32, i32* %type90, align 8
  %cmp91 = icmp eq i32 %74, 8
  br i1 %cmp91, label %land.lhs.true92, label %if.else97

land.lhs.true92:                                  ; preds = %if.end89
  %75 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate93 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %75, i32 0, i32 3
  %76 = load i8, i8* %isNameCandidate93, align 1
  %tobool94 = trunc i8 %76 to i1
  br i1 %tobool94, label %if.then95, label %if.else97

if.then95:                                        ; preds = %land.lhs.true92
  %77 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type96 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %77, i32 0, i32 0
  store i32 10, i32* %type96, align 8
  br label %if.end110

if.else97:                                        ; preds = %land.lhs.true92, %if.end89
  %78 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type98 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %78, i32 0, i32 0
  %79 = load i32, i32* %type98, align 8
  %cmp99 = icmp eq i32 %79, 7
  br i1 %cmp99, label %if.then100, label %if.end109

if.then100:                                       ; preds = %if.else97
  %80 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %80, i32 0, i32 1
  %81 = load i32, i32* %keyword, align 4
  %cmp101 = icmp ne i32 %81, 15
  br i1 %cmp101, label %land.lhs.true102, label %if.end108

land.lhs.true102:                                 ; preds = %if.then100
  %82 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword103 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %82, i32 0, i32 1
  %83 = load i32, i32* %keyword103, align 4
  %cmp104 = icmp ne i32 %83, 105
  br i1 %cmp104, label %if.then105, label %if.end108

if.then105:                                       ; preds = %land.lhs.true102
  %84 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList106 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %84, i32 0, i32 2
  store i8 0, i8* %isKnrParamList106, align 2
  %85 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate107 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %85, i32 0, i32 3
  store i8 0, i8* %isNameCandidate107, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %land.lhs.true102, %if.then100
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.else97
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then95
  br label %if.end115

if.else111:                                       ; preds = %lor.lhs.false82
  %86 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isParamList112 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %86, i32 0, i32 1
  store i8 0, i8* %isParamList112, align 1
  %87 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList113 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %87, i32 0, i32 2
  store i8 0, i8* %isKnrParamList113, align 2
  %88 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate114 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %88, i32 0, i32 3
  store i8 0, i8* %isNameCandidate114, align 1
  %89 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %invalidContents = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %89, i32 0, i32 4
  store i8 1, i8* %invalidContents, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.else111, %if.end110
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then71
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end116, %if.end68, %if.end40, %sw.bb34, %sw.bb32, %if.end31, %if.end24, %if.end18, %sw.bb5, %if.end, %sw.bb
  store i8 0, i8* %firstChar, align 1
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %90 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %nestedArgs117 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %90, i32 0, i32 5
  %91 = load i8, i8* %nestedArgs117, align 1
  %tobool118 = trunc i8 %91 to i1
  br i1 %tobool118, label %land.end, label %land.lhs.true119

land.lhs.true119:                                 ; preds = %do.cond
  %92 = load i32, i32* %depth, align 4
  %cmp120 = icmp ugt i32 %92, 0
  br i1 %cmp120, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true119
  %93 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList121 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %93, i32 0, i32 2
  %94 = load i8, i8* %isKnrParamList121, align 2
  %tobool122 = trunc i8 %94 to i1
  br i1 %tobool122, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %95 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate123 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %95, i32 0, i32 3
  %96 = load i8, i8* %isNameCandidate123, align 1
  %tobool124 = trunc i8 %96 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %97 = phi i1 [ true, %land.rhs ], [ %tobool124, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true119, %do.cond
  %98 = phi i1 [ false, %land.lhs.true119 ], [ false, %do.cond ], [ %97, %lor.end ]
  br i1 %98, label %do.body3, label %do.end125

do.end125:                                        ; preds = %land.end
  %99 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %nestedArgs126 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %99, i32 0, i32 5
  %100 = load i8, i8* %nestedArgs126, align 1
  %tobool127 = trunc i8 %100 to i1
  br i1 %tobool127, label %if.end131, label %if.then128

if.then128:                                       ; preds = %do.end125
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then128
  %101 = load i32, i32* %depth, align 4
  %cmp129 = icmp ugt i32 %101, 0
  br i1 %cmp129, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  %102 = load i32, i32* %depth, align 4
  %dec130 = add i32 %102, -1
  store i32 %dec130, i32* %depth, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end131

if.end131:                                        ; preds = %while.end, %do.end125
  %103 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isNameCandidate132 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %103, i32 0, i32 3
  %104 = load i8, i8* %isNameCandidate132, align 1
  %tobool133 = trunc i8 %104 to i1
  br i1 %tobool133, label %if.end135, label %if.then134

if.then134:                                       ; preds = %if.end131
  %105 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @initToken(%struct.sTokenInfo* %105)
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end131
  %106 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList136 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %106, i32 0, i32 2
  %107 = load i8, i8* %isKnrParamList136, align 2
  %tobool137 = trunc i8 %107 to i1
  br i1 %tobool137, label %if.then138, label %if.end146

if.then138:                                       ; preds = %if.end135
  br label %do.body139

do.body139:                                       ; preds = %if.then138
  %108 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  store %struct.sVString* %108, %struct.sVString** %vStringClear_s140, align 8
  %109 = load %struct.sVString*, %struct.sVString** %vStringClear_s140, align 8
  %length141 = getelementptr inbounds %struct.sVString, %struct.sVString* %109, i32 0, i32 0
  store i64 0, i64* %length141, align 8
  %110 = load %struct.sVString*, %struct.sVString** %vStringClear_s140, align 8
  %buffer142 = getelementptr inbounds %struct.sVString, %struct.sVString* %110, i32 0, i32 2
  %111 = load i8*, i8** %buffer142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 0, i8* %arrayidx143, align 1
  br label %do.end145

do.end145:                                        ; preds = %do.body139
  br label %if.end146

if.end146:                                        ; preds = %do.end145, %if.end135
  store i8 0, i8* @CollectingSignature, align 1
  %112 = load i32, i32* %nextChar, align 4
  ret i32 %112
}

declare void @cppUngetc(i32) #1

declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processName(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 2
  %1 = load i8, i8* %gotName, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %declaration, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 1
  store i32 1, i32* %declaration1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotName2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 2
  store i8 1, i8* %gotName2, align 8
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 3
  store i8 1, i8* %haveQualifyingName, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @copyToken(%struct.sTokenInfo* %dest, %struct.sTokenInfo* %src) #0 {
entry:
  %dest.addr = alloca %struct.sTokenInfo*, align 8
  %src.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sTokenInfo* %dest, %struct.sTokenInfo** %dest.addr, align 8
  store %struct.sTokenInfo* %src, %struct.sTokenInfo** %src.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %type1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  store i32 %1, i32* %type1, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %3, i32 0, i32 1
  %4 = load i32, i32* %keyword, align 4
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %keyword2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 1
  store i32 %4, i32* %keyword2, align 4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 4
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %filePosition3 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 4
  %8 = bitcast %struct._MIOPos* %filePosition to i8*
  %9 = bitcast %struct._MIOPos* %filePosition3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 3
  %11 = load i64, i64* %lineNumber, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %lineNumber4 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 3
  store i64 %11, i64* %lineNumber4, align 8
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %dest.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %name, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %src.addr, align 8
  %name5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %15, i32 0, i32 2
  %16 = load %struct.sVString*, %struct.sVString** %name5, align 8
  call void @vStringCopy(%struct.sVString* %14, %struct.sVString* %16)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @analyzePostParens(%struct.sStatementInfo* %st, %struct.sParenInfo* %info) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %info.addr = alloca %struct.sParenInfo*, align 8
  %inputLineNumber = alloca i64, align 8
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sParenInfo* %info, %struct.sParenInfo** %info.addr, align 8
  %call = call i64 @getInputLineNumber()
  store i64 %call, i64* %inputLineNumber, align 8
  %call1 = call i32 @skipToNonWhite()
  store i32 %call1, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %0)
  %1 = load i32, i32* %c, align 4
  %call2 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i32 %1)
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end15

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @Lang_java, align 4
  %call3 = call zeroext i1 @isInputLanguage(i32 %2)
  br i1 %call3, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 17
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp5 = icmp eq %struct.sStatementInfo* %4, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  br i1 false, label %if.end, label %if.then8

cond.false:                                       ; preds = %if.then4
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent6 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 17
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent6, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 1
  %7 = load i32, i32* %declaration, align 4
  %cmp7 = icmp eq i32 %7, 24
  br i1 %cmp7, label %if.end, label %if.then8

if.then8:                                         ; preds = %cond.false, %cond.true
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @skipJavaThrows(%struct.sStatementInfo* %8)
  br label %if.end

if.end:                                           ; preds = %if.then8, %cond.false, %cond.true
  br label %if.end14

if.else9:                                         ; preds = %if.else
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %10 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %call10 = call zeroext i1 @skipPostArgumentStuff(%struct.sStatementInfo* %9, %struct.sParenInfo* %10)
  br i1 %call10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.else9
  %call12 = call i8* @getInputFileName()
  %11 = load i64, i64* %inputLineNumber, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.51, i64 0, i64 0), i8* %call12, i64 %11)
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 2) #7
  unreachable

if.end13:                                         ; preds = %if.else9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  ret void
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipMacro(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %prev2 = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %0, i32 2)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %prev2, align 8
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @retardToken(%struct.sStatementInfo* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  ret void
}

declare void @vStringChop(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseJavaAnnotation(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %5 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %4, i32 %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 1
  %7 = load i32, i32* %keyword, align 4
  %cmp = icmp eq i32 %7, 46
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processAnnotation(%struct.sStatementInfo* %8)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @skipParens()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIdentifier(%struct.sTokenInfo* %token, i32 %firstChar) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %firstChar.addr = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %first = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %firstChar, i32* %firstChar.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %name1, align 8
  store %struct.sVString* %1, %struct.sVString** %name, align 8
  %2 = load i32, i32* %firstChar.addr, align 4
  store i32 %2, i32* %c, align 4
  store i8 1, i8* %first, align 1
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @initToken(%struct.sTokenInfo* %3)
  %4 = load i32, i32* @Lang_cpp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %4)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %firstChar.addr, align 4
  %cmp = icmp eq i32 %5, 126
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.sVString*, %struct.sVString** %name, align 8
  %7 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %6, i32 %7)
  %call2 = call i32 @skipToNonWhite()
  store i32 %call2, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %lor.end24, %if.end
  %8 = load %struct.sVString*, %struct.sVString** %name, align 8
  %9 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %8, i32 %9)
  %10 = load i8, i8* @CollectingSignature, align 1
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %if.then3, label %if.end7

if.then3:                                         ; preds = %do.body
  %11 = load i8, i8* %first, align 1
  %tobool4 = trunc i8 %11 to i1
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %13 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %12, i32 %13)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  store i8 0, i8* %first, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %do.body
  %call8 = call i32 @cppGetc()
  store i32 %call8, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end7
  %14 = load i32, i32* %c, align 4
  %call9 = call i32 @isalnum(i32 %14) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.end24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %15 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %15, 95
  br i1 %cmp11, label %lor.end24, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %16 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %16, 36
  br i1 %cmp13, label %lor.end24, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false12
  %17 = load i32, i32* @Lang_java, align 4
  %call14 = call zeroext i1 @isInputLanguage(i32 %17)
  br i1 %call14, label %land.rhs, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.rhs
  %18 = load i32, i32* @Lang_csharp, align 4
  %call16 = call zeroext i1 @isInputLanguage(i32 %18)
  br i1 %call16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false15, %lor.rhs
  %19 = load i32, i32* %c, align 4
  %cmp17 = icmp ne i32 %19, -1
  br i1 %cmp17, label %land.lhs.true18, label %lor.rhs22

land.lhs.true18:                                  ; preds = %land.rhs
  %20 = load i32, i32* %c, align 4
  %cmp19 = icmp uge i32 %20, 192
  br i1 %cmp19, label %land.lhs.true20, label %lor.rhs22

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %21 = load i32, i32* %c, align 4
  %cmp21 = icmp ule i32 %21, 255
  br i1 %cmp21, label %lor.end, label %lor.rhs22

lor.rhs22:                                        ; preds = %land.lhs.true20, %land.lhs.true18, %land.rhs
  %22 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %22, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs22, %land.lhs.true20
  %23 = phi i1 [ true, %land.lhs.true20 ], [ %cmp23, %lor.rhs22 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false15
  %24 = phi i1 [ false, %lor.lhs.false15 ], [ %23, %lor.end ]
  br label %lor.end24

lor.end24:                                        ; preds = %land.end, %lor.lhs.false12, %lor.lhs.false, %do.cond
  %25 = phi i1 [ true, %lor.lhs.false12 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %24, %land.end ]
  br i1 %25, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end24
  %26 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %26)
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @analyzeIdentifier(%struct.sTokenInfo* %27)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @retardToken(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 11
  %1 = load i32, i32* %tokenIndex, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 11
  store i32 2, i32* %tokenIndex1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 11
  %4 = load i32, i32* %tokenIndex2, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %tokenIndex2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %5, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processAnnotation(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 1
  store i32 24, i32* %declaration, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipParens() #0 {
entry:
  %c = alloca i32, align 4
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @analyzeIdentifier(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %name = alloca i8*, align 8
  %replacement = alloca %struct.sVString*, align 8
  %macro = alloca %struct.sCppMacroInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %name1, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 2
  %2 = load i8*, i8** %buffer, align 8
  store i8* %2, i8** %name, align 8
  store %struct.sVString* null, %struct.sVString** %replacement, align 8
  %3 = load i32, i32* @Lang_java, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %3)
  br i1 %call, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %name, align 8
  %call2 = call %struct.sCppMacroInfo* @cppFindMacro(i8* %4)
  store %struct.sCppMacroInfo* %call2, %struct.sCppMacroInfo** %macro, align 8
  %5 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %macro, align 8
  %tobool = icmp ne %struct.sCppMacroInfo* %5, null
  br i1 %tobool, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.then
  %6 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %macro, align 8
  %hasParameterList = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %6, i32 0, i32 0
  %7 = load i8, i8* %hasParameterList, align 8
  %tobool4 = trunc i8 %7 to i1
  br i1 %tobool4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then3
  %call6 = call i32 @skipToNonWhite()
  store i32 %call6, i32* %c, align 4
  %8 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %8, 40
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  %9 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %macro, align 8
  %replacements = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %9, i32 0, i32 1
  %10 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %replacements, align 8
  %tobool9 = icmp ne %struct.sCppMacroReplacementPartInfo* %10, null
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %11 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %macro, align 8
  %call11 = call %struct.sVString* @cppBuildMacroReplacement(%struct.sCppMacroInfo* %11, i8** null, i32 0)
  store %struct.sVString* %call11, %struct.sVString** %replacement, align 8
  %12 = load %struct.sVString*, %struct.sVString** %replacement, align 8
  %tobool12 = icmp ne %struct.sVString* %12, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %13 = load %struct.sVString*, %struct.sVString** %replacement, align 8
  %buffer13 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %name, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end8
  store i8* null, i8** %name, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %cond.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %15 = load i8*, i8** %name, align 8
  %tobool17 = icmp ne i8* %15, null
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end16
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @initToken(%struct.sTokenInfo* %16)
  %17 = load %struct.sVString*, %struct.sVString** %replacement, align 8
  %tobool19 = icmp ne %struct.sVString* %17, null
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  %18 = load %struct.sVString*, %struct.sVString** %replacement, align 8
  call void @vStringDelete(%struct.sVString* %18)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  br label %if.end32

if.end22:                                         ; preds = %if.end16
  %19 = load i8*, i8** %name, align 8
  %call23 = call i32 @analyzeKeyword(i8* %19)
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %20, i32 0, i32 1
  store i32 %call23, i32* %keyword, align 4
  %21 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword24 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %21, i32 0, i32 1
  %22 = load i32, i32* %keyword24, align 4
  %cmp25 = icmp eq i32 %22, -1
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end22
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  store i32 8, i32* %type, align 8
  br label %if.end29

if.else27:                                        ; preds = %if.end22
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 0
  store i32 7, i32* %type28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  %25 = load %struct.sVString*, %struct.sVString** %replacement, align 8
  %tobool30 = icmp ne %struct.sVString* %25, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  %26 = load %struct.sVString*, %struct.sVString** %replacement, align 8
  call void @vStringDelete(%struct.sVString* %26)
  br label %if.end32

if.end32:                                         ; preds = %if.end21, %if.then31, %if.end29
  ret void
}

declare %struct.sCppMacroInfo* @cppFindMacro(i8*) #1

declare %struct.sVString* @cppBuildMacroReplacement(%struct.sCppMacroInfo*, i8**, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @analyzeKeyword(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @getInputLanguage()
  %call1 = call i32 @lookupKeyword(i8* %0, i32 %call)
  store i32 %call1, i32* %id, align 4
  %1 = load i32, i32* %id, align 4
  ret i32 %1
}

declare i32 @lookupKeyword(i8*, i32) #1

declare i32 @getInputLanguage() #1

declare void @vStringCopy(%struct.sVString*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipJavaThrows(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %c, align 4
  %cmp2 = icmp slt i32 %5, 128
  br i1 %cmp2, label %land.lhs.true3, label %lor.lhs.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load i32, i32* %c, align 4
  %call4 = call i32 @isalpha(i32 %6) #8
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %7 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %7, 95
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %8, 126
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %9 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %9, 36
  br i1 %cmp9, label %if.then, label %if.end30

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %land.lhs.true3
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %11 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %10, i32 %11)
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 1
  %13 = load i32, i32* %keyword, align 4
  %cmp10 = icmp eq i32 %13, 90
  br i1 %cmp10, label %if.then11, label %if.end29

if.then11:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then11
  %call12 = call i32 @skipToNonWhite()
  store i32 %call12, i32* %c, align 4
  %14 = load i32, i32* %c, align 4
  %cmp13 = icmp sge i32 %14, 0
  br i1 %cmp13, label %land.lhs.true14, label %lor.lhs.false19

land.lhs.true14:                                  ; preds = %do.body
  %15 = load i32, i32* %c, align 4
  %cmp15 = icmp slt i32 %15, 128
  br i1 %cmp15, label %land.lhs.true16, label %lor.lhs.false19

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %16 = load i32, i32* %c, align 4
  %call17 = call i32 @isalpha(i32 %16) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true16, %land.lhs.true14, %do.body
  %17 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %17, 95
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %18 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %18, 126
  br i1 %cmp22, label %if.then25, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %19 = load i32, i32* %c, align 4
  %cmp24 = icmp eq i32 %19, 36
  br i1 %cmp24, label %if.then25, label %if.end

if.then25:                                        ; preds = %lor.lhs.false23, %lor.lhs.false21, %lor.lhs.false19, %land.lhs.true16
  %20 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %21 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %20, i32 %21)
  %call26 = call i32 @skipToNonWhite()
  store i32 %call26, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then25, %lor.lhs.false23
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %22 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %22, 46
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %23 = load i32, i32* %c, align 4
  %cmp28 = icmp eq i32 %23, 44
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %24 = phi i1 [ true, %do.cond ], [ %cmp28, %lor.rhs ]
  br i1 %24, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.then
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false8
  %25 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %25)
  %26 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %26, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @skipPostArgumentStuff(%struct.sStatementInfo* %st, %struct.sParenInfo* %info) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %info.addr = alloca %struct.sParenInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %parameters = alloca i32, align 4
  %elementCount = alloca i32, align 4
  %restart = alloca i8, align 1
  %end = alloca i8, align 1
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sParenInfo* %info, %struct.sParenInfo** %info.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %4 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %parameterCount = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %4, i32 0, i32 6
  %5 = load i32, i32* %parameterCount, align 4
  store i32 %5, i32* %parameters, align 4
  store i32 0, i32* %elementCount, align 4
  store i8 0, i8* %restart, align 1
  store i8 0, i8* %end, align 1
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i32, i32* %c, align 4
  switch i32 %6, label %sw.default [
    i32 41, label %sw.bb
    i32 58, label %sw.bb2
    i32 91, label %sw.bb3
    i32 61, label %sw.bb4
    i32 123, label %sw.bb5
    i32 125, label %sw.bb6
    i32 40, label %sw.bb7
    i32 59, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.body
  br label %sw.epilog70

sw.bb2:                                           ; preds = %do.body
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @skipMemIntializerList(%struct.sTokenInfo* %7)
  br label %sw.epilog70

sw.bb3:                                           ; preds = %do.body
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0))
  br label %sw.epilog70

sw.bb4:                                           ; preds = %do.body
  %8 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %8)
  store i8 1, i8* %end, align 1
  br label %sw.epilog70

sw.bb5:                                           ; preds = %do.body
  %9 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %9)
  store i8 1, i8* %end, align 1
  br label %sw.epilog70

sw.bb6:                                           ; preds = %do.body
  %10 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %10)
  store i8 1, i8* %end, align 1
  br label %sw.epilog70

sw.bb7:                                           ; preds = %do.body
  %11 = load i32, i32* %elementCount, align 4
  %cmp = icmp ugt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb7
  %12 = load i32, i32* %elementCount, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %elementCount, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb7
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %sw.epilog70

sw.bb8:                                           ; preds = %do.body
  %13 = load i32, i32* %parameters, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb8
  %14 = load i32, i32* %elementCount, align 4
  %cmp10 = icmp ult i32 %14, 2
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %lor.lhs.false, %sw.bb8
  %15 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %15)
  store i8 1, i8* %end, align 1
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %parameters, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* %parameters, align 4
  %cmp12 = icmp eq i32 %dec, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  store i8 1, i8* %end, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then11
  br label %sw.epilog70

sw.default:                                       ; preds = %do.body
  %17 = load i32, i32* %c, align 4
  %cmp16 = icmp sge i32 %17, 0
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %sw.default
  %18 = load i32, i32* %c, align 4
  %cmp17 = icmp slt i32 %18, 128
  br i1 %cmp17, label %land.lhs.true18, label %lor.lhs.false20

land.lhs.true18:                                  ; preds = %land.lhs.true
  %19 = load i32, i32* %c, align 4
  %call19 = call i32 @isalpha(i32 %19) #8
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then26, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true18, %land.lhs.true, %sw.default
  %20 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %20, 95
  br i1 %cmp21, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %21 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %21, 126
  br i1 %cmp23, label %if.then26, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %22 = load i32, i32* %c, align 4
  %cmp25 = icmp eq i32 %22, 36
  br i1 %cmp25, label %if.then26, label %if.end69

if.then26:                                        ; preds = %lor.lhs.false24, %lor.lhs.false22, %lor.lhs.false20, %land.lhs.true18
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %24 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %23, i32 %24)
  %25 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %keyword, align 4
  switch i32 %26, label %sw.default40 [
    i32 1, label %sw.bb27
    i32 89, label %sw.bb28
    i32 38, label %sw.bb29
    i32 94, label %sw.bb33
    i32 60, label %sw.bb34
    i32 15, label %sw.bb35
    i32 105, label %sw.bb35
    i32 0, label %sw.bb39
    i32 11, label %sw.bb39
    i32 13, label %sw.bb39
    i32 26, label %sw.bb39
    i32 27, label %sw.bb39
    i32 34, label %sw.bb39
    i32 41, label %sw.bb39
    i32 54, label %sw.bb39
    i32 55, label %sw.bb39
    i32 56, label %sw.bb39
    i32 57, label %sw.bb39
    i32 62, label %sw.bb39
    i32 64, label %sw.bb39
    i32 70, label %sw.bb39
    i32 72, label %sw.bb39
    i32 74, label %sw.bb39
    i32 81, label %sw.bb39
    i32 87, label %sw.bb39
    i32 95, label %sw.bb39
    i32 96, label %sw.bb39
    i32 102, label %sw.bb39
    i32 103, label %sw.bb39
  ]

sw.bb27:                                          ; preds = %if.then26
  call void @skipParens()
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then26
  call void @skipParens()
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.then26
  %27 = load i32, i32* @Lang_d, align 4
  %call30 = call zeroext i1 @isInputLanguage(i32 %27)
  br i1 %call30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb29
  call void @skipParens()
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %sw.bb29
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then26
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then26
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then26, %if.then26
  %28 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  %29 = load i64, i64* %length, align 8
  %cmp36 = icmp ugt i64 %29, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.bb35
  %30 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  call void @vStringPut(%struct.sVString* %30, i32 32)
  %31 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %32, i32 0, i32 2
  %33 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCat(%struct.sVString* %31, %struct.sVString* %33)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %sw.bb35
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26, %if.then26
  store i8 1, i8* %restart, align 1
  store i8 1, i8* %end, align 1
  br label %sw.epilog

sw.default40:                                     ; preds = %if.then26
  %34 = load i32, i32* @Lang_cpp, align 4
  %call41 = call zeroext i1 @isInputLanguage(i32 %34)
  br i1 %call41, label %land.lhs.true42, label %if.else54

land.lhs.true42:                                  ; preds = %sw.default40
  %35 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %35, i32 0, i32 0
  %36 = load i32, i32* %type, align 8
  %cmp43 = icmp eq i32 %36, 8
  br i1 %cmp43, label %land.lhs.true44, label %if.else54

land.lhs.true44:                                  ; preds = %land.lhs.true42
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name45 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 2
  %38 = load %struct.sVString*, %struct.sVString** %name45, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 2
  %39 = load i8*, i8** %buffer, align 8
  %call46 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i8* %39)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then53, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %land.lhs.true44
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name49 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 2
  %41 = load %struct.sVString*, %struct.sVString** %name49, align 8
  %buffer50 = getelementptr inbounds %struct.sVString, %struct.sVString* %41, i32 0, i32 2
  %42 = load i8*, i8** %buffer50, align 8
  %call51 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* %42)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %lor.lhs.false48, %land.lhs.true44
  br label %if.end68

if.else54:                                        ; preds = %lor.lhs.false48, %land.lhs.true42, %sw.default40
  %43 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type55 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %type55, align 8
  %cmp56 = icmp eq i32 %44, 0
  br i1 %cmp56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.else54
  br label %if.end67

if.else58:                                        ; preds = %if.else54
  %45 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %isKnrParamList = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %45, i32 0, i32 2
  %46 = load i8, i8* %isKnrParamList, align 2
  %tobool59 = trunc i8 %46 to i1
  br i1 %tobool59, label %land.lhs.true60, label %if.else65

land.lhs.true60:                                  ; preds = %if.else58
  %47 = load %struct.sParenInfo*, %struct.sParenInfo** %info.addr, align 8
  %parameterCount61 = getelementptr inbounds %struct.sParenInfo, %struct.sParenInfo* %47, i32 0, i32 6
  %48 = load i32, i32* %parameterCount61, align 4
  %cmp62 = icmp ugt i32 %48, 0
  br i1 %cmp62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %land.lhs.true60
  %49 = load i32, i32* %elementCount, align 4
  %inc64 = add i32 %49, 1
  store i32 %inc64, i32* %elementCount, align 4
  br label %if.end66

if.else65:                                        ; preds = %land.lhs.true60, %if.else58
  store i8 1, i8* %restart, align 1
  store i8 1, i8* %end, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then63
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then57
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then53
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end68, %sw.bb39, %if.end38, %sw.bb34, %sw.bb33, %if.end32, %sw.bb28, %sw.bb27
  br label %if.end69

if.end69:                                         ; preds = %sw.epilog, %lor.lhs.false24
  br label %sw.epilog70

sw.epilog70:                                      ; preds = %if.end69, %if.end15, %if.end, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %50 = load i8, i8* %end, align 1
  %tobool71 = trunc i8 %50 to i1
  br i1 %tobool71, label %if.end77, label %if.then72

if.then72:                                        ; preds = %sw.epilog70
  %call73 = call i32 @skipToNonWhite()
  store i32 %call73, i32* %c, align 4
  %51 = load i32, i32* %c, align 4
  %cmp74 = icmp eq i32 %51, -1
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then72
  store i8 1, i8* %end, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then72
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %sw.epilog70
  br label %do.cond

do.cond:                                          ; preds = %if.end77
  %52 = load i8, i8* %end, align 1
  %tobool78 = trunc i8 %52 to i1
  %lnot = xor i1 %tobool78, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %53 = load i8, i8* %restart, align 1
  %tobool79 = trunc i8 %53 to i1
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %do.end
  %54 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @restartStatement(%struct.sStatementInfo* %54)
  br label %if.end82

if.else81:                                        ; preds = %do.end
  %55 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %55, i32 0)
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  %56 = load i32, i32* %c, align 4
  %cmp83 = icmp ne i32 %56, -1
  ret i1 %cmp83
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipMemIntializerList(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.body
  %0 = load i32, i32* %c, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp slt i32 %1, 128
  br i1 %cmp1, label %land.lhs.true2, label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  %call3 = call i32 @isalpha(i32 %2) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2, %land.lhs.true, %while.cond
  %3 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %3, 95
  br i1 %cmp4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %4, 126
  br i1 %cmp6, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %5 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %5, 36
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false7
  %6 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %6, 58
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %land.lhs.true2
  %7 = phi i1 [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %land.lhs.true2 ], [ %cmp9, %lor.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %8 = load i32, i32* %c, align 4
  %cmp10 = icmp ne i32 %8, 58
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %10 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call11 = call i32 @skipToNonWhite()
  store i32 %call11, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %11, 60
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %while.end
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  %call14 = call i32 @skipToNonWhite()
  store i32 %call14, i32* %c, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %while.end
  %12 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %12, 40
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  %call18 = call i32 @skipToNonWhite()
  store i32 %call18, i32* %c, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  br label %do.cond

do.cond:                                          ; preds = %if.end19
  %13 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %13, 44
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %14)
  ret void
}

declare void @vStringCat(%struct.sVString*, %struct.sVString*) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @restartStatement(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %save = alloca %struct.sTokenInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %save, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %save, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @copyToken(%struct.sTokenInfo* %4, %struct.sTokenInfo* %5)
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %6, i1 zeroext false)
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %7, i32 0, i32 12
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex3 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 11
  %9 = load i32, i32* %tokenIndex3, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token2, i64 0, i64 %idxprom4
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx5, align 8
  store %struct.sTokenInfo* %10, %struct.sTokenInfo** %token, align 8
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %save, align 8
  call void @copyToken(%struct.sTokenInfo* %11, %struct.sTokenInfo* %12)
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %save, align 8
  call void @deleteToken(%struct.sTokenInfo* %13)
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processToken(%struct.sTokenInfo* %14, %struct.sStatementInfo* %15)
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
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 2
  %2 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %2)
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %4 = bitcast %struct.sTokenInfo* %3 to i8*
  call void @eFree(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processToken(%struct.sTokenInfo* %token, %struct.sStatementInfo* %st) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 -1, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb2
    i32 7, label %sw.bb3
    i32 9, label %sw.bb4
    i32 11, label %sw.bb6
    i32 12, label %sw.bb7
    i32 13, label %sw.bb9
    i32 15, label %sw.bb10
    i32 23, label %sw.bb12
    i32 25, label %sw.bb14
    i32 28, label %sw.bb16
    i32 31, label %sw.bb17
    i32 35, label %sw.bb19
    i32 34, label %sw.bb21
    i32 36, label %sw.bb22
    i32 39, label %sw.bb23
    i32 40, label %sw.bb24
    i32 42, label %sw.bb25
    i32 45, label %sw.bb27
    i32 46, label %sw.bb29
    i32 48, label %sw.bb30
    i32 49, label %sw.bb31
    i32 62, label %sw.bb33
    i32 135, label %sw.bb34
    i32 70, label %sw.bb36
    i32 71, label %sw.bb37
    i32 72, label %sw.bb39
    i32 74, label %sw.bb40
    i32 76, label %sw.bb41
    i32 79, label %sw.bb42
    i32 80, label %sw.bb44
    i32 82, label %sw.bb46
    i32 83, label %sw.bb48
    i32 86, label %sw.bb49
    i32 90, label %sw.bb51
    i32 99, label %sw.bb52
    i32 100, label %sw.bb54
    i32 102, label %sw.bb56
    i32 104, label %sw.bb58
    i32 105, label %sw.bb60
    i32 149, label %sw.bb62
    i32 103, label %sw.bb63
    i32 106, label %sw.bb65
    i32 87, label %sw.bb67
    i32 55, label %sw.bb72
    i32 136, label %sw.bb73
    i32 68, label %sw.bb73
    i32 29, label %sw.bb74
    i32 0, label %sw.bb79
    i32 95, label %sw.bb79
    i32 27, label %sw.bb81
    i32 81, label %sw.bb87
    i32 32, label %sw.bb95
    i32 33, label %sw.bb95
    i32 38, label %sw.bb95
    i32 84, label %sw.bb95
    i32 107, label %sw.bb95
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processName(%struct.sStatementInfo* %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 10
  store i32 1, i32* %implementation, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @skipParens()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @initToken(%struct.sTokenInfo* %4)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 1
  store i32 1, i32* %declaration, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration5 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 1
  store i32 1, i32* %declaration5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @skipParens()
  call void @skipBraces()
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration8 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %7, i32 0, i32 1
  store i32 1, i32* %declaration8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @checkIsClassEnum(%struct.sStatementInfo* %8, i32 2)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration11 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %9, i32 0, i32 1
  store i32 1, i32* %declaration11, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration13 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 1
  store i32 1, i32* %declaration13, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration15 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %11, i32 0, i32 1
  store i32 3, i32* %declaration15, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readParents(%struct.sStatementInfo* %12, i32 46)
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %13, i32 0)
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration18 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %14, i32 0, i32 1
  store i32 1, i32* %declaration18, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration20 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %15, i32 0, i32 1
  store i32 1, i32* %declaration20, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %16 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %16, i32 0, i32 0
  store i32 3, i32* %scope, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @skipStatement(%struct.sStatementInfo* %17)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %18 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readParents(%struct.sStatementInfo* %18, i32 46)
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setToken(%struct.sStatementInfo* %19, i32 0)
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %20 = load i32, i32* @Lang_java, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %20)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb24
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readPackageOrNamespace(%struct.sStatementInfo* %21, i32 13, i1 zeroext true)
  br label %if.end

if.else:                                          ; preds = %sw.bb24
  %22 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @skipStatement(%struct.sStatementInfo* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %23 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration26 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %23, i32 0, i32 1
  store i32 1, i32* %declaration26, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %24 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration28 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %24, i32 0, i32 1
  store i32 1, i32* %declaration28, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %25 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processInterface(%struct.sStatementInfo* %25)
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %26 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setAccess(%struct.sStatementInfo* %26, i32 1)
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %27 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration32 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %27, i32 0, i32 1
  store i32 1, i32* %declaration32, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %28 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readOperator(%struct.sStatementInfo* %28)
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %29 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration35 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %29, i32 0, i32 1
  store i32 9, i32* %declaration35, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %30 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setAccess(%struct.sStatementInfo* %30, i32 2)
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %31 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration38 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %31, i32 0, i32 1
  store i32 15, i32* %declaration38, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %32 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setAccess(%struct.sStatementInfo* %32, i32 3)
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %33 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @setAccess(%struct.sStatementInfo* %33, i32 4)
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %34 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @skipStatement(%struct.sStatementInfo* %34)
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %35 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration43 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %35, i32 0, i32 1
  store i32 1, i32* %declaration43, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %36 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration45 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %36, i32 0, i32 1
  store i32 1, i32* %declaration45, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  %37 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration47 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %37, i32 0, i32 1
  store i32 1, i32* %declaration47, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  %38 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @checkIsClassEnum(%struct.sStatementInfo* %38, i32 18)
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %39 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration50 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %39, i32 0, i32 1
  store i32 19, i32* %declaration50, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @discardTypeList(%struct.sTokenInfo* %40)
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  %41 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration53 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %41, i32 0, i32 1
  store i32 21, i32* %declaration53, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  %42 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration55 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %42, i32 0, i32 1
  store i32 1, i32* %declaration55, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  %43 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration57 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %43, i32 0, i32 1
  store i32 22, i32* %declaration57, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %44 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration59 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %44, i32 0, i32 1
  store i32 1, i32* %declaration59, align 4
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  %45 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration61 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %45, i32 0, i32 1
  store i32 1, i32* %declaration61, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %46 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readVersion(%struct.sStatementInfo* %46)
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  %47 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation64 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %47, i32 0, i32 10
  store i32 2, i32* %implementation64, align 8
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  %48 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration66 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %48, i32 0, i32 1
  store i32 1, i32* %declaration66, align 4
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  %49 = load i32, i32* @Lang_d, align 4
  %call68 = call zeroext i1 @isInputLanguage(i32 %49)
  br i1 %call68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %sw.bb67
  %50 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration70 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %50, i32 0, i32 1
  store i32 20, i32* %declaration70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %sw.bb67
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry
  %51 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readPackageOrNamespace(%struct.sStatementInfo* %51, i32 10, i1 zeroext false)
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry, %entry
  %52 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @readPackageOrNamespace(%struct.sStatementInfo* %52, i32 12, i1 zeroext false)
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  %53 = load i32, i32* @Lang_csharp, align 4
  %call75 = call zeroext i1 @isInputLanguage(i32 %53)
  br i1 %call75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %sw.bb74
  %54 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration77 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %54, i32 0, i32 1
  store i32 4, i32* %declaration77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %sw.bb74
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry, %entry
  %55 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %55, i1 zeroext false)
  %56 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope80 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %56, i32 0, i32 0
  store i32 4, i32* %scope80, align 8
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  %57 = load i32, i32* @Lang_csharp, align 4
  %call82 = call zeroext i1 @isInputLanguage(i32 %57)
  br i1 %call82, label %lor.lhs.false, label %if.then83

lor.lhs.false:                                    ; preds = %sw.bb81
  %58 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %58, i32 0, i32 2
  %59 = load i8, i8* %gotName, align 8
  %tobool = trunc i8 %59 to i1
  br i1 %tobool, label %if.end86, label %if.then83

if.then83:                                        ; preds = %lor.lhs.false, %sw.bb81
  %60 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %60, i1 zeroext false)
  %61 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope84 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %61, i32 0, i32 0
  store i32 2, i32* %scope84, align 8
  %62 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration85 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %62, i32 0, i32 1
  store i32 1, i32* %declaration85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %lor.lhs.false
  br label %sw.epilog

sw.bb87:                                          ; preds = %entry
  %63 = load i32, i32* @Lang_java, align 4
  %call88 = call zeroext i1 @isInputLanguage(i32 %63)
  br i1 %call88, label %if.end94, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %sw.bb87
  %64 = load i32, i32* @Lang_csharp, align 4
  %call90 = call zeroext i1 @isInputLanguage(i32 %64)
  br i1 %call90, label %if.end94, label %if.then91

if.then91:                                        ; preds = %lor.lhs.false89
  %65 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %65, i1 zeroext false)
  %66 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope92 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %66, i32 0, i32 0
  store i32 1, i32* %scope92, align 8
  %67 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration93 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %67, i32 0, i32 1
  store i32 1, i32* %declaration93, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %lor.lhs.false89, %sw.bb87
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  %call96 = call i32 @skipToNonWhite()
  store i32 %call96, i32* %c, align 4
  %68 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %68, 40
  br i1 %cmp, label %if.then97, label %if.end98

if.then97:                                        ; preds = %sw.bb95
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %sw.bb95
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end98, %if.end94, %if.end86, %sw.bb79, %if.end78, %sw.bb73, %sw.bb72, %if.end71, %sw.bb65, %sw.bb63, %sw.bb62, %sw.bb60, %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb51, %sw.bb49, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb37, %sw.bb36, %sw.bb34, %sw.bb33, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb27, %sw.bb25, %if.end, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb7, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %sw.default
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipBraces() #0 {
entry:
  %c = alloca i32, align 4
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 123
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @checkIsClassEnum(%struct.sStatementInfo* %st, i32 %decl) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %decl.addr = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %decl, i32* %decl.addr, align 4
  %0 = load i32, i32* @Lang_cpp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 1
  %2 = load i32, i32* %declaration, align 4
  %cmp = icmp ne i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %decl.addr, align 4
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 1
  store i32 %3, i32* %declaration1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readParents(%struct.sStatementInfo* %st, i32 %qualifier) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %qualifier.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  %parent = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %qualifier, i32* %qualifier.addr, align 4
  %call = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %token, align 8
  %call1 = call %struct.sTokenInfo* @newToken()
  store %struct.sTokenInfo* %call1, %struct.sTokenInfo** %parent, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call2 = call i32 @skipToNonWhite()
  store i32 %call2, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %1 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %1, 128
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  %call5 = call i32 @isalpha(i32 %2) #8
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true4, %land.lhs.true, %do.body
  %3 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %3, 95
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %4, 126
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %5 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %5, 36
  br i1 %cmp10, label %if.then, label %if.else14

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false, %land.lhs.true4
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %7 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %6, i32 %7)
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %8, i32 0, i32 0
  %9 = load i32, i32* %type, align 8
  %cmp11 = icmp eq i32 %9, 8
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 2
  %11 = load %struct.sVString*, %struct.sVString** %name, align 8
  %12 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name13 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %12, i32 0, i32 2
  %13 = load %struct.sVString*, %struct.sVString** %name13, align 8
  call void @vStringCat(%struct.sVString* %11, %struct.sVString* %13)
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %15 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  call void @addParentClass(%struct.sStatementInfo* %14, %struct.sTokenInfo* %15)
  %16 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  call void @initToken(%struct.sTokenInfo* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  br label %if.end28

if.else14:                                        ; preds = %lor.lhs.false9
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %qualifier.addr, align 4
  %cmp15 = icmp eq i32 %17, %18
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else14
  %19 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  %name17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %19, i32 0, i32 2
  %20 = load %struct.sVString*, %struct.sVString** %name17, align 8
  %21 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %20, i32 %21)
  br label %if.end27

if.else18:                                        ; preds = %if.else14
  %22 = load i32, i32* %c, align 4
  %cmp19 = icmp eq i32 %22, 60
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else18
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  br label %if.end26

if.else21:                                        ; preds = %if.else18
  %23 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type22 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %23, i32 0, i32 0
  %24 = load i32, i32* %type22, align 8
  %cmp23 = icmp eq i32 %24, 8
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else21
  %25 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %26 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  call void @addParentClass(%struct.sStatementInfo* %25, %struct.sTokenInfo* %26)
  %27 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  call void @initToken(%struct.sTokenInfo* %27)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then16
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end28
  %28 = load i32, i32* %c, align 4
  %cmp29 = icmp ne i32 %28, 123
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %29 = load i32, i32* %c, align 4
  %cmp30 = icmp ne i32 %29, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %30 = phi i1 [ false, %do.cond ], [ %cmp30, %land.rhs ]
  br i1 %30, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %31 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %31)
  %32 = load %struct.sTokenInfo*, %struct.sTokenInfo** %parent, align 8
  call void @deleteToken(%struct.sTokenInfo* %32)
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  call void @deleteToken(%struct.sTokenInfo* %33)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipStatement(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 1
  store i32 7, i32* %declaration, align 4
  %call = call i32 @skipToOneOf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readPackageOrNamespace(%struct.sStatementInfo* %st, i32 %declaration, i1 zeroext %allowWildCard) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %declaration.addr = alloca i32, align 4
  %allowWildCard.addr = alloca i8, align 1
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %declaration, i32* %declaration.addr, align 4
  %frombool = zext i1 %allowWildCard to i8
  store i8 %frombool, i8* %allowWildCard.addr, align 1
  %0 = load i32, i32* %declaration.addr, align 4
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 1
  store i32 %0, i32* %declaration1, align 4
  %2 = load i32, i32* %declaration.addr, align 4
  %cmp = icmp eq i32 %2, 10
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @Lang_csharp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %3)
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 12
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 11
  %6 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token2, i64 0, i64 %idxprom
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %7, %struct.sTokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call3 = call i32 @skipToNonWhite()
  %9 = load i8, i8* %allowWildCard.addr, align 1
  %tobool = trunc i8 %9 to i1
  call void @readPackageName(%struct.sTokenInfo* %8, i32 %call3, i1 zeroext %tobool)
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 0
  store i32 8, i32* %type, align 8
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %11, i32 0, i32 2
  store i8 1, i8* %gotName, align 8
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 3
  store i8 1, i8* %haveQualifyingName, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processInterface(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 1
  store i32 8, i32* %declaration, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setAccess(%struct.sStatementInfo* %st, i32 %access) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %access.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %c18 = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %access, i32* %access.addr, align 4
  %0 = load i32, i32* @Lang_d, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %call1 = call i32 @skipToNonWhite()
  store i32 %call1, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 123
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = load i32, i32* %access.addr, align 4
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then2
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 1
  store i32 14, i32* %declaration, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then2
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration4 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 1
  store i32 17, i32* %declaration4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then2
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration6 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 1
  store i32 16, i32* %declaration6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %6 = load i32, i32* %access.addr, align 4
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %7, i32 0, i32 15
  %access7 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member, i32 0, i32 0
  store i32 %6, i32* %access7, align 8
  %8 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %8)
  br label %if.end12

if.else:                                          ; preds = %if.then
  %9 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %9, 58
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %10, i1 zeroext false)
  %11 = load i32, i32* %access.addr, align 4
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member10 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 15
  %accessDefault = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member10, i32 0, i32 1
  store i32 %11, i32* %accessDefault, align 4
  br label %if.end

if.else11:                                        ; preds = %if.else
  %13 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %sw.epilog
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call14 = call zeroext i1 @isMember(%struct.sStatementInfo* %14)
  br i1 %call14, label %if.then15, label %if.end51

if.then15:                                        ; preds = %if.end13
  %15 = load i32, i32* @Lang_cpp, align 4
  %call16 = call zeroext i1 @isInputLanguage(i32 %15)
  br i1 %call16, label %if.then17, label %if.else26

if.then17:                                        ; preds = %if.then15
  %call19 = call i32 @skipToNonWhite()
  store i32 %call19, i32* %c18, align 4
  %16 = load i32, i32* %c18, align 4
  %cmp20 = icmp eq i32 %16, 58
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.then17
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @reinitStatement(%struct.sStatementInfo* %17, i1 zeroext false)
  br label %if.end23

if.else22:                                        ; preds = %if.then17
  %18 = load i32, i32* %c18, align 4
  call void @cppUngetc(i32 %18)
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  %19 = load i32, i32* %access.addr, align 4
  %20 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member24 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %20, i32 0, i32 15
  %accessDefault25 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member24, i32 0, i32 1
  store i32 %19, i32* %accessDefault25, align 4
  br label %if.end48

if.else26:                                        ; preds = %if.then15
  %21 = load i32, i32* @Lang_d, align 4
  %call27 = call zeroext i1 @isInputLanguage(i32 %21)
  br i1 %call27, label %if.then28, label %if.end47

if.then28:                                        ; preds = %if.else26
  %22 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %22, i32 0, i32 17
  %23 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp29 = icmp ne %struct.sStatementInfo* %23, null
  br i1 %cmp29, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %if.then28
  %24 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent30 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %24, i32 0, i32 17
  %25 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent30, align 8
  %declaration31 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %declaration31, align 4
  %cmp32 = icmp eq i32 %26, 14
  br i1 %cmp32, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent33 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %27, i32 0, i32 17
  %28 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent33, align 8
  %declaration34 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %28, i32 0, i32 1
  %29 = load i32, i32* %declaration34, align 4
  %cmp35 = icmp eq i32 %29, 16
  br i1 %cmp35, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %30 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent37 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %30, i32 0, i32 17
  %31 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent37, align 8
  %declaration38 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %31, i32 0, i32 1
  %32 = load i32, i32* %declaration38, align 4
  %cmp39 = icmp eq i32 %32, 17
  br i1 %cmp39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false, %land.lhs.true
  %33 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent41 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %33, i32 0, i32 17
  %34 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent41, align 8
  %member42 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %34, i32 0, i32 15
  %access43 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member42, i32 0, i32 0
  %35 = load i32, i32* %access43, align 8
  %36 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member44 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %36, i32 0, i32 15
  %access45 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member44, i32 0, i32 0
  store i32 %35, i32* %access45, align 8
  br label %if.end51

if.end46:                                         ; preds = %lor.lhs.false36, %if.then28
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.else26
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end23
  %37 = load i32, i32* %access.addr, align 4
  %38 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member49 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %38, i32 0, i32 15
  %access50 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member49, i32 0, i32 0
  store i32 %37, i32* %access50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then40, %if.end48, %if.end13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readOperator(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %acceptable = alloca i8*, align 8
  %prev = alloca %struct.sTokenInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %name = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  %whiteSpace = alloca i8, align 1
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8** %acceptable, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %0, i32 1)
  store %struct.sTokenInfo* %call, %struct.sTokenInfo** %prev, align 8
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 12
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 11
  %3 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %4, %struct.sTokenInfo** %token, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %name2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 2
  %6 = load %struct.sVString*, %struct.sVString** %name2, align 8
  store %struct.sVString* %6, %struct.sVString** %name, align 8
  %call3 = call i32 @skipToNonWhite()
  store i32 %call3, i32* %c, align 4
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %7, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %8, 7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %keyword, align 4
  %cmp4 = icmp eq i32 %10, 25
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %11, i32 0, i32 1
  %12 = load i32, i32* %keyword5, align 4
  %cmp6 = icmp eq i32 %12, 83
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev, align 8
  %keyword8 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 1
  %14 = load i32, i32* %keyword8, align 4
  %cmp9 = icmp eq i32 %14, 99
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %land.lhs.true
  br label %if.end59

if.else:                                          ; preds = %lor.lhs.false7, %entry
  %15 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %15, 40
  br i1 %cmp10, label %if.then11, label %if.else21

if.then11:                                        ; preds = %if.else
  %call12 = call i32 @cppGetc()
  %cmp13 = icmp eq i32 %call12, 41
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.then11
  %16 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringPut(%struct.sVString* %16, i32 32)
  %call15 = call i32 @skipToNonWhite()
  store i32 %call15, i32* %c, align 4
  %17 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %17, 40
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then14
  %18 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCatS(%struct.sVString* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then14
  br label %if.end20

if.else18:                                        ; preds = %if.then11
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  %call19 = call i32 @cppGetc()
  store i32 %call19, i32* %c, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.end
  br label %if.end58

if.else21:                                        ; preds = %if.else
  %19 = load i32, i32* %c, align 4
  %cmp22 = icmp sge i32 %19, 0
  br i1 %cmp22, label %land.lhs.true23, label %lor.lhs.false27

land.lhs.true23:                                  ; preds = %if.else21
  %20 = load i32, i32* %c, align 4
  %cmp24 = icmp slt i32 %20, 128
  br i1 %cmp24, label %land.lhs.true25, label %lor.lhs.false27

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %21 = load i32, i32* %c, align 4
  %call26 = call i32 @isalpha(i32 %21) #8
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then33, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true25, %land.lhs.true23, %if.else21
  %22 = load i32, i32* %c, align 4
  %cmp28 = icmp eq i32 %22, 95
  br i1 %cmp28, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false27
  %23 = load i32, i32* %c, align 4
  %cmp30 = icmp eq i32 %23, 126
  br i1 %cmp30, label %if.then33, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %24 = load i32, i32* %c, align 4
  %cmp32 = icmp eq i32 %24, 36
  br i1 %cmp32, label %if.then33, label %if.else46

if.then33:                                        ; preds = %lor.lhs.false31, %lor.lhs.false29, %lor.lhs.false27, %land.lhs.true25
  store i8 1, i8* %whiteSpace, align 1
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then33
  %25 = load i32, i32* %c, align 4
  %call34 = call i32 @isspace(i32 %25) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %do.body
  store i8 1, i8* %whiteSpace, align 1
  br label %if.end41

if.else37:                                        ; preds = %do.body
  %26 = load i8, i8* %whiteSpace, align 1
  %tobool38 = trunc i8 %26 to i1
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.else37
  %27 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringPut(%struct.sVString* %27, i32 32)
  store i8 0, i8* %whiteSpace, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.else37
  %28 = load %struct.sVString*, %struct.sVString** %name, align 8
  %29 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %28, i32 %29)
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then36
  %call42 = call i32 @cppGetc()
  store i32 %call42, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end41
  %30 = load i32, i32* %c, align 4
  %call43 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i32 %30)
  %cmp44 = icmp ne i8* %call43, null
  br i1 %cmp44, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %31 = load i32, i32* %c, align 4
  %cmp45 = icmp ne i32 %31, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %32 = phi i1 [ false, %do.cond ], [ %cmp45, %land.rhs ]
  br i1 %32, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end57

if.else46:                                        ; preds = %lor.lhs.false31
  %33 = load i32, i32* %c, align 4
  %call47 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i32 %33)
  %cmp48 = icmp ne i8* %call47, null
  br i1 %cmp48, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.else46
  %34 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringPut(%struct.sVString* %34, i32 32)
  br label %do.body50

do.body50:                                        ; preds = %do.cond52, %if.then49
  %35 = load %struct.sVString*, %struct.sVString** %name, align 8
  %36 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %35, i32 %36)
  %call51 = call i32 @cppGetc()
  store i32 %call51, i32* %c, align 4
  br label %do.cond52

do.cond52:                                        ; preds = %do.body50
  %37 = load i32, i32* %c, align 4
  %call53 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i32 %37)
  %cmp54 = icmp ne i8* %call53, null
  br i1 %cmp54, label %do.body50, label %do.end55

do.end55:                                         ; preds = %do.cond52
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %if.else46
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %do.end
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end20
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then
  %38 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %38)
  %39 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type60 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %39, i32 0, i32 0
  store i32 8, i32* %type60, align 8
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %keyword61 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 1
  store i32 -1, i32* %keyword61, align 4
  %41 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processName(%struct.sStatementInfo* %41)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @discardTypeList(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp slt i32 %1, 128
  br i1 %cmp1, label %land.lhs.true2, label %lor.lhs.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  %call3 = call i32 @isalpha(i32 %2) #8
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2, %land.lhs.true, %while.cond
  %3 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %3, 95
  br i1 %cmp4, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %4, 126
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false5
  %5 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %5, 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5, %lor.lhs.false, %land.lhs.true2
  %6 = phi i1 [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %land.lhs.true2 ], [ %cmp7, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %8 = load i32, i32* %c, align 4
  call void @readIdentifier(%struct.sTokenInfo* %7, i32 %8)
  %call8 = call i32 @skipToNonWhite()
  store i32 %call8, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %9, 46
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %while.body
  %10 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %10, 44
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %while.body
  %call12 = call i32 @skipToNonWhite()
  store i32 %call12, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false10
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readVersion(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i32 @skipToNonWhite()
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %call2 = call i32 @cppGetc()
  call void @readVersionName(%struct.sTokenInfo* %4, i32 %call2)
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  store i32 8, i32* %type, align 8
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 1
  store i32 23, i32* %declaration, align 4
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %gotName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %7, i32 0, i32 2
  store i8 1, i8* %gotName, align 8
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 3
  store i8 1, i8* %haveQualifyingName, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addParentClass(%struct.sStatementInfo* %st, %struct.sTokenInfo* %token) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token.addr = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parentClasses = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 16
  %4 = load %struct.sVString*, %struct.sVString** %parentClasses, align 8
  %length1 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 0
  %5 = load i64, i64* %length1, align 8
  %cmp2 = icmp ugt i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parentClasses3 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 16
  %7 = load %struct.sVString*, %struct.sVString** %parentClasses3, align 8
  call void @vStringPut(%struct.sVString* %7, i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parentClasses4 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 16
  %9 = load %struct.sVString*, %struct.sVString** %parentClasses4, align 8
  %10 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name5 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %10, i32 0, i32 2
  %11 = load %struct.sVString*, %struct.sVString** %name5, align 8
  call void @vStringCat(%struct.sVString* %9, %struct.sVString* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipToOneOf(i8* %chars) #0 {
entry:
  %chars.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %chars, i8** %chars.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %call = call i32 @cppGetc()
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i8*, i8** %chars.addr, align 8
  %3 = load i32, i32* %c, align 4
  %call2 = call i8* @strchr(i8* %2, i32 %3)
  %cmp3 = icmp eq i8* %call2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %5 = load i32, i32* %c, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readPackageName(%struct.sTokenInfo* %token, i32 %firstChar, i1 zeroext %allowWildCard) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %firstChar.addr = alloca i32, align 4
  %allowWildCard.addr = alloca i8, align 1
  %name = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %firstChar, i32* %firstChar.addr, align 4
  %frombool = zext i1 %allowWildCard to i8
  store i8 %frombool, i8* %allowWildCard.addr, align 1
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %name1, align 8
  store %struct.sVString* %1, %struct.sVString** %name, align 8
  %2 = load i32, i32* %firstChar.addr, align 4
  store i32 %2, i32* %c, align 4
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @initToken(%struct.sTokenInfo* %3)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %c, align 4
  %call = call i32 @isalnum(i32 %4) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, 95
  br i1 %cmp, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %6, 36
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %7 = load i8, i8* %allowWildCard.addr, align 1
  %tobool5 = trunc i8 %7 to i1
  br i1 %tobool5, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %8 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %8, 42
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false4
  %9 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %9, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true, %lor.lhs.false2, %lor.lhs.false, %while.cond
  %10 = phi i1 [ true, %land.lhs.true ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp7, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load %struct.sVString*, %struct.sVString** %name, align 8
  %12 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %11, i32 %12)
  %call8 = call i32 @cppGetc()
  store i32 %call8, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %13 = load i32, i32* %c, align 4
  call void @cppUngetc(i32 %13)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isMember(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 13
  %1 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %result, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 17
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp1 = icmp ne %struct.sStatementInfo* %4, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent2 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 17
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent2, align 8
  %call = call zeroext i1 @isContextualStatement(%struct.sStatementInfo* %6)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %7 = phi i1 [ false, %if.else ], [ %call, %land.rhs ]
  %frombool = zext i1 %7 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  %8 = load i8, i8* %result, align 1
  %tobool = trunc i8 %8 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readVersionName(%struct.sTokenInfo* %token, i32 %firstChar) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %firstChar.addr = alloca i32, align 4
  %name = alloca %struct.sVString*, align 8
  %c = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store i32 %firstChar, i32* %firstChar.addr, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name1 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 2
  %1 = load %struct.sVString*, %struct.sVString** %name1, align 8
  store %struct.sVString* %1, %struct.sVString** %name, align 8
  %2 = load i32, i32* %firstChar.addr, align 4
  store i32 %2, i32* %c, align 4
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  call void @initToken(%struct.sTokenInfo* %3)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %c, align 4
  %call = call i32 @isalnum(i32 %4) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, 95
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %6, 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %7 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %8 = load %struct.sVString*, %struct.sVString** %name, align 8
  %9 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %8, i32 %9)
  %call3 = call i32 @cppGetc()
  store i32 %call3, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %call4 = call i32 @cppGetc()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @languageSupportsGenerics() #0 {
entry:
  %0 = load i32, i32* @Lang_cpp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @Lang_csharp, align 4
  %call1 = call zeroext i1 @isInputLanguage(i32 %1)
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* @Lang_java, align 4
  %call2 = call zeroext i1 @isInputLanguage(i32 %2)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipCppTemplateParameterList() #0 {
entry:
  %inputLineNumber = alloca i64, align 8
  %angleBracketsLevel = alloca i32, align 4
  %c = alloca i32, align 4
  %roundBracketsLevel = alloca i32, align 4
  %defaultValueExpected = alloca i8, align 1
  %x = alloca i32, align 4
  %x24 = alloca i32, align 4
  %call = call i64 @getInputLineNumber()
  store i64 %call, i64* %inputLineNumber, align 8
  store i32 1, i32* %angleBracketsLevel, align 4
  store i32 0, i32* %c, align 4
  store i32 0, i32* %roundBracketsLevel, align 4
  store i8 0, i8* %defaultValueExpected, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end66, %entry
  %0 = load i32, i32* %angleBracketsLevel, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call1 = call i32 @skipToNonWhite()
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %2 = load i8, i8* @CollectingSignature, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %4 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %5, 60
  br i1 %cmp3, label %if.then4, label %if.else20

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @cppGetc()
  store i32 %call5, i32* %x, align 4
  %6 = load i32, i32* %x, align 4
  %cmp6 = icmp ne i32 %6, 60
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %7 = load i32, i32* %x, align 4
  call void @cppUngetc(i32 %7)
  %8 = load i32, i32* %roundBracketsLevel, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then7
  %9 = load i8, i8* %defaultValueExpected, align 1
  %tobool10 = trunc i8 %9 to i1
  %conv = zext i1 %tobool10 to i32
  %cmp11 = icmp eq i32 %conv, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  %10 = load i32, i32* %angleBracketsLevel, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %angleBracketsLevel, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  br label %if.end19

if.else:                                          ; preds = %if.then4
  %11 = load i8, i8* @CollectingSignature, align 1
  %tobool16 = trunc i8 %11 to i1
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  %12 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %13 = load i32, i32* %x, align 4
  call void @vStringPut(%struct.sVString* %12, i32 %13)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end15
  br label %if.end66

if.else20:                                        ; preds = %if.end
  %14 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %14, 62
  br i1 %cmp21, label %if.then23, label %if.else38

if.then23:                                        ; preds = %if.else20
  %call25 = call i32 @cppGetc()
  store i32 %call25, i32* %x24, align 4
  %15 = load i32, i32* %x24, align 4
  %cmp26 = icmp ne i32 %15, 62
  br i1 %cmp26, label %if.then28, label %if.else33

if.then28:                                        ; preds = %if.then23
  %16 = load i32, i32* %x24, align 4
  call void @cppUngetc(i32 %16)
  %17 = load i32, i32* %roundBracketsLevel, align 4
  %cmp29 = icmp eq i32 %17, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  %18 = load i32, i32* %angleBracketsLevel, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %angleBracketsLevel, align 4
  store i8 0, i8* %defaultValueExpected, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then28
  br label %if.end37

if.else33:                                        ; preds = %if.then23
  %19 = load i8, i8* @CollectingSignature, align 1
  %tobool34 = trunc i8 %19 to i1
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else33
  %20 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %21 = load i32, i32* %x24, align 4
  call void @vStringPut(%struct.sVString* %20, i32 %21)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end32
  br label %if.end65

if.else38:                                        ; preds = %if.else20
  %22 = load i32, i32* %c, align 4
  %cmp39 = icmp eq i32 %22, 40
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else38
  %23 = load i32, i32* %roundBracketsLevel, align 4
  %inc42 = add nsw i32 %23, 1
  store i32 %inc42, i32* %roundBracketsLevel, align 4
  br label %if.end64

if.else43:                                        ; preds = %if.else38
  %24 = load i32, i32* %c, align 4
  %cmp44 = icmp eq i32 %24, 41
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.else43
  %25 = load i32, i32* %roundBracketsLevel, align 4
  %dec47 = add nsw i32 %25, -1
  store i32 %dec47, i32* %roundBracketsLevel, align 4
  br label %if.end63

if.else48:                                        ; preds = %if.else43
  %26 = load i32, i32* %c, align 4
  %cmp49 = icmp eq i32 %26, 61
  br i1 %cmp49, label %land.lhs.true, label %if.else54

land.lhs.true:                                    ; preds = %if.else48
  %27 = load i32, i32* %roundBracketsLevel, align 4
  %cmp51 = icmp eq i32 %27, 0
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %land.lhs.true
  store i8 1, i8* %defaultValueExpected, align 1
  br label %if.end62

if.else54:                                        ; preds = %land.lhs.true, %if.else48
  %28 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %28, 44
  br i1 %cmp55, label %land.lhs.true57, label %if.end61

land.lhs.true57:                                  ; preds = %if.else54
  %29 = load i32, i32* %roundBracketsLevel, align 4
  %cmp58 = icmp eq i32 %29, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true57
  store i8 0, i8* %defaultValueExpected, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true57, %if.else54
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then53
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then46
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then41
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end37
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end19
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load i32, i32* %c, align 4
  %cmp67 = icmp eq i32 %30, -1
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %while.end
  %call70 = call i8* @getInputFileName()
  %31 = load i64, i64* %inputLineNumber, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i64 0, i64 0), i8* %call70, i32 60, i64 %31)
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 2) #7
  unreachable

if.end71:                                         ; preds = %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @inheritingDeclaration(i32 %decl) #0 {
entry:
  %retval = alloca i1, align 1
  %decl.addr = alloca i32, align 4
  store i32 %decl, i32* %decl.addr, align 4
  %0 = load i32, i32* %decl.addr, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @Lang_cpp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %1)
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* @Lang_csharp, align 4
  %call1 = call zeroext i1 @isInputLanguage(i32 %2)
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* @Lang_d, align 4
  %call2 = call zeroext i1 @isInputLanguage(i32 %3)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.then
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %if.then ], [ %call2, %lor.rhs ]
  store i1 %4, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %decl.addr, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %lor.end8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %6 = load i32, i32* %decl.addr, align 4
  %cmp5 = icmp eq i32 %6, 18
  br i1 %cmp5, label %lor.end8, label %lor.rhs6

lor.rhs6:                                         ; preds = %lor.lhs.false4
  %7 = load i32, i32* %decl.addr, align 4
  %cmp7 = icmp eq i32 %7, 8
  br label %lor.end8

lor.end8:                                         ; preds = %lor.rhs6, %lor.lhs.false4, %if.end
  %8 = phi i1 [ true, %lor.lhs.false4 ], [ true, %if.end ], [ %cmp7, %lor.rhs6 ]
  store i1 %8, i1* %retval, align 1
  br label %return

return:                                           ; preds = %lor.end8, %lor.end
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @makeTag(%struct.sTokenInfo* %token, %struct.sStatementInfo* %st, i1 zeroext %isFileScope, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %isFileScope.addr = alloca i8, align 1
  %type.addr = alloca i32, align 4
  %corkIndex = alloca i32, align 4
  %scope = alloca %struct.sVString*, align 8
  %typeRef = alloca %struct.sVString*, align 8
  %isScopeBuilt = alloca i8, align 1
  %e = alloca %struct.sTagEntryInfo, align 8
  %kind = alloca i32, align 4
  %role = alloca i32, align 4
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %frombool = zext i1 %isFileScope to i8
  store i8 %frombool, i8* %isFileScope.addr, align 1
  store i32 %type, i32* %type.addr, align 4
  store i32 0, i32* %corkIndex, align 4
  %0 = load i8, i8* %isFileScope.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %frombool1 = zext i1 %1 to i8
  store i8 %frombool1, i8* %isFileScope.addr, align 1
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %type2, align 8
  %cmp = icmp eq i32 %3, 8
  br i1 %cmp, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %land.end
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 2
  %5 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  %6 = load i64, i64* %length, align 8
  %cmp3 = icmp ugt i64 %6, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end34

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load i32, i32* %type.addr, align 4
  %8 = load i8, i8* %isFileScope.addr, align 1
  %tobool5 = trunc i8 %8 to i1
  %call6 = call zeroext i1 @includeTag(i32 %7, i1 zeroext %tobool5)
  br i1 %call6, label %if.then, label %if.end34

if.then:                                          ; preds = %land.lhs.true4
  %9 = load i32, i32* %type.addr, align 4
  %call7 = call i32 @roleForType(i32 %9)
  store i32 %call7, i32* %role, align 4
  %10 = load i32, i32* %role, align 4
  %cmp8 = icmp eq i32 %10, -1
  br i1 %cmp8, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call9 = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call9, label %if.end, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %call11 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call11, %struct.sVString** %scope, align 8
  %call12 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call12, %struct.sVString** %typeRef, align 8
  %11 = load i32, i32* %type.addr, align 4
  %call13 = call i32 @kindIndexForType(i32 %11)
  store i32 %call13, i32* %kind, align 4
  %12 = load i32, i32* %role, align 4
  %cmp14 = icmp eq i32 %12, -1
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name16 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 2
  %14 = load %struct.sVString*, %struct.sVString** %name16, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer, align 8
  %16 = load i32, i32* %kind, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %15, i32 %16)
  br label %if.end19

if.else:                                          ; preds = %if.end
  %17 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %name17 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %17, i32 0, i32 2
  %18 = load %struct.sVString*, %struct.sVString** %name17, align 8
  %buffer18 = getelementptr inbounds %struct.sVString, %struct.sVString* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer18, align 8
  %20 = load i32, i32* %kind, align 4
  %21 = load i32, i32* %role, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %19, i32 %20, i32 %21)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %22 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %22, i32 0, i32 3
  %23 = load i64, i64* %lineNumber, align 8
  %lineNumber20 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %23, i64* %lineNumber20, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %filePosition21 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %24, i32 0, i32 4
  %25 = bitcast %struct._MIOPos* %filePosition to i8*
  %26 = bitcast %struct._MIOPos* %filePosition21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load i8, i8* %isFileScope.addr, align 1
  %tobool22 = trunc i8 %27 to i1
  %conv = zext i1 %tobool22 to i32
  %28 = bitcast %struct.sTagEntryInfo* %e to i8*
  %29 = trunc i32 %conv to i8
  %bf.load = load i8, i8* %28, align 8
  %bf.value = and i8 %29, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %28, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %30 = bitcast %struct.sTagEntryInfo* %e to i8*
  %bf.load23 = load i8, i8* %30, align 8
  %bf.lshr = lshr i8 %bf.load23, 1
  %bf.clear24 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear24 to i32
  %tobool25 = icmp ne i32 %bf.cast, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end19
  call void @markTagExtraBit(%struct.sTagEntryInfo* %e, i32 0)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end19
  %31 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %32 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call28 = call zeroext i1 @findScopeHierarchy(%struct.sVString* %31, %struct.sStatementInfo* %32)
  %frombool29 = zext i1 %call28 to i8
  store i8 %frombool29, i8* %isScopeBuilt, align 1
  %33 = load i32, i32* %type.addr, align 4
  %34 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %35 = load %struct.sVString*, %struct.sVString** %scope, align 8
  %36 = load %struct.sVString*, %struct.sVString** %typeRef, align 8
  call void @addOtherFields(%struct.sTagEntryInfo* %e, i32 %33, %struct.sStatementInfo* %34, %struct.sVString* %35, %struct.sVString* %36)
  %call30 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call30, i32* %corkIndex, align 4
  %37 = load i8, i8* %isScopeBuilt, align 1
  %tobool31 = trunc i8 %37 to i1
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end27
  %38 = load i32, i32* %type.addr, align 4
  %39 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @makeExtraTagEntry(i32 %38, %struct.sTagEntryInfo* %e, %struct.sVString* %39)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end27
  %40 = load %struct.sVString*, %struct.sVString** %scope, align 8
  call void @vStringDelete(%struct.sVString* %40)
  %41 = load %struct.sVString*, %struct.sVString** %typeRef, align 8
  call void @vStringDelete(%struct.sVString* %41)
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true4, %land.lhs.true, %land.end
  %42 = load i32, i32* %corkIndex, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then10
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

declare zeroext i1 @isInputHeaderFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @includeTag(i32 %type, i1 zeroext %isFileScope) #0 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  %isFileScope.addr = alloca i8, align 1
  %result = alloca i8, align 1
  %k = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %isFileScope to i8
  store i8 %frombool, i8* %isFileScope.addr, align 1
  %0 = load i8, i8* %isFileScope.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @isXtagEnabled(i32 0)
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %1 = load i32, i32* @Lang_csharp, align 4
  %call1 = call zeroext i1 @isInputLanguage(i32 %1)
  br i1 %call1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %2 = load i32, i32* %type.addr, align 4
  %call3 = call i32 @csharpTagKindFull(i32 %2, i1 zeroext false)
  store i32 %call3, i32* %k, align 4
  br label %if.end20

if.else4:                                         ; preds = %if.else
  %3 = load i32, i32* @Lang_java, align 4
  %call5 = call zeroext i1 @isInputLanguage(i32 %3)
  br i1 %call5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %4 = load i32, i32* %type.addr, align 4
  %call7 = call i32 @javaTagKindFull(i32 %4, i1 zeroext false)
  store i32 %call7, i32* %k, align 4
  br label %if.end19

if.else8:                                         ; preds = %if.else4
  %5 = load i32, i32* @Lang_d, align 4
  %call9 = call zeroext i1 @isInputLanguage(i32 %5)
  br i1 %call9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %6 = load i32, i32* %type.addr, align 4
  %call11 = call i32 @dTagKindFull(i32 %6, i1 zeroext false)
  store i32 %call11, i32* %k, align 4
  br label %if.end18

if.else12:                                        ; preds = %if.else8
  %7 = load i32, i32* @Lang_vera, align 4
  %call13 = call zeroext i1 @isInputLanguage(i32 %7)
  br i1 %call13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else12
  %8 = load i32, i32* %type.addr, align 4
  %call15 = call i32 @veraTagKindFull(i32 %8, i1 zeroext false)
  store i32 %call15, i32* %k, align 4
  br label %if.end

if.else16:                                        ; preds = %if.else12
  %9 = load i32, i32* %type.addr, align 4
  %call17 = call i32 @cTagKindFull(i32 %9, i1 zeroext false)
  store i32 %call17, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then14
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then10
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then6
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then2
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  %10 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.end21
  store i8 0, i8* %result, align 1
  br label %if.end26

if.else23:                                        ; preds = %if.end21
  %11 = load i32, i32* %k, align 4
  %call24 = call zeroext i1 @isInputLanguageKindEnabled(i32 %11)
  %frombool25 = zext i1 %call24 to i8
  store i8 %frombool25, i8* %result, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then22
  %12 = load i8, i8* %result, align 1
  %tobool27 = trunc i8 %12 to i1
  store i1 %tobool27, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end26, %if.then
  %13 = load i1, i1* %retval, align 1
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @roleForType(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 -1, i32* %result, align 4
  %0 = load i32, i32* @Lang_java, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, 14
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

declare zeroext i1 @isXtagEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @kindIndexForType(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* @Lang_csharp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %call1 = call i32 @csharpTagKindFull(i32 %1, i1 zeroext true)
  store i32 %call1, i32* %result, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @Lang_java, align 4
  %call2 = call zeroext i1 @isInputLanguage(i32 %2)
  br i1 %call2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %3 = load i32, i32* %type.addr, align 4
  %call4 = call i32 @javaTagKindFull(i32 %3, i1 zeroext true)
  store i32 %call4, i32* %result, align 4
  br label %if.end16

if.else5:                                         ; preds = %if.else
  %4 = load i32, i32* @Lang_d, align 4
  %call6 = call zeroext i1 @isInputLanguage(i32 %4)
  br i1 %call6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %5 = load i32, i32* %type.addr, align 4
  %call8 = call i32 @dTagKindFull(i32 %5, i1 zeroext true)
  store i32 %call8, i32* %result, align 4
  br label %if.end15

if.else9:                                         ; preds = %if.else5
  %6 = load i32, i32* @Lang_vera, align 4
  %call10 = call zeroext i1 @isInputLanguage(i32 %6)
  br i1 %call10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %7 = load i32, i32* %type.addr, align 4
  %call12 = call i32 @veraTagKindFull(i32 %7, i1 zeroext true)
  store i32 %call12, i32* %result, align 4
  br label %if.end

if.else13:                                        ; preds = %if.else9
  %8 = load i32, i32* %type.addr, align 4
  %call14 = call i32 @cTagKindFull(i32 %8, i1 zeroext true)
  store i32 %call14, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then3
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %9 = load i32, i32* %result, align 4
  ret i32 %9
}

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @findScopeHierarchy(%struct.sVString* %string, %struct.sStatementInfo* %st) #0 {
entry:
  %string.addr = alloca %struct.sVString*, align 8
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %found = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  %temp = alloca %struct.sVString*, align 8
  %s = alloca %struct.sStatementInfo*, align 8
  %vStringClear_s23 = alloca %struct.sVString*, align 8
  store %struct.sVString* %string, %struct.sVString** %string.addr, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i8 0, i8* %found, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
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
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %4, i32 0, i32 13
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %6, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %7 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 13
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context1, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %9, i32 0, i32 2
  %10 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringCopy(%struct.sVString* %7, %struct.sVString* %10)
  store i8 1, i8* %found, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %11, i32 0, i32 17
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp2 = icmp ne %struct.sStatementInfo* %12, null
  br i1 %cmp2, label %if.then3, label %if.end51

if.then3:                                         ; preds = %if.end
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %temp, align 8
  %13 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent4 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %13, i32 0, i32 17
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent4, align 8
  store %struct.sStatementInfo* %14, %struct.sStatementInfo** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %cmp5 = icmp ne %struct.sStatementInfo* %15, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %call6 = call zeroext i1 @isContextualStatement(%struct.sStatementInfo* %16)
  br i1 %call6, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %17, i32 0, i32 1
  %18 = load i32, i32* %declaration, align 4
  %cmp7 = icmp eq i32 %18, 10
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %declaration9 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %19, i32 0, i32 1
  %20 = load i32, i32* %declaration9, align 4
  %cmp10 = icmp eq i32 %20, 15
  br i1 %cmp10, label %if.then11, label %if.end49

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %for.body
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %declaration12 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %21, i32 0, i32 1
  %22 = load i32, i32* %declaration12, align 4
  %cmp13 = icmp eq i32 %22, 14
  br i1 %cmp13, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.then11
  %23 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %declaration15 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %23, i32 0, i32 1
  %24 = load i32, i32* %declaration15, align 4
  %cmp16 = icmp eq i32 %24, 16
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %25 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %declaration18 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %25, i32 0, i32 1
  %26 = load i32, i32* %declaration18, align 4
  %cmp19 = icmp eq i32 %26, 17
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false17, %lor.lhs.false14, %if.then11
  br label %for.inc

if.end21:                                         ; preds = %lor.lhs.false17
  store i8 1, i8* %found, align 1
  %27 = load %struct.sVString*, %struct.sVString** %temp, align 8
  %28 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  call void @vStringCopy(%struct.sVString* %27, %struct.sVString* %28)
  br label %do.body22

do.body22:                                        ; preds = %if.end21
  %29 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  store %struct.sVString* %29, %struct.sVString** %vStringClear_s23, align 8
  %30 = load %struct.sVString*, %struct.sVString** %vStringClear_s23, align 8
  %length24 = getelementptr inbounds %struct.sVString, %struct.sVString* %30, i32 0, i32 0
  store i64 0, i64* %length24, align 8
  %31 = load %struct.sVString*, %struct.sVString** %vStringClear_s23, align 8
  %buffer25 = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 2
  %32 = load i8*, i8** %buffer25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %arrayidx26, align 1
  br label %do.end27

do.end27:                                         ; preds = %do.body22
  %33 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %blockName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %33, i32 0, i32 14
  %34 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName, align 8
  %type28 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %type28, align 8
  %cmp29 = icmp eq i32 %35, 8
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %do.end27
  %36 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %context31 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %36, i32 0, i32 13
  %37 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context31, align 8
  %type32 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %37, i32 0, i32 0
  %38 = load i32, i32* %type32, align 8
  %cmp33 = icmp eq i32 %38, 8
  br i1 %cmp33, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.then30
  %39 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %context34 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %39, i32 0, i32 13
  %40 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context34, align 8
  %name35 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %40, i32 0, i32 2
  %41 = load %struct.sVString*, %struct.sVString** %name35, align 8
  %length36 = getelementptr inbounds %struct.sVString, %struct.sVString* %41, i32 0, i32 0
  %42 = load i64, i64* %length36, align 8
  %cmp37 = icmp ugt i64 %42, 0
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %land.lhs.true
  %43 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %44 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %context39 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %44, i32 0, i32 13
  %45 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context39, align 8
  %name40 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %45, i32 0, i32 2
  %46 = load %struct.sVString*, %struct.sVString** %name40, align 8
  call void @vStringCat(%struct.sVString* %43, %struct.sVString* %46)
  %47 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  call void @addContextSeparator(%struct.sVString* %47)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %land.lhs.true, %if.then30
  %48 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %49 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %blockName42 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %49, i32 0, i32 14
  %50 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName42, align 8
  %name43 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %50, i32 0, i32 2
  %51 = load %struct.sVString*, %struct.sVString** %name43, align 8
  call void @vStringCat(%struct.sVString* %48, %struct.sVString* %51)
  %52 = load %struct.sVString*, %struct.sVString** %temp, align 8
  %length44 = getelementptr inbounds %struct.sVString, %struct.sVString* %52, i32 0, i32 0
  %53 = load i64, i64* %length44, align 8
  %cmp45 = icmp ugt i64 %53, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end41
  %54 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  call void @addContextSeparator(%struct.sVString* %54)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end41
  %55 = load %struct.sVString*, %struct.sVString** %string.addr, align 8
  %56 = load %struct.sVString*, %struct.sVString** %temp, align 8
  call void @vStringCat(%struct.sVString* %55, %struct.sVString* %56)
  br label %if.end48

if.else:                                          ; preds = %do.end27
  store i8 0, i8* %found, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %lor.lhs.false8
  br label %for.inc

for.inc:                                          ; preds = %if.end49, %if.then20
  %57 = load %struct.sStatementInfo*, %struct.sStatementInfo** %s, align 8
  %parent50 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %57, i32 0, i32 17
  %58 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent50, align 8
  store %struct.sStatementInfo* %58, %struct.sStatementInfo** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.sVString*, %struct.sVString** %temp, align 8
  call void @vStringDelete(%struct.sVString* %59)
  br label %if.end51

if.end51:                                         ; preds = %for.end, %if.end
  %60 = load i8, i8* %found, align 1
  %tobool = trunc i8 %60 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addOtherFields(%struct.sTagEntryInfo* %tag, i32 %type, %struct.sStatementInfo* %st, %struct.sVString* %scope, %struct.sVString* %typeRef) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %type.addr = alloca i32, align 4
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %typeRef.addr = alloca %struct.sVString*, align 8
  %ptype = alloca i32, align 4
  %p = alloca i8*, align 8
  %prev2 = alloca %struct.sTokenInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  store %struct.sVString* %typeRef, %struct.sVString** %typeRef.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 22, label %sw.bb
    i32 10, label %sw.bb
    i32 17, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
    i32 4, label %sw.bb1
    i32 5, label %sw.bb1
    i32 7, label %sw.bb1
    i32 9, label %sw.bb1
    i32 12, label %sw.bb1
    i32 16, label %sw.bb1
    i32 18, label %sw.bb1
    i32 19, label %sw.bb1
    i32 20, label %sw.bb1
    i32 21, label %sw.bb1
    i32 23, label %sw.bb1
    i32 28, label %sw.bb1
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %1 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %3 = load %struct.sVString*, %struct.sVString** @Signature, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %4, i8** %signature, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %if.end
  %6 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %length2 = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length2, align 8
  %cmp3 = icmp ugt i64 %7, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %sw.bb1
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call zeroext i1 @isMember(%struct.sStatementInfo* %8)
  br i1 %call, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %9, i32 0, i32 17
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %declaration, align 4
  %cmp4 = icmp eq i32 %11, 10
  br i1 %cmp4, label %if.then5, label %if.end30

if.then5:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %context = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 13
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %context, align 8
  %type6 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %13, i32 0, i32 0
  %14 = load i32, i32* %type6, align 8
  %cmp7 = icmp eq i32 %14, 8
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %call9 = call i32 @kindIndexForType(i32 1)
  %15 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields10 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %15, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields10, i32 0, i32 5
  store i32 %call9, i32* %scopeKindIndex, align 4
  %16 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %buffer11 = getelementptr inbounds %struct.sVString, %struct.sVString* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer11, align 8
  %18 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields12 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %18, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields12, i32 0, i32 6
  store i8* %17, i8** %scopeName, align 8
  br label %if.end29

if.else:                                          ; preds = %if.then5
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent13 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %19, i32 0, i32 17
  %20 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent13, align 8
  %cmp14 = icmp eq %struct.sStatementInfo* %20, null
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %21 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent15 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %21, i32 0, i32 17
  %22 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent15, align 8
  %declaration16 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %22, i32 0, i32 1
  %23 = load i32, i32* %declaration16, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %23, %cond.false ]
  %call17 = call i32 @declToTagType(i32 %cond)
  store i32 %call17, i32* %ptype, align 4
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %land.lhs.true18, label %if.end28

land.lhs.true18:                                  ; preds = %cond.end
  %24 = load i32, i32* %ptype, align 4
  %call19 = call zeroext i1 @isXtagEnabled(i32 0)
  %call20 = call zeroext i1 @includeTag(i32 %24, i1 zeroext %call19)
  br i1 %call20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %land.lhs.true18
  %25 = load i32, i32* %ptype, align 4
  %call22 = call i32 @kindIndexForType(i32 %25)
  %26 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields23 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %26, i32 0, i32 11
  %scopeKindIndex24 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields23, i32 0, i32 5
  store i32 %call22, i32* %scopeKindIndex24, align 4
  %27 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %buffer25 = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 2
  %28 = load i8*, i8** %buffer25, align 8
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields26 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %29, i32 0, i32 11
  %scopeName27 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields26, i32 0, i32 6
  store i8* %28, i8** %scopeName27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %land.lhs.true18, %cond.end
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then8
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false, %sw.bb1
  %30 = load i32, i32* %type.addr, align 4
  %cmp31 = icmp eq i32 %30, 1
  br i1 %cmp31, label %land.lhs.true38, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end30
  %31 = load i32, i32* %type.addr, align 4
  %cmp33 = icmp eq i32 %31, 7
  br i1 %cmp33, label %land.lhs.true38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false32
  %32 = load i32, i32* %type.addr, align 4
  %cmp35 = icmp eq i32 %32, 19
  br i1 %cmp35, label %land.lhs.true38, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false34
  %33 = load i32, i32* %type.addr, align 4
  %cmp37 = icmp eq i32 %33, 28
  br i1 %cmp37, label %land.lhs.true38, label %if.end45

land.lhs.true38:                                  ; preds = %lor.lhs.false36, %lor.lhs.false34, %lor.lhs.false32, %if.end30
  %34 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parentClasses = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %34, i32 0, i32 16
  %35 = load %struct.sVString*, %struct.sVString** %parentClasses, align 8
  %length39 = getelementptr inbounds %struct.sVString, %struct.sVString* %35, i32 0, i32 0
  %36 = load i64, i64* %length39, align 8
  %cmp40 = icmp ugt i64 %36, 0
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %land.lhs.true38
  %37 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parentClasses42 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %37, i32 0, i32 16
  %38 = load %struct.sVString*, %struct.sVString** %parentClasses42, align 8
  %buffer43 = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 2
  %39 = load i8*, i8** %buffer43, align 8
  %40 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields44 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %40, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields44, i32 0, i32 3
  store i8* %39, i8** %inheritance, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %land.lhs.true38, %lor.lhs.false36
  %41 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %41, i32 0, i32 10
  %42 = load i32, i32* %implementation, align 8
  %cmp46 = icmp ne i32 %42, 0
  br i1 %cmp46, label %land.lhs.true47, label %if.end60

land.lhs.true47:                                  ; preds = %if.end45
  %43 = load i32, i32* @Lang_cpp, align 4
  %call48 = call zeroext i1 @isInputLanguage(i32 %43)
  br i1 %call48, label %if.then55, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %land.lhs.true47
  %44 = load i32, i32* @Lang_csharp, align 4
  %call50 = call zeroext i1 @isInputLanguage(i32 %44)
  br i1 %call50, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false49
  %45 = load i32, i32* @Lang_d, align 4
  %call52 = call zeroext i1 @isInputLanguage(i32 %45)
  br i1 %call52, label %if.then55, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false51
  %46 = load i32, i32* @Lang_java, align 4
  %call54 = call zeroext i1 @isInputLanguage(i32 %46)
  br i1 %call54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %lor.lhs.false53, %lor.lhs.false51, %lor.lhs.false49, %land.lhs.true47
  %47 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation56 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %47, i32 0, i32 10
  %48 = load i32, i32* %implementation56, align 8
  %call57 = call i8* @implementationString(i32 %48)
  %49 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields58 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %49, i32 0, i32 11
  %implementation59 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields58, i32 0, i32 2
  store i8* %call57, i8** %implementation59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %lor.lhs.false53, %if.end45
  %50 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call61 = call zeroext i1 @isMember(%struct.sStatementInfo* %50)
  br i1 %call61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.end60
  %51 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call63 = call i8* @accessField(%struct.sStatementInfo* %51)
  %52 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields64 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %52, i32 0, i32 11
  %access = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields64, i32 0, i32 0
  store i8* %call63, i8** %access, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end60
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end65, %sw.default
  %53 = load i32, i32* %type.addr, align 4
  %cmp66 = icmp eq i32 %53, 21
  br i1 %cmp66, label %land.lhs.true71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %sw.epilog
  %54 = load i32, i32* %type.addr, align 4
  %cmp68 = icmp eq i32 %54, 24
  br i1 %cmp68, label %land.lhs.true71, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false67
  %55 = load i32, i32* %type.addr, align 4
  %cmp70 = icmp eq i32 %55, 9
  br i1 %cmp70, label %land.lhs.true71, label %if.end103

land.lhs.true71:                                  ; preds = %lor.lhs.false69, %lor.lhs.false67, %sw.epilog
  %56 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call72 = call zeroext i1 @isContextualStatement(%struct.sStatementInfo* %56)
  br i1 %call72, label %if.then73, label %if.end103

if.then73:                                        ; preds = %land.lhs.true71
  %57 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration74 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %57, i32 0, i32 1
  %58 = load i32, i32* %declaration74, align 4
  %call75 = call i32 @declToTagType(i32 %58)
  %call76 = call i8* @tagName(i32 %call75)
  %59 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields77 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %59, i32 0, i32 11
  %typeRef78 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields77, i32 0, i32 9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef78, i64 0, i64 0
  store i8* %call76, i8** %arrayidx, align 8
  %60 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %blockName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %60, i32 0, i32 14
  %61 = load %struct.sTokenInfo*, %struct.sTokenInfo** %blockName, align 8
  %name = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %61, i32 0, i32 2
  %62 = load %struct.sVString*, %struct.sVString** %name, align 8
  %buffer79 = getelementptr inbounds %struct.sVString, %struct.sVString* %62, i32 0, i32 2
  %63 = load i8*, i8** %buffer79, align 8
  store i8* %63, i8** %p, align 8
  %64 = load i8*, i8** %p, align 8
  %cmp80 = icmp eq i8* %64, null
  br i1 %cmp80, label %if.then84, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.then73
  %65 = load i8*, i8** %p, align 8
  %66 = load i8, i8* %65, align 1
  %conv = sext i8 %66 to i32
  %cmp82 = icmp eq i32 %conv, 0
  br i1 %cmp82, label %if.then84, label %if.end93

if.then84:                                        ; preds = %lor.lhs.false81, %if.then73
  %67 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call85 = call %struct.sTokenInfo* @prevToken(%struct.sStatementInfo* %67, i32 2)
  store %struct.sTokenInfo* %call85, %struct.sTokenInfo** %prev2, align 8
  %68 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %type86 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %68, i32 0, i32 0
  %69 = load i32, i32* %type86, align 8
  %cmp87 = icmp eq i32 %69, 8
  br i1 %cmp87, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.then84
  %70 = load %struct.sTokenInfo*, %struct.sTokenInfo** %prev2, align 8
  %name90 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %70, i32 0, i32 2
  %71 = load %struct.sVString*, %struct.sVString** %name90, align 8
  %buffer91 = getelementptr inbounds %struct.sVString, %struct.sVString* %71, i32 0, i32 2
  %72 = load i8*, i8** %buffer91, align 8
  store i8* %72, i8** %p, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then84
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %lor.lhs.false81
  %73 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %length94 = getelementptr inbounds %struct.sVString, %struct.sVString* %73, i32 0, i32 0
  %74 = load i64, i64* %length94, align 8
  %cmp95 = icmp ugt i64 %74, 0
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end93
  %75 = load %struct.sVString*, %struct.sVString** %typeRef.addr, align 8
  %76 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @vStringCopy(%struct.sVString* %75, %struct.sVString* %76)
  %77 = load %struct.sVString*, %struct.sVString** %typeRef.addr, align 8
  call void @addContextSeparator(%struct.sVString* %77)
  %78 = load %struct.sVString*, %struct.sVString** %typeRef.addr, align 8
  %79 = load i8*, i8** %p, align 8
  call void @vStringCatS(%struct.sVString* %78, i8* %79)
  %80 = load %struct.sVString*, %struct.sVString** %typeRef.addr, align 8
  %buffer98 = getelementptr inbounds %struct.sVString, %struct.sVString* %80, i32 0, i32 2
  %81 = load i8*, i8** %buffer98, align 8
  store i8* %81, i8** %p, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end93
  %82 = load i8*, i8** %p, align 8
  %83 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields100 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %83, i32 0, i32 11
  %typeRef101 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields100, i32 0, i32 9
  %arrayidx102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef101, i64 0, i64 1
  store i8* %82, i8** %arrayidx102, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.end99, %land.lhs.true71, %lor.lhs.false69
  ret void
}

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeExtraTagEntry(i32 %type, %struct.sTagEntryInfo* %e, %struct.sVString* %scope) #0 {
entry:
  %type.addr = alloca i32, align 4
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %scope.addr = alloca %struct.sVString*, align 8
  %scopedName = alloca %struct.sVString*, align 8
  %sc = alloca i8*, align 8
  %colon = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  %call = call zeroext i1 @isXtagEnabled(i32 3)
  br i1 %call, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %cmp = icmp ne %struct.sVString* %0, null
  br i1 %cmp, label %land.lhs.true1, label %if.end22

land.lhs.true1:                                   ; preds = %land.lhs.true
  %1 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %1, i32 0, i32 0
  %2 = load i64, i64* %length, align 8
  %cmp2 = icmp ugt i64 %2, 0
  br i1 %cmp2, label %if.then, label %if.end22

if.then:                                          ; preds = %land.lhs.true1
  %call3 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call3, %struct.sVString** %scopedName, align 8
  %3 = load i32, i32* %type.addr, align 4
  %cmp4 = icmp ne i32 %3, 3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %4 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %5 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @vStringCopy(%struct.sVString* %4, %struct.sVString* %5)
  br label %if.end13

if.else:                                          ; preds = %if.then
  %6 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  store i8* %7, i8** %sc, align 8
  %8 = load i8*, i8** %sc, align 8
  %call6 = call i8* @strrchr(i8* %8, i32 58)
  store i8* %call6, i8** %colon, align 8
  %9 = load i8*, i8** %colon, align 8
  %cmp7 = icmp ne i8* %9, null
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then8
  %10 = load i8*, i8** %colon, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv, 58
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %colon, align 8
  %13 = load i8*, i8** %sc, align 8
  %cmp11 = icmp ugt i8* %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %colon, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %colon, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %17 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  %18 = load i8*, i8** %colon, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8*, i8** %sc, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCopy(%struct.sVString* %16, %struct.sVString* %17, i64 %sub.ptr.sub)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then5
  %20 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %length14 = getelementptr inbounds %struct.sVString, %struct.sVString* %20, i32 0, i32 0
  %21 = load i64, i64* %length14, align 8
  %cmp15 = icmp ugt i64 %21, 0
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end13
  %22 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  call void @addContextSeparator(%struct.sVString* %22)
  %23 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %24 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %24, i32 0, i32 7
  %25 = load i8*, i8** %name, align 8
  call void @vStringCatS(%struct.sVString* %23, i8* %25)
  %26 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  %buffer18 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer18, align 8
  %28 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %name19 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %28, i32 0, i32 7
  store i8* %27, i8** %name19, align 8
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  call void @markTagExtraBit(%struct.sTagEntryInfo* %29, i32 3)
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %call20 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %30)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13
  %31 = load %struct.sVString*, %struct.sVString** %scopedName, align 8
  call void @vStringDelete(%struct.sVString* %31)
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @csharpTagKindFull(i32 %type, i1 zeroext %with_assert) #0 {
entry:
  %type.addr = alloca i32, align 4
  %with_assert.addr = alloca i8, align 1
  %result = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %with_assert to i8
  store i8 %frombool, i8* %with_assert.addr, align 1
  store i32 -1, i32* %result, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
    i32 10, label %sw.bb7
    i32 12, label %sw.bb8
    i32 16, label %sw.bb9
    i32 19, label %sw.bb10
    i32 21, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %result, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 5, i32* %result, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %result, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %result, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* %result, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 6, i32* %result, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 7, i32* %result, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 9, i32* %result, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 10, i32* %result, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 11, i32* %result, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 12, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i8, i8* %with_assert.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @javaTagKindFull(i32 %type, i1 zeroext %with_assert) #0 {
entry:
  %type.addr = alloca i32, align 4
  %with_assert.addr = alloca i8, align 1
  %result = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %with_assert to i8
  store i8 %frombool, i8* %with_assert.addr, align 1
  store i32 -1, i32* %result, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 5, label %sw.bb3
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
    i32 10, label %sw.bb6
    i32 13, label %sw.bb7
    i32 14, label %sw.bb7
    i32 28, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %result, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %result, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %result, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %result, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 5, i32* %result, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 6, i32* %result, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 7, i32* %result, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 0, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i8, i8* %with_assert.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @dTagKindFull(i32 %type, i1 zeroext %with_assert) #0 {
entry:
  %type.addr = alloca i32, align 4
  %with_assert.addr = alloca i8, align 1
  %result = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %with_assert to i8
  store i8 %frombool, i8* %with_assert.addr, align 1
  store i32 -1, i32* %result, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 21, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 25, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
    i32 11, label %sw.bb9
    i32 13, label %sw.bb10
    i32 12, label %sw.bb11
    i32 17, label %sw.bb12
    i32 19, label %sw.bb13
    i32 22, label %sw.bb14
    i32 23, label %sw.bb15
    i32 24, label %sw.bb16
    i32 26, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %result, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %result, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %result, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %result, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* %result, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 5, i32* %result, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 6, i32* %result, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 7, i32* %result, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 9, i32* %result, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 10, i32* %result, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 11, i32* %result, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store i32 12, i32* %result, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 13, i32* %result, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i32 14, i32* %result, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store i32 15, i32* %result, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  store i32 16, i32* %result, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  store i32 17, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i8, i8* %with_assert.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @veraTagKindFull(i32 %type, i1 zeroext %with_assert) #0 {
entry:
  %type.addr = alloca i32, align 4
  %with_assert.addr = alloca i8, align 1
  %result = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %with_assert to i8
  store i8 %frombool, i8* %with_assert.addr, align 1
  store i32 -1, i32* %result, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 6, label %sw.bb3
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
    i32 9, label %sw.bb6
    i32 15, label %sw.bb7
    i32 17, label %sw.bb8
    i32 18, label %sw.bb9
    i32 20, label %sw.bb10
    i32 21, label %sw.bb11
    i32 24, label %sw.bb12
    i32 25, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %result, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %result, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %result, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %result, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 5, i32* %result, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 6, i32* %result, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 7, i32* %result, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 9, i32* %result, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 10, i32* %result, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 11, i32* %result, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 12, i32* %result, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store i32 13, i32* %result, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 14, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i8, i8* %with_assert.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @cTagKindFull(i32 %type, i1 zeroext %with_assert) #0 {
entry:
  %type.addr = alloca i32, align 4
  %with_assert.addr = alloca i8, align 1
  %result = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %with_assert to i8
  store i8 %frombool, i8* %with_assert.addr, align 1
  store i32 -1, i32* %result, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 6, label %sw.bb3
    i32 8, label %sw.bb4
    i32 9, label %sw.bb5
    i32 12, label %sw.bb6
    i32 17, label %sw.bb7
    i32 19, label %sw.bb8
    i32 21, label %sw.bb9
    i32 23, label %sw.bb10
    i32 24, label %sw.bb11
    i32 25, label %sw.bb12
    i32 27, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %result, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 4, i32* %result, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %result, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %result, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 6, i32* %result, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 7, i32* %result, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 8, i32* %result, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 9, i32* %result, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 10, i32* %result, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 11, i32* %result, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 12, i32* %result, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 13, i32* %result, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store i32 14, i32* %result, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 15, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i8, i8* %with_assert.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

declare zeroext i1 @isInputLanguageKindEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addContextSeparator(%struct.sVString* %scope) #0 {
entry:
  %scope.addr = alloca %struct.sVString*, align 8
  store %struct.sVString* %scope, %struct.sVString** %scope.addr, align 8
  %0 = load i32, i32* @Lang_c, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @Lang_cpp, align 4
  %call1 = call zeroext i1 @isInputLanguage(i32 %1)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @vStringCatS(%struct.sVString* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0))
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* @Lang_java, align 4
  %call2 = call zeroext i1 @isInputLanguage(i32 %3)
  br i1 %call2, label %if.then7, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.else
  %4 = load i32, i32* @Lang_csharp, align 4
  %call4 = call zeroext i1 @isInputLanguage(i32 %4)
  br i1 %call4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32, i32* @Lang_d, align 4
  %call6 = call zeroext i1 @isInputLanguage(i32 %5)
  br i1 %call6, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %if.else
  %6 = load %struct.sVString*, %struct.sVString** %scope.addr, align 8
  call void @vStringPut(%struct.sVString* %6, i32 46)
  br label %if.end

if.end:                                           ; preds = %if.then7, %lor.lhs.false5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @declToTagType(i32 %declaration) #0 {
entry:
  %declaration.addr = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 %declaration, i32* %declaration.addr, align 4
  store i32 0, i32* %type, align 4
  %0 = load i32, i32* %declaration.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
    i32 8, label %sw.bb5
    i32 10, label %sw.bb6
    i32 15, label %sw.bb7
    i32 14, label %sw.bb8
    i32 16, label %sw.bb9
    i32 17, label %sw.bb10
    i32 19, label %sw.bb11
    i32 20, label %sw.bb12
    i32 18, label %sw.bb13
    i32 21, label %sw.bb14
    i32 23, label %sw.bb15
    i32 24, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* %type, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 4, i32* %type, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i32 6, i32* %type, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i32 6, i32* %type, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 7, i32* %type, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i32 12, i32* %type, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i32 15, i32* %type, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 20, i32* %type, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store i32 22, i32* %type, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 19, i32* %type, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i32 23, i32* %type, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store i32 26, i32* %type, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  store i32 28, i32* %type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %type, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @implementationString(i32 %imp) #0 {
entry:
  %imp.addr = alloca i32, align 4
  store i32 %imp, i32* %imp.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %imp.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @implementationString.names, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @accessField(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %result = alloca i8*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i8* null, i8** %result, align 8
  %0 = load i32, i32* @Lang_cpp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %scope, align 8
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8** %result, align 8
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 15
  %access = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member, i32 0, i32 0
  %4 = load i32, i32* %access, align 8
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member3 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 15
  %access4 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member3, i32 0, i32 0
  %6 = load i32, i32* %access4, align 8
  %call5 = call i8* @accessString(i32 %6)
  store i8* %call5, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %7 = load i8*, i8** %result, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @tagName(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* @Lang_csharp, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %call1 = call i32 @csharpTagKindFull(i32 %1, i1 zeroext true)
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr inbounds [13 x %struct.sKindDefinition], [13 x %struct.sKindDefinition]* @CsharpKinds, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 2
  %2 = load i8*, i8** %name, align 8
  store i8* %2, i8** %result, align 8
  br label %if.end29

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @Lang_java, align 4
  %call2 = call zeroext i1 @isInputLanguage(i32 %3)
  br i1 %call2, label %if.then3, label %if.else8

if.then3:                                         ; preds = %if.else
  %4 = load i32, i32* %type.addr, align 4
  %call4 = call i32 @javaTagKindFull(i32 %4, i1 zeroext true)
  %idxprom5 = sext i32 %call4 to i64
  %arrayidx6 = getelementptr inbounds [9 x %struct.sKindDefinition], [9 x %struct.sKindDefinition]* @JavaKinds, i64 0, i64 %idxprom5
  %name7 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx6, i32 0, i32 2
  %5 = load i8*, i8** %name7, align 8
  store i8* %5, i8** %result, align 8
  br label %if.end28

if.else8:                                         ; preds = %if.else
  %6 = load i32, i32* @Lang_d, align 4
  %call9 = call zeroext i1 @isInputLanguage(i32 %6)
  br i1 %call9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else8
  %7 = load i32, i32* %type.addr, align 4
  %call11 = call i32 @dTagKindFull(i32 %7, i1 zeroext true)
  %idxprom12 = sext i32 %call11 to i64
  %arrayidx13 = getelementptr inbounds [18 x %struct.sKindDefinition], [18 x %struct.sKindDefinition]* @DKinds, i64 0, i64 %idxprom12
  %name14 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx13, i32 0, i32 2
  %8 = load i8*, i8** %name14, align 8
  store i8* %8, i8** %result, align 8
  br label %if.end27

if.else15:                                        ; preds = %if.else8
  %9 = load i32, i32* @Lang_vera, align 4
  %call16 = call zeroext i1 @isInputLanguage(i32 %9)
  br i1 %call16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else15
  %10 = load i32, i32* %type.addr, align 4
  %call18 = call i32 @veraTagKindFull(i32 %10, i1 zeroext true)
  %idxprom19 = sext i32 %call18 to i64
  %arrayidx20 = getelementptr inbounds [16 x %struct.sKindDefinition], [16 x %struct.sKindDefinition]* @VeraKinds, i64 0, i64 %idxprom19
  %name21 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx20, i32 0, i32 2
  %11 = load i8*, i8** %name21, align 8
  store i8* %11, i8** %result, align 8
  br label %if.end

if.else22:                                        ; preds = %if.else15
  %12 = load i32, i32* %type.addr, align 4
  %call23 = call i32 @cTagKindFull(i32 %12, i1 zeroext true)
  %idxprom24 = sext i32 %call23 to i64
  %arrayidx25 = getelementptr inbounds [16 x %struct.sKindDefinition], [16 x %struct.sKindDefinition]* @CKinds, i64 0, i64 %idxprom24
  %name26 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx25, i32 0, i32 2
  %13 = load i8*, i8** %name26, align 8
  store i8* %13, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then10
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then3
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %14 = load i8*, i8** %result, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @accessString(i32 %access) #0 {
entry:
  %access.addr = alloca i32, align 4
  store i32 %access, i32* %access.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %access.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @accessString.names, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

declare i8* @strrchr(i8*, i32) #1

declare void @vStringNCopy(%struct.sVString*, %struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @skipInitializer(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %done = alloca i8, align 1
  %c = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i8 0, i8* %done, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %entry
  %0 = load i8, i8* %done, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @skipToNonWhite()
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 2) #7
  unreachable

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  switch i32 %2, label %sw.default [
    i32 44, label %sw.bb
    i32 59, label %sw.bb
    i32 48, label %sw.bb1
    i32 91, label %sw.bb5
    i32 40, label %sw.bb6
    i32 123, label %sw.bb7
    i32 60, label %sw.bb8
    i32 125, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  store i8 1, i8* %done, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.else
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %3, i32 0, i32 10
  %4 = load i32, i32* %implementation, align 8
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %sw.bb1
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %implementation4 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 10
  store i32 3, i32* %implementation4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %sw.bb1
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.else
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0))
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.else
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.else
  call void @skipToMatch(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0))
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.else
  call void @processAngleBracket()
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.else
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 17
  %7 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent, align 8
  %cmp10 = icmp eq %struct.sStatementInfo* %7, null
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb9
  br i1 false, label %if.then13, label %if.else14

cond.false:                                       ; preds = %sw.bb9
  %8 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %parent11 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %8, i32 0, i32 17
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %parent11, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %9, i32 0, i32 1
  %10 = load i32, i32* %declaration, align 4
  %cmp12 = icmp eq i32 %10, 3
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %cond.false, %cond.true
  store i8 1, i8* %done, align 1
  br label %if.end20

if.else14:                                        ; preds = %cond.false, %cond.true
  %call15 = call zeroext i1 @cppIsBraceFormat()
  br i1 %call15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.else14
  %call17 = call i8* @getInputFileName()
  %call18 = call i64 @getInputLineNumber()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0), i8* %call17, i64 %call18)
  call void @longjmp(i32* getelementptr inbounds ([48 x i32], [48 x i32]* @Exception, i64 0, i64 0), i32 3) #7
  unreachable

if.end19:                                         ; preds = %if.else14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then13
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end20, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %if.end, %sw.bb
  br label %if.end21

if.end21:                                         ; preds = %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %c, align 4
  ret i32 %11
}

declare zeroext i1 @cppIsBraceFormat() #1

declare i32 @cppGetDirectiveNestLevel() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skipToFormattedBraceMatch() #0 {
entry:
  %c = alloca i32, align 4
  %next = alloca i32, align 4
  %call = call i32 @cppGetc()
  store i32 %call, i32* %c, align 4
  %call1 = call i32 @cppGetc()
  store i32 %call1, i32* %next, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %1, 10
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, i32* %next, align 4
  %cmp3 = icmp ne i32 %2, 125
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %3, %lor.end ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %next, align 4
  store i32 %5, i32* %c, align 4
  %call4 = call i32 @cppGetc()
  store i32 %call4, i32* %next, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseIdentifier(%struct.sStatementInfo* %st, i32 %c) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %c.addr = alloca i32, align 4
  %token = alloca %struct.sTokenInfo*, align 8
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %5 = load i32, i32* %c.addr, align 4
  call void @readIdentifier(%struct.sTokenInfo* %4, i32 %5)
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  call void @processToken(%struct.sTokenInfo* %8, %struct.sStatementInfo* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @qualifyEnumeratorTag(%struct.sStatementInfo* %st, %struct.sTokenInfo* %nameToken) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %nameToken.addr = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %nameToken, %struct.sTokenInfo** %nameToken.addr, align 8
  store i32 0, i32* %corkIndex, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %3 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call i32 @makeTag(%struct.sTokenInfo* %2, %struct.sStatementInfo* %3, i1 zeroext true, i32 3)
  store i32 %call, i32* %corkIndex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %corkIndex, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @qualifyBlockTag(%struct.sStatementInfo* %st, %struct.sTokenInfo* %nameToken) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %nameToken.addr = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %nameToken, %struct.sTokenInfo** %nameToken.addr, align 8
  store i32 0, i32* %corkIndex, align 4
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %declaration, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 15, label %sw.bb
    i32 18, label %sw.bb
    i32 21, label %sw.bb
    i32 20, label %sw.bb
    i32 23, label %sw.bb
    i32 24, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %call = call i32 @qualifyCompoundTag(%struct.sStatementInfo* %2, %struct.sTokenInfo* %3)
  store i32 %call, i32* %corkIndex, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %4 = load i32, i32* %corkIndex, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @qualifyFunctionTag(%struct.sStatementInfo* %st, %struct.sTokenInfo* %nameToken) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %nameToken.addr = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  %type1 = alloca i32, align 4
  %isFileScope = alloca i8, align 1
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %nameToken, %struct.sTokenInfo** %nameToken.addr, align 8
  store i32 0, i32* %corkIndex, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 15
  %access = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member, i32 0, i32 0
  %3 = load i32, i32* %access, align 8
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call zeroext i1 @isMember(%struct.sStatementInfo* %4)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %scope, align 8
  %cmp3 = icmp eq i32 %6, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %cmp3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.then
  %8 = phi i1 [ true, %if.then ], [ %7, %land.end ]
  %frombool = zext i1 %8 to i8
  store i8 %frombool, i8* %isFileScope, align 1
  %9 = load i32, i32* @Lang_java, align 4
  %call4 = call zeroext i1 @isInputLanguage(i32 %9)
  br i1 %call4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %10 = load i32, i32* @Lang_csharp, align 4
  %call5 = call zeroext i1 @isInputLanguage(i32 %10)
  br i1 %call5, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %lor.end
  store i32 10, i32* %type1, align 4
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i32, i32* @Lang_vera, align 4
  %call7 = call zeroext i1 @isInputLanguage(i32 %11)
  br i1 %call7, label %land.lhs.true, label %if.else10

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 1
  %13 = load i32, i32* %declaration, align 4
  %cmp8 = icmp eq i32 %13, 19
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %land.lhs.true
  store i32 20, i32* %type1, align 4
  br label %if.end

if.else10:                                        ; preds = %land.lhs.true, %if.else
  store i32 6, i32* %type1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %16 = load i8, i8* %isFileScope, align 1
  %tobool = trunc i8 %16 to i1
  %17 = load i32, i32* %type1, align 4
  %call12 = call i32 @makeTag(%struct.sTokenInfo* %14, %struct.sStatementInfo* %15, i1 zeroext %tobool, i32 %17)
  store i32 %call12, i32* %corkIndex, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %entry
  %18 = load i32, i32* %corkIndex, align 4
  ret i32 %18
}

declare i32 @sprintf(i8*, i8*, ...) #1

declare void @vStringCopyS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @qualifyFunctionDeclTag(%struct.sStatementInfo* %st, %struct.sTokenInfo* %nameToken) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %nameToken.addr = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %nameToken, %struct.sTokenInfo** %nameToken.addr, align 8
  store i32 0, i32* %corkIndex, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end15

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @Lang_java, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %2)
  br i1 %call, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, i32* @Lang_csharp, align 4
  %call1 = call zeroext i1 @isInputLanguage(i32 %3)
  br i1 %call1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %lor.lhs.false, %if.else
  %4 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %5 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %call3 = call i32 @qualifyFunctionTag(%struct.sStatementInfo* %4, %struct.sTokenInfo* %5)
  store i32 %call3, i32* %corkIndex, align 4
  br label %if.end14

if.else4:                                         ; preds = %lor.lhs.false
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %scope, align 8
  %cmp5 = icmp eq i32 %7, 4
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call7 = call i32 @makeTag(%struct.sTokenInfo* %8, %struct.sStatementInfo* %9, i1 zeroext true, i32 21)
  store i32 %call7, i32* %corkIndex, align 4
  br label %if.end13

if.else8:                                         ; preds = %if.else4
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 1
  %11 = load i32, i32* %declaration, align 4
  %call9 = call zeroext i1 @isValidTypeSpecifier(i32 %11)
  br i1 %call9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else8
  %12 = load i32, i32* @Lang_csharp, align 4
  %call10 = call zeroext i1 @isInputLanguage(i32 %12)
  br i1 %call10, label %if.end, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %13 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %14 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call12 = call i32 @makeTag(%struct.sTokenInfo* %13, %struct.sStatementInfo* %14, i1 zeroext true, i32 17)
  store i32 %call12, i32* %corkIndex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true, %if.else8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then2
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %15 = load i32, i32* %corkIndex, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isContextualKeyword(%struct.sTokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.sTokenInfo*, align 8
  %result = alloca i8, align 1
  store %struct.sTokenInfo* %token, %struct.sTokenInfo** %token.addr, align 8
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token.addr, align 8
  %keyword = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 1
  %1 = load i32, i32* %keyword, align 4
  switch i32 %1, label %sw.default [
    i32 13, label %sw.bb
    i32 25, label %sw.bb
    i32 46, label %sw.bb
    i32 55, label %sw.bb
    i32 83, label %sw.bb
    i32 99, label %sw.bb
    i32 149, label %sw.bb
    i32 87, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @qualifyVariableTag(%struct.sStatementInfo* %st, %struct.sTokenInfo* %nameToken) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %nameToken.addr = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %nameToken, %struct.sTokenInfo** %nameToken.addr, align 8
  store i32 0, i32* %corkIndex, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end75

if.else:                                          ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 0
  %3 = load i32, i32* %scope, align 8
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %5 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call = call i32 @makeTag(%struct.sTokenInfo* %4, %struct.sStatementInfo* %5, i1 zeroext true, i32 21)
  store i32 %call, i32* %corkIndex, align 4
  br label %if.end74

if.else3:                                         ; preds = %if.else
  %6 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %6, i32 0, i32 1
  %7 = load i32, i32* %declaration, align 4
  %cmp4 = icmp eq i32 %7, 4
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %8 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %9 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %10, i32 0, i32 15
  %access = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member, i32 0, i32 0
  %11 = load i32, i32* %access, align 8
  %cmp6 = icmp eq i32 %11, 2
  %call7 = call i32 @makeTag(%struct.sTokenInfo* %8, %struct.sStatementInfo* %9, i1 zeroext %cmp6, i32 4)
  store i32 %call7, i32* %corkIndex, align 4
  br label %if.end73

if.else8:                                         ; preds = %if.else3
  %12 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration9 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %12, i32 0, i32 1
  %13 = load i32, i32* %declaration9, align 4
  %cmp10 = icmp eq i32 %13, 12
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else8
  %14 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %15 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call12 = call i32 @makeTag(%struct.sTokenInfo* %14, %struct.sStatementInfo* %15, i1 zeroext false, i32 13)
  store i32 %call12, i32* %corkIndex, align 4
  br label %if.end72

if.else13:                                        ; preds = %if.else8
  %16 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration14 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %16, i32 0, i32 1
  %17 = load i32, i32* %declaration14, align 4
  %cmp15 = icmp eq i32 %17, 13
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else13
  %18 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %19 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call17 = call i32 @makeTag(%struct.sTokenInfo* %18, %struct.sStatementInfo* %19, i1 zeroext false, i32 14)
  store i32 %call17, i32* %corkIndex, align 4
  br label %if.end71

if.else18:                                        ; preds = %if.else13
  %20 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration19 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %20, i32 0, i32 1
  %21 = load i32, i32* %declaration19, align 4
  %cmp20 = icmp eq i32 %21, 22
  br i1 %cmp20, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else18
  %22 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %assignment = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %22, i32 0, i32 8
  %23 = load i8, i8* %assignment, align 2
  %tobool = trunc i8 %23 to i1
  br i1 %tobool, label %if.then21, label %if.else23

if.then21:                                        ; preds = %land.lhs.true
  %24 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %25 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call22 = call i32 @makeTag(%struct.sTokenInfo* %24, %struct.sStatementInfo* %25, i1 zeroext true, i32 21)
  store i32 %call22, i32* %corkIndex, align 4
  br label %if.end70

if.else23:                                        ; preds = %land.lhs.true, %if.else18
  %26 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration24 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %26, i32 0, i32 1
  %27 = load i32, i32* %declaration24, align 4
  %call25 = call zeroext i1 @isValidTypeSpecifier(i32 %27)
  br i1 %call25, label %if.then26, label %if.end69

if.then26:                                        ; preds = %if.else23
  %28 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %notVariable = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %28, i32 0, i32 9
  %29 = load i8, i8* %notVariable, align 1
  %tobool27 = trunc i8 %29 to i1
  br i1 %tobool27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then26
  br label %if.end68

if.else29:                                        ; preds = %if.then26
  %30 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call30 = call zeroext i1 @isMember(%struct.sStatementInfo* %30)
  br i1 %call30, label %if.then31, label %if.else48

if.then31:                                        ; preds = %if.else29
  %31 = load i32, i32* @Lang_java, align 4
  %call32 = call zeroext i1 @isInputLanguage(i32 %31)
  br i1 %call32, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31
  %32 = load i32, i32* @Lang_csharp, align 4
  %call33 = call zeroext i1 @isInputLanguage(i32 %32)
  br i1 %call33, label %if.then34, label %if.else39

if.then34:                                        ; preds = %lor.lhs.false, %if.then31
  %33 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %34 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %35 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %member35 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %35, i32 0, i32 15
  %access36 = getelementptr inbounds %struct.sMemberInfo, %struct.sMemberInfo* %member35, i32 0, i32 0
  %36 = load i32, i32* %access36, align 8
  %cmp37 = icmp eq i32 %36, 2
  %call38 = call i32 @makeTag(%struct.sTokenInfo* %33, %struct.sStatementInfo* %34, i1 zeroext %cmp37, i32 5)
  store i32 %call38, i32* %corkIndex, align 4
  br label %if.end47

if.else39:                                        ; preds = %lor.lhs.false
  %37 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope40 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %37, i32 0, i32 0
  %38 = load i32, i32* %scope40, align 8
  %cmp41 = icmp eq i32 %38, 0
  br i1 %cmp41, label %if.then45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.else39
  %39 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope43 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %39, i32 0, i32 0
  %40 = load i32, i32* %scope43, align 8
  %cmp44 = icmp eq i32 %40, 1
  br i1 %cmp44, label %if.then45, label %if.end

if.then45:                                        ; preds = %lor.lhs.false42, %if.else39
  %41 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %42 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call46 = call i32 @makeTag(%struct.sTokenInfo* %41, %struct.sStatementInfo* %42, i1 zeroext true, i32 9)
  store i32 %call46, i32* %corkIndex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then45, %lor.lhs.false42
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.then34
  br label %if.end67

if.else48:                                        ; preds = %if.else29
  %43 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope49 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %43, i32 0, i32 0
  %44 = load i32, i32* %scope49, align 8
  %cmp50 = icmp eq i32 %44, 2
  br i1 %cmp50, label %if.then53, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.else48
  %45 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %haveQualifyingName = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %45, i32 0, i32 3
  %46 = load i8, i8* %haveQualifyingName, align 1
  %tobool52 = trunc i8 %46 to i1
  br i1 %tobool52, label %if.else55, label %if.then53

if.then53:                                        ; preds = %lor.lhs.false51, %if.else48
  %47 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %48 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call54 = call i32 @makeTag(%struct.sTokenInfo* %47, %struct.sStatementInfo* %48, i1 zeroext false, i32 25)
  store i32 %call54, i32* %corkIndex, align 4
  br label %if.end66

if.else55:                                        ; preds = %lor.lhs.false51
  %49 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %inFunction = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %49, i32 0, i32 7
  %50 = load i8, i8* %inFunction, align 1
  %tobool56 = trunc i8 %50 to i1
  br i1 %tobool56, label %if.then57, label %if.else61

if.then57:                                        ; preds = %if.else55
  %51 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %52 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %53 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope58 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %53, i32 0, i32 0
  %54 = load i32, i32* %scope58, align 8
  %cmp59 = icmp eq i32 %54, 1
  %call60 = call i32 @makeTag(%struct.sTokenInfo* %51, %struct.sStatementInfo* %52, i1 zeroext %cmp59, i32 8)
  store i32 %call60, i32* %corkIndex, align 4
  br label %if.end65

if.else61:                                        ; preds = %if.else55
  %55 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %56 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %57 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %scope62 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %57, i32 0, i32 0
  %58 = load i32, i32* %scope62, align 8
  %cmp63 = icmp eq i32 %58, 1
  %call64 = call i32 @makeTag(%struct.sTokenInfo* %55, %struct.sStatementInfo* %56, i1 zeroext %cmp63, i32 24)
  store i32 %call64, i32* %corkIndex, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then57
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then53
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end47
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then28
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.else23
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then21
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then16
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then11
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then5
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then2
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then
  %59 = load i32, i32* %corkIndex, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @qualifyCompoundTag(%struct.sStatementInfo* %st, %struct.sTokenInfo* %nameToken) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %nameToken.addr = alloca %struct.sTokenInfo*, align 8
  %corkIndex = alloca i32, align 4
  %type1 = alloca i32, align 4
  %fileScoped = alloca i8, align 1
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  store %struct.sTokenInfo* %nameToken, %struct.sTokenInfo** %nameToken.addr, align 8
  store i32 0, i32* %corkIndex, align 4
  %0 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %declaration = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %2, i32 0, i32 1
  %3 = load i32, i32* %declaration, align 4
  %call = call i32 @declToTagType(i32 %3)
  store i32 %call, i32* %type1, align 4
  %4 = load i32, i32* @Lang_java, align 4
  %call2 = call zeroext i1 @isInputLanguage(i32 %4)
  br i1 %call2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, i32* @Lang_csharp, align 4
  %call3 = call zeroext i1 @isInputLanguage(i32 %5)
  br i1 %call3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* @Lang_vera, align 4
  %call4 = call zeroext i1 @isInputLanguage(i32 %6)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.then
  %7 = phi i1 [ true, %lor.lhs.false ], [ true, %if.then ], [ %call4, %lor.rhs ]
  %lnot = xor i1 %7, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %fileScoped, align 1
  %8 = load i32, i32* %type1, align 4
  %cmp5 = icmp ne i32 %8, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %lor.end
  %9 = load %struct.sTokenInfo*, %struct.sTokenInfo** %nameToken.addr, align 8
  %10 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %11 = load i8, i8* %fileScoped, align 1
  %tobool = trunc i8 %11 to i1
  %12 = load i32, i32* %type1, align 4
  %call7 = call i32 @makeTag(%struct.sTokenInfo* %9, %struct.sStatementInfo* %10, i1 zeroext %tobool, i32 %12)
  store i32 %call7, i32* %corkIndex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %lor.end
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %13 = load i32, i32* %corkIndex, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isValidTypeSpecifier(i32 %declaration) #0 {
entry:
  %declaration.addr = alloca i32, align 4
  %result = alloca i8, align 1
  store i32 %declaration, i32* %declaration.addr, align 4
  %0 = load i32, i32* %declaration.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 18, label %sw.bb
    i32 21, label %sw.bb
    i32 24, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i8 1, i8* %result, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %1 = load i8, i8* %result, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isStatementEnd(%struct.sStatementInfo* %st) #0 {
entry:
  %st.addr = alloca %struct.sStatementInfo*, align 8
  %token = alloca %struct.sTokenInfo*, align 8
  %isEnd = alloca i8, align 1
  store %struct.sStatementInfo* %st, %struct.sStatementInfo** %st.addr, align 8
  %0 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %token1 = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %0, i32 0, i32 12
  %1 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %tokenIndex = getelementptr inbounds %struct.sStatementInfo, %struct.sStatementInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %tokenIndex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sTokenInfo*], [3 x %struct.sTokenInfo*]* %token1, i64 0, i64 %idxprom
  %3 = load %struct.sTokenInfo*, %struct.sTokenInfo** %arrayidx, align 8
  store %struct.sTokenInfo* %3, %struct.sTokenInfo** %token, align 8
  %4 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %5, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %isEnd, align 1
  br label %if.end10

if.else:                                          ; preds = %entry
  %6 = load %struct.sTokenInfo*, %struct.sTokenInfo** %token, align 8
  %type2 = getelementptr inbounds %struct.sTokenInfo, %struct.sTokenInfo* %6, i32 0, i32 0
  %7 = load i32, i32* %type2, align 8
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  %8 = load i32, i32* @Lang_java, align 4
  %call = call zeroext i1 @isInputLanguage(i32 %8)
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %9 = load i32, i32* @Lang_csharp, align 4
  %call5 = call zeroext i1 @isInputLanguage(i32 %9)
  br i1 %call5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %10 = load i32, i32* @Lang_d, align 4
  %call7 = call zeroext i1 @isInputLanguage(i32 %10)
  br i1 %call7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false6
  %11 = load %struct.sStatementInfo*, %struct.sStatementInfo** %st.addr, align 8
  %call8 = call zeroext i1 @isContextualStatement(%struct.sStatementInfo* %11)
  %lnot = xor i1 %call8, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6, %lor.lhs.false, %if.then4
  %12 = phi i1 [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false ], [ true, %if.then4 ], [ %lnot, %lor.rhs ]
  %frombool = zext i1 %12 to i8
  store i8 %frombool, i8* %isEnd, align 1
  br label %if.end

if.else9:                                         ; preds = %if.else
  store i8 0, i8* %isEnd, align 1
  br label %if.end

if.end:                                           ; preds = %if.else9, %lor.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %13 = load i8, i8* %isEnd, align 1
  %tobool = trunc i8 %13 to i1
  ret i1 %tobool
}

declare void @cppEndStatement() #1

declare void @cppBeginStatement() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @buildKeywordHash(i32 %language, i32 %idx) #0 {
entry:
  %language.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca %struct.sKeywordDesc*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %idx, i32* %idx.addr, align 4
  store i64 152, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 152
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [152 x %struct.sKeywordDesc], [152 x %struct.sKeywordDesc]* @KeywordTable, i64 0, i64 %1
  store %struct.sKeywordDesc* %arrayidx, %struct.sKeywordDesc** %p, align 8
  %2 = load %struct.sKeywordDesc*, %struct.sKeywordDesc** %p, align 8
  %isValid = getelementptr inbounds %struct.sKeywordDesc, %struct.sKeywordDesc* %2, i32 0, i32 2
  %3 = load i32, i32* %idx.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds [6 x i16], [6 x i16]* %isValid, i64 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx1, align 2
  %tobool = icmp ne i16 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.sKeywordDesc*, %struct.sKeywordDesc** %p, align 8
  %name = getelementptr inbounds %struct.sKeywordDesc, %struct.sKeywordDesc* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %language.addr, align 4
  %8 = load %struct.sKeywordDesc*, %struct.sKeywordDesc** %p, align 8
  %id = getelementptr inbounds %struct.sKeywordDesc, %struct.sKeywordDesc* %8, i32 0, i32 1
  %9 = load i32, i32* %id, align 8
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

declare i8* @selectByObjectiveCKeywords(%struct._MIO*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { returns_twice }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
