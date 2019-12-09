; ModuleID = 'field.c'
source_filename = "field.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct.sFieldObject = type { %struct.sFieldDefinition*, i8, %struct.sVString*, i8*, i32, i32 }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sTrashBox = type opaque
%struct.colprintTable = type opaque
%struct.colprintLine = type opaque
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }

@fieldDefinitionsFixed = internal global [3 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldName, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldNameNoEscape, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldNameNoEscape], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldInput, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldInputNoEscape, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldInputNoEscape], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldPatternCtags, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldPatternCommon, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldPatternCommon], i1 (%struct.sTagEntryInfo*)* null, i32 5, i32 0 }], align 8
@fieldDefinitionsExuberant = internal global [13 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldCompactInputLine, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldAccess, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isAccessFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldFile, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isFileFieldAvailable, i32 4, i32 0 }, %struct.sFieldDefinition { i8 105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldInherits, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isInheritsFieldAvailable, i32 5, i32 0 }, %struct.sFieldDefinition { i8 75, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldKindName, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 107, i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldKindLetter, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldLanguage, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isLanguageFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldImplementation, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isImplementationFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldLineNumber, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* null, i32 2, i32 0 }, %struct.sFieldDefinition { i8 83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldSignature, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isSignatureFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 115, i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.47, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldScope, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldScopeNoEscape, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldScopeNoEscape], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i32 0, i32 0), i8 1, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldTyperef, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isTyperefFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.51, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldKindName, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }], align 8
@fieldDefinitionsUniversal = internal global [7 x %struct.sFieldDefinition] [%struct.sFieldDefinition { i8 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldRole, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isRoleFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 82, i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.56, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldRefMarker, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.58, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldScope, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldScopeNoEscape, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldScopeNoEscape], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldExtras, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isExtrasFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldXpath, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isXpathFieldAvailable, i32 1, i32 0 }, %struct.sFieldDefinition { i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldScopeKindName, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* null, i32 1, i32 0 }, %struct.sFieldDefinition { i8 101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8 0, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*] [i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @renderFieldEnd, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* null], i1 (%struct.sTagEntryInfo*)* @isEndFieldAvailable, i32 2, i32 0 }], align 8
@fieldObjectAllocated = internal global i32 0, align 4
@fieldObjects = internal global %struct.sFieldObject* null, align 8
@fieldObjectUsed = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"UCTAGS\00", align 1
@getFieldTypeForNameAndLanguage.initialized = internal global i8 0, align 1
@Option = external constant %struct.sOptionValues, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot disable fixed field: '%c'{%s}\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Cannot disable fixed field: {%s}\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Cannot disable fixed field: '%c'\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"enable field \22%s\22: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"enable field \22%s\22<%s>: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"L:LETTER\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"L:NAME\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"L:ENABLED\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"L:LANGUAGE\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"L:JSTYPE\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"L:FIXED\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"L:DESCRIPTION\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"tag name\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\\x20\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\\x21\00", align 1
@.str.25 = private unnamed_addr constant [59 x i8] c"Unexpected character %#04x included in a tagEntryInfo: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"File: %s, Line: %lu, Lang: %s, Kind: %c\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Escape the character\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"compact input line (used only in xref output)\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Access (or export) of class members\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"File-restricted scoping\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"inherits\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Inheritance information\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Kind of tag as full name\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Kind of tag as a single letter\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Language of input file containing tag\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Implementation information\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Line number of tag definition\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"Signature of routine (e.g. prototype or parameter list)\00", align 1
@.str.47 = private unnamed_addr constant [64 x i8] c"Scope of tag definition (`p' can be used for printing its kind)\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"typeref\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"Type and name of a variable or typedef\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.51 = private unnamed_addr constant [97 x i8] c"Include the \22kind:\22 key in kind field (use k or K) in tags output, kind full name in xref output\00", align 1
@renderFieldCompactInputLine.tmp = internal global %struct.sVString* null, align 8
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@renderFieldKindLetter.c = internal global [2 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Role\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"Marker (R or D) representing whether tag is definition or reference\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.58 = private unnamed_addr constant [90 x i8] c"Include the \22scope:\22 key in scope field (use s) in tags output, scope name in xref output\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"extras\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Extra tag type information\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"xpath\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"xpath for the tag\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"scopeKind\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"Kind of scope as full name\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"end lines of various items\00", align 1
@renderFieldRefMarker.c = internal global [2 x i8] zeroinitializer, align 1
@renderFieldEnd.buf = internal global [16 x i8] zeroinitializer, align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@__const.fieldColprintAddLine.typefields = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"sib\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @resetFieldOptionsToDefaultValues() #0 {
entry:
  store i8 1, i8* getelementptr inbounds ([3 x %struct.sFieldDefinition], [3 x %struct.sFieldDefinition]* @fieldDefinitionsFixed, i64 0, i64 0, i32 3), align 8
  store i8 1, i8* getelementptr inbounds ([3 x %struct.sFieldDefinition], [3 x %struct.sFieldDefinition]* @fieldDefinitionsFixed, i64 0, i64 1, i32 3), align 8
  store i8 1, i8* getelementptr inbounds ([3 x %struct.sFieldDefinition], [3 x %struct.sFieldDefinition]* @fieldDefinitionsFixed, i64 0, i64 2, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 0, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 1, i32 3), align 8
  store i8 1, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 2, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 3, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 4, i32 3), align 8
  store i8 1, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 5, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 6, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 7, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 8, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 9, i32 3), align 8
  store i8 1, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 10, i32 3), align 8
  store i8 1, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 11, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 12, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 0, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 1, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 2, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 3, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 4, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 5, i32 3), align 8
  store i8 0, i8* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 6, i32 3), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initFieldObjects() #0 {
entry:
  %i = alloca i32, align 4
  %fobj = alloca %struct.sFieldObject*, align 8
  %nameWithPrefix43 = alloca i8*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 23, i32* @fieldObjectAllocated, align 4
  %0 = load i32, i32* @fieldObjectAllocated, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 40
  %call = call i8* @eMalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.sFieldObject*
  store %struct.sFieldObject* %1, %struct.sFieldObject** @fieldObjects, align 8
  %call1 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* bitcast (%struct.sFieldObject** @fieldObjects to i8*), void (i8*)* bitcast (void (i8**)* @eFreeIndirect to void (i8*)*))
  store i32 0, i32* @fieldObjectUsed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, i32* %i, align 4
  %conv2 = zext i32 %2 to i64
  %cmp = icmp ult i64 %conv2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %4 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %3, i64 %idx.ext
  %5 = load i32, i32* @fieldObjectUsed, align 4
  %idx.ext4 = zext i32 %5 to i64
  %add.ptr5 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %add.ptr, i64 %idx.ext4
  store %struct.sFieldObject* %add.ptr5, %struct.sFieldObject** %fobj, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext6 = zext i32 %6 to i64
  %add.ptr7 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* getelementptr inbounds ([3 x %struct.sFieldDefinition], [3 x %struct.sFieldDefinition]* @fieldDefinitionsFixed, i64 0, i64 0), i64 %idx.ext6
  %7 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %7, i32 0, i32 0
  store %struct.sFieldDefinition* %add.ptr7, %struct.sFieldDefinition** %def, align 8
  %8 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %fixed = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %8, i32 0, i32 1
  %bf.load = load i8, i8* %fixed, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %fixed, align 8
  %9 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %buffer = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %9, i32 0, i32 2
  store %struct.sVString* null, %struct.sVString** %buffer, align 8
  %10 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def8 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %10, i32 0, i32 0
  %11 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def8, align 8
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %nameWithPrefix = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %13, i32 0, i32 3
  store i8* %12, i8** %nameWithPrefix, align 8
  %14 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %language = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %14, i32 0, i32 4
  store i32 -2, i32* %language, align 8
  %15 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %sibling = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %15, i32 0, i32 5
  store i32 -1, i32* %sibling, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* @fieldObjectUsed, align 4
  %conv9 = zext i32 %17 to i64
  %add = add i64 %conv9, 3
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, i32* @fieldObjectUsed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc32, %for.end
  %18 = load i32, i32* %i, align 4
  %conv12 = zext i32 %18 to i64
  %cmp13 = icmp ult i64 %conv12, 13
  br i1 %cmp13, label %for.body15, label %for.end34

