; ModuleID = 'cxx/cxx_parser_tokenizer.c'
source_filename = "cxx/cxx_parser_tokenizer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._CXXParserState = type { i32, i32, i32, i32, i32, %struct.sKindDefinition*, i32, %struct.sFieldDefinition*, i32, %struct._CXXTokenChain*, %struct._CXXTokenChain*, %struct._CXXToken*, i32, i32, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }
%struct._CXXCharTypeData = type { i32, i32, i32 }
%struct.sCppMacroInfo = type { i8, %struct.sCppMacroReplacementPartInfo* }
%struct.sCppMacroReplacementPartInfo = type { i32, i32, %struct.sVString*, %struct.sCppMacroReplacementPartInfo* }

@g_cxx = external global %struct._CXXParserState, align 8
@g_aCharTable = internal global [128 x %struct._CXXCharTypeData] [%struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 64, i32 32768, i32 65536 }, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData { i32 32, i32 1048576, i32 0 }, %struct._CXXCharTypeData { i32 32, i32 16777216, i32 0 }, %struct._CXXCharTypeData { i32 32, i32 16384, i32 0 }, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 32, i32 128, i32 0 }, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 80, i32 2048, i32 262144 }, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 30, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 64, i32 16, i32 32 }, %struct._CXXCharTypeData { i32 32, i32 64, i32 0 }, %struct._CXXCharTypeData { i32 256, i32 4194304, i32 0 }, %struct._CXXCharTypeData { i32 192, i32 256, i32 512 }, %struct._CXXCharTypeData { i32 32, i32 67108864, i32 0 }, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 32, i32 2097152, i32 0 }, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData { i32 32, i32 33554432, i32 0 }, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData zeroinitializer, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 27, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 19, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 3, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 32, i32 524288, i32 0 }, %struct._CXXCharTypeData { i32 128, i32 0, i32 0 }, %struct._CXXCharTypeData { i32 32, i32 8388608, i32 0 }, %struct._CXXCharTypeData { i32 1, i32 0, i32 0 }, %struct._CXXCharTypeData zeroinitializer], align 4
@cxxParserParseNextToken.iReplacementRecursionCount = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"__always_inline__\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"__deprecated__\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseNextToken() #0 {
entry:
  %retval = alloca i1, align 1
  %t = alloca %struct._CXXToken*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %uInfo = alloca i32, align 4
  %iCXXKeyword = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %pMacro = alloca %struct.sCppMacroInfo*, align 8
  %pParameterChain = alloca %struct._CXXToken*, align 8
  %bRet = alloca i8, align 1
  %iChar = alloca i32, align 4
  %call = call %struct._CXXToken* @cxxTokenCreate()
  store %struct._CXXToken* %call, %struct._CXXToken** %t, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp sgt i32 %1, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call1 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %2)
  call void @cxxTokenDestroy(%struct._CXXToken* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %3, %struct._CXXToken* %4)
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %5, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  call void @cxxParserSkipToNonWhiteSpace()
  call void @cppBeginStatement()
  %call2 = call i64 @getInputLineNumber()
  %conv = trunc i64 %call2 to i32
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %iLineNumber = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 5
  store i32 %conv, i32* %iLineNumber, align 4
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %oFilePosition = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 6
  %call3 = call [2 x i64] @getInputFilePosition()
  %8 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call3, [2 x i64]* %8, align 8
  %9 = bitcast %struct._MIOPos* %oFilePosition to i8*
  %10 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp4 = icmp eq i32 %11, -1
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  store i32 1, i32* %eType, align 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace, align 8
  store i1 false, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.end
  %14 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp8 = icmp slt i32 %14, 128
  br i1 %cmp8, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end7
  %15 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp10 = icmp sge i32 %15, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom
  %uType = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %uType, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %uInfo, align 4
  %18 = load i32, i32* %uInfo, align 4
  %and = and i32 %18, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then12, label %if.end166

if.then12:                                        ; preds = %cond.end
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 0
  store i32 2, i32* %eType13, align 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace14 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace14, align 8
  %21 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 1
  %22 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %22, i32 %23)
  %24 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp15 = icmp eq i32 %24, 126
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then12
  %call18 = call i32 @cppGetc()
  store i32 %call18, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call19 = call i32 @isspace(i32 %25) #4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.then17
  %26 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 4
  store i8 1, i8* %bFollowedBySpace22, align 8
  %call23 = call i32 @cppGetc()
  store i32 %call23, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then21
  %27 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call24 = call i32 @isspace(i32 %27) #4
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call26 = call i32 @cppGetc()
  store i32 %call26, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end27

if.end27:                                         ; preds = %while.end, %if.then17
  %28 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp28 = icmp slt i32 %28, 128
  br i1 %cmp28, label %land.lhs.true30, label %cond.false37

land.lhs.true30:                                  ; preds = %if.end27
  %29 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp31 = icmp sge i32 %29, 0
  br i1 %cmp31, label %cond.true33, label %cond.false37

cond.true33:                                      ; preds = %land.lhs.true30
  %30 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom34
  %uType36 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx35, i32 0, i32 0
  %31 = load i32, i32* %uType36, align 4
  br label %cond.end38

cond.false37:                                     ; preds = %land.lhs.true30, %if.end27
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true33
  %cond39 = phi i32 [ %31, %cond.true33 ], [ 0, %cond.false37 ]
  store i32 %cond39, i32* %uInfo, align 4
  %32 = load i32, i32* %uInfo, align 4
  %and40 = and i32 %32, 1
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end56, label %if.then42

if.then42:                                        ; preds = %cond.end38
  %33 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType43 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 0
  store i32 512, i32* %eType43, align 8
  %34 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace44 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %34, i32 0, i32 4
  %35 = load i8, i8* %bFollowedBySpace44, align 8
  %tobool45 = trunc i8 %35 to i1
  br i1 %tobool45, label %if.end55, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.then42
  %36 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp47 = icmp eq i32 %36, 61
  br i1 %cmp47, label %if.then49, label %if.end55