for.body15:                                       ; preds = %for.cond11
  %19 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %20 = load i32, i32* %i, align 4
  %idx.ext16 = zext i32 %20 to i64
  %add.ptr17 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %19, i64 %idx.ext16
  %21 = load i32, i32* @fieldObjectUsed, align 4
  %idx.ext18 = zext i32 %21 to i64
  %add.ptr19 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %add.ptr17, i64 %idx.ext18
  store %struct.sFieldObject* %add.ptr19, %struct.sFieldObject** %fobj, align 8
  %22 = load i32, i32* %i, align 4
  %idx.ext20 = zext i32 %22 to i64
  %add.ptr21 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* getelementptr inbounds ([13 x %struct.sFieldDefinition], [13 x %struct.sFieldDefinition]* @fieldDefinitionsExuberant, i64 0, i64 0), i64 %idx.ext20
  %23 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def22 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %23, i32 0, i32 0
  store %struct.sFieldDefinition* %add.ptr21, %struct.sFieldDefinition** %def22, align 8
  %24 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %fixed23 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %24, i32 0, i32 1
  %bf.load24 = load i8, i8* %fixed23, align 8
  %bf.clear25 = and i8 %bf.load24, -2
  store i8 %bf.clear25, i8* %fixed23, align 8
  %25 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %buffer26 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %25, i32 0, i32 2
  store %struct.sVString* null, %struct.sVString** %buffer26, align 8
  %26 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def27 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %26, i32 0, i32 0
  %27 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def27, align 8
  %name28 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %27, i32 0, i32 1
  %28 = load i8*, i8** %name28, align 8
  %29 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %nameWithPrefix29 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %29, i32 0, i32 3
  store i8* %28, i8** %nameWithPrefix29, align 8
  %30 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %language30 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %30, i32 0, i32 4
  store i32 -2, i32* %language30, align 8
  %31 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %sibling31 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %31, i32 0, i32 5
  store i32 -1, i32* %sibling31, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %for.body15
  %32 = load i32, i32* %i, align 4
  %inc33 = add i32 %32, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond11

for.end34:                                        ; preds = %for.cond11
  %33 = load i32, i32* @fieldObjectUsed, align 4
  %conv35 = zext i32 %33 to i64
  %add36 = add i64 %conv35, 13
  %conv37 = trunc i64 %add36 to i32
  store i32 %conv37, i32* @fieldObjectUsed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc72, %for.end34
  %34 = load i32, i32* %i, align 4
  %conv39 = zext i32 %34 to i64
  %cmp40 = icmp ult i64 %conv39, 7
  br i1 %cmp40, label %for.body42, label %for.end74

for.body42:                                       ; preds = %for.cond38
  %35 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %36 = load i32, i32* %i, align 4
  %idx.ext44 = zext i32 %36 to i64
  %add.ptr45 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %35, i64 %idx.ext44
  %37 = load i32, i32* @fieldObjectUsed, align 4
  %idx.ext46 = zext i32 %37 to i64
  %add.ptr47 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %add.ptr45, i64 %idx.ext46
  store %struct.sFieldObject* %add.ptr47, %struct.sFieldObject** %fobj, align 8
  %38 = load i32, i32* %i, align 4
  %idx.ext48 = zext i32 %38 to i64
  %add.ptr49 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* getelementptr inbounds ([7 x %struct.sFieldDefinition], [7 x %struct.sFieldDefinition]* @fieldDefinitionsUniversal, i64 0, i64 0), i64 %idx.ext48
  %39 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def50 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %39, i32 0, i32 0
  store %struct.sFieldDefinition* %add.ptr49, %struct.sFieldDefinition** %def50, align 8
  %40 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %fixed51 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %40, i32 0, i32 1
  %bf.load52 = load i8, i8* %fixed51, align 8
  %bf.clear53 = and i8 %bf.load52, -2
  store i8 %bf.clear53, i8* %fixed51, align 8
  %41 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %buffer54 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %41, i32 0, i32 2
  store %struct.sVString* null, %struct.sVString** %buffer54, align 8
  %42 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def55 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %42, i32 0, i32 0
  %43 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def55, align 8
  %name56 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %43, i32 0, i32 1
  %44 = load i8*, i8** %name56, align 8
  %tobool = icmp ne i8* %44, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body42
  %45 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def57 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %45, i32 0, i32 0
  %46 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def57, align 8
  %name58 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %46, i32 0, i32 1
  %47 = load i8*, i8** %name58, align 8
  %call59 = call i64 @strlen(i8* %47)
  %add60 = add i64 7, %call59
  %add61 = add i64 %add60, 1
  %call62 = call i8* @eMalloc(i64 %add61)
  store i8* %call62, i8** %nameWithPrefix43, align 8
  %48 = load i8*, i8** %nameWithPrefix43, align 8
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %arrayidx, align 1
  %49 = load i8*, i8** %nameWithPrefix43, align 8
  %call63 = call i8* @strcat(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %nameWithPrefix43, align 8
  %51 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def64 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %51, i32 0, i32 0
  %52 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def64, align 8
  %name65 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %52, i32 0, i32 1
  %53 = load i8*, i8** %name65, align 8
  %call66 = call i8* @strcat(i8* %50, i8* %53)
  %54 = load i8*, i8** %nameWithPrefix43, align 8
  %55 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %nameWithPrefix67 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %55, i32 0, i32 3
  store i8* %54, i8** %nameWithPrefix67, align 8
  %56 = load i8*, i8** %nameWithPrefix43, align 8
  %call68 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %56, void (i8*)* @eFree)
  br label %if.end

if.else:                                          ; preds = %for.body42
  %57 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %nameWithPrefix69 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %57, i32 0, i32 3
  store i8* null, i8** %nameWithPrefix69, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %58 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %language70 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %58, i32 0, i32 4
  store i32 -2, i32* %language70, align 8
  %59 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %sibling71 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %59, i32 0, i32 5
  store i32 -1, i32* %sibling71, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %if.end
  %60 = load i32, i32* %i, align 4
  %inc73 = add i32 %60, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond38

for.end74:                                        ; preds = %for.cond38
  %61 = load i32, i32* @fieldObjectUsed, align 4
  %conv75 = zext i32 %61 to i64
  %add76 = add i64 %conv75, 7
  %conv77 = trunc i64 %add76 to i32
  store i32 %conv77, i32* @fieldObjectUsed, align 4
  br label %do.body78

do.body78:                                        ; preds = %for.end74
  br label %do.end79

do.end79:                                         ; preds = %do.body78
  ret void
}

declare i8* @eMalloc(i64) #1

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #1

declare void @eFreeIndirect(i8**) #1

declare i64 @strlen(i8*) #1

declare i8* @strcat(i8*, i8*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getFieldTypeForOption(i8 signext %letter) #0 {
entry:
  %retval = alloca i32, align 4
  %letter.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 %letter, i8* %letter.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @fieldObjectUsed, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %2, i64 %idxprom
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %arrayidx, i32 0, i32 0
  %4 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %letter1 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %4, i32 0, i32 0
  %5 = load i8, i8* %letter1, align 8
  %conv = zext i8 %5 to i32
  %6 = load i8, i8* %letter.addr, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getFieldTypeForName(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @getFieldTypeForNameAndLanguage(i8* %0, i32 -2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getFieldTypeForNameAndLanguage(i8* %fieldName, i32 %language) #0 {
entry:
  %retval = alloca i32, align 4
  %fieldName.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %fieldName, i8** %fieldName.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load i8*, i8** %fieldName.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %language.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* @getFieldTypeForNameAndLanguage.initialized, align 1
  %tobool = trunc i8 %2 to i1
  %conv = zext i1 %tobool to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  store i8 1, i8* @getFieldTypeForNameAndLanguage.initialized, align 1
  call void @initializeParser(i32 -1)
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %if.end
  %3 = load i32, i32* %language.addr, align 4
  %cmp5 = icmp ne i32 %3, -2
  br i1 %cmp5, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %if.else
  %4 = load i8, i8* @getFieldTypeForNameAndLanguage.initialized, align 1
  %tobool8 = trunc i8 %4 to i1
  %conv9 = zext i1 %tobool8 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true7
  %5 = load i32, i32* %language.addr, align 4
  call void @initializeParser(i32 %5)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true7, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @fieldObjectUsed, align 4
  %cmp15 = icmp ult i32 %6, %7
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %8, i64 %idxprom
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %arrayidx, i32 0, i32 0
  %10 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %tobool17 = icmp ne i8* %11, null
  br i1 %tobool17, label %land.lhs.true18, label %if.end34

land.lhs.true18:                                  ; preds = %for.body
  %12 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %12, i64 %idxprom19
  %def21 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %arrayidx20, i32 0, i32 0
  %14 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def21, align 8
  %name22 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %14, i32 0, i32 1
  %15 = load i8*, i8** %name22, align 8
  %16 = load i8*, i8** %fieldName.addr, align 8
  %call = call i32 @strcmp(i8* %15, i8* %16)
  %cmp23 = icmp eq i32 %call, 0
  br i1 %cmp23, label %land.lhs.true25, label %if.end34

land.lhs.true25:                                  ; preds = %land.lhs.true18
  %17 = load i32, i32* %language.addr, align 4
  %cmp26 = icmp eq i32 %17, -1
  br i1 %cmp26, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true25
  %18 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %18, i64 %idxprom28
  %language30 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %arrayidx29, i32 0, i32 4
  %20 = load i32, i32* %language30, align 8
  %21 = load i32, i32* %language.addr, align 4
  %cmp31 = icmp eq i32 %20, %21
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %land.lhs.true25
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false, %land.lhs.true18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then33, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare void @initializeParser(i32) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getFieldName(i32 %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %fobj = alloca %struct.sFieldObject*, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  store %struct.sFieldObject* %call, %struct.sFieldObject** %fobj, align 8
  %1 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 28), align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %nameWithPrefix = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %2, i32 0, i32 3
  %3 = load i8*, i8** %nameWithPrefix, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %4, i32 0, i32 0
  %5 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sFieldObject* @getFieldObject(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %1 = load i32, i32* %type.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %0, i64 %idx.ext
  ret %struct.sFieldObject* %add.ptr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesFieldHaveValue(i32 %type, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call, i32 0, i32 0
  %1 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %isValueAvailable = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %1, i32 0, i32 5
  %2 = load i1 (%struct.sTagEntryInfo*)*, i1 (%struct.sTagEntryInfo*)** %isValueAvailable, align 8
  %tobool = icmp ne i1 (%struct.sTagEntryInfo*)* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %type.addr, align 4
  %call1 = call %struct.sFieldObject* @getFieldObject(i32 %3)
  %def2 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call1, i32 0, i32 0
  %4 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def2, align 8
  %isValueAvailable3 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %4, i32 0, i32 5
  %5 = load i1 (%struct.sTagEntryInfo*)*, i1 (%struct.sTagEntryInfo*)** %isValueAvailable3, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call4 = call zeroext i1 %5(%struct.sTagEntryInfo* %6)
  store i1 %call4, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @renderFieldEscaped(i32 %writer, i32 %type, %struct.sTagEntryInfo* %tag, i32 %index, i8* %rejected) #0 {
entry:
  %writer.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %index.addr = alloca i32, align 4
  %rejected.addr = alloca i8*, align 8
  %fobj = alloca %struct.sFieldObject*, align 8
  %value = alloca i8*, align 8
  %rfn = alloca i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*, align 8
  %stub = alloca i8, align 1
  %f = alloca %struct.sTagField*, align 8
  store i32 %writer, i32* %writer.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %1 = load i32, i32* %type.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %0, i64 %idx.ext
  store %struct.sFieldObject* %add.ptr, %struct.sFieldObject** %fobj, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %2 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %buffer = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %2, i32 0, i32 2
  %3 = load %struct.sVString*, %struct.sVString** %buffer, align 8
  %call = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %3)
  %4 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %buffer5 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %4, i32 0, i32 2
  store %struct.sVString* %call, %struct.sVString** %buffer5, align 8
  %5 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end4
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %7 = load i32, i32* %index.addr, align 4
  %call6 = call %struct.sTagField* @getParserField(%struct.sTagEntryInfo* %6, i32 %7)
  store %struct.sTagField* %call6, %struct.sTagField** %f, align 8
  %8 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %value7 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %8, i32 0, i32 1
  %9 = load i8*, i8** %value7, align 8
  store i8* %9, i8** %value, align 8
  br label %if.end

if.else:                                          ; preds = %do.end4
  store i8* null, i8** %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %10, i32 0, i32 0
  %11 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %renderEscaped = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %11, i32 0, i32 4
  %12 = load i32, i32* %writer.addr, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*]* %renderEscaped, i64 0, i64 %idxprom
  %13 = load i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %arrayidx, align 8
  store i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* %13, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %rfn, align 8
  %14 = load i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %rfn, align 8
  %cmp8 = icmp eq i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* %14, null
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  %15 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def10 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %15, i32 0, i32 0
  %16 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def10, align 8
  %renderEscaped11 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %16, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*]* %renderEscaped11, i64 0, i64 0
  %17 = load i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %arrayidx12, align 8
  store i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* %17, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %rfn, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end
  %18 = load i8*, i8** %rejected.addr, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end13
  store i8* %stub, i8** %rejected.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end13
  %19 = load i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %rfn, align 8
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %21 = load i8*, i8** %value, align 8
  %22 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %buffer16 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %22, i32 0, i32 2
  %23 = load %struct.sVString*, %struct.sVString** %buffer16, align 8
  %24 = load i8*, i8** %rejected.addr, align 8
  %call17 = call i8* %19(%struct.sTagEntryInfo* %20, i8* %21, %struct.sVString* %23, i8* %24)
  ret i8* %call17
}

declare %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString*) #1

declare %struct.sTagField* @getParserField(%struct.sTagEntryInfo*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isFieldEnabled(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call, i32 0, i32 0
  %1 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %1, i32 0, i32 3
  %2 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @enableField(i32 %type, i1 zeroext %state, i1 zeroext %warnIfFixedField) #0 {
entry:
  %type.addr = alloca i32, align 4
  %state.addr = alloca i8, align 1
  %warnIfFixedField.addr = alloca i8, align 1
  %def = alloca %struct.sFieldDefinition*, align 8
  %old = alloca i8, align 1
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %state to i8
  store i8 %frombool, i8* %state.addr, align 1
  %frombool1 = zext i1 %warnIfFixedField to i8
  store i8 %frombool1, i8* %warnIfFixedField.addr, align 1
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  %def2 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call, i32 0, i32 0
  %1 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def2, align 8
  store %struct.sFieldDefinition* %1, %struct.sFieldDefinition** %def, align 8
  %2 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %2, i32 0, i32 3
  %3 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %3 to i1
  %frombool3 = zext i1 %tobool to i8
  store i8 %frombool3, i8* %old, align 1
  %4 = load i32, i32* %type.addr, align 4
  %call4 = call zeroext i1 @isFieldFixed(i32 %4)
  br i1 %call4, label %if.then, label %if.else54

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %state.addr, align 1
  %tobool5 = trunc i8 %5 to i1
  br i1 %tobool5, label %if.end53, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %6 = load i8, i8* %warnIfFixedField.addr, align 1
  %tobool6 = trunc i8 %6 to i1
  br i1 %tobool6, label %if.then7, label %if.end53

if.then7:                                         ; preds = %land.lhs.true
  %7 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  %tobool8 = icmp ne i8* %8, null
  br i1 %tobool8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %if.then7
  %9 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %letter = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %9, i32 0, i32 0
  %10 = load i8, i8* %letter, align 8
  %conv = zext i8 %10 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true9
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call12 = call i8* @getExecutableName()
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %call12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %13 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %letter14 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %13, i32 0, i32 0
  %14 = load i8, i8* %letter14, align 8
  %conv15 = zext i8 %14 to i32
  %15 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %name16 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %15, i32 0, i32 1
  %16 = load i8*, i8** %name16, align 8
  %call17 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %conv15, i8* %16)
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call18 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %17)
  %18 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 26), align 1
  %tobool19 = trunc i8 %18 to i1
  br i1 %tobool19, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then11
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then11
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true9, %if.then7
  %19 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %name21 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %19, i32 0, i32 1
  %20 = load i8*, i8** %name21, align 8
  %tobool22 = icmp ne i8* %20, null
  br i1 %tobool22, label %if.then23, label %if.else32

if.then23:                                        ; preds = %if.else
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call24 = call i8* @getExecutableName()
  %call25 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %call24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %23 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %name26 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %23, i32 0, i32 1
  %24 = load i8*, i8** %name26, align 8
  %call27 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call28 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %25)
  %26 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 26), align 1
  %tobool29 = trunc i8 %26 to i1
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then23
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #5
  unreachable

if.end31:                                         ; preds = %if.then23
  br label %if.end51

if.else32:                                        ; preds = %if.else
  %27 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %letter33 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %27, i32 0, i32 0
  %28 = load i8, i8* %letter33, align 8
  %conv34 = zext i8 %28 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.else49