if.then49:                                        ; preds = %land.lhs.true46
  %37 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord50 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 1
  %38 = load %struct.sVString*, %struct.sVString** %pszWord50, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %38, i32 %39)
  %call51 = call i32 @cppGetc()
  store i32 %call51, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call52 = call i32 @isspace(i32 %40) #4
  %tobool53 = icmp ne i32 %call52, 0
  %41 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace54 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %41, i32 0, i32 4
  %frombool = zext i1 %tobool53 to i8
  store i8 %frombool, i8* %bFollowedBySpace54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %land.lhs.true46, %if.then42
  store i1 true, i1* %retval, align 1
  br label %return

if.end56:                                         ; preds = %cond.end38
  br label %if.end58

if.else:                                          ; preds = %if.then12
  %call57 = call i32 @cppGetc()
  store i32 %call57, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.end56
  br label %for.cond

for.cond:                                         ; preds = %if.end74, %if.end58
  %42 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp59 = icmp slt i32 %42, 128
  br i1 %cmp59, label %land.lhs.true61, label %cond.false68

land.lhs.true61:                                  ; preds = %for.cond
  %43 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp62 = icmp sge i32 %43, 0
  br i1 %cmp62, label %cond.true64, label %cond.false68

cond.true64:                                      ; preds = %land.lhs.true61
  %44 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom65
  %uType67 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx66, i32 0, i32 0
  %45 = load i32, i32* %uType67, align 4
  br label %cond.end69

cond.false68:                                     ; preds = %land.lhs.true61, %for.cond
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false68, %cond.true64
  %cond70 = phi i32 [ %45, %cond.true64 ], [ 0, %cond.false68 ]
  store i32 %cond70, i32* %uInfo, align 4
  %46 = load i32, i32* %uInfo, align 4
  %and71 = and i32 %46, 2
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %cond.end69
  br label %for.end

if.end74:                                         ; preds = %cond.end69
  %47 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord75 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %47, i32 0, i32 1
  %48 = load %struct.sVString*, %struct.sVString** %pszWord75, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %48, i32 %49)
  %call76 = call i32 @cppGetc()
  store i32 %call76, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %for.cond

for.end:                                          ; preds = %if.then73
  %50 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord77 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 1
  %51 = load %struct.sVString*, %struct.sVString** %pszWord77, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 1), align 4
  %call78 = call i32 @lookupKeyword(i8* %52, i32 %53)
  store i32 %call78, i32* %iCXXKeyword, align 4
  %54 = load i32, i32* %iCXXKeyword, align 4
  %cmp79 = icmp sge i32 %54, 0
  br i1 %cmp79, label %if.then81, label %if.else125

if.then81:                                        ; preds = %for.end
  %55 = load i32, i32* %iCXXKeyword, align 4
  %call82 = call zeroext i1 @cxxKeywordIsDisabled(i32 %55)
  br i1 %call82, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.then81
  %56 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType84 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %56, i32 0, i32 0
  store i32 2, i32* %eType84, align 8
  br label %if.end124

if.else85:                                        ; preds = %if.then81
  %call86 = call zeroext i1 @isInputHeaderFile()
  br i1 %call86, label %land.lhs.true88, label %if.else116

land.lhs.true88:                                  ; preds = %if.else85
  %57 = load i32, i32* %iCXXKeyword, align 4
  %cmp89 = icmp eq i32 %57, 64
  br i1 %cmp89, label %if.then96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true88
  %58 = load i32, i32* %iCXXKeyword, align 4
  %cmp91 = icmp eq i32 %58, 63
  br i1 %cmp91, label %if.then96, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false
  %59 = load i32, i32* %iCXXKeyword, align 4
  %cmp94 = icmp eq i32 %59, 62
  br i1 %cmp94, label %if.then96, label %if.else116

if.then96:                                        ; preds = %lor.lhs.false93, %lor.lhs.false, %land.lhs.true88
  %60 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  store i32 %60, i32* %c0, align 4
  %61 = load i32, i32* %c0, align 4
  %cmp97 = icmp eq i32 %61, 58
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then96
  br label %assign_keyword

if.end100:                                        ; preds = %if.then96
  %62 = load i32, i32* %c0, align 4
  %call101 = call i32 @isspace(i32 %62) #4
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end113

if.then103:                                       ; preds = %if.end100
  call void @cxxParserSkipToNonWhiteSpace()
  %63 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  store i32 %63, i32* %c1, align 4
  %64 = load i32, i32* %c1, align 4
  call void @cppUngetc(i32 %64)
  %65 = load i32, i32* %c0, align 4
  store i32 %65, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %66 = load i32, i32* %c1, align 4
  %cmp104 = icmp eq i32 %66, 58
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.then103
  br label %assign_keyword

if.else107:                                       ; preds = %if.then103
  %67 = load i32, i32* %c1, align 4
  %call108 = call i32 @isalpha(i32 %67) #4
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.else107
  br label %assign_keyword

if.end111:                                        ; preds = %if.else107
  br label %if.end112

if.end112:                                        ; preds = %if.end111
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end100
  %68 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType114 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %68, i32 0, i32 0
  store i32 2, i32* %eType114, align 8
  store i8 0, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %call115 = call zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext false)
  br label %if.end123

if.else116:                                       ; preds = %lor.lhs.false93, %if.else85
  br label %assign_keyword

assign_keyword:                                   ; preds = %if.else116, %if.then110, %if.then106, %if.then99
  %69 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType117 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %69, i32 0, i32 0
  store i32 4, i32* %eType117, align 8
  %70 = load i32, i32* %iCXXKeyword, align 4
  %71 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %71, i32 0, i32 2
  store i32 %70, i32* %eKeyword, align 8
  %72 = load i32, i32* %iCXXKeyword, align 4
  %cmp118 = icmp eq i32 %72, 0
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %assign_keyword
  %call121 = call zeroext i1 @cxxParserParseNextTokenCondenseAttribute()
  store i1 %call121, i1* %retval, align 1
  br label %return

if.end122:                                        ; preds = %assign_keyword
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end113
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then83
  br label %if.end161