if.then37:                                        ; preds = %if.else32
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call38 = call i8* @getExecutableName()
  %call39 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %call38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %31 = load i32, i32* %type.addr, align 4
  %call40 = call %struct.sFieldObject* @getFieldObject(i32 %31)
  %def41 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call40, i32 0, i32 0
  %32 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def41, align 8
  %letter42 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %32, i32 0, i32 0
  %33 = load i8, i8* %letter42, align 8
  %conv43 = zext i8 %33 to i32
  %call44 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %conv43)
  %34 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call45 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.__sFILE* %34)
  %35 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 26), align 1
  %tobool46 = trunc i8 %35 to i1
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then37
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #5
  unreachable

if.end48:                                         ; preds = %if.then37
  br label %if.end50

if.else49:                                        ; preds = %if.else32
  br label %do.body

do.body:                                          ; preds = %if.else49
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end50

if.end50:                                         ; preds = %do.end, %if.end48
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end31
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %land.lhs.true, %if.then
  br label %if.end85

if.else54:                                        ; preds = %entry
  %36 = load i8, i8* %state.addr, align 1
  %tobool55 = trunc i8 %36 to i1
  %37 = load i32, i32* %type.addr, align 4
  %call56 = call %struct.sFieldObject* @getFieldObject(i32 %37)
  %def57 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call56, i32 0, i32 0
  %38 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def57, align 8
  %enabled58 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %38, i32 0, i32 3
  %frombool59 = zext i1 %tobool55 to i8
  store i8 %frombool59, i8* %enabled58, align 8
  %39 = load i32, i32* %type.addr, align 4
  %call60 = call zeroext i1 @isCommonField(i32 %39)
  br i1 %call60, label %if.then61, label %if.else71

if.then61:                                        ; preds = %if.else54
  %40 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool62 = trunc i8 %40 to i1
  br i1 %tobool62, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.then61
  %41 = load i32, i32* %type.addr, align 4
  %call64 = call %struct.sFieldObject* @getFieldObject(i32 %41)
  %def65 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call64, i32 0, i32 0
  %42 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def65, align 8
  %name66 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %42, i32 0, i32 1
  %43 = load i8*, i8** %name66, align 8
  %44 = load i8, i8* %state.addr, align 1
  %tobool67 = trunc i8 %44 to i1
  %45 = zext i1 %tobool67 to i64
  %cond = select i1 %tobool67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %43, i8* %cond)
  br label %if.end70

if.end70:                                         ; preds = %if.then63, %if.then61
  br label %if.end84

if.else71:                                        ; preds = %if.else54
  %46 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool72 = trunc i8 %46 to i1
  br i1 %tobool72, label %if.then73, label %if.end83

if.then73:                                        ; preds = %if.else71
  %47 = load i32, i32* %type.addr, align 4
  %call74 = call %struct.sFieldObject* @getFieldObject(i32 %47)
  %def75 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call74, i32 0, i32 0
  %48 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def75, align 8
  %name76 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %48, i32 0, i32 1
  %49 = load i8*, i8** %name76, align 8
  %50 = load i32, i32* %type.addr, align 4
  %call77 = call i32 @getFieldOwner(i32 %50)
  %call78 = call i8* @getLanguageName(i32 %call77)
  %51 = load i8, i8* %state.addr, align 1
  %tobool79 = trunc i8 %51 to i1
  %52 = zext i1 %tobool79 to i64
  %cond81 = select i1 %tobool79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %49, i8* %call78, i8* %cond81)
  br label %if.end83

if.end83:                                         ; preds = %if.then73, %if.else71
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end70
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end53
  %53 = load i8, i8* %old, align 1
  %tobool86 = trunc i8 %53 to i1
  ret i1 %tobool86
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isFieldFixed(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  %fixed = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call, i32 0, i32 1
  %bf.load = load i8, i8* %fixed, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  ret i1 %tobool1
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i8* @getExecutableName() #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare void @ctags_cleanup(...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isCommonField(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp slt i32 22, %0
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

declare i32 @printf(i8*, ...) #1

declare i8* @getLanguageName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getFieldOwner(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  %language = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call, i32 0, i32 4
  %1 = load i32, i32* %language, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getFieldDataType(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call, i32 0, i32 0
  %1 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %dataType = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %1, i32 0, i32 6
  %2 = load i32, i32* %dataType, align 8
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isFieldRenderable(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %call, i32 0, i32 0
  %1 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %renderEscaped = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %1, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*]* %renderEscaped, i64 0, i64 0
  %2 = load i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %arrayidx, align 8
  %tobool = icmp ne i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* %2, null
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  ret i1 %tobool1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countFields() #0 {
entry:
  %0 = load i32, i32* @fieldObjectUsed, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @nextSiblingField(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %fobj = alloca %struct.sFieldObject*, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %1 = load i32, i32* %type.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %0, i64 %idx.ext
  store %struct.sFieldObject* %add.ptr, %struct.sFieldObject** %fobj, align 8
  %2 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %sibling = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %2, i32 0, i32 5
  %3 = load i32, i32* %sibling, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @defineField(%struct.sFieldDefinition* %def, i32 %language) #0 {
entry:
  %def.addr = alloca %struct.sFieldDefinition*, align 8
  %language.addr = alloca i32, align 4
  %fobj = alloca %struct.sFieldObject*, align 8
  %nameWithPrefix = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.sFieldDefinition* %def, %struct.sFieldDefinition** %def.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end2
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %2)
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body3

do.body3:                                         ; preds = %for.body
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %for.inc

for.inc:                                          ; preds = %do.end4
  %3 = load i64, i64* %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %letter = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %4, i32 0, i32 0
  store i8 0, i8* %letter, align 8
  %5 = load i32, i32* @fieldObjectUsed, align 4
  %6 = load i32, i32* @fieldObjectAllocated, align 4
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %7 = load i32, i32* @fieldObjectAllocated, align 4
  %mul = mul i32 %7, 2
  store i32 %mul, i32* @fieldObjectAllocated, align 4
  %8 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %9 = bitcast %struct.sFieldObject* %8 to i8*
  %10 = load i32, i32* @fieldObjectAllocated, align 4
  %conv = zext i32 %10 to i64
  %mul6 = mul i64 %conv, 40
  %call7 = call i8* @eRealloc(i8* %9, i64 %mul6)
  %11 = bitcast i8* %call7 to %struct.sFieldObject*
  store %struct.sFieldObject* %11, %struct.sFieldObject** @fieldObjects, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %12 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %13 = load i32, i32* @fieldObjectUsed, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %12, i64 %idx.ext
  store %struct.sFieldObject* %add.ptr, %struct.sFieldObject** %fobj, align 8
  %14 = load i32, i32* @fieldObjectUsed, align 4
  %inc8 = add i32 %14, 1
  store i32 %inc8, i32* @fieldObjectUsed, align 4
  %15 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %ftype = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %15, i32 0, i32 7
  store i32 %14, i32* %ftype, align 4
  %16 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %renderEscaped = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*]* %renderEscaped, i64 0, i64 0
  %17 = load i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %arrayidx, align 8
  %cmp9 = icmp eq i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* %17, null
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %18 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %renderEscaped12 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %18, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*]* %renderEscaped12, i64 0, i64 0
  store i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)* @defaultRenderer, i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)** %arrayidx13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  %19 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %dataType = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %19, i32 0, i32 6
  %20 = load i32, i32* %dataType, align 8
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end14
  %21 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %dataType16 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %21, i32 0, i32 6
  store i32 1, i32* %dataType16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end14
  %22 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %23 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def18 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %23, i32 0, i32 0
  store %struct.sFieldDefinition* %22, %struct.sFieldDefinition** %def18, align 8
  %24 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %fixed = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %24, i32 0, i32 1
  %bf.load = load i8, i8* %fixed, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %fixed, align 8
  %25 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %buffer = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %25, i32 0, i32 2
  store %struct.sVString* null, %struct.sVString** %buffer, align 8
  %26 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %name19 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %26, i32 0, i32 1
  %27 = load i8*, i8** %name19, align 8
  %call20 = call i64 @strlen(i8* %27)
  %add = add i64 7, %call20
  %add21 = add i64 %add, 1
  %call22 = call i8* @eMalloc(i64 %add21)
  store i8* %call22, i8** %nameWithPrefix, align 8
  %28 = load i8*, i8** %nameWithPrefix, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %arrayidx23, align 1
  %29 = load i8*, i8** %nameWithPrefix, align 8
  %call24 = call i8* @strcat(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %nameWithPrefix, align 8
  %31 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %name25 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %31, i32 0, i32 1
  %32 = load i8*, i8** %name25, align 8
  %call26 = call i8* @strcat(i8* %30, i8* %32)
  %33 = load i8*, i8** %nameWithPrefix, align 8
  %34 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %nameWithPrefix27 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %34, i32 0, i32 3
  store i8* %33, i8** %nameWithPrefix27, align 8
  %35 = load i8*, i8** %nameWithPrefix, align 8
  %call28 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %35, void (i8*)* @eFree)
  %36 = load i32, i32* %language.addr, align 4
  %37 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %language29 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %37, i32 0, i32 4
  store i32 %36, i32* %language29, align 8
  %38 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %sibling = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %38, i32 0, i32 5
  store i32 -1, i32* %sibling, align 4
  %39 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %ftype30 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %39, i32 0, i32 7
  %40 = load i32, i32* %ftype30, align 4
  %41 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %name31 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %41, i32 0, i32 1
  %42 = load i8*, i8** %name31, align 8
  call void @updateSiblingField(i32 %40, i8* %42)
  %43 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def.addr, align 8
  %ftype32 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %43, i32 0, i32 7
  %44 = load i32, i32* %ftype32, align 4
  ret i32 %44
}

declare i8* @eRealloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @defaultRenderer(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %buffer, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %buffer.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %buffer, %struct.sVString** %buffer.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @updateSiblingField(i32 %type, i8* %name) #0 {
entry:
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %fobj = alloca %struct.sFieldObject*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sFieldObject*, %struct.sFieldObject** @fieldObjects, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %2, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %add.ptr, i64 -1
  store %struct.sFieldObject* %add.ptr1, %struct.sFieldObject** %fobj, align 8
  %4 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %4, i32 0, i32 0
  %5 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  %name2 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %5, i32 0, i32 1
  %6 = load i8*, i8** %name2, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def3 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %7, i32 0, i32 0
  %8 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def3, align 8
  %name4 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %8, i32 0, i32 1
  %9 = load i8*, i8** %name4, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %9, i8* %10)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = load i32, i32* %type.addr, align 4
  %12 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %sibling = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %12, i32 0, i32 5
  store i32 %11, i32* %sibling, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
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
define %struct.colprintTable* @fieldColprintTableNew() #0 {
entry:
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* null)
  ret %struct.colprintTable* %call
}

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @fieldColprintAddCommonLines(%struct.colprintTable* %table) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %i = alloca i32, align 4
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %2 = load i32, i32* %i, align 4
  call void @fieldColprintAddLine(%struct.colprintTable* %1, i32 %2)
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
define internal void @fieldColprintAddLine(%struct.colprintTable* %table, i32 %i) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %i.addr = alloca i32, align 4
  %fobj = alloca %struct.sFieldObject*, align 8
  %fdef = alloca %struct.sFieldDefinition*, align 8
  %line = alloca %struct.colprintLine*, align 8
  %name = alloca i8*, align 8
  %typefields = alloca [4 x i8], align 1
  %bmask = alloca i32, align 4
  %offset = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %0)
  store %struct.sFieldObject* %call, %struct.sFieldObject** %fobj, align 8
  %1 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %def = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %1, i32 0, i32 0
  %2 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %def, align 8
  store %struct.sFieldDefinition* %2, %struct.sFieldDefinition** %fdef, align 8
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call1 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %3)
  store %struct.colprintLine* %call1, %struct.colprintLine** %line, align 8
  %4 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %5 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %letter = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %5, i32 0, i32 0
  %6 = load i8, i8* %letter, align 8
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %letter3 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %7, i32 0, i32 0
  %8 = load i8, i8* %letter3, align 8
  %conv4 = zext i8 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 45, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  call void @colprintLineAppendColumnChar(%struct.colprintLine* %4, i8 signext %conv5)
  %9 = load i32, i32* %i.addr, align 4
  %call6 = call i8* @getFieldName(i32 %9)
  store i8* %call6, i8** %name, align 8
  %10 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %11 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  %12 = load i8*, i8** %name, align 8
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i8* [ %12, %cond.true7 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), %cond.false8 ]
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %10, i8* %cond10)
  %13 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %14 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %enabled = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %14, i32 0, i32 3
  %15 = load i8, i8* %enabled, align 8
  %tobool11 = trunc i8 %15 to i1
  call void @colprintLineAppendColumnBool(%struct.colprintLine* %13, i1 zeroext %tobool11)
  %16 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %17 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %language = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %17, i32 0, i32 4
  %18 = load i32, i32* %language, align 8
  %cmp12 = icmp eq i32 %18, -2
  br i1 %cmp12, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end9
  br label %cond.end18

cond.false15:                                     ; preds = %cond.end9
  %19 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %language16 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %19, i32 0, i32 4
  %20 = load i32, i32* %language16, align 8
  %call17 = call i8* @getLanguageName(i32 %20)
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false15, %cond.true14
  %cond19 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), %cond.true14 ], [ %call17, %cond.false15 ]
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %16, i8* %cond19)
  %21 = bitcast [4 x i8]* %typefields to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fieldColprintAddLine.typefields, i32 0, i32 0), i64 4, i1 false)
  %22 = load i32, i32* %i.addr, align 4
  %call20 = call i32 @getFieldDataType(i32 %22)
  store i32 %call20, i32* %type, align 4
  store i32 1, i32* %bmask, align 4
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end18
  %23 = load i32, i32* %bmask, align 4
  %cmp21 = icmp ult i32 %23, 8
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %type, align 4
  %25 = load i32, i32* %bmask, align 4
  %and = and i32 %24, %25
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %26 = load i32, i32* %offset, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* @.str.69, i64 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1
  %28 = load i32, i32* %offset, align 4
  %idxprom24 = zext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %typefields, i64 0, i64 %idxprom24
  store i8 %27, i8* %arrayidx25, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %bmask, align 4
  %shl = shl i32 %29, 1
  store i32 %shl, i32* %bmask, align 4
  %30 = load i32, i32* %offset, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %typefields, i64 0, i64 0
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %31, i8* %arraydecay)
  %32 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %33 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %fixed = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %33, i32 0, i32 1
  %bf.load = load i8, i8* %fixed, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool26 = icmp ne i32 %bf.cast, 0
  call void @colprintLineAppendColumnBool(%struct.colprintLine* %32, i1 zeroext %tobool26)
  %34 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %35 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %description = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %35, i32 0, i32 2
  %36 = load i8*, i8** %description, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %34, i8* %36)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @fieldColprintAddLanguageLines(%struct.colprintTable* %table, i32 %language) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %language.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %fobj = alloca %struct.sFieldObject*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 23, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @fieldObjectUsed, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call = call %struct.sFieldObject* @getFieldObject(i32 %2)
  store %struct.sFieldObject* %call, %struct.sFieldObject** %fobj, align 8
  %3 = load %struct.sFieldObject*, %struct.sFieldObject** %fobj, align 8
  %language1 = getelementptr inbounds %struct.sFieldObject, %struct.sFieldObject* %3, i32 0, i32 4
  %4 = load i32, i32* %language1, align 8
  %5 = load i32, i32* %language.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %7 = load i32, i32* %i, align 4
  call void @fieldColprintAddLine(%struct.colprintTable* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @fieldColprintTablePrint(%struct.colprintTable* %table, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  call void @colprintTableSort(%struct.colprintTable* %0, i32 (%struct.colprintLine*, %struct.colprintLine*)* @fieldColprintCompareLines)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %2 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load i8, i8* %machinable.addr, align 1
  %tobool2 = trunc i8 %3 to i1
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %1, i32 0, i1 zeroext %tobool, i1 zeroext %tobool2, %struct.__sFILE* %4)
  ret void
}