if.else125:                                       ; preds = %for.end
  %73 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord126 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %73, i32 0, i32 1
  %74 = load %struct.sVString*, %struct.sVString** %pszWord126, align 8
  %buffer127 = getelementptr inbounds %struct.sVString, %struct.sVString* %74, i32 0, i32 2
  %75 = load i8*, i8** %buffer127, align 8
  %call128 = call %struct.sCppMacroInfo* @cppFindMacro(i8* %75)
  store %struct.sCppMacroInfo* %call128, %struct.sCppMacroInfo** %pMacro, align 8
  %76 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %pMacro, align 8
  %tobool129 = icmp ne %struct.sCppMacroInfo* %76, null
  br i1 %tobool129, label %if.then130, label %if.end160

if.then130:                                       ; preds = %if.else125
  br label %do.body

do.body:                                          ; preds = %if.then130
  br label %do.end

do.end:                                           ; preds = %do.body
  %77 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call131 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %77)
  call void @cxxTokenDestroy(%struct._CXXToken* %call131)
  store %struct._CXXToken* null, %struct._CXXToken** %pParameterChain, align 8
  %78 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %pMacro, align 8
  %hasParameterList = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %78, i32 0, i32 0
  %79 = load i8, i8* %hasParameterList, align 8
  %tobool132 = trunc i8 %79 to i1
  br i1 %tobool132, label %if.then133, label %if.end139

if.then133:                                       ; preds = %do.end
  br label %do.body134

do.body134:                                       ; preds = %if.then133
  br label %do.end135

do.end135:                                        ; preds = %do.body134
  %call136 = call zeroext i1 @cxxParserParseNextTokenSkipMacroParenthesis(%struct._CXXToken** %pParameterChain)
  br i1 %call136, label %if.end138, label %if.then137

if.then137:                                       ; preds = %do.end135
  store i1 false, i1* %retval, align 1
  br label %return

if.end138:                                        ; preds = %do.end135
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %do.end
  %80 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %pMacro, align 8
  %replacements = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %80, i32 0, i32 1
  %81 = load %struct.sCppMacroReplacementPartInfo*, %struct.sCppMacroReplacementPartInfo** %replacements, align 8
  %tobool140 = icmp ne %struct.sCppMacroReplacementPartInfo* %81, null
  br i1 %tobool140, label %if.then141, label %if.end149

if.then141:                                       ; preds = %if.end139
  br label %do.body142

do.body142:                                       ; preds = %if.then141
  br label %do.end143

do.end143:                                        ; preds = %do.body142
  %82 = load i32, i32* @cxxParserParseNextToken.iReplacementRecursionCount, align 4
  %cmp144 = icmp slt i32 %82, 1024
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %do.end143
  %83 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @cppUngetc(i32 %83)
  %84 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %pMacro, align 8
  %85 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChain, align 8
  call void @cxxParserParseNextTokenApplyReplacement(%struct.sCppMacroInfo* %84, %struct._CXXToken* %85)
  %call147 = call i32 @cppGetc()
  store i32 %call147, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %do.end143
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end139
  %86 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChain, align 8
  %tobool150 = icmp ne %struct._CXXToken* %86, null
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end149
  %87 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChain, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %87)
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end149
  %88 = load i32, i32* @cxxParserParseNextToken.iReplacementRecursionCount, align 4
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* @cxxParserParseNextToken.iReplacementRecursionCount, align 4
  br label %do.body153

do.body153:                                       ; preds = %if.end152
  br label %do.end154

do.end154:                                        ; preds = %do.body153
  %call155 = call zeroext i1 @cxxParserParseNextToken()
  %frombool156 = zext i1 %call155 to i8
  store i8 %frombool156, i8* %bRet, align 1
  br label %do.body157

do.body157:                                       ; preds = %do.end154
  br label %do.end158

do.end158:                                        ; preds = %do.body157
  %89 = load i32, i32* @cxxParserParseNextToken.iReplacementRecursionCount, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* @cxxParserParseNextToken.iReplacementRecursionCount, align 4
  %90 = load i8, i8* %bRet, align 1
  %tobool159 = trunc i8 %90 to i1
  store i1 %tobool159, i1* %retval, align 1
  br label %return

if.end160:                                        ; preds = %if.else125
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end124
  %91 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call162 = call i32 @isspace(i32 %91) #4
  %tobool163 = icmp ne i32 %call162, 0
  %92 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace164 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %92, i32 0, i32 4
  %frombool165 = zext i1 %tobool163 to i8
  store i8 %frombool165, i8* %bFollowedBySpace164, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end166:                                        ; preds = %cond.end
  %93 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp167 = icmp eq i32 %93, 45
  br i1 %cmp167, label %if.then169, label %if.end191

if.then169:                                       ; preds = %if.end166
  %94 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord170 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %94, i32 0, i32 1
  %95 = load %struct.sVString*, %struct.sVString** %pszWord170, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %95, i32 %96)
  %call171 = call i32 @cppGetc()
  store i32 %call171, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp172 = icmp eq i32 %97, 62
  br i1 %cmp172, label %if.then174, label %if.else178

if.then174:                                       ; preds = %if.then169
  %98 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType175 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %98, i32 0, i32 0
  store i32 4096, i32* %eType175, align 8
  %99 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord176 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %99, i32 0, i32 1
  %100 = load %struct.sVString*, %struct.sVString** %pszWord176, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %100, i32 %101)
  %call177 = call i32 @cppGetc()
  store i32 %call177, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %if.end186

if.else178:                                       ; preds = %if.then169
  %102 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType179 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %102, i32 0, i32 0
  store i32 512, i32* %eType179, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp180 = icmp eq i32 %103, 45
  br i1 %cmp180, label %if.then182, label %if.end185

if.then182:                                       ; preds = %if.else178
  %104 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord183 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %104, i32 0, i32 1
  %105 = load %struct.sVString*, %struct.sVString** %pszWord183, align 8
  %106 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %105, i32 %106)
  %call184 = call i32 @cppGetc()
  store i32 %call184, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.else178
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.then174
  %107 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call187 = call i32 @isspace(i32 %107) #4
  %tobool188 = icmp ne i32 %call187, 0
  %108 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace189 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %108, i32 0, i32 4
  %frombool190 = zext i1 %tobool188 to i8
  store i8 %frombool190, i8* %bFollowedBySpace189, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end191:                                        ; preds = %if.end166
  %109 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp192 = icmp eq i32 %109, 338
  br i1 %cmp192, label %if.then194, label %if.end203