declare void @colprintTableSort(%struct.colprintTable*, i32 (%struct.colprintLine*, %struct.colprintLine*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fieldColprintCompareLines(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  %a_fixed = alloca i8*, align 8
  %b_fixed = alloca i8*, align 8
  %a_parser = alloca i8*, align 8
  %b_parser = alloca i8*, align 8
  %a_name = alloca i8*, align 8
  %b_name = alloca i8*, align 8
  %ref_name = alloca i8*, align 8
  %a_index = alloca i32, align 4
  %b_index = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %a_name85 = alloca i8*, align 8
  %b_name87 = alloca i8*, align 8
  %a_letter = alloca i8*, align 8
  %b_letter = alloca i8*, align 8
  store %struct.colprintLine* %a, %struct.colprintLine** %a.addr, align 8
  store %struct.colprintLine* %b, %struct.colprintLine** %b.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call = call i8* @colprintLineGetColumn(%struct.colprintLine* %0, i32 5)
  store i8* %call, i8** %a_fixed, align 8
  %1 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call1 = call i8* @colprintLineGetColumn(%struct.colprintLine* %1, i32 5)
  store i8* %call1, i8** %b_fixed, align 8
  %2 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call2 = call i8* @colprintLineGetColumn(%struct.colprintLine* %2, i32 3)
  store i8* %call2, i8** %a_parser, align 8
  %3 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call3 = call i8* @colprintLineGetColumn(%struct.colprintLine* %3, i32 3)
  store i8* %call3, i8** %b_parser, align 8
  %4 = load i8*, i8** %a_fixed, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else33

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %b_fixed, align 8
  %call5 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.else33

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call7 = call i8* @colprintLineGetColumn(%struct.colprintLine* %6, i32 1)
  store i8* %call7, i8** %a_name, align 8
  %7 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call8 = call i8* @colprintLineGetColumn(%struct.colprintLine* %7, i32 1)
  store i8* %call8, i8** %b_name, align 8
  store i32 -1, i32* %a_index, align 4
  store i32 -1, i32* %b_index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %conv = zext i32 %8 to i64
  %cmp9 = icmp ult i64 %conv, 3
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sFieldDefinition], [3 x %struct.sFieldDefinition]* @fieldDefinitionsFixed, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %arrayidx, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  store i8* %10, i8** %ref_name, align 8
  %11 = load i8*, i8** %a_name, align 8
  %12 = load i8*, i8** %ref_name, align 8
  %call11 = call i32 @strcmp(i8* %11, i8* %12)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %a_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %for.body
  %14 = load i8*, i8** %b_name, align 8
  %15 = load i8*, i8** %ref_name, align 8
  %call15 = call i32 @strcmp(i8* %14, i8* %15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  store i32 %16, i32* %b_index, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end
  %17 = load i32, i32* %a_index, align 4
  %cmp20 = icmp ne i32 %17, -1
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %18 = load i32, i32* %b_index, align 4
  %cmp22 = icmp ne i32 %18, -1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false, %if.end19
  br label %for.end

if.end25:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then24, %for.cond
  %20 = load i32, i32* %a_index, align 4
  %21 = load i32, i32* %b_index, align 4
  %cmp26 = icmp ult i32 %20, %21
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %for.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end
  %22 = load i32, i32* %a_index, align 4
  %23 = load i32, i32* %b_index, align 4
  %cmp29 = icmp eq i32 %22, %23
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.else32:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.else33:                                        ; preds = %land.lhs.true, %entry
  %24 = load i8*, i8** %a_fixed, align 8
  %call34 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.else42

land.lhs.true37:                                  ; preds = %if.else33
  %25 = load i8*, i8** %b_fixed, align 8
  %call38 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %land.lhs.true37
  store i32 -1, i32* %retval, align 4
  br label %return

if.else42:                                        ; preds = %land.lhs.true37, %if.else33
  %26 = load i8*, i8** %a_fixed, align 8
  %call43 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.end51

land.lhs.true46:                                  ; preds = %if.else42
  %27 = load i8*, i8** %b_fixed, align 8
  %call47 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true46
  store i32 1, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %land.lhs.true46, %if.else42
  br label %if.end52

if.end52:                                         ; preds = %if.end51
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  %28 = load i8*, i8** %a_parser, align 8
  %call54 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0))
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %land.lhs.true57, label %if.else62

land.lhs.true57:                                  ; preds = %if.end53
  %29 = load i8*, i8** %b_parser, align 8
  %call58 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0))
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %land.lhs.true57
  store i32 -1, i32* %retval, align 4
  br label %return

if.else62:                                        ; preds = %land.lhs.true57, %if.end53
  %30 = load i8*, i8** %a_parser, align 8
  %call63 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0))
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %land.lhs.true66, label %if.else71

land.lhs.true66:                                  ; preds = %if.else62
  %31 = load i8*, i8** %b_parser, align 8
  %call67 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0))
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %land.lhs.true66
  store i32 1, i32* %retval, align 4
  br label %return

if.else71:                                        ; preds = %land.lhs.true66, %if.else62
  %32 = load i8*, i8** %a_parser, align 8
  %call72 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0))
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.else90

land.lhs.true75:                                  ; preds = %if.else71
  %33 = load i8*, i8** %b_parser, align 8
  %call76 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0))
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.else90

if.then79:                                        ; preds = %land.lhs.true75
  %34 = load i8*, i8** %a_parser, align 8
  %35 = load i8*, i8** %b_parser, align 8
  %call80 = call i32 @strcmp(i8* %34, i8* %35)
  store i32 %call80, i32* %r, align 4
  %36 = load i32, i32* %r, align 4
  %cmp81 = icmp ne i32 %36, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then79
  %37 = load i32, i32* %r, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.then79
  %38 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call86 = call i8* @colprintLineGetColumn(%struct.colprintLine* %38, i32 1)
  store i8* %call86, i8** %a_name85, align 8
  %39 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call88 = call i8* @colprintLineGetColumn(%struct.colprintLine* %39, i32 1)
  store i8* %call88, i8** %b_name87, align 8
  %40 = load i8*, i8** %a_name85, align 8
  %41 = load i8*, i8** %b_name87, align 8
  %call89 = call i32 @strcmp(i8* %40, i8* %41)
  store i32 %call89, i32* %retval, align 4
  br label %return