if.then194:                                       ; preds = %if.end191
  %110 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType195 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %110, i32 0, i32 0
  store i32 8192, i32* %eType195, align 8
  %111 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord196 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %111, i32 0, i32 1
  %112 = load %struct.sVString*, %struct.sVString** %pszWord196, align 8
  call void @vStringPut(%struct.sVString* %112, i32 34)
  %113 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord197 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %113, i32 0, i32 1
  %114 = load %struct.sVString*, %struct.sVString** %pszWord197, align 8
  call void @vStringPut(%struct.sVString* %114, i32 34)
  %call198 = call i32 @cppGetc()
  store i32 %call198, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %115 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call199 = call i32 @isspace(i32 %115) #4
  %tobool200 = icmp ne i32 %call199, 0
  %116 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace201 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %116, i32 0, i32 4
  %frombool202 = zext i1 %tobool200 to i8
  store i8 %frombool202, i8* %bFollowedBySpace201, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end203:                                        ; preds = %if.end191
  %117 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp204 = icmp eq i32 %117, 322
  br i1 %cmp204, label %if.then206, label %if.end215

if.then206:                                       ; preds = %if.end203
  %118 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType207 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %118, i32 0, i32 0
  store i32 131072, i32* %eType207, align 8
  %119 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord208 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %119, i32 0, i32 1
  %120 = load %struct.sVString*, %struct.sVString** %pszWord208, align 8
  call void @vStringPut(%struct.sVString* %120, i32 39)
  %121 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord209 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %121, i32 0, i32 1
  %122 = load %struct.sVString*, %struct.sVString** %pszWord209, align 8
  call void @vStringPut(%struct.sVString* %122, i32 39)
  %call210 = call i32 @cppGetc()
  store i32 %call210, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %123 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call211 = call i32 @isspace(i32 %123) #4
  %tobool212 = icmp ne i32 %call211, 0
  %124 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace213 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %124, i32 0, i32 4
  %frombool214 = zext i1 %tobool212 to i8
  store i8 %frombool214, i8* %bFollowedBySpace213, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end215:                                        ; preds = %if.end203
  %125 = load i32, i32* %uInfo, align 4
  %and216 = and i32 %125, 4
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.then218, label %if.end245

if.then218:                                       ; preds = %if.end215
  %126 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType219 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %126, i32 0, i32 0
  store i32 8, i32* %eType219, align 8
  %127 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord220 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %127, i32 0, i32 1
  %128 = load %struct.sVString*, %struct.sVString** %pszWord220, align 8
  %129 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %128, i32 %129)
  br label %for.cond221

for.cond221:                                      ; preds = %if.end238, %if.then218
  %call222 = call i32 @cppGetc()
  store i32 %call222, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %130 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp223 = icmp slt i32 %130, 128
  br i1 %cmp223, label %land.lhs.true225, label %cond.false232

land.lhs.true225:                                 ; preds = %for.cond221
  %131 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp226 = icmp sge i32 %131, 0
  br i1 %cmp226, label %cond.true228, label %cond.false232

cond.true228:                                     ; preds = %land.lhs.true225
  %132 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom229 = sext i32 %132 to i64
  %arrayidx230 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom229
  %uType231 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx230, i32 0, i32 0
  %133 = load i32, i32* %uType231, align 4
  br label %cond.end233

cond.false232:                                    ; preds = %land.lhs.true225, %for.cond221
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false232, %cond.true228
  %cond234 = phi i32 [ %133, %cond.true228 ], [ 0, %cond.false232 ]
  store i32 %cond234, i32* %uInfo, align 4
  %134 = load i32, i32* %uInfo, align 4
  %and235 = and i32 %134, 16
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %if.end238, label %if.then237

if.then237:                                       ; preds = %cond.end233
  br label %for.end240

if.end238:                                        ; preds = %cond.end233
  %135 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord239 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %135, i32 0, i32 1
  %136 = load %struct.sVString*, %struct.sVString** %pszWord239, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %136, i32 %137)
  br label %for.cond221

for.end240:                                       ; preds = %if.then237
  %138 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call241 = call i32 @isspace(i32 %138) #4
  %tobool242 = icmp ne i32 %call241, 0
  %139 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace243 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %139, i32 0, i32 4
  %frombool244 = zext i1 %tobool242 to i8
  store i8 %frombool244, i8* %bFollowedBySpace243, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end245:                                        ; preds = %if.end215
  %140 = load i32, i32* %uInfo, align 4
  %and246 = and i32 %140, 64
  %tobool247 = icmp ne i32 %and246, 0
  br i1 %tobool247, label %if.then248, label %if.end271

if.then248:                                       ; preds = %if.end245
  %141 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom249 = sext i32 %141 to i64
  %arrayidx250 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom249
  %uSingleTokenType = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx250, i32 0, i32 1
  %142 = load i32, i32* %uSingleTokenType, align 4
  %143 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType251 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %143, i32 0, i32 0
  store i32 %142, i32* %eType251, align 8
  %144 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord252 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %144, i32 0, i32 1
  %145 = load %struct.sVString*, %struct.sVString** %pszWord252, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %145, i32 %146)
  %147 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  store i32 %147, i32* %iChar, align 4
  %call253 = call i32 @cppGetc()
  store i32 %call253, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %148 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %149 = load i32, i32* %iChar, align 4
  %cmp254 = icmp eq i32 %148, %149
  br i1 %cmp254, label %if.then256, label %if.end266

if.then256:                                       ; preds = %if.then248
  %150 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom257 = sext i32 %150 to i64
  %arrayidx258 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom257
  %uMultiTokenType = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx258, i32 0, i32 2
  %151 = load i32, i32* %uMultiTokenType, align 4
  %152 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType259 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %152, i32 0, i32 0
  store i32 %151, i32* %eType259, align 8
  br label %do.body260

do.body260:                                       ; preds = %do.cond, %if.then256
  %153 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord261 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %153, i32 0, i32 1
  %154 = load %struct.sVString*, %struct.sVString** %pszWord261, align 8
  %155 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %154, i32 %155)
  %call262 = call i32 @cppGetc()
  store i32 %call262, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body260
  %156 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %157 = load i32, i32* %iChar, align 4
  %cmp263 = icmp eq i32 %156, %157
  br i1 %cmp263, label %do.body260, label %do.end265

do.end265:                                        ; preds = %do.cond
  br label %if.end266

if.end266:                                        ; preds = %do.end265, %if.then248
  %158 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call267 = call i32 @isspace(i32 %158) #4
  %tobool268 = icmp ne i32 %call267, 0
  %159 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace269 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %159, i32 0, i32 4
  %frombool270 = zext i1 %tobool268 to i8
  store i8 %frombool270, i8* %bFollowedBySpace269, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end271:                                        ; preds = %if.end245
  %160 = load i32, i32* %uInfo, align 4
  %and272 = and i32 %160, 256
  %tobool273 = icmp ne i32 %and272, 0
  br i1 %tobool273, label %if.then274, label %if.end321

if.then274:                                       ; preds = %if.end271
  %161 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom275 = sext i32 %161 to i64
  %arrayidx276 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom275
  %uSingleTokenType277 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx276, i32 0, i32 1
  %162 = load i32, i32* %uSingleTokenType277, align 4
  %163 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType278 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %163, i32 0, i32 0
  store i32 %162, i32* %eType278, align 8
  %164 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord279 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %164, i32 0, i32 1
  %165 = load %struct.sVString*, %struct.sVString** %pszWord279, align 8
  %166 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %165, i32 %166)
  %call280 = call i32 @cppGetc()
  store i32 %call280, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %167 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp281 = icmp slt i32 %167, 128
  br i1 %cmp281, label %land.lhs.true283, label %cond.false290

land.lhs.true283:                                 ; preds = %if.then274
  %168 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp284 = icmp sge i32 %168, 0
  br i1 %cmp284, label %cond.true286, label %cond.false290

cond.true286:                                     ; preds = %land.lhs.true283
  %169 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom287 = sext i32 %169 to i64
  %arrayidx288 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom287
  %uType289 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx288, i32 0, i32 0
  %170 = load i32, i32* %uType289, align 4
  br label %cond.end291

cond.false290:                                    ; preds = %land.lhs.true283, %if.then274
  br label %cond.end291

cond.end291:                                      ; preds = %cond.false290, %cond.true286
  %cond292 = phi i32 [ %170, %cond.true286 ], [ 0, %cond.false290 ]
  store i32 %cond292, i32* %uInfo, align 4
  %171 = load i32, i32* %uInfo, align 4
  %and293 = and i32 %171, 384
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %if.then295, label %if.end316

if.then295:                                       ; preds = %cond.end291
  %172 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType296 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %172, i32 0, i32 0
  store i32 512, i32* %eType296, align 8
  br label %do.body297

do.body297:                                       ; preds = %do.cond312, %if.then295
  %173 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord298 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %173, i32 0, i32 1
  %174 = load %struct.sVString*, %struct.sVString** %pszWord298, align 8
  %175 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %174, i32 %175)
  %call299 = call i32 @cppGetc()
  store i32 %call299, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %176 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp300 = icmp slt i32 %176, 128
  br i1 %cmp300, label %land.lhs.true302, label %cond.false309

land.lhs.true302:                                 ; preds = %do.body297
  %177 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp303 = icmp sge i32 %177, 0
  br i1 %cmp303, label %cond.true305, label %cond.false309

cond.true305:                                     ; preds = %land.lhs.true302
  %178 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom306 = sext i32 %178 to i64
  %arrayidx307 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom306
  %uType308 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx307, i32 0, i32 0
  %179 = load i32, i32* %uType308, align 4
  br label %cond.end310

cond.false309:                                    ; preds = %land.lhs.true302, %do.body297
  br label %cond.end310

cond.end310:                                      ; preds = %cond.false309, %cond.true305
  %cond311 = phi i32 [ %179, %cond.true305 ], [ 0, %cond.false309 ]
  store i32 %cond311, i32* %uInfo, align 4
  br label %do.cond312

do.cond312:                                       ; preds = %cond.end310
  %180 = load i32, i32* %uInfo, align 4
  %and313 = and i32 %180, 384
  %tobool314 = icmp ne i32 %and313, 0
  br i1 %tobool314, label %do.body297, label %do.end315

do.end315:                                        ; preds = %do.cond312
  br label %if.end316

if.end316:                                        ; preds = %do.end315, %cond.end291
  %181 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call317 = call i32 @isspace(i32 %181) #4
  %tobool318 = icmp ne i32 %call317, 0
  %182 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace319 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %182, i32 0, i32 4
  %frombool320 = zext i1 %tobool318 to i8
  store i8 %frombool320, i8* %bFollowedBySpace319, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end321:                                        ; preds = %if.end271
  %183 = load i32, i32* %uInfo, align 4
  %and322 = and i32 %183, 32
  %tobool323 = icmp ne i32 %and322, 0
  br i1 %tobool323, label %if.then324, label %if.end335

if.then324:                                       ; preds = %if.end321
  %184 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom325 = sext i32 %184 to i64
  %arrayidx326 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom325
  %uSingleTokenType327 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx326, i32 0, i32 1
  %185 = load i32, i32* %uSingleTokenType327, align 4
  %186 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType328 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %186, i32 0, i32 0
  store i32 %185, i32* %eType328, align 8
  %187 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord329 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %187, i32 0, i32 1
  %188 = load %struct.sVString*, %struct.sVString** %pszWord329, align 8
  %189 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %188, i32 %189)
  %call330 = call i32 @cppGetc()
  store i32 %call330, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %190 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call331 = call i32 @isspace(i32 %190) #4
  %tobool332 = icmp ne i32 %call331, 0
  %191 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace333 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %191, i32 0, i32 4
  %frombool334 = zext i1 %tobool332 to i8
  store i8 %frombool334, i8* %bFollowedBySpace333, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end335:                                        ; preds = %if.end321
  %192 = load i32, i32* %uInfo, align 4
  %and336 = and i32 %192, 128
  %tobool337 = icmp ne i32 %and336, 0
  br i1 %tobool337, label %if.then338, label %if.end377