if.else90:                                        ; preds = %land.lhs.true75, %if.else71
  %42 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call91 = call i8* @colprintLineGetColumn(%struct.colprintLine* %42, i32 0)
  store i8* %call91, i8** %a_letter, align 8
  %43 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call92 = call i8* @colprintLineGetColumn(%struct.colprintLine* %43, i32 0)
  store i8* %call92, i8** %b_letter, align 8
  %44 = load i8*, i8** %a_letter, align 8
  %45 = load i8*, i8** %b_letter, align 8
  %call93 = call i32 @strcmp(i8* %44, i8* %45)
  store i32 %call93, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else90, %if.end84, %if.then83, %if.then70, %if.then61, %if.then50, %if.then41, %if.else32, %if.then31, %if.then28
  %46 = load i32, i32* %retval, align 4
  ret i32 %46
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldName(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 7
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %3 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call = call i8* @renderEscapedName(i1 zeroext true, i8* %1, %struct.sTagEntryInfo* %2, %struct.sVString* %3)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldNameNoEscape(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 7
  %1 = load i8*, i8** %name, align 8
  %call = call i8* @strpbrk(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %rejected.addr, align 8
  store i8 1, i8* %2, align 1
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 7
  %5 = load i8*, i8** %name1, align 8
  %call2 = call i8* @renderAsIs(%struct.sVString* %3, i8* %5)
  store i8* %call2, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldInput(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %f = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %inputFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 6
  %1 = load i8*, i8** %inputFileName, align 8
  store i8* %1, i8** %f, align 8
  %2 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 16
  %4 = load i8*, i8** %sourceFileName, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceFileName2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 16
  %6 = load i8*, i8** %sourceFileName2, align 8
  store i8* %6, i8** %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i8*, i8** %f, align 8
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %9 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call = call i8* @renderEscapedString(i8* %7, %struct.sTagEntryInfo* %8, %struct.sVString* %9)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldInputNoEscape(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %f = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %inputFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 6
  %1 = load i8*, i8** %inputFileName, align 8
  store i8* %1, i8** %f, align 8
  %2 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 16
  %4 = load i8*, i8** %sourceFileName, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceFileName2 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 16
  %6 = load i8*, i8** %sourceFileName2, align 8
  store i8* %6, i8** %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i8*, i8** %f, align 8
  %call = call i8* @strpbrk(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %8 = load i8*, i8** %rejected.addr, align 8
  store i8 1, i8* %8, align 1
  store i8* null, i8** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %10 = load i8*, i8** %f, align 8
  %call6 = call i8* @renderAsIs(%struct.sVString* %9, i8* %10)
  store i8* %call6, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %11 = load i8*, i8** %retval, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldPatternCtags(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = bitcast %struct.sTagEntryInfo* %0 to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %5 = load i8*, i8** %rejected.addr, align 8
  %call = call i8* @renderFieldPatternCommon(%struct.sTagEntryInfo* %2, i8* %3, %struct.sVString* %4, i8* %5)
  store i8* %call, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldPatternCommon(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = bitcast %struct.sTagEntryInfo* %0 to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %pattern = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 2
  %3 = load i8*, i8** %pattern, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %4 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %pattern3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 2
  %6 = load i8*, i8** %pattern3, align 8
  call void @vStringCatS(%struct.sVString* %4, i8* %6)
  br label %if.end

if.else4:                                         ; preds = %if.else
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i8* @makePatternString(%struct.sTagEntryInfo* %7)
  store i8* %call, i8** %tmp, align 8
  %8 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %9 = load i8*, i8** %tmp, align 8
  call void @vStringCatS(%struct.sVString* %8, i8* %9)
  %10 = load i8*, i8** %tmp, align 8
  call void @eFree(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %11 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  store i8* %12, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %13 = load i8*, i8** %retval, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderEscapedName(i1 zeroext %isTagName, i8* %s, %struct.sTagEntryInfo* %tag, %struct.sVString* %b) #0 {
entry:
  %isTagName.addr = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %unexpected_byte = alloca i32, align 4
  %p = alloca i8*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  %frombool = zext i1 %isTagName to i8
  store i8 %frombool, i8* %isTagName.addr, align 1
  store i8* %s, i8** %s.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i32 0, i32* %unexpected_byte, align 4
  %0 = load i8, i8* %isTagName.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 33
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  store i32 %conv5, i32* %unexpected_byte, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  switch i32 %conv6, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then
  %9 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  call void @vStringCatS(%struct.sVString* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  %11 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  call void @vStringCatS(%struct.sVString* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %12 = load i8*, i8** %s.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %s.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb7, %sw.bb
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %entry
  %13 = load i8*, i8** %s.addr, align 8
  store i8* %13, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv9 = sext i8 %15 to i32
  %cmp10 = icmp sgt i32 %conv9, 31
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp ne i32 %conv12, 127
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv16 = sext i8 %21 to i32
  store i32 %conv16, i32* %unexpected_byte, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %sw.epilog
  %22 = load i32, i32* %unexpected_byte, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then18, label %if.end33

if.then18:                                        ; preds = %if.end
  %23 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call %struct.sKindDefinition* @getTagKind(%struct.sTagEntryInfo* %23)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %kdef, align 8
  %24 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool19 = trunc i8 %24 to i1
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then18
  %25 = load i32, i32* %unexpected_byte, align 4
  %26 = load i8*, i8** %s.addr, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.25, i64 0, i64 0), i32 %25, i8* %26)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then18
  %27 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool23 = trunc i8 %27 to i1
  br i1 %tobool23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end22
  %28 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %inputFileName = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %28, i32 0, i32 6
  %29 = load i8*, i8** %inputFileName, align 8
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %30, i32 0, i32 1
  %31 = load i64, i64* %lineNumber, align 8
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %32, i32 0, i32 5
  %33 = load i32, i32* %langType, align 8
  %call25 = call i8* @getLanguageName(i32 %33)
  %34 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %34, i32 0, i32 1
  %35 = load i8, i8* %letter, align 1
  %conv26 = sext i8 %35 to i32
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i8* %29, i64 %31, i8* %call25, i32 %conv26)
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22
  %36 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool29 = trunc i8 %36 to i1
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end
  %37 = load i8*, i8** %s.addr, align 8
  %38 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %39 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call34 = call i8* @renderEscapedString(i8* %37, %struct.sTagEntryInfo* %38, %struct.sVString* %39)
  ret i8* %call34
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare %struct.sKindDefinition* @getTagKind(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderEscapedString(i8* %s, %struct.sTagEntryInfo* %tag, %struct.sVString* %b) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  call void @vStringCatSWithEscaping(%struct.sVString* %0, i8* %1)
  %2 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  ret i8* %3
}

declare void @vStringCatSWithEscaping(%struct.sVString*, i8*) #1

declare i8* @strpbrk(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderAsIs(%struct.sVString* %b, i8* %s) #0 {
entry:
  %b.addr = alloca %struct.sVString*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  ret i8* %0
}

declare i8* @makePatternString(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldCompactInputLine(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %line = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** @renderFieldCompactInputLine.tmp, align 8
  %call = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %0)
  store %struct.sVString* %call, %struct.sVString** @renderFieldCompactInputLine.tmp, align 8
  %1 = load %struct.sVString*, %struct.sVString** @renderFieldCompactInputLine.tmp, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call1 = call i8* @readLineFromBypassAnyway(%struct.sVString* %1, %struct.sTagEntryInfo* %2, i64* null)
  store i8* %call1, i8** %line, align 8
  %3 = load i8*, i8** %line, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %5 = load i8*, i8** %line, align 8
  %call2 = call i8* @renderCompactInputLine(%struct.sVString* %4, i8* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %6 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  store %struct.sVString* %6, %struct.sVString** %vStringClear_s, align 8
  %7 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %10 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer3 = getelementptr inbounds %struct.sVString, %struct.sVString* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer3, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldAccess(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 11
  %access = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 0
  %2 = load i8*, i8** %access, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 11
  %access2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 0
  %4 = load i8*, i8** %access2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %cond.false ]
  %call = call i8* @renderAsIs(%struct.sVString* %0, i8* %cond)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isAccessFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %access = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 0
  %1 = load i8*, i8** %access, align 8
  %cmp = icmp ne i8* %1, null
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldFile(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %2 = bitcast %struct.sTagEntryInfo* %1 to i8*
  %bf.load = load i8, i8* %2, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)
  %call = call i8* @renderAsIs(%struct.sVString* %0, i8* %cond)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isFileFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %1 = bitcast %struct.sTagEntryInfo* %0 to i8*
  %bf.load = load i8, i8* %1, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  ret i1 %tobool1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldInherits(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 3
  %1 = load i8*, i8** %inheritance, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 11
  %inheritance2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 3
  %3 = load i8*, i8** %inheritance2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %cond.false ]
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call = call i8* @renderEscapedString(i8* %cond, %struct.sTagEntryInfo* %4, %struct.sVString* %5)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isInheritsFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %inheritance = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 3
  %1 = load i8*, i8** %inheritance, align 8
  %cmp = icmp ne i8* %1, null
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldKindName(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i8* @getTagKindName(%struct.sTagEntryInfo* %0)
  store i8* %call, i8** %name, align 8
  %1 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %2 = load i8*, i8** %name, align 8
  %call1 = call i8* @renderAsIs(%struct.sVString* %1, i8* %2)
  ret i8* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldKindLetter(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call signext i8 @getTagKindLetter(%struct.sTagEntryInfo* %0)
  store i8 %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @renderFieldKindLetter.c, i64 0, i64 0), align 1
  %1 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call1 = call i8* @renderAsIs(%struct.sVString* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @renderFieldKindLetter.c, i64 0, i64 0))
  ret i8* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldLanguage(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %l = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceLangType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 15
  %2 = load i32, i32* %sourceLangType, align 8
  %cmp = icmp ne i32 %2, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceLangType1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 15
  %4 = load i32, i32* %sourceLangType1, align 8
  %call = call i8* @getLanguageName(i32 %4)
  store i8* %call, i8** %l, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 5
  %6 = load i32, i32* %langType, align 8
  %call2 = call i8* @getLanguageName(i32 %6)
  store i8* %call2, i8** %l, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %8 = load i8*, i8** %l, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load i8*, i8** %l, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %cond.false ]
  %call4 = call i8* @renderAsIs(%struct.sVString* %7, i8* %cond)
  ret i8* %call4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isLanguageFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 5
  %1 = load i32, i32* %langType, align 8
  %cmp = icmp eq i32 %1, -2
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldImplementation(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 11
  %implementation = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 2
  %2 = load i8*, i8** %implementation, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 11
  %implementation2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 2
  %4 = load i8*, i8** %implementation2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %cond.false ]
  %call = call i8* @renderAsIs(%struct.sVString* %0, i8* %cond)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isImplementationFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %implementation = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 2
  %1 = load i8*, i8** %implementation, align 8
  %cmp = icmp ne i8* %1, null
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldLineNumber(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %ln = alloca i64, align 8
  %buf = alloca [32 x i8], align 1
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 1
  %1 = load i64, i64* %lineNumber, align 8
  store i64 %1, i64* %ln, align 8
  %2 = bitcast [32 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 32, i1 false)
  %3 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceLineNumberDifference = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 17
  %5 = load i64, i64* %sourceLineNumberDifference, align 8
  %cmp = icmp ne i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %sourceLineNumberDifference1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 17
  %7 = load i64, i64* %sourceLineNumberDifference1, align 8
  %8 = load i64, i64* %ln, align 8
  %add = add i64 %8, %7
  store i64 %add, i64* %ln, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  %9 = load i64, i64* %ln, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 %9)
  %10 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0
  call void @vStringCatS(%struct.sVString* %10, i8* %arraydecay2)
  %11 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 2
  %12 = load i8*, i8** %buffer, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldSignature(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  %1 = load i8*, i8** %signature, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 11
  %signature2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 8
  %3 = load i8*, i8** %signature2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %cond.false ]
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call = call i8* @renderEscapedString(i8* %cond, %struct.sTagEntryInfo* %4, %struct.sVString* %5)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isSignatureFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  %1 = load i8*, i8** %signature, align 8
  %cmp = icmp ne i8* %1, null
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldScope(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %scope = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  call void @getTagScopeInformation(%struct.sTagEntryInfo* %0, i8** null, i8** %scope)
  %1 = load i8*, i8** %scope, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %scope, align 8
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %4 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call = call i8* @renderEscapedName(i1 zeroext false, i8* %2, %struct.sTagEntryInfo* %3, %struct.sVString* %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldScopeNoEscape(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %scope = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  call void @getTagScopeInformation(%struct.sTagEntryInfo* %0, i8** null, i8** %scope)
  %1 = load i8*, i8** %scope, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %scope, align 8
  %call = call i8* @strpbrk(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %rejected.addr, align 8
  store i8 1, i8* %3, align 1
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %scope, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %6 = load i8*, i8** %scope, align 8
  %call3 = call i8* @renderAsIs(%struct.sVString* %5, i8* %6)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldTyperef(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 11
  %typeRef2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef2, i64 0, i64 1
  %3 = load i8*, i8** %arrayidx3, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %cond.false ]
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %5 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call = call i8* @renderEscapedName(i1 zeroext false, i8* %cond, %struct.sTagEntryInfo* %4, %struct.sVString* %5)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isTyperefFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 11
  %typeRef2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef2, i64 0, i64 1
  %3 = load i8*, i8** %arrayidx3, align 8
  %cmp4 = icmp ne i8* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %5 = zext i1 %4 to i64
  %cond = select i1 %4, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

declare i8* @readLineFromBypassAnyway(%struct.sVString*, %struct.sTagEntryInfo*, i64*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderCompactInputLine(%struct.sVString* %b, i8* %line) #0 {
entry:
  %b.addr = alloca %struct.sVString*, align 8
  %line.addr = alloca i8*, align 8
  %lineStarted = alloca i8, align 1
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8 0, i8* %lineStarted, align 1
  %0 = load i8*, i8** %line.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %3, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i8, i8* %lineStarted, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %c, align 4
  %call = call i32 @isspace(i32 %7) #6
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end25, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i8 1, i8* %lineStarted, align 1
  %8 = load i32, i32* %c, align 4
  %call6 = call i32 @isspace(i32 %8) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then8
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %add.ptr, align 1
  %conv9 = sext i8 %10 to i32
  store i32 %conv9, i32* %next, align 4
  %11 = load i32, i32* %next, align 4
  %call10 = call i32 @isspace(i32 %11) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs12, label %land.end15

land.rhs12:                                       ; preds = %while.cond
  %12 = load i32, i32* %next, align 4
  %cmp13 = icmp ne i32 %12, 10
  br label %land.end15

land.end15:                                       ; preds = %land.rhs12, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs12 ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end15
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end15
  store i32 32, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %15 = load i32, i32* %c, align 4
  %cmp16 = icmp ne i32 %15, 13
  br i1 %cmp16, label %if.then23, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end
  %16 = load i8*, i8** %p, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %add.ptr19, align 1
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp ne i32 %conv20, 10
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false18, %if.end
  %18 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %19 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %18, i32 %19)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %lor.lhs.false18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  %21 = load i8, i8* %incdec.ptr26, align 1
  %conv27 = sext i8 %21 to i32
  store i32 %conv27, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer, align 8
  ret i8* %23
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

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

declare i8* @getTagKindName(%struct.sTagEntryInfo*) #1

declare signext i8 @getTagKindLetter(%struct.sTagEntryInfo*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare void @getTagScopeInformation(%struct.sTagEntryInfo*, i8**, i8**) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldRole(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %rindex = alloca i32, align 4
  %role = alloca %struct.sRoleDesc*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %roleIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 10
  %1 = load i32, i32* %roleIndex, align 8
  store i32 %1, i32* %rindex, align 4
  %2 = load i32, i32* %rindex, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
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
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call %struct.sKindDefinition* @getTagKind(%struct.sTagEntryInfo* %7)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %kdef, align 8
  br label %do.body1

do.body1:                                         ; preds = %if.else
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %roles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %8, i32 0, i32 6
  %9 = load %struct.sRoleDesc*, %struct.sRoleDesc** %roles, align 8
  %10 = load i32, i32* %rindex, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %9, i64 %idxprom
  store %struct.sRoleDesc* %arrayidx3, %struct.sRoleDesc** %role, align 8
  %11 = load %struct.sRoleDesc*, %struct.sRoleDesc** %role, align 8
  %12 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call4 = call i8* @renderRole(%struct.sRoleDesc* %11, %struct.sVString* %12)
  store i8* %call4, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %do.end
  %13 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer5, align 8
  store i8* %14, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %do.end2
  %15 = load i8*, i8** %retval, align 8
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isRoleFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %roleIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 10
  %1 = load i32, i32* %roleIndex, align 8
  %cmp = icmp ne i32 %1, -1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldRefMarker(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %roleIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 10
  %1 = load i32, i32* %roleIndex, align 8
  %cmp = icmp eq i32 %1, -1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 68, i32 82
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @renderFieldRefMarker.c, i64 0, i64 0), align 1
  %3 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call = call i8* @renderAsIs(%struct.sVString* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @renderFieldRefMarker.c, i64 0, i64 0))
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldExtras(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %hasExtra = alloca i8, align 1
  %c = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  store i8 0, i8* %hasExtra, align 1
  %call = call i32 @countXtags()
  store i32 %call, i32* %c, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call1 = call i8* @getXtagName(i32 %2)
  store i8* %call1, i8** %name, align 8
  %3 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call zeroext i1 @isTagExtraBitMarked(%struct.sTagEntryInfo* %4, i32 %5)
  br i1 %call2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %6 = load i8, i8* %hasExtra, align 1
  %tobool4 = trunc i8 %6 to i1
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %7 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  call void @vStringPut(%struct.sVString* %7, i32 44)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  %8 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %9 = load i8*, i8** %name, align 8
  call void @vStringCatS(%struct.sVString* %8, i8* %9)
  store i8 1, i8* %hasExtra, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.then
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8, i8* %hasExtra, align 1
  %tobool8 = trunc i8 %11 to i1
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.end
  %12 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %12, i32 0, i32 2
  %13 = load i8*, i8** %buffer, align 8
  store i8* %13, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %for.end
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then9
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isExtrasFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %retval = alloca i1, align 1
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %i = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extra = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %1, i32 0, i32 9
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %extra, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %for.body
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extraDynamic = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 10
  %5 = load i8*, i8** %extraDynamic, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldXpath(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isXpathFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldScopeKindName(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  %kind = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  call void @getTagScopeInformation(%struct.sTagEntryInfo* %0, i8** %kind, i8** null)
  %1 = load i8*, i8** %kind, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %3 = load i8*, i8** %kind, align 8
  %call = call i8* @renderAsIs(%struct.sVString* %2, i8* %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @renderFieldEnd(%struct.sTagEntryInfo* %tag, i8* %value, %struct.sVString* %b, i8* %rejected) #0 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %value.addr = alloca i8*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  %rejected.addr = alloca i8*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  store i8* %rejected, i8** %rejected.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  %1 = load i64, i64* %endLine, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields1 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 11
  %endLine2 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields1, i32 0, i32 11
  %3 = load i64, i64* %endLine2, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @renderFieldEnd.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i64 %3)
  %4 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %call3 = call i8* @renderAsIs(%struct.sVString* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @renderFieldEnd.buf, i64 0, i64 0))
  store i8* %call3, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isEndFieldAvailable(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  %1 = load i64, i64* %endLine, align 8
  %cmp = icmp ne i64 %1, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

declare i8* @renderRole(%struct.sRoleDesc*, %struct.sVString*) #1

declare i32 @countXtags() #1

declare i8* @getXtagName(i32) #1

declare zeroext i1 @isTagExtraBitMarked(%struct.sTagEntryInfo*, i32) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #1

declare void @colprintLineAppendColumnChar(%struct.colprintLine*, i8 signext) #1

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #1

declare void @colprintLineAppendColumnBool(%struct.colprintLine*, i1 zeroext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i8* @colprintLineGetColumn(%struct.colprintLine*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