if.then338:                                       ; preds = %if.end335
  %193 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType339 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %193, i32 0, i32 0
  store i32 512, i32* %eType339, align 8
  %194 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord340 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %194, i32 0, i32 1
  %195 = load %struct.sVString*, %struct.sVString** %pszWord340, align 8
  %196 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %195, i32 %196)
  %call341 = call i32 @cppGetc()
  store i32 %call341, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %197 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp342 = icmp slt i32 %197, 128
  br i1 %cmp342, label %land.lhs.true344, label %cond.false351

land.lhs.true344:                                 ; preds = %if.then338
  %198 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp345 = icmp sge i32 %198, 0
  br i1 %cmp345, label %cond.true347, label %cond.false351

cond.true347:                                     ; preds = %land.lhs.true344
  %199 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom348 = sext i32 %199 to i64
  %arrayidx349 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom348
  %uType350 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx349, i32 0, i32 0
  %200 = load i32, i32* %uType350, align 4
  br label %cond.end352

cond.false351:                                    ; preds = %land.lhs.true344, %if.then338
  br label %cond.end352

cond.end352:                                      ; preds = %cond.false351, %cond.true347
  %cond353 = phi i32 [ %200, %cond.true347 ], [ 0, %cond.false351 ]
  store i32 %cond353, i32* %uInfo, align 4
  br label %while.cond354

while.cond354:                                    ; preds = %cond.end370, %cond.end352
  %201 = load i32, i32* %uInfo, align 4
  %and355 = and i32 %201, 128
  %tobool356 = icmp ne i32 %and355, 0
  br i1 %tobool356, label %while.body357, label %while.end372

while.body357:                                    ; preds = %while.cond354
  %202 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord358 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %202, i32 0, i32 1
  %203 = load %struct.sVString*, %struct.sVString** %pszWord358, align 8
  %204 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %203, i32 %204)
  %call359 = call i32 @cppGetc()
  store i32 %call359, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %205 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp360 = icmp slt i32 %205, 128
  br i1 %cmp360, label %land.lhs.true362, label %cond.false369

land.lhs.true362:                                 ; preds = %while.body357
  %206 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp363 = icmp sge i32 %206, 0
  br i1 %cmp363, label %cond.true365, label %cond.false369

cond.true365:                                     ; preds = %land.lhs.true362
  %207 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %idxprom366 = sext i32 %207 to i64
  %arrayidx367 = getelementptr inbounds [128 x %struct._CXXCharTypeData], [128 x %struct._CXXCharTypeData]* @g_aCharTable, i64 0, i64 %idxprom366
  %uType368 = getelementptr inbounds %struct._CXXCharTypeData, %struct._CXXCharTypeData* %arrayidx367, i32 0, i32 0
  %208 = load i32, i32* %uType368, align 4
  br label %cond.end370

cond.false369:                                    ; preds = %land.lhs.true362, %while.body357
  br label %cond.end370

cond.end370:                                      ; preds = %cond.false369, %cond.true365
  %cond371 = phi i32 [ %208, %cond.true365 ], [ 0, %cond.false369 ]
  store i32 %cond371, i32* %uInfo, align 4
  br label %while.cond354

while.end372:                                     ; preds = %while.cond354
  %209 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call373 = call i32 @isspace(i32 %209) #4
  %tobool374 = icmp ne i32 %call373, 0
  %210 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace375 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %210, i32 0, i32 4
  %frombool376 = zext i1 %tobool374 to i8
  store i8 %frombool376, i8* %bFollowedBySpace375, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end377:                                        ; preds = %if.end335
  %211 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType378 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %211, i32 0, i32 0
  store i32 1024, i32* %eType378, align 8
  %212 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pszWord379 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %212, i32 0, i32 1
  %213 = load %struct.sVString*, %struct.sVString** %pszWord379, align 8
  %214 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  call void @vStringPut(%struct.sVString* %213, i32 %214)
  %call380 = call i32 @cppGetc()
  store i32 %call380, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %215 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call381 = call i32 @isspace(i32 %215) #4
  %tobool382 = icmp ne i32 %call381, 0
  %216 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace383 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %216, i32 0, i32 4
  %frombool384 = zext i1 %tobool382 to i8
  store i8 %frombool384, i8* %bFollowedBySpace383, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end377, %while.end372, %if.then324, %if.end316, %if.end266, %for.end240, %if.then206, %if.then194, %if.end186, %if.end161, %do.end158, %if.then137, %if.then120, %if.end55, %if.then6
  %217 = load i1, i1* %retval, align 1
  ret i1 %217
}

declare %struct._CXXToken* @cxxTokenCreate() #1

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

declare void @cxxTokenChainAppend(%struct._CXXTokenChain*, %struct._CXXToken*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cxxParserSkipToNonWhiteSpace() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call = call i32 @isspace(i32 %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %call1 = call i32 @cppGetc()
  store i32 %call1, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %call2 = call i32 @isspace(i32 %1) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %do.cond
  ret void
}

declare void @cppBeginStatement() #1

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

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

declare i32 @cppGetc() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare i32 @lookupKeyword(i8*, i32) #1

declare zeroext i1 @cxxKeywordIsDisabled(i32) #1

declare zeroext i1 @isInputHeaderFile() #1

declare void @cppUngetc(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #3

declare zeroext i1 @cxxKeywordEnablePublicProtectedPrivate(i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserParseNextTokenCondenseAttribute() #0 {
entry:
  %retval = alloca i1, align 1
  %pInner = alloca %struct._CXXToken*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %0)
  call void @cxxTokenDestroy(%struct._CXXToken* %call)
  %call3 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %do.end2
  br label %do.body4

do.body4:                                         ; preds = %if.then
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end2
  %1 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 0
  %2 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %2, 1048576
  br i1 %cmp, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i1 true, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.end
  %call10 = call zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 3670016, i1 zeroext false, i1 zeroext false)
  br i1 %call10, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end9
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call14 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %3)
  call void @cxxTokenDestroy(%struct._CXXToken* %call14)
  %call15 = call zeroext i1 @cxxParserParseNextToken()
  store i1 %call15, i1* %retval, align 1
  br label %return

if.end16:                                         ; preds = %if.end9
  br label %do.body17

do.body17:                                        ; preds = %if.end16
  br label %do.end18

do.end18:                                         ; preds = %do.body17
  %4 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 3
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end18
  %6 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pChain19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 3
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain19, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %7, i32 0, i32 0
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %8, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pInner, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %tobool20 = icmp ne %struct._CXXToken* %9, null
  br i1 %tobool20, label %if.then21, label %if.end70

if.then21:                                        ; preds = %cond.end
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 7
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %tobool22 = icmp ne %struct._CXXToken* %11, null
  br i1 %tobool22, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.then21
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pNext23 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext23, align 8
  %eType24 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 0
  %14 = load i32, i32* %eType24, align 8
  %cmp25 = icmp eq i32 %14, 268435456
  br i1 %cmp25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %land.lhs.true
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pNext27 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 7
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pNext27, align 8
  %pChain28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 3
  %17 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain28, align 8
  %tobool29 = icmp ne %struct._CXXTokenChain* %17, null
  br i1 %tobool29, label %cond.true30, label %cond.false34

cond.true30:                                      ; preds = %if.then26
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pNext31 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 7
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pNext31, align 8
  %pChain32 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 3
  %20 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain32, align 8
  %pHead33 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %20, i32 0, i32 0
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pHead33, align 8
  br label %cond.end35

cond.false34:                                     ; preds = %if.then26
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true30
  %cond36 = phi %struct._CXXToken* [ %21, %cond.true30 ], [ null, %cond.false34 ]
  store %struct._CXXToken* %cond36, %struct._CXXToken** %pInner, align 8
  br label %if.end37

if.end37:                                         ; preds = %cond.end35, %land.lhs.true, %if.then21
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.end37
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %tobool38 = icmp ne %struct._CXXToken* %22, null
  br i1 %tobool38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %eType39 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %23, i32 0, i32 0
  %24 = load i32, i32* %eType39, align 8
  %cmp40 = icmp eq i32 %24, 2
  br i1 %cmp40, label %if.then41, label %if.end68

if.then41:                                        ; preds = %while.body
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  br label %do.end43

do.end43:                                         ; preds = %do.body42
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 1
  %26 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer, align 8
  %call44 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end43
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pszWord46 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 1
  %29 = load %struct.sVString*, %struct.sVString** %pszWord46, align 8
  %buffer47 = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer47, align 8
  %call48 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.else

if.then50:                                        ; preds = %lor.lhs.false, %do.end43
  br label %do.body51

do.body51:                                        ; preds = %if.then50
  br label %do.end52

do.end52:                                         ; preds = %do.body51
  %31 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or = or i32 %31, 2
  store i32 %or, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  br label %if.end67

if.else:                                          ; preds = %lor.lhs.false
  %32 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pszWord53 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %32, i32 0, i32 1
  %33 = load %struct.sVString*, %struct.sVString** %pszWord53, align 8
  %buffer54 = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 2
  %34 = load i8*, i8** %buffer54, align 8
  %call55 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.else
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pszWord58 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 1
  %36 = load %struct.sVString*, %struct.sVString** %pszWord58, align 8
  %buffer59 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer59, align 8
  %call60 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end66

if.then62:                                        ; preds = %lor.lhs.false57, %if.else
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  br label %do.end64

do.end64:                                         ; preds = %do.body63
  %38 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %or65 = or i32 %38, 2048
  store i32 %or65, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %lor.lhs.false57
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %do.end52
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %while.body
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pNext69 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 7
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pNext69, align 8
  store %struct._CXXToken* %40, %struct._CXXToken** %pInner, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end70

if.end70:                                         ; preds = %while.end, %cond.end
  %41 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call71 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %41)
  call void @cxxTokenDestroy(%struct._CXXToken* %call71)
  br label %do.body72

do.body72:                                        ; preds = %if.end70
  br label %do.end73

do.end73:                                         ; preds = %do.body72
  %call74 = call zeroext i1 @cxxParserParseNextToken()
  store i1 %call74, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end73, %do.end13, %do.end8, %do.end5
  %42 = load i1, i1* %retval, align 1
  ret i1 %42
}

declare %struct.sCppMacroInfo* @cppFindMacro(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserParseNextTokenSkipMacroParenthesis(%struct._CXXToken** %ppChain) #0 {
entry:
  %retval = alloca i1, align 1
  %ppChain.addr = alloca %struct._CXXToken**, align 8
  store %struct._CXXToken** %ppChain, %struct._CXXToken*** %ppChain.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  call void @cxxParserSkipToNonWhiteSpace()
  %0 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 12), align 8
  %cmp = icmp ne i32 %0, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %1 = load %struct._CXXToken**, %struct._CXXToken*** %ppChain.addr, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %1, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end2
  %call = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i1 false, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType, align 8
  %cmp7 = icmp eq i32 %3, 1048576
  br i1 %cmp7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end6
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  store i1 false, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end6
  %call14 = call zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 1048576, i1 zeroext false, i1 zeroext false)
  br i1 %call14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end13
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  store i1 false, i1* %retval, align 1
  br label %return

if.end18:                                         ; preds = %if.end13
  br label %do.body19

do.body19:                                        ; preds = %if.end18
  br label %do.end20

do.end20:                                         ; preds = %do.body19
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call21 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %4)
  %5 = load %struct._CXXToken**, %struct._CXXToken*** %ppChain.addr, align 8
  store %struct._CXXToken* %call21, %struct._CXXToken** %5, align 8
  br label %do.body22

do.body22:                                        ; preds = %do.end20
  br label %do.end23

do.end23:                                         ; preds = %do.body22
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end23, %do.end17, %do.end12, %do.end5, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cxxParserParseNextTokenApplyReplacement(%struct.sCppMacroInfo* %pInfo, %struct._CXXToken* %pParameterChainToken) #0 {
entry:
  %pInfo.addr = alloca %struct.sCppMacroInfo*, align 8
  %pParameterChainToken.addr = alloca %struct._CXXToken*, align 8
  %pParameters = alloca %struct._CXXTokenChain*, align 8
  %aParameters = alloca i8**, align 8
  %iParameterCount = alloca i32, align 4
  %pParam = alloca %struct._CXXToken*, align 8
  %pReplacement = alloca %struct.sVString*, align 8
  store %struct.sCppMacroInfo* %pInfo, %struct.sCppMacroInfo** %pInfo.addr, align 8
  store %struct._CXXToken* %pParameterChainToken, %struct._CXXToken** %pParameterChainToken.addr, align 8
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
  %0 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %pInfo.addr, align 8
  %hasParameterList = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %0, i32 0, i32 0
  %1 = load i8, i8* %hasParameterList, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end4
  br label %do.body5

do.body5:                                         ; preds = %if.then
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  br label %if.end

if.end:                                           ; preds = %do.end6, %do.end4
  store %struct._CXXTokenChain* null, %struct._CXXTokenChain** %pParameters, align 8
  store i8** null, i8*** %aParameters, align 8
  store i32 0, i32* %iParameterCount, align 4
  %2 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %pInfo.addr, align 8
  %hasParameterList7 = getelementptr inbounds %struct.sCppMacroInfo, %struct.sCppMacroInfo* %2, i32 0, i32 0
  %3 = load i8, i8* %hasParameterList7, align 8
  %tobool8 = trunc i8 %3 to i1
  br i1 %tobool8, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChainToken.addr, align 8
  %tobool9 = icmp ne %struct._CXXToken* %4, null
  br i1 %tobool9, label %land.lhs.true10, label %if.end23

land.lhs.true10:                                  ; preds = %land.lhs.true
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChainToken.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 3
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %6, i32 0, i32 2
  %7 = load i32, i32* %iCount, align 8
  %cmp = icmp sge i32 %7, 3
  br i1 %cmp, label %if.then11, label %if.end23

if.then11:                                        ; preds = %land.lhs.true10
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChainToken.addr, align 8
  %pChain12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 3
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain12, align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %9)
  call void @cxxTokenDestroy(%struct._CXXToken* %call)
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChainToken.addr, align 8
  %pChain13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 3
  %11 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain13, align 8
  %call14 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %11)
  call void @cxxTokenDestroy(%struct._CXXToken* %call14)
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pParameterChainToken.addr, align 8
  %pChain15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 3
  %13 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain15, align 8
  %call16 = call %struct._CXXTokenChain* @cxxTokenChainSplitOnComma(%struct._CXXTokenChain* %13)
  store %struct._CXXTokenChain* %call16, %struct._CXXTokenChain** %pParameters, align 8
  %14 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParameters, align 8
  %iCount17 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %14, i32 0, i32 2
  %15 = load i32, i32* %iCount17, align 8
  %conv = sext i32 %15 to i64
  %mul = mul i64 8, %conv
  %call18 = call i8* @eMalloc(i64 %mul)
  %16 = bitcast i8* %call18 to i8**
  store i8** %16, i8*** %aParameters, align 8
  %17 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParameters, align 8
  %tobool19 = icmp ne %struct._CXXTokenChain* %17, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then11
  %18 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParameters, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %18, i32 0, i32 0
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pParam, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pParam, align 8
  %tobool20 = icmp ne %struct._CXXToken* %20, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pParam, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 1
  %22 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer, align 8
  %24 = load i8**, i8*** %aParameters, align 8
  %25 = load i32, i32* %iParameterCount, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  store i8* %23, i8** %arrayidx, align 8
  %26 = load i32, i32* %iParameterCount, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %iParameterCount, align 4
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pParam, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %27, i32 0, i32 7
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %28, %struct._CXXToken** %pParam, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body21

do.body21:                                        ; preds = %while.end
  br label %do.end22

do.end22:                                         ; preds = %do.body21
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %land.lhs.true10, %land.lhs.true, %if.end
  %29 = load %struct.sCppMacroInfo*, %struct.sCppMacroInfo** %pInfo.addr, align 8
  %30 = load i8**, i8*** %aParameters, align 8
  %31 = load i32, i32* %iParameterCount, align 4
  %call24 = call %struct.sVString* @cppBuildMacroReplacement(%struct.sCppMacroInfo* %29, i8** %30, i32 %31)
  store %struct.sVString* %call24, %struct.sVString** %pReplacement, align 8
  %32 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParameters, align 8
  %tobool25 = icmp ne %struct._CXXTokenChain* %32, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  %33 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParameters, align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %33)
  %34 = load i8**, i8*** %aParameters, align 8
  %35 = bitcast i8** %34 to i8*
  call void @eFree(i8* %35)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  br label %do.body28

do.body28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.body28
  %36 = load %struct.sVString*, %struct.sVString** %pReplacement, align 8
  %buffer30 = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 2
  %37 = load i8*, i8** %buffer30, align 8
  %38 = load %struct.sVString*, %struct.sVString** %pReplacement, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %38, i32 0, i32 0
  %39 = load i64, i64* %length, align 8
  %conv31 = trunc i64 %39 to i32
  call void @cppUngetString(i8* %37, i32 %conv31)
  %40 = load %struct.sVString*, %struct.sVString** %pReplacement, align 8
  call void @vStringDelete(%struct.sVString* %40)
  br label %do.body32

do.body32:                                        ; preds = %do.end29
  br label %do.end33

do.end33:                                         ; preds = %do.body32
  ret void
}

declare void @vStringResize(%struct.sVString*, i64) #1

declare zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32, i1 zeroext, i1 zeroext) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain*) #1

declare %struct._CXXTokenChain* @cxxTokenChainSplitOnComma(%struct._CXXTokenChain*) #1

declare i8* @eMalloc(i64) #1

declare %struct.sVString* @cppBuildMacroReplacement(%struct.sCppMacroInfo*, i8**, i32) #1

declare void @cxxTokenChainDestroy(%struct._CXXTokenChain*) #1

declare void @eFree(i8*) #1

declare void @cppUngetString(i8*, i32) #1

declare void @vStringDelete(%struct.sVString*) #1

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
