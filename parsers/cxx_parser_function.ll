; ModuleID = 'cxx/cxx_parser_function.c'
source_filename = "cxx/cxx_parser_function.c"
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
%struct._CXXFunctionParameterInfo = type { i32, %struct._CXXTokenChain*, [24 x %struct._CXXToken*], [24 x %struct._CXXToken*], [24 x %struct._CXXToken*] }
%struct._CXXFunctionSignatureInfo = type { %struct._CXXToken*, %struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*, %struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*, %struct._CXXToken*, %struct._CXXToken*, i8, %struct._CXXToken*, i32 }

@g_cxx = external global %struct._CXXParserState, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"override\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxParserMaybeParseKnRStyleFunctionDefinition() #0 {
entry:
  %retval = alloca i32, align 4
  %pParenthesis = alloca %struct._CXXToken*, align 8
  %pIdentifier = alloca %struct._CXXToken*, align 8
  %x = alloca %struct._CXXToken*, align 8
  %pParenthesisTokenChain = alloca %struct._CXXTokenChain*, align 8
  %pFirstArgumentToken = alloca %struct._CXXToken*, align 8
  %iParameterCount = alloca i32, align 4
  %bGotMultipleDots = alloca i8, align 1
  %aExtraParameterStarts = alloca [10 x %struct._CXXToken*], align 8
  %iExtraStatementsInChain = alloca i32, align 4
  %pCurrentTail = alloca %struct._CXXToken*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %iCorkQueueIndex = alloca i32, align 4
  %pszSignature = alloca %struct.sVString*, align 8
  %iIdx = alloca i32, align 4
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
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %2, i32 268435456)
  store %struct._CXXToken* %call, %struct._CXXToken** %pParenthesis, align 8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %tobool = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %5, %struct._CXXToken** %pIdentifier, align 8
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %tobool7 = icmp ne %struct._CXXToken* %6, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType, align 8
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 7
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %10, %struct._CXXToken** %x, align 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %tobool13 = icmp ne %struct._CXXToken* %11, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end12
  %12 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %pNext16 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext16, align 8
  store %struct._CXXToken* %13, %struct._CXXToken** %x, align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %tobool17 = icmp ne %struct._CXXToken* %14, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %15 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %pNext20 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 7
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pNext20, align 8
  store %struct._CXXToken* %16, %struct._CXXToken** %x, align 8
  %17 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %tobool21 = icmp ne %struct._CXXToken* %17, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  store i32 0, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end19
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %call24 = call %struct._CXXToken* @cxxTokenChainNextTokenNotOfType(%struct._CXXToken* %18, i32 536887454)
  store %struct._CXXToken* %call24, %struct._CXXToken** %x, align 8
  br label %do.body25

do.body25:                                        ; preds = %if.end23
  br label %do.end26

do.end26:                                         ; preds = %do.body25
  %19 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %tobool27 = icmp ne %struct._CXXToken* %19, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %do.end26
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %do.end26
  %20 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %eType30 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 0
  %21 = load i32, i32* %eType30, align 8
  %cmp31 = icmp eq i32 %21, 64
  br i1 %cmp31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end29
  store i32 0, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end29
  %22 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %call34 = call %struct._CXXToken* @cxxTokenChainPreviousTokenNotOfType(%struct._CXXToken* %22, i32 536870936)
  store %struct._CXXToken* %call34, %struct._CXXToken** %x, align 8
  br label %do.body35

do.body35:                                        ; preds = %if.end33
  br label %do.end36

do.end36:                                         ; preds = %do.body35
  %23 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %tobool37 = icmp ne %struct._CXXToken* %23, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %do.end36
  store i32 0, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %do.end36
  %24 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %eType40 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %24, i32 0, i32 0
  %25 = load i32, i32* %eType40, align 8
  %cmp41 = icmp eq i32 %25, 2
  br i1 %cmp41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end39
  store i32 0, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end39
  br label %do.body44

do.body44:                                        ; preds = %if.end43
  br label %do.end45

do.end45:                                         ; preds = %do.body44
  %26 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  store %struct._CXXTokenChain* %26, %struct._CXXTokenChain** %pParenthesisTokenChain, align 8
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pNext46 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %27, i32 0, i32 7
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pNext46, align 8
  store %struct._CXXToken* %28, %struct._CXXToken** %pFirstArgumentToken, align 8
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 3
  %30 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %iCount47 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %30, i32 0, i32 2
  %31 = load i32, i32* %iCount47, align 8
  %cmp48 = icmp eq i32 %31, 3
  br i1 %cmp48, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %do.end45
  %32 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain49 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %32, i32 0, i32 3
  %33 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain49, align 8
  %call50 = call %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %33, i32 1)
  %eType51 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %call50, i32 0, i32 0
  %34 = load i32, i32* %eType51, align 8
  %cmp52 = icmp eq i32 %34, 268435456
  br i1 %cmp52, label %land.lhs.true53, label %if.end65

land.lhs.true53:                                  ; preds = %land.lhs.true
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev54 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 8
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pPrev54, align 8
  %tobool55 = icmp ne %struct._CXXToken* %36, null
  br i1 %tobool55, label %land.lhs.true56, label %if.end65

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev57 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 8
  %38 = load %struct._CXXToken*, %struct._CXXToken** %pPrev57, align 8
  %eType58 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 0
  %39 = load i32, i32* %eType58, align 8
  %cmp59 = icmp eq i32 %39, 2
  br i1 %cmp59, label %if.then60, label %if.end65

if.then60:                                        ; preds = %land.lhs.true56
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev61 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %40, i32 0, i32 8
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pPrev61, align 8
  store %struct._CXXToken* %41, %struct._CXXToken** %pIdentifier, align 8
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain62 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %42, i32 0, i32 3
  %43 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain62, align 8
  store %struct._CXXTokenChain* %43, %struct._CXXTokenChain** %pParenthesisTokenChain, align 8
  %44 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain63 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %44, i32 0, i32 3
  %45 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain63, align 8
  %call64 = call %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %45, i32 1)
  store %struct._CXXToken* %call64, %struct._CXXToken** %pParenthesis, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %land.lhs.true56, %land.lhs.true53, %land.lhs.true, %do.end45
  %46 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain66 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %46, i32 0, i32 3
  %47 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain66, align 8
  %iCount67 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %47, i32 0, i32 2
  %48 = load i32, i32* %iCount67, align 8
  %cmp68 = icmp slt i32 %48, 3
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  store i32 0, i32* %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end65
  %49 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain71 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %49, i32 0, i32 3
  %50 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain71, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %50, i32 0, i32 0
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  %pNext72 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %51, i32 0, i32 7
  %52 = load %struct._CXXToken*, %struct._CXXToken** %pNext72, align 8
  store %struct._CXXToken* %52, %struct._CXXToken** %x, align 8
  br label %do.body73

do.body73:                                        ; preds = %if.end70
  br label %do.end74

do.end74:                                         ; preds = %do.body73
  store i32 0, i32* %iParameterCount, align 4
  store i8 0, i8* %bGotMultipleDots, align 1
  br label %for.cond

for.cond:                                         ; preds = %do.end100, %do.end74
  %53 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %eType75 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 0
  %54 = load i32, i32* %eType75, align 8
  %cmp76 = icmp eq i32 %54, 2
  br i1 %cmp76, label %if.then77, label %if.else

if.then77:                                        ; preds = %for.cond
  %55 = load i32, i32* %iParameterCount, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %iParameterCount, align 4
  br label %if.end83

if.else:                                          ; preds = %for.cond
  %56 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %eType78 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %56, i32 0, i32 0
  %57 = load i32, i32* %eType78, align 8
  %cmp79 = icmp eq i32 %57, 262144
  br i1 %cmp79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else
  store i8 1, i8* %bGotMultipleDots, align 1
  br label %if.end82

if.else81:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.then80
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then77
  %58 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %pNext84 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %58, i32 0, i32 7
  %59 = load %struct._CXXToken*, %struct._CXXToken** %pNext84, align 8
  store %struct._CXXToken* %59, %struct._CXXToken** %x, align 8
  br label %do.body85

do.body85:                                        ; preds = %if.end83
  br label %do.end86

do.end86:                                         ; preds = %do.body85
  %60 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %eType87 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %60, i32 0, i32 0
  %61 = load i32, i32* %eType87, align 8
  %cmp88 = icmp eq i32 %61, 16777216
  br i1 %cmp88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.end86
  br label %for.end

if.end90:                                         ; preds = %do.end86
  %62 = load i8, i8* %bGotMultipleDots, align 1
  %tobool91 = trunc i8 %62 to i1
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end90
  store i32 0, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.end90
  %63 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %eType94 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %63, i32 0, i32 0
  %64 = load i32, i32* %eType94, align 8
  %cmp95 = icmp eq i32 %64, 128
  br i1 %cmp95, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.end93
  store i32 0, i32* %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.end93
  %65 = load %struct._CXXToken*, %struct._CXXToken** %x, align 8
  %pNext98 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %65, i32 0, i32 7
  %66 = load %struct._CXXToken*, %struct._CXXToken** %pNext98, align 8
  store %struct._CXXToken* %66, %struct._CXXToken** %x, align 8
  br label %do.body99

do.body99:                                        ; preds = %if.end97
  br label %do.end100

do.end100:                                        ; preds = %do.body99
  br label %for.cond

for.end:                                          ; preds = %if.then89
  %67 = load i32, i32* %iParameterCount, align 4
  %cmp101 = icmp slt i32 %67, 1
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %for.end
  %68 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %69 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %68, %struct._CXXToken* %69)
  %70 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParenthesisTokenChain, align 8
  %71 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %70, %struct._CXXToken* %71)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end103
  %72 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead104 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %72, i32 0, i32 0
  %73 = load %struct._CXXToken*, %struct._CXXToken** %pHead104, align 8
  %74 = load %struct._CXXToken*, %struct._CXXToken** %pFirstArgumentToken, align 8
  %cmp105 = icmp ne %struct._CXXToken* %73, %74
  br i1 %cmp105, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %75 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call106 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %75)
  call void @cxxTokenDestroy(%struct._CXXToken* %call106)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body107

do.body107:                                       ; preds = %while.end
  br label %do.end108

do.end108:                                        ; preds = %do.body107
  store i32 0, i32* %iExtraStatementsInChain, align 4
  br label %while.cond109

while.cond109:                                    ; preds = %if.end129, %do.end108
  %76 = load i32, i32* %iParameterCount, align 4
  %cmp110 = icmp sgt i32 %76, 0
  br i1 %cmp110, label %while.body111, label %while.end130

while.body111:                                    ; preds = %while.cond109
  %77 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %77, i32 0, i32 1
  %78 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  store %struct._CXXToken* %78, %struct._CXXToken** %pCurrentTail, align 8
  %call112 = call zeroext i1 @cxxParserParseUpToOneOf(i32 524353, i1 zeroext false)
  br i1 %call112, label %if.end114, label %if.then113

if.then113:                                       ; preds = %while.body111
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %79)
  %80 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %80)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end114:                                        ; preds = %while.body111
  %81 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType115 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %81, i32 0, i32 0
  %82 = load i32, i32* %eType115, align 8
  %cmp116 = icmp eq i32 %82, 1
  br i1 %cmp116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end114
  %83 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %83)
  %84 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %84)
  call void @cxxParserNewStatement()
  store i32 1, i32* %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.end114
  %85 = load i32, i32* %iExtraStatementsInChain, align 4
  %cmp119 = icmp slt i32 %85, 10
  br i1 %cmp119, label %if.then120, label %if.end125

if.then120:                                       ; preds = %if.end118
  br label %do.body121

do.body121:                                       ; preds = %if.then120
  br label %do.end122

do.end122:                                        ; preds = %do.body121
  %86 = load %struct._CXXToken*, %struct._CXXToken** %pCurrentTail, align 8
  %pNext123 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %86, i32 0, i32 7
  %87 = load %struct._CXXToken*, %struct._CXXToken** %pNext123, align 8
  %88 = load i32, i32* %iExtraStatementsInChain, align 4
  %idxprom = sext i32 %88 to i64
  %arrayidx = getelementptr inbounds [10 x %struct._CXXToken*], [10 x %struct._CXXToken*]* %aExtraParameterStarts, i64 0, i64 %idxprom
  store %struct._CXXToken* %87, %struct._CXXToken** %arrayidx, align 8
  %89 = load i32, i32* %iExtraStatementsInChain, align 4
  %inc124 = add nsw i32 %89, 1
  store i32 %inc124, i32* %iExtraStatementsInChain, align 4
  br label %if.end125

if.end125:                                        ; preds = %do.end122, %if.end118
  %90 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType126 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %90, i32 0, i32 0
  %91 = load i32, i32* %eType126, align 8
  %cmp127 = icmp eq i32 %91, 524288
  br i1 %cmp127, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end125
  br label %while.end130

if.end129:                                        ; preds = %if.end125
  %92 = load i32, i32* %iParameterCount, align 4
  %dec = add nsw i32 %92, -1
  store i32 %dec, i32* %iParameterCount, align 4
  br label %while.cond109

while.end130:                                     ; preds = %if.then128, %while.cond109
  %93 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType131 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %93, i32 0, i32 0
  %94 = load i32, i32* %eType131, align 8
  %cmp132 = icmp eq i32 %94, 524288
  br i1 %cmp132, label %if.end134, label %if.then133

if.then133:                                       ; preds = %while.end130
  %95 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %95)
  %96 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %96)
  call void @cxxParserNewStatement()
  store i32 1, i32* %retval, align 4
  br label %return

if.end134:                                        ; preds = %while.end130
  %97 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %call135 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 2, %struct._CXXToken* %97)
  store %struct.sTagEntryInfo* %call135, %struct.sTagEntryInfo** %tag, align 8
  store i32 0, i32* %iCorkQueueIndex, align 4
  %98 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool136 = icmp ne %struct.sTagEntryInfo* %98, null
  br i1 %tobool136, label %if.then137, label %if.end157

if.then137:                                       ; preds = %if.end134
  %99 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain138 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %99, i32 0, i32 3
  %100 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain138, align 8
  %pTail139 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %100, i32 0, i32 1
  %101 = load %struct._CXXToken*, %struct._CXXToken** %pTail139, align 8
  %tobool140 = icmp ne %struct._CXXToken* %101, null
  br i1 %tobool140, label %if.then141, label %if.end145

if.then141:                                       ; preds = %if.then137
  %102 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain142 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %102, i32 0, i32 3
  %103 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain142, align 8
  call void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain* %103)
  %104 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain143 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %104, i32 0, i32 3
  %105 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain143, align 8
  %pTail144 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %105, i32 0, i32 1
  %106 = load %struct._CXXToken*, %struct._CXXToken** %pTail144, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %106, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.then137
  %107 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and = and i32 %107, 8
  %tobool146 = icmp ne i32 %and, 0
  br i1 %tobool146, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end145
  %call147 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call147, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end145
  %108 = phi i1 [ false, %if.end145 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %108 to i32
  %109 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %110 = bitcast %struct.sTagEntryInfo* %109 to i8*
  %111 = trunc i32 %land.ext to i8
  %bf.load = load i8, i8* %110, align 8
  %bf.value = and i8 %111, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %110, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %112 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain148 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %112, i32 0, i32 3
  %113 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain148, align 8
  %call149 = call %struct.sVString* @cxxTokenChainJoin(%struct._CXXTokenChain* %113, i8* null, i32 0)
  store %struct.sVString* %call149, %struct.sVString** %pszSignature, align 8
  %114 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %tobool150 = icmp ne %struct.sVString* %114, null
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %land.end
  %115 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %115, i32 0, i32 2
  %116 = load i8*, i8** %buffer, align 8
  %117 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %117, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %116, i8** %signature, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %land.end
  %call153 = call i32 @cxxTagCommit()
  store i32 %call153, i32* %iCorkQueueIndex, align 4
  %118 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %tobool154 = icmp ne %struct.sVString* %118, null
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end152
  %119 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  call void @vStringDelete(%struct.sVString* %119)
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.end152
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end134
  %120 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %120)
  br label %do.body158

do.body158:                                       ; preds = %if.end157
  br label %do.end159

do.end159:                                        ; preds = %do.body158
  %121 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxScopePush(%struct._CXXToken* %121, i32 0, i32 0)
  %call160 = call zeroext i1 @cxxTagKindEnabled(i32 13)
  br i1 %call160, label %if.then161, label %if.end177

if.then161:                                       ; preds = %do.end159
  store i32 0, i32* %iIdx, align 4
  br label %for.cond162

for.cond162:                                      ; preds = %while.end174, %if.then161
  %122 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call163 = call zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %122, i32 1)
  %123 = load i32, i32* %iIdx, align 4
  %124 = load i32, i32* %iExtraStatementsInChain, align 4
  %cmp164 = icmp sge i32 %123, %124
  br i1 %cmp164, label %if.then165, label %if.end166

if.then165:                                       ; preds = %for.cond162
  br label %for.end176

if.end166:                                        ; preds = %for.cond162
  br label %while.cond167

while.cond167:                                    ; preds = %while.body172, %if.end166
  %125 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead168 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %125, i32 0, i32 0
  %126 = load %struct._CXXToken*, %struct._CXXToken** %pHead168, align 8
  %127 = load i32, i32* %iIdx, align 4
  %idxprom169 = sext i32 %127 to i64
  %arrayidx170 = getelementptr inbounds [10 x %struct._CXXToken*], [10 x %struct._CXXToken*]* %aExtraParameterStarts, i64 0, i64 %idxprom169
  %128 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx170, align 8
  %cmp171 = icmp ne %struct._CXXToken* %126, %128
  br i1 %cmp171, label %while.body172, label %while.end174

while.body172:                                    ; preds = %while.cond167
  %129 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call173 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %129)
  call void @cxxTokenDestroy(%struct._CXXToken* %call173)
  br label %while.cond167

while.end174:                                     ; preds = %while.cond167
  %130 = load i32, i32* %iIdx, align 4
  %inc175 = add nsw i32 %130, 1
  store i32 %inc175, i32* %iIdx, align 4
  br label %for.cond162

for.end176:                                       ; preds = %if.then165
  br label %if.end177

if.end177:                                        ; preds = %for.end176, %do.end159
  call void @cxxParserNewStatement()
  %call178 = call zeroext i1 @cxxParserParseBlock(i1 zeroext true)
  br i1 %call178, label %if.end182, label %if.then179

if.then179:                                       ; preds = %if.end177
  br label %do.body180

do.body180:                                       ; preds = %if.then179
  br label %do.end181

do.end181:                                        ; preds = %do.body180
  store i32 -1, i32* %retval, align 4
  br label %return

if.end182:                                        ; preds = %if.end177
  %131 = load i32, i32* %iCorkQueueIndex, align 4
  %cmp183 = icmp sgt i32 %131, 0
  br i1 %cmp183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.end182
  %132 = load i32, i32* %iCorkQueueIndex, align 4
  call void @cxxParserMarkEndLineForTagInCorkQueue(i32 %132)
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end182
  call void @cxxScopePop()
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end185, %do.end181, %if.then133, %if.then117, %if.then113, %if.then102, %if.then96, %if.then92, %if.else81, %if.then69, %if.then42, %if.then38, %if.then32, %if.then28, %if.then22, %if.then18, %if.then14, %if.then11, %if.then8, %if.then5, %if.then
  %133 = load i32, i32* %retval, align 4
  ret i32 %133
}

declare %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain*, i32) #1

declare %struct._CXXToken* @cxxTokenChainNextTokenNotOfType(%struct._CXXToken*, i32) #1

declare %struct._CXXToken* @cxxTokenChainPreviousTokenNotOfType(%struct._CXXToken*, i32) #1

declare %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain*, i32) #1

declare void @cxxTokenChainTake(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain*) #1

declare zeroext i1 @cxxParserParseUpToOneOf(i32, i1 zeroext) #1

declare void @cxxParserNewStatement() #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain*) #1

declare zeroext i1 @isInputHeaderFile() #1

declare %struct.sVString* @cxxTokenChainJoin(%struct._CXXTokenChain*, i8*, i32) #1

declare i32 @cxxTagCommit() #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @cxxScopePush(%struct._CXXToken*, i32, i32) #1

declare zeroext i1 @cxxTagKindEnabled(i32) #1

declare zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain*, i32) #1

declare zeroext i1 @cxxParserParseBlock(i1 zeroext) #1

declare void @cxxParserMarkEndLineForTagInCorkQueue(i32) #1

declare void @cxxScopePop() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserTokenChainLooksLikeFunctionCallParameterSet(%struct._CXXTokenChain* %pChain) #0 {
entry:
  %retval = alloca i1, align 1
  %pChain.addr = alloca %struct._CXXTokenChain*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %pLast = alloca %struct._CXXToken*, align 8
  %uTerminator = alloca i32, align 4
  %bDealingWithParenthesisChain = alloca i8, align 1
  store %struct._CXXTokenChain* %pChain, %struct._CXXTokenChain** %pChain.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 0
  %1 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  store %struct._CXXToken* %1, %struct._CXXToken** %t, align 8
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %2, i32 0, i32 1
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  store %struct._CXXToken* %3, %struct._CXXToken** %pLast, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %shl = shl i32 %5, 4
  store i32 %shl, i32* %uTerminator, align 4
  %6 = load i32, i32* %uTerminator, align 4
  %cmp = icmp eq i32 %6, 16777216
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %bDealingWithParenthesisChain, align 1
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 7
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %8, %struct._CXXToken** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end92, %do.end2
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pLast, align 8
  %cmp3 = icmp ne %struct._CXXToken* %9, %10
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8, i8* %bDealingWithParenthesisChain, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  %13 = load i32, i32* %eType4, align 8
  %and = and i32 %13, 408072
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 0
  %15 = load i32, i32* %eType6, align 8
  %cmp7 = icmp eq i32 %15, 4
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %16 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 2
  %17 = load i32, i32* %eKeyword, align 8
  %call = call zeroext i1 @cxxKeywordMayBePartOfTypeName(i32 %17)
  br i1 %call, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then8
  store i1 false, i1* %retval, align 1
  br label %return

if.end10:                                         ; preds = %if.then8
  %18 = load i8, i8* %bDealingWithParenthesisChain, align 1
  %tobool11 = trunc i8 %18 to i1
  br i1 %tobool11, label %land.lhs.true12, label %if.end18

land.lhs.true12:                                  ; preds = %if.end10
  %19 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %19, i32 0, i32 2
  %20 = load i32, i32* %eKeyword13, align 8
  %call14 = call zeroext i1 @cxxKeywordIsConstant(i32 %20)
  br i1 %call14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %21 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 2
  %22 = load i32, i32* %eKeyword15, align 8
  %cmp16 = icmp eq i32 %22, 58
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  store i1 true, i1* %retval, align 1
  br label %return

if.end18:                                         ; preds = %lor.lhs.false, %if.end10
  %23 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %23, i32 0, i32 2
  %24 = load i32, i32* %eKeyword19, align 8
  %cmp20 = icmp ne i32 %24, 58
  br i1 %cmp20, label %land.lhs.true21, label %if.end27

land.lhs.true21:                                  ; preds = %if.end18
  %25 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 7
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pNext22, align 8
  %eType23 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 0
  %27 = load i32, i32* %eType23, align 8
  %and24 = and i32 %27, 114694
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true21
  store i1 false, i1* %retval, align 1
  br label %return

if.end27:                                         ; preds = %land.lhs.true21, %if.end18
  br label %if.end77

if.else:                                          ; preds = %if.end
  %28 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 0
  %29 = load i32, i32* %eType28, align 8
  %cmp29 = icmp eq i32 %29, 2
  br i1 %cmp29, label %if.then30, label %if.else37

if.then30:                                        ; preds = %if.else
  %30 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext31 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 7
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pNext31, align 8
  %eType32 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %31, i32 0, i32 0
  %32 = load i32, i32* %eType32, align 8
  %and33 = and i32 %32, 6
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  store i1 false, i1* %retval, align 1
  br label %return

if.end36:                                         ; preds = %if.then30
  br label %if.end76

if.else37:                                        ; preds = %if.else
  %33 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType38 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 0
  %34 = load i32, i32* %eType38, align 8
  %cmp39 = icmp eq i32 %34, 67108864
  br i1 %cmp39, label %if.then40, label %if.else52

if.then40:                                        ; preds = %if.else37
  %35 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext41 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 7
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pNext41, align 8
  %eType42 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %36, i32 0, i32 0
  %37 = load i32, i32* %eType42, align 8
  %38 = load i32, i32* %uTerminator, align 4
  %or = or i32 114816, %38
  %and43 = and i32 %37, %or
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then40
  store i1 false, i1* %retval, align 1
  br label %return

if.end46:                                         ; preds = %if.then40
  %39 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 8
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %eType47 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %40, i32 0, i32 0
  %41 = load i32, i32* %eType47, align 8
  %and48 = and i32 %41, 4
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  store i1 false, i1* %retval, align 1
  br label %return

if.end51:                                         ; preds = %if.end46
  br label %if.end75

if.else52:                                        ; preds = %if.else37
  %42 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType53 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %42, i32 0, i32 0
  %43 = load i32, i32* %eType53, align 8
  %cmp54 = icmp eq i32 %43, 268435456
  br i1 %cmp54, label %land.lhs.true55, label %if.end74

land.lhs.true55:                                  ; preds = %if.else52
  %44 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev56 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %44, i32 0, i32 8
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pPrev56, align 8
  %eType57 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %45, i32 0, i32 0
  %46 = load i32, i32* %eType57, align 8
  %and58 = and i32 %46, 67158022
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %if.end74

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %47 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext61 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %47, i32 0, i32 7
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pNext61, align 8
  %eType62 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 0
  %49 = load i32, i32* %eType62, align 8
  %cmp63 = icmp eq i32 %49, 268435456
  br i1 %cmp63, label %land.lhs.true64, label %if.end74

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %50 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain65 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 3
  %51 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain65, align 8
  %call66 = call %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %51, i32 1)
  %eType67 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %call66, i32 0, i32 0
  %52 = load i32, i32* %eType67, align 8
  %cmp68 = icmp eq i32 %52, 16384
  br i1 %cmp68, label %land.lhs.true69, label %if.end74

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %53 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext70 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 7
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pNext70, align 8
  %pChain71 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %54, i32 0, i32 3
  %55 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain71, align 8
  %call72 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %55, %struct._CXXFunctionParameterInfo* null)
  br i1 %call72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %land.lhs.true69
  store i1 false, i1* %retval, align 1
  br label %return

if.end74:                                         ; preds = %land.lhs.true69, %land.lhs.true64, %land.lhs.true60, %land.lhs.true55, %if.else52
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end51
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end36
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end27
  %56 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType78 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %56, i32 0, i32 0
  %57 = load i32, i32* %eType78, align 8
  %cmp79 = icmp eq i32 %57, 256
  br i1 %cmp79, label %if.then80, label %if.else90

if.then80:                                        ; preds = %if.end77
  %58 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %59 = load i32, i32* %uTerminator, align 4
  %or81 = or i32 %59, 128
  %call82 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %58, i32 %or81)
  store %struct._CXXToken* %call82, %struct._CXXToken** %t, align 8
  br label %do.body83

do.body83:                                        ; preds = %if.then80
  br label %do.end84

do.end84:                                         ; preds = %do.body83
  %60 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType85 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %60, i32 0, i32 0
  %61 = load i32, i32* %eType85, align 8
  %cmp86 = icmp eq i32 %61, 128
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %do.end84
  %62 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext88 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %62, i32 0, i32 7
  %63 = load %struct._CXXToken*, %struct._CXXToken** %pNext88, align 8
  store %struct._CXXToken* %63, %struct._CXXToken** %t, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %do.end84
  br label %if.end92

if.else90:                                        ; preds = %if.end77
  %64 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext91 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %64, i32 0, i32 7
  %65 = load %struct._CXXToken*, %struct._CXXToken** %pNext91, align 8
  store %struct._CXXToken* %65, %struct._CXXToken** %t, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.end89
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then73, %if.then50, %if.then45, %if.then35, %if.then26, %if.then17, %if.then9, %if.then
  %66 = load i1, i1* %retval, align 1
  ret i1 %66
}

declare zeroext i1 @cxxKeywordMayBePartOfTypeName(i32) #1

declare zeroext i1 @cxxKeywordIsConstant(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %tc, %struct._CXXFunctionParameterInfo* %pParamInfo) #0 {
entry:
  %retval = alloca i1, align 1
  %tc.addr = alloca %struct._CXXTokenChain*, align 8
  %pParamInfo.addr = alloca %struct._CXXFunctionParameterInfo*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %bIsCPP = alloca i8, align 1
  %pStart = alloca %struct._CXXToken*, align 8
  %pIdentifier = alloca %struct._CXXToken*, align 8
  %bPrevIsSquareParenthesis = alloca i8, align 1
  store %struct._CXXTokenChain* %tc, %struct._CXXTokenChain** %tc.addr, align 8
  store %struct._CXXFunctionParameterInfo* %pParamInfo, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
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
  %0 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %tobool = icmp ne %struct._CXXFunctionParameterInfo* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  %1 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %uParameterCount = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %1, i32 0, i32 0
  store i32 0, i32* %uParameterCount, align 8
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %3 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %3, i32 0, i32 1
  store %struct._CXXTokenChain* %2, %struct._CXXTokenChain** %pChain, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end4
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 2
  %5 = load i32, i32* %iCount, align 8
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  store i1 true, i1* %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.end
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %tc.addr, align 8
  %call = call %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %6, i32 1)
  store %struct._CXXToken* %call, %struct._CXXToken** %t, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp9 = icmp eq i32 %7, 2
  %frombool = zext i1 %cmp9 to i8
  store i8 %frombool, i8* %bIsCPP, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end204, %do.end187, %if.end8
  %8 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %8, %struct._CXXToken** %pStart, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 0
  %10 = load i32, i32* %eType, align 8
  %and = and i32 %10, 262150
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %for.cond
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  store i1 false, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %for.cond
  br label %try_again

try_again:                                        ; preds = %if.end50, %if.then35, %if.end14
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call15 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %11, i32 1430403992)
  store %struct._CXXToken* %call15, %struct._CXXToken** %t, align 8
  br label %do.body16

do.body16:                                        ; preds = %try_again
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType18 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  %13 = load i32, i32* %eType18, align 8
  %cmp19 = icmp eq i32 %13, 268435456
  br i1 %cmp19, label %if.then20, label %if.end39

if.then20:                                        ; preds = %do.end17
  br label %do.body21

do.body21:                                        ; preds = %if.then20
  br label %do.end22

do.end22:                                         ; preds = %do.body21
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain23 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 3
  %15 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain23, align 8
  %call24 = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %15, i32 1073887768)
  %tobool25 = icmp ne %struct._CXXToken* %call24, null
  br i1 %tobool25, label %if.end36, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end22
  %16 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain26 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %16, i32 0, i32 3
  %17 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain26, align 8
  %call27 = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %17, i32 49152)
  %tobool28 = icmp ne %struct._CXXToken* %call27, null
  br i1 %tobool28, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain29 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 3
  %19 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain29, align 8
  %call30 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %19, %struct._CXXFunctionParameterInfo* null)
  br i1 %call30, label %if.then35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain32 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 3
  %21 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain32, align 8
  %call33 = call %struct._CXXToken* @cxxTokenChainFirstTokenNotOfType(%struct._CXXTokenChain* %21, i32 286261248)
  %tobool34 = icmp ne %struct._CXXToken* %call33, null
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false31, %lor.lhs.false, %land.lhs.true
  br label %try_again

if.end36:                                         ; preds = %lor.lhs.false31, %do.end22
  br label %do.body37

do.body37:                                        ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.body37
  store i1 false, i1* %retval, align 1
  br label %return

if.end39:                                         ; preds = %do.end17
  %22 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType40 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 0
  %23 = load i32, i32* %eType40, align 8
  %cmp41 = icmp eq i32 %23, 4194304
  br i1 %cmp41, label %if.then42, label %if.end51

if.then42:                                        ; preds = %if.end39
  br label %do.body43

do.body43:                                        ; preds = %if.then42
  br label %do.end44

do.end44:                                         ; preds = %do.body43
  %24 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call45 = call %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken* %24)
  store %struct._CXXToken* %call45, %struct._CXXToken** %t, align 8
  %25 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool46 = icmp ne %struct._CXXToken* %25, null
  br i1 %tobool46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %do.end44
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  br label %do.end49

do.end49:                                         ; preds = %do.body48
  store i1 false, i1* %retval, align 1
  br label %return

if.end50:                                         ; preds = %do.end44
  br label %try_again

if.end51:                                         ; preds = %if.end39
  %26 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType52 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %26, i32 0, i32 0
  %27 = load i32, i32* %eType52, align 8
  %cmp53 = icmp eq i32 %27, 67108864
  br i1 %cmp53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end51
  br label %do.body55

do.body55:                                        ; preds = %if.then54
  br label %do.end56

do.end56:                                         ; preds = %do.body55
  store i1 false, i1* %retval, align 1
  br label %return

if.end57:                                         ; preds = %if.end51
  %28 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType58 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 0
  %29 = load i32, i32* %eType58, align 8
  %and59 = and i32 %29, 1073887768
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end57
  br label %do.body62

do.body62:                                        ; preds = %if.then61
  br label %do.end63

do.end63:                                         ; preds = %do.body62
  store i1 false, i1* %retval, align 1
  br label %return

if.end64:                                         ; preds = %if.end57
  %30 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %tobool65 = icmp ne %struct._CXXFunctionParameterInfo* %30, null
  br i1 %tobool65, label %land.lhs.true66, label %if.end176

land.lhs.true66:                                  ; preds = %if.end64
  %31 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %31, i32 0, i32 8
  %32 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pStart, align 8
  %cmp67 = icmp ne %struct._CXXToken* %32, %33
  br i1 %cmp67, label %if.then68, label %if.end176

if.then68:                                        ; preds = %land.lhs.true66
  %34 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %uParameterCount69 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %34, i32 0, i32 0
  %35 = load i32, i32* %uParameterCount69, align 8
  %cmp70 = icmp ult i32 %35, 24
  br i1 %cmp70, label %if.then71, label %if.else174

if.then71:                                        ; preds = %if.then68
  store %struct._CXXToken* null, %struct._CXXToken** %pIdentifier, align 8
  %36 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev72 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %36, i32 0, i32 8
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pPrev72, align 8
  %eType73 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 0
  %38 = load i32, i32* %eType73, align 8
  %cmp74 = icmp eq i32 %38, 2
  br i1 %cmp74, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.then71
  %39 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev76 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 8
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pPrev76, align 8
  store %struct._CXXToken* %40, %struct._CXXToken** %pIdentifier, align 8
  br label %if.end161

if.else:                                          ; preds = %if.then71
  %41 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev77 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %41, i32 0, i32 8
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pPrev77, align 8
  %pPrev78 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %42, i32 0, i32 8
  %43 = load %struct._CXXToken*, %struct._CXXToken** %pPrev78, align 8
  %tobool79 = icmp ne %struct._CXXToken* %43, null
  br i1 %tobool79, label %if.then80, label %if.end160

if.then80:                                        ; preds = %if.else
  %44 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev81 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %44, i32 0, i32 8
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pPrev81, align 8
  %eType82 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %45, i32 0, i32 0
  %46 = load i32, i32* %eType82, align 8
  %cmp83 = icmp eq i32 %46, 536870912
  %frombool84 = zext i1 %cmp83 to i8
  store i8 %frombool84, i8* %bPrevIsSquareParenthesis, align 1
  %47 = load i8, i8* %bPrevIsSquareParenthesis, align 1
  %tobool85 = trunc i8 %47 to i1
  br i1 %tobool85, label %land.lhs.true86, label %if.else94

land.lhs.true86:                                  ; preds = %if.then80
  %48 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev87 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 8
  %49 = load %struct._CXXToken*, %struct._CXXToken** %pPrev87, align 8
  %pPrev88 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %49, i32 0, i32 8
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pPrev88, align 8
  %eType89 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 0
  %51 = load i32, i32* %eType89, align 8
  %cmp90 = icmp eq i32 %51, 2
  br i1 %cmp90, label %if.then91, label %if.else94

if.then91:                                        ; preds = %land.lhs.true86
  %52 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev92 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %52, i32 0, i32 8
  %53 = load %struct._CXXToken*, %struct._CXXToken** %pPrev92, align 8
  %pPrev93 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 8
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pPrev93, align 8
  store %struct._CXXToken* %54, %struct._CXXToken** %pIdentifier, align 8
  br label %if.end159

if.else94:                                        ; preds = %land.lhs.true86, %if.then80
  %55 = load i8, i8* %bPrevIsSquareParenthesis, align 1
  %tobool95 = trunc i8 %55 to i1
  br i1 %tobool95, label %land.lhs.true96, label %if.else108

land.lhs.true96:                                  ; preds = %if.else94
  %56 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev97 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %56, i32 0, i32 8
  %57 = load %struct._CXXToken*, %struct._CXXToken** %pPrev97, align 8
  %pPrev98 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %57, i32 0, i32 8
  %58 = load %struct._CXXToken*, %struct._CXXToken** %pPrev98, align 8
  %eType99 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %58, i32 0, i32 0
  %59 = load i32, i32* %eType99, align 8
  %cmp100 = icmp eq i32 %59, 268435456
  br i1 %cmp100, label %land.lhs.true101, label %if.else108

land.lhs.true101:                                 ; preds = %land.lhs.true96
  %60 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev102 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %60, i32 0, i32 8
  %61 = load %struct._CXXToken*, %struct._CXXToken** %pPrev102, align 8
  %pPrev103 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %61, i32 0, i32 8
  %62 = load %struct._CXXToken*, %struct._CXXToken** %pPrev103, align 8
  %pChain104 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %62, i32 0, i32 3
  %63 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain104, align 8
  %call105 = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %63, i32 2)
  store %struct._CXXToken* %call105, %struct._CXXToken** %pIdentifier, align 8
  %tobool106 = icmp ne %struct._CXXToken* %call105, null
  br i1 %tobool106, label %if.then107, label %if.else108

if.then107:                                       ; preds = %land.lhs.true101
  br label %if.end158

if.else108:                                       ; preds = %land.lhs.true101, %land.lhs.true96, %if.else94
  %64 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev109 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %64, i32 0, i32 8
  %65 = load %struct._CXXToken*, %struct._CXXToken** %pPrev109, align 8
  %eType110 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %65, i32 0, i32 0
  %66 = load i32, i32* %eType110, align 8
  %cmp111 = icmp eq i32 %66, 8
  br i1 %cmp111, label %land.lhs.true112, label %if.else120

land.lhs.true112:                                 ; preds = %if.else108
  %67 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev113 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %67, i32 0, i32 8
  %68 = load %struct._CXXToken*, %struct._CXXToken** %pPrev113, align 8
  %pPrev114 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %68, i32 0, i32 8
  %69 = load %struct._CXXToken*, %struct._CXXToken** %pPrev114, align 8
  %eType115 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %69, i32 0, i32 0
  %70 = load i32, i32* %eType115, align 8
  %cmp116 = icmp eq i32 %70, 2
  br i1 %cmp116, label %if.then117, label %if.else120

if.then117:                                       ; preds = %land.lhs.true112
  %71 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev118 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %71, i32 0, i32 8
  %72 = load %struct._CXXToken*, %struct._CXXToken** %pPrev118, align 8
  %pPrev119 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %72, i32 0, i32 8
  %73 = load %struct._CXXToken*, %struct._CXXToken** %pPrev119, align 8
  store %struct._CXXToken* %73, %struct._CXXToken** %pIdentifier, align 8
  br label %if.end157

if.else120:                                       ; preds = %land.lhs.true112, %if.else108
  %74 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev121 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %74, i32 0, i32 8
  %75 = load %struct._CXXToken*, %struct._CXXToken** %pPrev121, align 8
  %eType122 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %75, i32 0, i32 0
  %76 = load i32, i32* %eType122, align 8
  %cmp123 = icmp eq i32 %76, 268435456
  br i1 %cmp123, label %land.lhs.true124, label %if.end156

land.lhs.true124:                                 ; preds = %if.else120
  %77 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev125 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %77, i32 0, i32 8
  %78 = load %struct._CXXToken*, %struct._CXXToken** %pPrev125, align 8
  %pPrev126 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %78, i32 0, i32 8
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pPrev126, align 8
  %eType127 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %79, i32 0, i32 0
  %80 = load i32, i32* %eType127, align 8
  %cmp128 = icmp eq i32 %80, 268435456
  br i1 %cmp128, label %land.lhs.true129, label %lor.lhs.false142

land.lhs.true129:                                 ; preds = %land.lhs.true124
  %81 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev130 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %81, i32 0, i32 8
  %82 = load %struct._CXXToken*, %struct._CXXToken** %pPrev130, align 8
  %pPrev131 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %82, i32 0, i32 8
  %83 = load %struct._CXXToken*, %struct._CXXToken** %pPrev131, align 8
  %pChain132 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %83, i32 0, i32 3
  %84 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain132, align 8
  %call133 = call %struct._CXXToken* @cxxTokenChainLastPossiblyNestedTokenOfType(%struct._CXXTokenChain* %84, i32 2, %struct._CXXTokenChain** null)
  store %struct._CXXToken* %call133, %struct._CXXToken** %pIdentifier, align 8
  %tobool134 = icmp ne %struct._CXXToken* %call133, null
  br i1 %tobool134, label %land.lhs.true135, label %lor.lhs.false142

land.lhs.true135:                                 ; preds = %land.lhs.true129
  %85 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev136 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %85, i32 0, i32 8
  %86 = load %struct._CXXToken*, %struct._CXXToken** %pPrev136, align 8
  %tobool137 = icmp ne %struct._CXXToken* %86, null
  br i1 %tobool137, label %land.lhs.true138, label %lor.lhs.false142

land.lhs.true138:                                 ; preds = %land.lhs.true135
  %87 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev139 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %87, i32 0, i32 8
  %88 = load %struct._CXXToken*, %struct._CXXToken** %pPrev139, align 8
  %eType140 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %88, i32 0, i32 0
  %89 = load i32, i32* %eType140, align 8
  %cmp141 = icmp eq i32 %89, 16384
  br i1 %cmp141, label %if.then155, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %land.lhs.true138, %land.lhs.true135, %land.lhs.true129, %land.lhs.true124
  %90 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev143 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %90, i32 0, i32 8
  %91 = load %struct._CXXToken*, %struct._CXXToken** %pPrev143, align 8
  %pChain144 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %91, i32 0, i32 3
  %92 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain144, align 8
  %call145 = call %struct._CXXToken* @cxxTokenChainLastPossiblyNestedTokenOfType(%struct._CXXTokenChain* %92, i32 2, %struct._CXXTokenChain** null)
  store %struct._CXXToken* %call145, %struct._CXXToken** %pIdentifier, align 8
  %tobool146 = icmp ne %struct._CXXToken* %call145, null
  br i1 %tobool146, label %land.lhs.true147, label %if.end156

land.lhs.true147:                                 ; preds = %lor.lhs.false142
  %93 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev148 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %93, i32 0, i32 8
  %94 = load %struct._CXXToken*, %struct._CXXToken** %pPrev148, align 8
  %tobool149 = icmp ne %struct._CXXToken* %94, null
  br i1 %tobool149, label %land.lhs.true150, label %if.end156

land.lhs.true150:                                 ; preds = %land.lhs.true147
  %95 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev151 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %95, i32 0, i32 8
  %96 = load %struct._CXXToken*, %struct._CXXToken** %pPrev151, align 8
  %eType152 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %96, i32 0, i32 0
  %97 = load i32, i32* %eType152, align 8
  %and153 = and i32 %97, 49152
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %land.lhs.true150, %land.lhs.true138
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %land.lhs.true150, %land.lhs.true147, %lor.lhs.false142, %if.else120
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then117
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then107
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then91
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.else
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.then75
  %98 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %tobool162 = icmp ne %struct._CXXToken* %98, null
  br i1 %tobool162, label %if.then163, label %if.end173

if.then163:                                       ; preds = %if.end161
  %99 = load %struct._CXXToken*, %struct._CXXToken** %pStart, align 8
  %100 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %aDeclarationStarts = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %100, i32 0, i32 2
  %101 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %uParameterCount164 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %101, i32 0, i32 0
  %102 = load i32, i32* %uParameterCount164, align 8
  %idxprom = zext i32 %102 to i64
  %arrayidx = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aDeclarationStarts, i64 0, i64 %idxprom
  store %struct._CXXToken* %99, %struct._CXXToken** %arrayidx, align 8
  %103 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev165 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %103, i32 0, i32 8
  %104 = load %struct._CXXToken*, %struct._CXXToken** %pPrev165, align 8
  %105 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %aDeclarationEnds = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %105, i32 0, i32 3
  %106 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %uParameterCount166 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %106, i32 0, i32 0
  %107 = load i32, i32* %uParameterCount166, align 8
  %idxprom167 = zext i32 %107 to i64
  %arrayidx168 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aDeclarationEnds, i64 0, i64 %idxprom167
  store %struct._CXXToken* %104, %struct._CXXToken** %arrayidx168, align 8
  %108 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %109 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %aIdentifiers = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %109, i32 0, i32 4
  %110 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %uParameterCount169 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %110, i32 0, i32 0
  %111 = load i32, i32* %uParameterCount169, align 8
  %idxprom170 = zext i32 %111 to i64
  %arrayidx171 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aIdentifiers, i64 0, i64 %idxprom170
  store %struct._CXXToken* %108, %struct._CXXToken** %arrayidx171, align 8
  %112 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %uParameterCount172 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %112, i32 0, i32 0
  %113 = load i32, i32* %uParameterCount172, align 8
  %inc = add i32 %113, 1
  store i32 %inc, i32* %uParameterCount172, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.then163, %if.end161
  br label %if.end175

if.else174:                                       ; preds = %if.then68
  store %struct._CXXFunctionParameterInfo* null, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  br label %if.end175

if.end175:                                        ; preds = %if.else174, %if.end173
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %land.lhs.true66, %if.end64
  %114 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType177 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %114, i32 0, i32 0
  %115 = load i32, i32* %eType177, align 8
  %cmp178 = icmp eq i32 %115, 16777216
  br i1 %cmp178, label %if.then179, label %if.end182

if.then179:                                       ; preds = %if.end176
  br label %do.body180

do.body180:                                       ; preds = %if.then179
  br label %do.end181

do.end181:                                        ; preds = %do.body180
  store i1 true, i1* %retval, align 1
  br label %return

if.end182:                                        ; preds = %if.end176
  %116 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType183 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %116, i32 0, i32 0
  %117 = load i32, i32* %eType183, align 8
  %cmp184 = icmp eq i32 %117, 128
  br i1 %cmp184, label %if.then185, label %if.end188

if.then185:                                       ; preds = %if.end182
  br label %do.body186

do.body186:                                       ; preds = %if.then185
  br label %do.end187

do.end187:                                        ; preds = %do.body186
  %118 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %118, i32 0, i32 7
  %119 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %119, %struct._CXXToken** %t, align 8
  br label %for.cond

if.end188:                                        ; preds = %if.end182
  %120 = load i8, i8* %bIsCPP, align 1
  %tobool189 = trunc i8 %120 to i1
  br i1 %tobool189, label %if.end193, label %if.then190

if.then190:                                       ; preds = %if.end188
  br label %do.body191

do.body191:                                       ; preds = %if.then190
  br label %do.end192

do.end192:                                        ; preds = %do.body191
  store i1 false, i1* %retval, align 1
  br label %return

if.end193:                                        ; preds = %if.end188
  br label %do.body194

do.body194:                                       ; preds = %if.end193
  br label %do.end195

do.end195:                                        ; preds = %do.body194
  %121 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call196 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %121, i32 16777344)
  store %struct._CXXToken* %call196, %struct._CXXToken** %t, align 8
  br label %do.body197

do.body197:                                       ; preds = %do.end195
  br label %do.end198

do.end198:                                        ; preds = %do.body197
  %122 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType199 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %122, i32 0, i32 0
  %123 = load i32, i32* %eType199, align 8
  %cmp200 = icmp eq i32 %123, 16777216
  br i1 %cmp200, label %if.then201, label %if.end204

if.then201:                                       ; preds = %do.end198
  br label %do.body202

do.body202:                                       ; preds = %if.then201
  br label %do.end203

do.end203:                                        ; preds = %do.body202
  store i1 true, i1* %retval, align 1
  br label %return

if.end204:                                        ; preds = %do.end198
  %124 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext205 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %124, i32 0, i32 7
  %125 = load %struct._CXXToken*, %struct._CXXToken** %pNext205, align 8
  store %struct._CXXToken* %125, %struct._CXXToken** %t, align 8
  br label %for.cond

return:                                           ; preds = %do.end203, %do.end192, %do.end181, %do.end63, %do.end56, %do.end49, %do.end38, %do.end13, %do.end7
  %126 = load i1, i1* %retval, align 1
  ret i1 %126
}

declare %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserTokenChainLooksLikeConstructorParameterSet(%struct._CXXTokenChain* %pChain) #0 {
entry:
  %retval = alloca i1, align 1
  %pChain.addr = alloca %struct._CXXTokenChain*, align 8
  store %struct._CXXTokenChain* %pChain, %struct._CXXTokenChain** %pChain.addr, align 8
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 0
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %4, %cond.true ], [ null, %cond.false ]
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond, i32 0, i32 0
  %5 = load i32, i32* %eType, align 8
  %cmp1 = icmp eq i32 %5, 524288
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %cond.end
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %cond.end
  br label %do.body5

do.body5:                                         ; preds = %if.end
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  store i1 false, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %entry
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %call = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionCallParameterSet(%struct._CXXTokenChain* %6)
  store i1 %call, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end7, %do.end6, %do.end4
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserLookForFunctionSignature(%struct._CXXTokenChain* %pChain, %struct._CXXFunctionSignatureInfo* %pInfo, %struct._CXXFunctionParameterInfo* %pParamInfo) #0 {
entry:
  %retval = alloca i1, align 1
  %pChain.addr = alloca %struct._CXXTokenChain*, align 8
  %pInfo.addr = alloca %struct._CXXFunctionSignatureInfo*, align 8
  %pParamInfo.addr = alloca %struct._CXXFunctionParameterInfo*, align 8
  %pToken = alloca %struct._CXXToken*, align 8
  %pIdentifierStart = alloca %struct._CXXToken*, align 8
  %pIdentifierEnd = alloca %struct._CXXToken*, align 8
  %pTopLevelParenthesis = alloca %struct._CXXToken*, align 8
  %pIdentifierChain = alloca %struct._CXXTokenChain*, align 8
  %pSpecBegin = alloca %struct._CXXToken*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %pAux = alloca %struct._CXXToken*, align 8
  %pSmallerThan = alloca %struct._CXXToken*, align 8
  %pAssignment = alloca %struct._CXXToken*, align 8
  %pIdentOrKeyword = alloca %struct._CXXToken*, align 8
  %pParenthesisOrConst = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %pChain, %struct._CXXTokenChain** %pChain.addr, align 8
  store %struct._CXXFunctionSignatureInfo* %pInfo, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  store %struct._CXXFunctionParameterInfo* %pParamInfo, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %tobool = icmp ne %struct._CXXFunctionParameterInfo* %2, null
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %uParameterCount = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %3, i32 0, i32 0
  store i32 0, i32* %uParameterCount, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %do.body5

do.body5:                                         ; preds = %if.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool7 = icmp ne %struct._CXXTokenChain* %4, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end6
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %5, i32 0, i32 0
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %6, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pToken, align 8
  %7 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %7, i32 0, i32 11
  store i32 0, i32* %uFlags, align 8
  %8 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %8, i32 0, i32 0
  store %struct._CXXToken* null, %struct._CXXToken** %pParenthesis, align 8
  %9 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTrailingComma = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %9, i32 0, i32 10
  store %struct._CXXToken* null, %struct._CXXToken** %pTrailingComma, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %pIdentifierStart, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %pIdentifierEnd, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %pTopLevelParenthesis, align 8
  br label %while.cond

while.cond:                                       ; preds = %next_token, %cond.end
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool8 = icmp ne %struct._CXXToken* %10, null
  br i1 %tobool8, label %while.body, label %while.end234

while.body:                                       ; preds = %while.cond
  br label %do.body9

do.body9:                                         ; preds = %while.body
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  %12 = load i32, i32* %eType, align 8
  %and = and i32 %12, 524353
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %do.end10
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  br label %do.end14

do.end14:                                         ; preds = %do.body13
  br label %while.end234

if.end15:                                         ; preds = %do.end10
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType16 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %13, i32 0, i32 0
  %14 = load i32, i32* %eType16, align 8
  %cmp17 = icmp eq i32 %14, 128
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end15
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %16 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTrailingComma19 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %16, i32 0, i32 10
  store %struct._CXXToken* %15, %struct._CXXToken** %pTrailingComma19, align 8
  br label %do.body20

do.body20:                                        ; preds = %if.then18
  br label %do.end21

do.end21:                                         ; preds = %do.body20
  br label %while.end234

if.end22:                                         ; preds = %if.end15
  %17 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp23 = icmp eq i32 %17, 2
  br i1 %cmp23, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType24 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 0
  %19 = load i32, i32* %eType24, align 8
  %and25 = and i32 %19, 4368
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %land.lhs.true
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  br label %do.end29

do.end29:                                         ; preds = %do.body28
  br label %while.end234

if.end30:                                         ; preds = %land.lhs.true, %if.end22
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType31 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 0
  %21 = load i32, i32* %eType31, align 8
  %and32 = and i32 %21, 193344000
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  br label %do.body35

do.body35:                                        ; preds = %if.then34
  br label %do.end36

do.end36:                                         ; preds = %do.body35
  store i1 false, i1* %retval, align 1
  br label %return

if.end37:                                         ; preds = %if.end30
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType38 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 0
  %23 = load i32, i32* %eType38, align 8
  %cmp39 = icmp eq i32 %23, 4194304
  br i1 %cmp39, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.end37
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %call = call %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken* %24)
  store %struct._CXXToken* %call, %struct._CXXToken** %pToken, align 8
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool41 = icmp ne %struct._CXXToken* %25, null
  br i1 %tobool41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.then40
  br label %do.body43

do.body43:                                        ; preds = %if.then42
  br label %do.end44

do.end44:                                         ; preds = %do.body43
  store i1 false, i1* %retval, align 1
  br label %return

if.end45:                                         ; preds = %if.then40
  br label %do.body46

do.body46:                                        ; preds = %if.end45
  br label %do.end47

do.end47:                                         ; preds = %do.body46
  br label %next_token

if.end48:                                         ; preds = %if.end37
  %26 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis49 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %26, i32 0, i32 0
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis49, align 8
  %tobool50 = icmp ne %struct._CXXToken* %27, null
  br i1 %tobool50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end48
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  br label %do.end53

do.end53:                                         ; preds = %do.body52
  br label %next_token

if.end54:                                         ; preds = %if.end48
  %28 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  store %struct._CXXTokenChain* %28, %struct._CXXTokenChain** %pIdentifierChain, align 8
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType55 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 0
  %30 = load i32, i32* %eType55, align 8
  %cmp56 = icmp eq i32 %30, 4
  br i1 %cmp56, label %land.lhs.true57, label %if.end114

land.lhs.true57:                                  ; preds = %if.end54
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %31, i32 0, i32 2
  %32 = load i32, i32* %eKeyword, align 8
  %cmp58 = icmp eq i32 %32, 61
  br i1 %cmp58, label %if.then59, label %if.end114

if.then59:                                        ; preds = %land.lhs.true57
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  br label %do.end61

do.end61:                                         ; preds = %do.body60
  %33 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  store %struct._CXXToken* %33, %struct._CXXToken** %pIdentifierStart, align 8
  %34 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %34, i32 0, i32 7
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %35, %struct._CXXToken** %pToken, align 8
  br label %while.cond62

while.cond62:                                     ; preds = %if.end104, %do.end61
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool63 = icmp ne %struct._CXXToken* %36, null
  br i1 %tobool63, label %while.body64, label %while.end

while.body64:                                     ; preds = %while.cond62
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType65 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 0
  %38 = load i32, i32* %eType65, align 8
  %cmp66 = icmp eq i32 %38, 268435456
  br i1 %cmp66, label %if.then67, label %if.else

if.then67:                                        ; preds = %while.body64
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext68 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %39, i32 0, i32 7
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pNext68, align 8
  %tobool69 = icmp ne %struct._CXXToken* %40, null
  br i1 %tobool69, label %land.lhs.true70, label %if.end76

land.lhs.true70:                                  ; preds = %if.then67
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext71 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %41, i32 0, i32 7
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pNext71, align 8
  %eType72 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %42, i32 0, i32 0
  %43 = load i32, i32* %eType72, align 8
  %cmp73 = icmp eq i32 %43, 268435456
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %land.lhs.true70
  %44 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext75 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %44, i32 0, i32 7
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pNext75, align 8
  store %struct._CXXToken* %45, %struct._CXXToken** %pToken, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %land.lhs.true70, %if.then67
  br label %while.end

if.else:                                          ; preds = %while.body64
  %46 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType77 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %46, i32 0, i32 0
  %47 = load i32, i32* %eType77, align 8
  %cmp78 = icmp eq i32 %47, 4
  br i1 %cmp78, label %if.then79, label %if.else95

if.then79:                                        ; preds = %if.else
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType80 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 0
  %49 = load i32, i32* %eType80, align 8
  %cmp81 = icmp eq i32 %49, 4
  br i1 %cmp81, label %land.lhs.true82, label %land.lhs.true85

land.lhs.true82:                                  ; preds = %if.then79
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword83 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 2
  %51 = load i32, i32* %eKeyword83, align 8
  %cmp84 = icmp eq i32 %51, 58
  br i1 %cmp84, label %if.end94, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %land.lhs.true82, %if.then79
  %52 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType86 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %52, i32 0, i32 0
  %53 = load i32, i32* %eType86, align 8
  %cmp87 = icmp eq i32 %53, 4
  br i1 %cmp87, label %land.lhs.true88, label %if.then91

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eKeyword89 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %54, i32 0, i32 2
  %55 = load i32, i32* %eKeyword89, align 8
  %cmp90 = icmp eq i32 %55, 37
  br i1 %cmp90, label %if.end94, label %if.then91

if.then91:                                        ; preds = %land.lhs.true88, %land.lhs.true85
  br label %do.body92

do.body92:                                        ; preds = %if.then91
  br label %do.end93

do.end93:                                         ; preds = %do.body92
  store i1 false, i1* %retval, align 1
  br label %return

if.end94:                                         ; preds = %land.lhs.true88, %land.lhs.true82
  br label %if.end103

if.else95:                                        ; preds = %if.else
  %56 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType96 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %56, i32 0, i32 0
  %57 = load i32, i32* %eType96, align 8
  %and97 = and i32 %57, 1682037648
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.end102, label %if.then99

if.then99:                                        ; preds = %if.else95
  br label %do.body100

do.body100:                                       ; preds = %if.then99
  br label %do.end101

do.end101:                                        ; preds = %do.body100
  store i1 false, i1* %retval, align 1
  br label %return

if.end102:                                        ; preds = %if.else95
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end94
  br label %if.end104

if.end104:                                        ; preds = %if.end103
  %58 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext105 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %58, i32 0, i32 7
  %59 = load %struct._CXXToken*, %struct._CXXToken** %pNext105, align 8
  store %struct._CXXToken* %59, %struct._CXXToken** %pToken, align 8
  br label %while.cond62

while.end:                                        ; preds = %if.end76, %while.cond62
  %60 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool106 = icmp ne %struct._CXXToken* %60, null
  br i1 %tobool106, label %if.end110, label %if.then107

if.then107:                                       ; preds = %while.end
  br label %do.body108

do.body108:                                       ; preds = %if.then107
  br label %do.end109

do.end109:                                        ; preds = %do.body108
  store i1 false, i1* %retval, align 1
  br label %return

if.end110:                                        ; preds = %while.end
  br label %do.body111

do.body111:                                       ; preds = %if.end110
  br label %do.end112

do.end112:                                        ; preds = %do.body111
  %61 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  store %struct._CXXToken* %61, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %62 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %62, i32 0, i32 8
  %63 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %63, %struct._CXXToken** %pIdentifierEnd, align 8
  %64 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %65 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain, align 8
  %66 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %67 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd, align 8
  %68 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %69 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %call113 = call zeroext i1 @cxxParserLookForFunctionSignatureCheckParenthesisAndIdentifier(%struct._CXXToken* %64, %struct._CXXTokenChain* %65, %struct._CXXToken* %66, %struct._CXXToken* %67, %struct._CXXFunctionSignatureInfo* %68, %struct._CXXFunctionParameterInfo* %69)
  br label %next_token

if.end114:                                        ; preds = %land.lhs.true57, %if.end54
  %70 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %eType115 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %70, i32 0, i32 0
  %71 = load i32, i32* %eType115, align 8
  %cmp116 = icmp eq i32 %71, 268435456
  br i1 %cmp116, label %if.end120, label %if.then117

if.then117:                                       ; preds = %if.end114
  br label %do.body118

do.body118:                                       ; preds = %if.then117
  br label %do.end119

do.end119:                                        ; preds = %do.body118
  br label %next_token

if.end120:                                        ; preds = %if.end114
  %72 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev121 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %72, i32 0, i32 8
  %73 = load %struct._CXXToken*, %struct._CXXToken** %pPrev121, align 8
  %tobool122 = icmp ne %struct._CXXToken* %73, null
  br i1 %tobool122, label %if.end126, label %if.then123

if.then123:                                       ; preds = %if.end120
  br label %do.body124

do.body124:                                       ; preds = %if.then123
  br label %do.end125

do.end125:                                        ; preds = %do.body124
  br label %next_token

if.end126:                                        ; preds = %if.end120
  br label %do.body127

do.body127:                                       ; preds = %if.end126
  br label %do.end128

do.end128:                                        ; preds = %do.body127
  %74 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  store %struct._CXXToken* %74, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %75 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev129 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %75, i32 0, i32 8
  %76 = load %struct._CXXToken*, %struct._CXXToken** %pPrev129, align 8
  %eType130 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %76, i32 0, i32 0
  %77 = load i32, i32* %eType130, align 8
  %cmp131 = icmp eq i32 %77, 2
  br i1 %cmp131, label %if.then132, label %if.end177

if.then132:                                       ; preds = %do.end128
  br label %do.body133

do.body133:                                       ; preds = %if.then132
  br label %do.end134

do.end134:                                        ; preds = %do.body133
  %78 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev135 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %78, i32 0, i32 8
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pPrev135, align 8
  store %struct._CXXToken* %79, %struct._CXXToken** %pIdentifierStart, align 8
  %80 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev136 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %80, i32 0, i32 8
  %81 = load %struct._CXXToken*, %struct._CXXToken** %pPrev136, align 8
  store %struct._CXXToken* %81, %struct._CXXToken** %pIdentifierEnd, align 8
  %82 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %83 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain, align 8
  %84 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %85 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd, align 8
  %86 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %87 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %call137 = call zeroext i1 @cxxParserLookForFunctionSignatureCheckParenthesisAndIdentifier(%struct._CXXToken* %82, %struct._CXXTokenChain* %83, %struct._CXXToken* %84, %struct._CXXToken* %85, %struct._CXXFunctionSignatureInfo* %86, %struct._CXXFunctionParameterInfo* %87)
  br i1 %call137, label %if.then138, label %if.end176

if.then138:                                       ; preds = %do.end134
  %88 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %pPrev139 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %88, i32 0, i32 8
  %89 = load %struct._CXXToken*, %struct._CXXToken** %pPrev139, align 8
  %tobool140 = icmp ne %struct._CXXToken* %89, null
  br i1 %tobool140, label %if.end175, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %if.then138
  %90 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis142 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %90, i32 0, i32 0
  %91 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis142, align 8
  %pNext143 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %91, i32 0, i32 7
  %92 = load %struct._CXXToken*, %struct._CXXToken** %pNext143, align 8
  %tobool144 = icmp ne %struct._CXXToken* %92, null
  br i1 %tobool144, label %land.lhs.true145, label %if.end175

land.lhs.true145:                                 ; preds = %land.lhs.true141
  %93 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis146 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %93, i32 0, i32 0
  %94 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis146, align 8
  %pNext147 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %94, i32 0, i32 7
  %95 = load %struct._CXXToken*, %struct._CXXToken** %pNext147, align 8
  %eType148 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %95, i32 0, i32 0
  %96 = load i32, i32* %eType148, align 8
  %cmp149 = icmp eq i32 %96, 2
  br i1 %cmp149, label %land.lhs.true150, label %if.end175

land.lhs.true150:                                 ; preds = %land.lhs.true145
  %97 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis151 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %97, i32 0, i32 0
  %98 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis151, align 8
  %pNext152 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %98, i32 0, i32 7
  %99 = load %struct._CXXToken*, %struct._CXXToken** %pNext152, align 8
  %pNext153 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %99, i32 0, i32 7
  %100 = load %struct._CXXToken*, %struct._CXXToken** %pNext153, align 8
  %tobool154 = icmp ne %struct._CXXToken* %100, null
  br i1 %tobool154, label %land.lhs.true155, label %if.end175

land.lhs.true155:                                 ; preds = %land.lhs.true150
  %101 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis156 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %101, i32 0, i32 0
  %102 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis156, align 8
  %pNext157 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %102, i32 0, i32 7
  %103 = load %struct._CXXToken*, %struct._CXXToken** %pNext157, align 8
  %pNext158 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %103, i32 0, i32 7
  %104 = load %struct._CXXToken*, %struct._CXXToken** %pNext158, align 8
  %eType159 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %104, i32 0, i32 0
  %105 = load i32, i32* %eType159, align 8
  %cmp160 = icmp eq i32 %105, 268435456
  br i1 %cmp160, label %land.lhs.true166, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true155
  %106 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis161 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %106, i32 0, i32 0
  %107 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis161, align 8
  %pNext162 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %107, i32 0, i32 7
  %108 = load %struct._CXXToken*, %struct._CXXToken** %pNext162, align 8
  %pNext163 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %108, i32 0, i32 7
  %109 = load %struct._CXXToken*, %struct._CXXToken** %pNext163, align 8
  %eType164 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %109, i32 0, i32 0
  %110 = load i32, i32* %eType164, align 8
  %cmp165 = icmp eq i32 %110, 64
  br i1 %cmp165, label %land.lhs.true166, label %if.end175

land.lhs.true166:                                 ; preds = %lor.lhs.false, %land.lhs.true155
  %111 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis167 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %111, i32 0, i32 0
  %112 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis167, align 8
  %pChain168 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %112, i32 0, i32 3
  %113 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain168, align 8
  %call169 = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %113, i32 128)
  %tobool170 = icmp ne %struct._CXXToken* %call169, null
  br i1 %tobool170, label %if.end175, label %if.then171

if.then171:                                       ; preds = %land.lhs.true166
  br label %do.body172

do.body172:                                       ; preds = %if.then171
  br label %do.end173

do.end173:                                        ; preds = %do.body172
  %114 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis174 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %114, i32 0, i32 0
  store %struct._CXXToken* null, %struct._CXXToken** %pParenthesis174, align 8
  br label %if.end175

if.end175:                                        ; preds = %do.end173, %land.lhs.true166, %lor.lhs.false, %land.lhs.true150, %land.lhs.true145, %land.lhs.true141, %if.then138
  br label %next_token

if.end176:                                        ; preds = %do.end134
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %do.end128
  %115 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pChain178 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %115, i32 0, i32 3
  %116 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain178, align 8
  %call179 = call %struct._CXXToken* @cxxTokenChainFirstPossiblyNestedTokenOfType(%struct._CXXTokenChain* %116, i32 2, %struct._CXXTokenChain** %pIdentifierChain)
  store %struct._CXXToken* %call179, %struct._CXXToken** %pIdentifierStart, align 8
  %tobool180 = icmp ne %struct._CXXToken* %call179, null
  br i1 %tobool180, label %if.then181, label %if.end205

if.then181:                                       ; preds = %if.end177
  br label %do.body182

do.body182:                                       ; preds = %if.then181
  br label %do.end183

do.end183:                                        ; preds = %do.body182
  %117 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %pNext184 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %117, i32 0, i32 7
  %118 = load %struct._CXXToken*, %struct._CXXToken** %pNext184, align 8
  %tobool185 = icmp ne %struct._CXXToken* %118, null
  br i1 %tobool185, label %land.lhs.true186, label %if.else198

land.lhs.true186:                                 ; preds = %do.end183
  %119 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %pNext187 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %119, i32 0, i32 7
  %120 = load %struct._CXXToken*, %struct._CXXToken** %pNext187, align 8
  %eType188 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %120, i32 0, i32 0
  %121 = load i32, i32* %eType188, align 8
  %cmp189 = icmp eq i32 %121, 268435456
  br i1 %cmp189, label %land.lhs.true190, label %if.else198

land.lhs.true190:                                 ; preds = %land.lhs.true186
  %122 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %pNext191 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %122, i32 0, i32 7
  %123 = load %struct._CXXToken*, %struct._CXXToken** %pNext191, align 8
  %pChain192 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %123, i32 0, i32 3
  %124 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain192, align 8
  %call193 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %124, %struct._CXXFunctionParameterInfo* null)
  br i1 %call193, label %if.then194, label %if.else198

if.then194:                                       ; preds = %land.lhs.true190
  br label %do.body195

do.body195:                                       ; preds = %if.then194
  br label %do.end196

do.end196:                                        ; preds = %do.body195
  %125 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  store %struct._CXXToken* %125, %struct._CXXToken** %pIdentifierEnd, align 8
  %126 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %pNext197 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %126, i32 0, i32 7
  %127 = load %struct._CXXToken*, %struct._CXXToken** %pNext197, align 8
  store %struct._CXXToken* %127, %struct._CXXToken** %pTopLevelParenthesis, align 8
  br label %if.end201

if.else198:                                       ; preds = %land.lhs.true190, %land.lhs.true186, %do.end183
  br label %do.body199

do.body199:                                       ; preds = %if.else198
  br label %do.end200

do.end200:                                        ; preds = %do.body199
  store i1 false, i1* %retval, align 1
  br label %return

if.end201:                                        ; preds = %do.end196
  %128 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %129 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain, align 8
  %130 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %131 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd, align 8
  %132 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %133 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %call202 = call zeroext i1 @cxxParserLookForFunctionSignatureCheckParenthesisAndIdentifier(%struct._CXXToken* %128, %struct._CXXTokenChain* %129, %struct._CXXToken* %130, %struct._CXXToken* %131, %struct._CXXFunctionSignatureInfo* %132, %struct._CXXFunctionParameterInfo* %133)
  br i1 %call202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %if.end201
  br label %next_token

if.end204:                                        ; preds = %if.end201
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end177
  %134 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev206 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %134, i32 0, i32 8
  %135 = load %struct._CXXToken*, %struct._CXXToken** %pPrev206, align 8
  %pPrev207 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %135, i32 0, i32 8
  %136 = load %struct._CXXToken*, %struct._CXXToken** %pPrev207, align 8
  %tobool208 = icmp ne %struct._CXXToken* %136, null
  br i1 %tobool208, label %land.lhs.true209, label %if.end232

land.lhs.true209:                                 ; preds = %if.end205
  %137 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev210 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %137, i32 0, i32 8
  %138 = load %struct._CXXToken*, %struct._CXXToken** %pPrev210, align 8
  %eType211 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %138, i32 0, i32 0
  %139 = load i32, i32* %eType211, align 8
  %cmp212 = icmp eq i32 %139, 67108864
  br i1 %cmp212, label %if.then213, label %if.end232

if.then213:                                       ; preds = %land.lhs.true209
  %140 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev214 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %140, i32 0, i32 8
  %141 = load %struct._CXXToken*, %struct._CXXToken** %pPrev214, align 8
  %call215 = call %struct._CXXToken* @cxxTokenChainSkipBackToStartOfTemplateAngleBracket(%struct._CXXToken* %141)
  store %struct._CXXToken* %call215, %struct._CXXToken** %pSpecBegin, align 8
  %142 = load %struct._CXXToken*, %struct._CXXToken** %pSpecBegin, align 8
  %tobool216 = icmp ne %struct._CXXToken* %142, null
  br i1 %tobool216, label %land.lhs.true217, label %if.end231

land.lhs.true217:                                 ; preds = %if.then213
  %143 = load %struct._CXXToken*, %struct._CXXToken** %pSpecBegin, align 8
  %pPrev218 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %143, i32 0, i32 8
  %144 = load %struct._CXXToken*, %struct._CXXToken** %pPrev218, align 8
  %tobool219 = icmp ne %struct._CXXToken* %144, null
  br i1 %tobool219, label %land.lhs.true220, label %if.end231

land.lhs.true220:                                 ; preds = %land.lhs.true217
  %145 = load %struct._CXXToken*, %struct._CXXToken** %pSpecBegin, align 8
  %pPrev221 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %145, i32 0, i32 8
  %146 = load %struct._CXXToken*, %struct._CXXToken** %pPrev221, align 8
  %eType222 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %146, i32 0, i32 0
  %147 = load i32, i32* %eType222, align 8
  %cmp223 = icmp eq i32 %147, 2
  br i1 %cmp223, label %if.then224, label %if.end231

if.then224:                                       ; preds = %land.lhs.true220
  br label %do.body225

do.body225:                                       ; preds = %if.then224
  br label %do.end226

do.end226:                                        ; preds = %do.body225
  %148 = load %struct._CXXToken*, %struct._CXXToken** %pSpecBegin, align 8
  %pPrev227 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %148, i32 0, i32 8
  %149 = load %struct._CXXToken*, %struct._CXXToken** %pPrev227, align 8
  store %struct._CXXToken* %149, %struct._CXXToken** %pIdentifierStart, align 8
  %150 = load %struct._CXXToken*, %struct._CXXToken** %pSpecBegin, align 8
  %pPrev228 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %150, i32 0, i32 8
  %151 = load %struct._CXXToken*, %struct._CXXToken** %pPrev228, align 8
  store %struct._CXXToken* %151, %struct._CXXToken** %pIdentifierEnd, align 8
  %152 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags229 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %152, i32 0, i32 11
  %153 = load i32, i32* %uFlags229, align 8
  %or = or i32 %153, 64
  store i32 %or, i32* %uFlags229, align 8
  %154 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %155 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain, align 8
  %156 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %157 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd, align 8
  %158 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %159 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %call230 = call zeroext i1 @cxxParserLookForFunctionSignatureCheckParenthesisAndIdentifier(%struct._CXXToken* %154, %struct._CXXTokenChain* %155, %struct._CXXToken* %156, %struct._CXXToken* %157, %struct._CXXFunctionSignatureInfo* %158, %struct._CXXFunctionParameterInfo* %159)
  br label %if.end231

if.end231:                                        ; preds = %do.end226, %land.lhs.true220, %land.lhs.true217, %if.then213
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %land.lhs.true209, %if.end205
  br label %next_token

next_token:                                       ; preds = %if.end232, %if.then203, %if.end175, %do.end125, %do.end119, %do.end112, %do.end53, %do.end47
  %160 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pNext233 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %160, i32 0, i32 7
  %161 = load %struct._CXXToken*, %struct._CXXToken** %pNext233, align 8
  store %struct._CXXToken* %161, %struct._CXXToken** %pToken, align 8
  br label %while.cond

while.end234:                                     ; preds = %do.end29, %do.end21, %do.end14, %while.cond
  %162 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis235 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %162, i32 0, i32 0
  %163 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis235, align 8
  %tobool236 = icmp ne %struct._CXXToken* %163, null
  br i1 %tobool236, label %if.end240, label %if.then237

if.then237:                                       ; preds = %while.end234
  br label %do.body238

do.body238:                                       ; preds = %if.then237
  br label %do.end239

do.end239:                                        ; preds = %do.body238
  store i1 false, i1* %retval, align 1
  br label %return

if.end240:                                        ; preds = %while.end234
  br label %do.body241

do.body241:                                       ; preds = %if.end240
  br label %do.end242

do.end242:                                        ; preds = %do.body241
  %164 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart243 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %164, i32 0, i32 2
  %165 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart243, align 8
  %166 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd244 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %166, i32 0, i32 3
  %167 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd244, align 8
  %cmp245 = icmp ne %struct._CXXToken* %165, %167
  br i1 %cmp245, label %if.then246, label %if.else257

if.then246:                                       ; preds = %do.end242
  %168 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart247 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %168, i32 0, i32 2
  %169 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart247, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %169, i32 0, i32 4
  store i8 1, i8* %bFollowedBySpace, align 8
  %170 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart248 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %170, i32 0, i32 2
  %171 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart248, align 8
  %pNext249 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %171, i32 0, i32 7
  %172 = load %struct._CXXToken*, %struct._CXXToken** %pNext249, align 8
  store %struct._CXXToken* %172, %struct._CXXToken** %t, align 8
  br label %while.cond250

while.cond250:                                    ; preds = %while.body253, %if.then246
  %173 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %174 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd251 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %174, i32 0, i32 3
  %175 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd251, align 8
  %cmp252 = icmp ne %struct._CXXToken* %173, %175
  br i1 %cmp252, label %while.body253, label %while.end256

while.body253:                                    ; preds = %while.cond250
  %176 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %bFollowedBySpace254 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %176, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace254, align 8
  %177 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext255 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %177, i32 0, i32 7
  %178 = load %struct._CXXToken*, %struct._CXXToken** %pNext255, align 8
  store %struct._CXXToken* %178, %struct._CXXToken** %t, align 8
  br label %while.cond250

while.end256:                                     ; preds = %while.cond250
  br label %if.end260

if.else257:                                       ; preds = %do.end242
  %179 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart258 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %179, i32 0, i32 2
  %180 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart258, align 8
  %bFollowedBySpace259 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %180, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace259, align 8
  br label %if.end260

if.end260:                                        ; preds = %if.else257, %while.end256
  %181 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd261 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %181, i32 0, i32 3
  %182 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd261, align 8
  %bFollowedBySpace262 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %182, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace262, align 8
  %183 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %183, i32 0, i32 6
  store %struct._CXXToken* null, %struct._CXXToken** %pScopeStart, align 8
  %184 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp263 = icmp eq i32 %184, 2
  br i1 %cmp263, label %if.then264, label %if.else421

if.then264:                                       ; preds = %if.end260
  %185 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart265 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %185, i32 0, i32 2
  %186 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart265, align 8
  %pPrev266 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %186, i32 0, i32 8
  %187 = load %struct._CXXToken*, %struct._CXXToken** %pPrev266, align 8
  store %struct._CXXToken* %187, %struct._CXXToken** %pAux, align 8
  br label %do.body267

do.body267:                                       ; preds = %if.then264
  br label %do.end268

do.end268:                                        ; preds = %do.body267
  br label %while.cond269

while.cond269:                                    ; preds = %do.end325, %do.end268
  %188 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %tobool270 = icmp ne %struct._CXXToken* %188, null
  br i1 %tobool270, label %while.body271, label %while.end328

while.body271:                                    ; preds = %while.cond269
  br label %do.body272

do.body272:                                       ; preds = %while.body271
  br label %do.end273

do.end273:                                        ; preds = %do.body272
  %189 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %eType274 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %189, i32 0, i32 0
  %190 = load i32, i32* %eType274, align 8
  %cmp275 = icmp eq i32 %190, 32
  br i1 %cmp275, label %if.end277, label %if.then276

if.then276:                                       ; preds = %do.end273
  br label %while.end328

if.end277:                                        ; preds = %do.end273
  %191 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %pPrev278 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %191, i32 0, i32 8
  %192 = load %struct._CXXToken*, %struct._CXXToken** %pPrev278, align 8
  store %struct._CXXToken* %192, %struct._CXXToken** %pAux, align 8
  %193 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %tobool279 = icmp ne %struct._CXXToken* %193, null
  br i1 %tobool279, label %if.end281, label %if.then280

if.then280:                                       ; preds = %if.end277
  br label %while.end328

if.end281:                                        ; preds = %if.end277
  %194 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %eType282 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %194, i32 0, i32 0
  %195 = load i32, i32* %eType282, align 8
  %cmp283 = icmp eq i32 %195, 2
  br i1 %cmp283, label %if.end323, label %if.then284

if.then284:                                       ; preds = %if.end281
  %196 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %eType285 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %196, i32 0, i32 0
  %197 = load i32, i32* %eType285, align 8
  %cmp286 = icmp eq i32 %197, 67108864
  br i1 %cmp286, label %if.then287, label %if.else304

if.then287:                                       ; preds = %if.then284
  %198 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %call288 = call %struct._CXXToken* @cxxTokenChainSkipBackToStartOfTemplateAngleBracket(%struct._CXXToken* %198)
  store %struct._CXXToken* %call288, %struct._CXXToken** %pSmallerThan, align 8
  %199 = load %struct._CXXToken*, %struct._CXXToken** %pSmallerThan, align 8
  %tobool289 = icmp ne %struct._CXXToken* %199, null
  br i1 %tobool289, label %if.end291, label %if.then290

if.then290:                                       ; preds = %if.then287
  br label %while.end328

if.end291:                                        ; preds = %if.then287
  %200 = load %struct._CXXToken*, %struct._CXXToken** %pSmallerThan, align 8
  %pPrev292 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %200, i32 0, i32 8
  %201 = load %struct._CXXToken*, %struct._CXXToken** %pPrev292, align 8
  %tobool293 = icmp ne %struct._CXXToken* %201, null
  br i1 %tobool293, label %if.end295, label %if.then294

if.then294:                                       ; preds = %if.end291
  br label %while.end328

if.end295:                                        ; preds = %if.end291
  %202 = load %struct._CXXToken*, %struct._CXXToken** %pSmallerThan, align 8
  %pPrev296 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %202, i32 0, i32 8
  %203 = load %struct._CXXToken*, %struct._CXXToken** %pPrev296, align 8
  %eType297 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %203, i32 0, i32 0
  %204 = load i32, i32* %eType297, align 8
  %cmp298 = icmp eq i32 %204, 2
  br i1 %cmp298, label %if.end300, label %if.then299

if.then299:                                       ; preds = %if.end295
  br label %while.end328

if.end300:                                        ; preds = %if.end295
  %205 = load %struct._CXXToken*, %struct._CXXToken** %pSmallerThan, align 8
  %pPrev301 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %205, i32 0, i32 8
  %206 = load %struct._CXXToken*, %struct._CXXToken** %pPrev301, align 8
  store %struct._CXXToken* %206, %struct._CXXToken** %pAux, align 8
  %207 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags302 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %207, i32 0, i32 11
  %208 = load i32, i32* %uFlags302, align 8
  %or303 = or i32 %208, 128
  store i32 %or303, i32* %uFlags302, align 8
  br label %if.end322

if.else304:                                       ; preds = %if.then284
  %209 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %eType305 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %209, i32 0, i32 0
  %210 = load i32, i32* %eType305, align 8
  %cmp306 = icmp eq i32 %210, 1073741824
  br i1 %cmp306, label %if.then307, label %if.else320

if.then307:                                       ; preds = %if.else304
  %211 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %pPrev308 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %211, i32 0, i32 8
  %212 = load %struct._CXXToken*, %struct._CXXToken** %pPrev308, align 8
  %tobool309 = icmp ne %struct._CXXToken* %212, null
  br i1 %tobool309, label %if.end311, label %if.then310

if.then310:                                       ; preds = %if.then307
  br label %while.end328

if.end311:                                        ; preds = %if.then307
  %213 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %pPrev312 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %213, i32 0, i32 8
  %214 = load %struct._CXXToken*, %struct._CXXToken** %pPrev312, align 8
  %eType313 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %214, i32 0, i32 0
  %215 = load i32, i32* %eType313, align 8
  %cmp314 = icmp eq i32 %215, 2
  br i1 %cmp314, label %if.end316, label %if.then315

if.then315:                                       ; preds = %if.end311
  br label %while.end328

if.end316:                                        ; preds = %if.end311
  %216 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %pPrev317 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %216, i32 0, i32 8
  %217 = load %struct._CXXToken*, %struct._CXXToken** %pPrev317, align 8
  store %struct._CXXToken* %217, %struct._CXXToken** %pAux, align 8
  %218 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags318 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %218, i32 0, i32 11
  %219 = load i32, i32* %uFlags318, align 8
  %or319 = or i32 %219, 128
  store i32 %or319, i32* %uFlags318, align 8
  br label %if.end321

if.else320:                                       ; preds = %if.else304
  br label %while.end328

if.end321:                                        ; preds = %if.end316
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %if.end300
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %if.end281
  br label %do.body324

do.body324:                                       ; preds = %if.end323
  br label %do.end325

do.end325:                                        ; preds = %do.body324
  %220 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %221 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart326 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %221, i32 0, i32 6
  store %struct._CXXToken* %220, %struct._CXXToken** %pScopeStart326, align 8
  %222 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %pPrev327 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %222, i32 0, i32 8
  %223 = load %struct._CXXToken*, %struct._CXXToken** %pPrev327, align 8
  store %struct._CXXToken* %223, %struct._CXXToken** %pAux, align 8
  br label %while.cond269

while.end328:                                     ; preds = %if.else320, %if.then315, %if.then310, %if.then299, %if.then294, %if.then290, %if.then280, %if.then276, %while.cond269
  br label %do.body329

do.body329:                                       ; preds = %while.end328
  br label %do.end330

do.end330:                                        ; preds = %do.body329
  %224 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %pNext331 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %224, i32 0, i32 7
  %225 = load %struct._CXXToken*, %struct._CXXToken** %pNext331, align 8
  %tobool332 = icmp ne %struct._CXXToken* %225, null
  br i1 %tobool332, label %if.then333, label %if.else418

if.then333:                                       ; preds = %do.end330
  %226 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %pNext334 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %226, i32 0, i32 7
  %227 = load %struct._CXXToken*, %struct._CXXToken** %pNext334, align 8
  %eType335 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %227, i32 0, i32 0
  %228 = load i32, i32* %eType335, align 8
  %cmp336 = icmp eq i32 %228, 4
  br i1 %cmp336, label %land.lhs.true337, label %if.else343

land.lhs.true337:                                 ; preds = %if.then333
  %229 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %pNext338 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %229, i32 0, i32 7
  %230 = load %struct._CXXToken*, %struct._CXXToken** %pNext338, align 8
  %eKeyword339 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %230, i32 0, i32 2
  %231 = load i32, i32* %eKeyword339, align 8
  %cmp340 = icmp eq i32 %231, 31
  br i1 %cmp340, label %if.then341, label %if.else343

if.then341:                                       ; preds = %land.lhs.true337
  %232 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %pNext342 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %232, i32 0, i32 7
  %233 = load %struct._CXXToken*, %struct._CXXToken** %pNext342, align 8
  %234 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %234, i32 0, i32 5
  store %struct._CXXToken* %233, %struct._CXXToken** %pSignatureConst, align 8
  br label %if.end345

if.else343:                                       ; preds = %land.lhs.true337, %if.then333
  %235 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst344 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %235, i32 0, i32 5
  store %struct._CXXToken* null, %struct._CXXToken** %pSignatureConst344, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.else343, %if.then341
  %236 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %call346 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %236, i32 256)
  store %struct._CXXToken* %call346, %struct._CXXToken** %pAssignment, align 8
  %237 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %tobool347 = icmp ne %struct._CXXToken* %237, null
  br i1 %tobool347, label %land.lhs.true348, label %if.end383

land.lhs.true348:                                 ; preds = %if.end345
  %238 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %pNext349 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %238, i32 0, i32 7
  %239 = load %struct._CXXToken*, %struct._CXXToken** %pNext349, align 8
  %tobool350 = icmp ne %struct._CXXToken* %239, null
  br i1 %tobool350, label %if.then351, label %if.end383

if.then351:                                       ; preds = %land.lhs.true348
  %240 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %pNext352 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %240, i32 0, i32 7
  %241 = load %struct._CXXToken*, %struct._CXXToken** %pNext352, align 8
  %eType353 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %241, i32 0, i32 0
  %242 = load i32, i32* %eType353, align 8
  %cmp354 = icmp eq i32 %242, 8
  br i1 %cmp354, label %land.lhs.true355, label %if.else362

land.lhs.true355:                                 ; preds = %if.then351
  %243 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %pNext356 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %243, i32 0, i32 7
  %244 = load %struct._CXXToken*, %struct._CXXToken** %pNext356, align 8
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %244, i32 0, i32 1
  %245 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %245, i32 0, i32 2
  %246 = load i8*, i8** %buffer, align 8
  %call357 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %cmp358 = icmp eq i32 %call357, 0
  br i1 %cmp358, label %if.then359, label %if.else362

if.then359:                                       ; preds = %land.lhs.true355
  %247 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags360 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %247, i32 0, i32 11
  %248 = load i32, i32* %uFlags360, align 8
  %or361 = or i32 %248, 1
  store i32 %or361, i32* %uFlags360, align 8
  br label %if.end382

if.else362:                                       ; preds = %land.lhs.true355, %if.then351
  %249 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %pNext363 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %249, i32 0, i32 7
  %250 = load %struct._CXXToken*, %struct._CXXToken** %pNext363, align 8
  %eType364 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %250, i32 0, i32 0
  %251 = load i32, i32* %eType364, align 8
  %cmp365 = icmp eq i32 %251, 4
  br i1 %cmp365, label %if.then366, label %if.end381

if.then366:                                       ; preds = %if.else362
  %252 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %pNext367 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %252, i32 0, i32 7
  %253 = load %struct._CXXToken*, %struct._CXXToken** %pNext367, align 8
  %eKeyword368 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %253, i32 0, i32 2
  %254 = load i32, i32* %eKeyword368, align 8
  %cmp369 = icmp eq i32 %254, 36
  br i1 %cmp369, label %if.then370, label %if.end373

if.then370:                                       ; preds = %if.then366
  %255 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags371 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %255, i32 0, i32 11
  %256 = load i32, i32* %uFlags371, align 8
  %or372 = or i32 %256, 2
  store i32 %or372, i32* %uFlags371, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.then370, %if.then366
  %257 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %pNext374 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %257, i32 0, i32 7
  %258 = load %struct._CXXToken*, %struct._CXXToken** %pNext374, align 8
  %eKeyword375 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %258, i32 0, i32 2
  %259 = load i32, i32* %eKeyword375, align 8
  %cmp376 = icmp eq i32 %259, 37
  br i1 %cmp376, label %if.then377, label %if.end380

if.then377:                                       ; preds = %if.end373
  %260 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags378 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %260, i32 0, i32 11
  %261 = load i32, i32* %uFlags378, align 8
  %or379 = or i32 %261, 16
  store i32 %or379, i32* %uFlags378, align 8
  br label %if.end380

if.end380:                                        ; preds = %if.then377, %if.end373
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.else362
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %if.then359
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %land.lhs.true348, %if.end345
  %262 = load %struct._CXXToken*, %struct._CXXToken** %pTopLevelParenthesis, align 8
  %call384 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %262, i32 6)
  store %struct._CXXToken* %call384, %struct._CXXToken** %pIdentOrKeyword, align 8
  br label %while.cond385

while.cond385:                                    ; preds = %if.end415, %if.end383
  %263 = load %struct._CXXToken*, %struct._CXXToken** %pIdentOrKeyword, align 8
  %tobool386 = icmp ne %struct._CXXToken* %263, null
  br i1 %tobool386, label %while.body387, label %while.end417

while.body387:                                    ; preds = %while.cond385
  %264 = load %struct._CXXToken*, %struct._CXXToken** %pIdentOrKeyword, align 8
  %eType388 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %264, i32 0, i32 0
  %265 = load i32, i32* %eType388, align 8
  %cmp389 = icmp eq i32 %265, 4
  br i1 %cmp389, label %if.then390, label %if.else397

if.then390:                                       ; preds = %while.body387
  %266 = load %struct._CXXToken*, %struct._CXXToken** %pIdentOrKeyword, align 8
  %eKeyword391 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %266, i32 0, i32 2
  %267 = load i32, i32* %eKeyword391, align 8
  %cmp392 = icmp eq i32 %267, 92
  br i1 %cmp392, label %if.then393, label %if.end396

if.then393:                                       ; preds = %if.then390
  %268 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags394 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %268, i32 0, i32 11
  %269 = load i32, i32* %uFlags394, align 8
  %or395 = or i32 %269, 32
  store i32 %or395, i32* %uFlags394, align 8
  br label %if.end396

if.end396:                                        ; preds = %if.then393, %if.then390
  br label %if.end415

if.else397:                                       ; preds = %while.body387
  %270 = load %struct._CXXToken*, %struct._CXXToken** %pIdentOrKeyword, align 8
  %pszWord398 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %270, i32 0, i32 1
  %271 = load %struct.sVString*, %struct.sVString** %pszWord398, align 8
  %buffer399 = getelementptr inbounds %struct.sVString, %struct.sVString* %271, i32 0, i32 2
  %272 = load i8*, i8** %buffer399, align 8
  %call400 = call i32 @strcmp(i8* %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %cmp401 = icmp eq i32 %call400, 0
  br i1 %cmp401, label %if.then402, label %if.else405

if.then402:                                       ; preds = %if.else397
  %273 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags403 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %273, i32 0, i32 11
  %274 = load i32, i32* %uFlags403, align 8
  %or404 = or i32 %274, 8
  store i32 %or404, i32* %uFlags403, align 8
  br label %if.end414

if.else405:                                       ; preds = %if.else397
  %275 = load %struct._CXXToken*, %struct._CXXToken** %pIdentOrKeyword, align 8
  %pszWord406 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %275, i32 0, i32 1
  %276 = load %struct.sVString*, %struct.sVString** %pszWord406, align 8
  %buffer407 = getelementptr inbounds %struct.sVString, %struct.sVString* %276, i32 0, i32 2
  %277 = load i8*, i8** %buffer407, align 8
  %call408 = call i32 @strcmp(i8* %277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %cmp409 = icmp eq i32 %call408, 0
  br i1 %cmp409, label %if.then410, label %if.end413

if.then410:                                       ; preds = %if.else405
  %278 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags411 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %278, i32 0, i32 11
  %279 = load i32, i32* %uFlags411, align 8
  %or412 = or i32 %279, 4
  store i32 %or412, i32* %uFlags411, align 8
  br label %if.end413

if.end413:                                        ; preds = %if.then410, %if.else405
  br label %if.end414

if.end414:                                        ; preds = %if.end413, %if.then402
  br label %if.end415

if.end415:                                        ; preds = %if.end414, %if.end396
  %280 = load %struct._CXXToken*, %struct._CXXToken** %pIdentOrKeyword, align 8
  %call416 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %280, i32 6)
  store %struct._CXXToken* %call416, %struct._CXXToken** %pIdentOrKeyword, align 8
  br label %while.cond385

while.end417:                                     ; preds = %while.cond385
  br label %if.end420

if.else418:                                       ; preds = %do.end330
  %281 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst419 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %281, i32 0, i32 5
  store %struct._CXXToken* null, %struct._CXXToken** %pSignatureConst419, align 8
  br label %if.end420

if.end420:                                        ; preds = %if.else418, %while.end417
  br label %if.end423

if.else421:                                       ; preds = %if.end260
  %282 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst422 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %282, i32 0, i32 5
  store %struct._CXXToken* null, %struct._CXXToken** %pSignatureConst422, align 8
  br label %if.end423

if.end423:                                        ; preds = %if.else421, %if.end420
  %283 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierChain424 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %283, i32 0, i32 4
  %284 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain424, align 8
  %285 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %cmp425 = icmp ne %struct._CXXTokenChain* %284, %285
  br i1 %cmp425, label %if.then426, label %if.else446

if.then426:                                       ; preds = %if.end423
  br label %do.body427

do.body427:                                       ; preds = %if.then426
  br label %do.end428

do.end428:                                        ; preds = %do.body427
  %286 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool429 = icmp ne %struct._CXXTokenChain* %286, null
  br i1 %tobool429, label %cond.true430, label %cond.false432

cond.true430:                                     ; preds = %do.end428
  %287 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead431 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %287, i32 0, i32 0
  %288 = load %struct._CXXToken*, %struct._CXXToken** %pHead431, align 8
  br label %cond.end433

cond.false432:                                    ; preds = %do.end428
  br label %cond.end433

cond.end433:                                      ; preds = %cond.false432, %cond.true430
  %cond434 = phi %struct._CXXToken* [ %288, %cond.true430 ], [ null, %cond.false432 ]
  %289 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %289, i32 0, i32 7
  store %struct._CXXToken* %cond434, %struct._CXXToken** %pTypeStart, align 8
  %290 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %tobool435 = icmp ne %struct._CXXToken* %290, null
  br i1 %tobool435, label %cond.true436, label %cond.false438

cond.true436:                                     ; preds = %cond.end433
  %291 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev437 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %291, i32 0, i32 8
  %292 = load %struct._CXXToken*, %struct._CXXToken** %pPrev437, align 8
  br label %cond.end444

cond.false438:                                    ; preds = %cond.end433
  %293 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool439 = icmp ne %struct._CXXTokenChain* %293, null
  br i1 %tobool439, label %cond.true440, label %cond.false441

cond.true440:                                     ; preds = %cond.false438
  %294 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %294, i32 0, i32 1
  %295 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end442

cond.false441:                                    ; preds = %cond.false438
  br label %cond.end442

cond.end442:                                      ; preds = %cond.false441, %cond.true440
  %cond443 = phi %struct._CXXToken* [ %295, %cond.true440 ], [ null, %cond.false441 ]
  br label %cond.end444

cond.end444:                                      ; preds = %cond.end442, %cond.true436
  %cond445 = phi %struct._CXXToken* [ %292, %cond.true436 ], [ %cond443, %cond.end442 ]
  %296 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %296, i32 0, i32 8
  store %struct._CXXToken* %cond445, %struct._CXXToken** %pTypeEnd, align 8
  %297 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %bTypeContainsIdentifierScopeAndSignature = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %297, i32 0, i32 9
  store i8 1, i8* %bTypeContainsIdentifierScopeAndSignature, align 8
  br label %if.end573

if.else446:                                       ; preds = %if.end423
  %298 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart447 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %298, i32 0, i32 6
  %299 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart447, align 8
  %tobool448 = icmp ne %struct._CXXToken* %299, null
  br i1 %tobool448, label %cond.true449, label %cond.false451

cond.true449:                                     ; preds = %if.else446
  %300 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart450 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %300, i32 0, i32 6
  %301 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart450, align 8
  br label %cond.end453

cond.false451:                                    ; preds = %if.else446
  %302 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart452 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %302, i32 0, i32 2
  %303 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart452, align 8
  br label %cond.end453

cond.end453:                                      ; preds = %cond.false451, %cond.true449
  %cond454 = phi %struct._CXXToken* [ %301, %cond.true449 ], [ %303, %cond.false451 ]
  store %struct._CXXToken* %cond454, %struct._CXXToken** %pToken, align 8
  %304 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev455 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %304, i32 0, i32 8
  %305 = load %struct._CXXToken*, %struct._CXXToken** %pPrev455, align 8
  %tobool456 = icmp ne %struct._CXXToken* %305, null
  br i1 %tobool456, label %if.then457, label %if.else568

if.then457:                                       ; preds = %cond.end453
  %306 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst458 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %306, i32 0, i32 5
  %307 = load %struct._CXXToken*, %struct._CXXToken** %pSignatureConst458, align 8
  %tobool459 = icmp ne %struct._CXXToken* %307, null
  br i1 %tobool459, label %cond.true460, label %cond.false462

cond.true460:                                     ; preds = %if.then457
  %308 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst461 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %308, i32 0, i32 5
  %309 = load %struct._CXXToken*, %struct._CXXToken** %pSignatureConst461, align 8
  br label %cond.end464

cond.false462:                                    ; preds = %if.then457
  %310 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis463 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %310, i32 0, i32 0
  %311 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis463, align 8
  br label %cond.end464

cond.end464:                                      ; preds = %cond.false462, %cond.true460
  %cond465 = phi %struct._CXXToken* [ %309, %cond.true460 ], [ %311, %cond.false462 ]
  store %struct._CXXToken* %cond465, %struct._CXXToken** %pParenthesisOrConst, align 8
  %312 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp466 = icmp eq i32 %312, 2
  br i1 %cmp466, label %land.lhs.true467, label %if.else512

land.lhs.true467:                                 ; preds = %cond.end464
  %313 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev468 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %313, i32 0, i32 8
  %314 = load %struct._CXXToken*, %struct._CXXToken** %pPrev468, align 8
  %eType469 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %314, i32 0, i32 0
  %315 = load i32, i32* %eType469, align 8
  %cmp470 = icmp eq i32 %315, 4
  br i1 %cmp470, label %land.lhs.true471, label %if.else512

land.lhs.true471:                                 ; preds = %land.lhs.true467
  %316 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev472 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %316, i32 0, i32 8
  %317 = load %struct._CXXToken*, %struct._CXXToken** %pPrev472, align 8
  %eKeyword473 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %317, i32 0, i32 2
  %318 = load i32, i32* %eKeyword473, align 8
  %cmp474 = icmp eq i32 %318, 21
  br i1 %cmp474, label %land.lhs.true475, label %if.else512

land.lhs.true475:                                 ; preds = %land.lhs.true471
  %319 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesisOrConst, align 8
  %pNext476 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %319, i32 0, i32 7
  %320 = load %struct._CXXToken*, %struct._CXXToken** %pNext476, align 8
  %tobool477 = icmp ne %struct._CXXToken* %320, null
  br i1 %tobool477, label %land.lhs.true478, label %if.else512

land.lhs.true478:                                 ; preds = %land.lhs.true475
  %321 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesisOrConst, align 8
  %pNext479 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %321, i32 0, i32 7
  %322 = load %struct._CXXToken*, %struct._CXXToken** %pNext479, align 8
  %eType480 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %322, i32 0, i32 0
  %323 = load i32, i32* %eType480, align 8
  %cmp481 = icmp eq i32 %323, 4096
  br i1 %cmp481, label %land.lhs.true482, label %if.else512

land.lhs.true482:                                 ; preds = %land.lhs.true478
  %324 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesisOrConst, align 8
  %pNext483 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %324, i32 0, i32 7
  %325 = load %struct._CXXToken*, %struct._CXXToken** %pNext483, align 8
  %pNext484 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %325, i32 0, i32 7
  %326 = load %struct._CXXToken*, %struct._CXXToken** %pNext484, align 8
  %tobool485 = icmp ne %struct._CXXToken* %326, null
  br i1 %tobool485, label %land.lhs.true486, label %if.else512

land.lhs.true486:                                 ; preds = %land.lhs.true482
  %327 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesisOrConst, align 8
  %pNext487 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %327, i32 0, i32 7
  %328 = load %struct._CXXToken*, %struct._CXXToken** %pNext487, align 8
  %pNext488 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %328, i32 0, i32 7
  %329 = load %struct._CXXToken*, %struct._CXXToken** %pNext488, align 8
  %eType489 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %329, i32 0, i32 0
  %330 = load i32, i32* %eType489, align 8
  %and490 = and i32 %330, 524352
  %tobool491 = icmp ne i32 %and490, 0
  br i1 %tobool491, label %if.else512, label %if.then492

if.then492:                                       ; preds = %land.lhs.true486
  %331 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesisOrConst, align 8
  %pNext493 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %331, i32 0, i32 7
  %332 = load %struct._CXXToken*, %struct._CXXToken** %pNext493, align 8
  %pNext494 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %332, i32 0, i32 7
  %333 = load %struct._CXXToken*, %struct._CXXToken** %pNext494, align 8
  %334 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart495 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %334, i32 0, i32 7
  store %struct._CXXToken* %333, %struct._CXXToken** %pTypeStart495, align 8
  %335 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart496 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %335, i32 0, i32 7
  %336 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart496, align 8
  %337 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd497 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %337, i32 0, i32 8
  store %struct._CXXToken* %336, %struct._CXXToken** %pTypeEnd497, align 8
  br label %while.cond498

while.cond498:                                    ; preds = %while.body507, %if.then492
  %338 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd499 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %338, i32 0, i32 8
  %339 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd499, align 8
  %pNext500 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %339, i32 0, i32 7
  %340 = load %struct._CXXToken*, %struct._CXXToken** %pNext500, align 8
  %tobool501 = icmp ne %struct._CXXToken* %340, null
  br i1 %tobool501, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond498
  %341 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd502 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %341, i32 0, i32 8
  %342 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd502, align 8
  %pNext503 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %342, i32 0, i32 7
  %343 = load %struct._CXXToken*, %struct._CXXToken** %pNext503, align 8
  %eType504 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %343, i32 0, i32 0
  %344 = load i32, i32* %eType504, align 8
  %and505 = and i32 %344, 524352
  %tobool506 = icmp ne i32 %and505, 0
  %lnot = xor i1 %tobool506, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond498
  %345 = phi i1 [ false, %while.cond498 ], [ %lnot, %land.rhs ]
  br i1 %345, label %while.body507, label %while.end511

while.body507:                                    ; preds = %land.end
  %346 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd508 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %346, i32 0, i32 8
  %347 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd508, align 8
  %pNext509 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %347, i32 0, i32 7
  %348 = load %struct._CXXToken*, %struct._CXXToken** %pNext509, align 8
  %349 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd510 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %349, i32 0, i32 8
  store %struct._CXXToken* %348, %struct._CXXToken** %pTypeEnd510, align 8
  br label %while.cond498

while.end511:                                     ; preds = %land.end
  br label %if.end567

if.else512:                                       ; preds = %land.lhs.true486, %land.lhs.true482, %land.lhs.true478, %land.lhs.true475, %land.lhs.true471, %land.lhs.true467, %cond.end464
  %350 = load %struct._CXXToken*, %struct._CXXToken** %pToken, align 8
  %pPrev513 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %350, i32 0, i32 8
  %351 = load %struct._CXXToken*, %struct._CXXToken** %pPrev513, align 8
  %352 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd514 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %352, i32 0, i32 8
  store %struct._CXXToken* %351, %struct._CXXToken** %pTypeEnd514, align 8
  %353 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool515 = icmp ne %struct._CXXTokenChain* %353, null
  br i1 %tobool515, label %cond.true516, label %cond.false518

cond.true516:                                     ; preds = %if.else512
  %354 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead517 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %354, i32 0, i32 0
  %355 = load %struct._CXXToken*, %struct._CXXToken** %pHead517, align 8
  br label %cond.end519

cond.false518:                                    ; preds = %if.else512
  br label %cond.end519

cond.end519:                                      ; preds = %cond.false518, %cond.true516
  %cond520 = phi %struct._CXXToken* [ %355, %cond.true516 ], [ null, %cond.false518 ]
  %356 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart521 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %356, i32 0, i32 7
  store %struct._CXXToken* %cond520, %struct._CXXToken** %pTypeStart521, align 8
  %357 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd522 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %357, i32 0, i32 8
  %358 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd522, align 8
  %eType523 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %358, i32 0, i32 0
  %359 = load i32, i32* %eType523, align 8
  %cmp524 = icmp eq i32 %359, 268435456
  br i1 %cmp524, label %land.lhs.true525, label %if.end566

land.lhs.true525:                                 ; preds = %cond.end519
  %360 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd526 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %360, i32 0, i32 8
  %361 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd526, align 8
  %pChain527 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %361, i32 0, i32 3
  %362 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain527, align 8
  %iCount528 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %362, i32 0, i32 2
  %363 = load i32, i32* %iCount528, align 8
  %cmp529 = icmp sge i32 %363, 3
  br i1 %cmp529, label %land.lhs.true530, label %if.end566

land.lhs.true530:                                 ; preds = %land.lhs.true525
  %364 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd531 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %364, i32 0, i32 8
  %365 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd531, align 8
  %pPrev532 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %365, i32 0, i32 8
  %366 = load %struct._CXXToken*, %struct._CXXToken** %pPrev532, align 8
  %367 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart533 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %367, i32 0, i32 7
  %368 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart533, align 8
  %cmp534 = icmp eq %struct._CXXToken* %366, %368
  br i1 %cmp534, label %land.lhs.true535, label %if.end566

land.lhs.true535:                                 ; preds = %land.lhs.true530
  %369 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart536 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %369, i32 0, i32 7
  %370 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart536, align 8
  %eType537 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %370, i32 0, i32 0
  %371 = load i32, i32* %eType537, align 8
  %cmp538 = icmp eq i32 %371, 2
  br i1 %cmp538, label %if.then539, label %if.end566

if.then539:                                       ; preds = %land.lhs.true535
  br label %do.body540

do.body540:                                       ; preds = %if.then539
  br label %do.end541

do.end541:                                        ; preds = %do.body540
  %372 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd542 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %372, i32 0, i32 8
  %373 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd542, align 8
  %pChain543 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %373, i32 0, i32 3
  %374 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain543, align 8
  %tobool544 = icmp ne %struct._CXXTokenChain* %374, null
  br i1 %tobool544, label %cond.true545, label %cond.false549

cond.true545:                                     ; preds = %do.end541
  %375 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd546 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %375, i32 0, i32 8
  %376 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd546, align 8
  %pChain547 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %376, i32 0, i32 3
  %377 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain547, align 8
  %pHead548 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %377, i32 0, i32 0
  %378 = load %struct._CXXToken*, %struct._CXXToken** %pHead548, align 8
  br label %cond.end550

cond.false549:                                    ; preds = %do.end541
  br label %cond.end550

cond.end550:                                      ; preds = %cond.false549, %cond.true545
  %cond551 = phi %struct._CXXToken* [ %378, %cond.true545 ], [ null, %cond.false549 ]
  %pNext552 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond551, i32 0, i32 7
  %379 = load %struct._CXXToken*, %struct._CXXToken** %pNext552, align 8
  %380 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart553 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %380, i32 0, i32 7
  store %struct._CXXToken* %379, %struct._CXXToken** %pTypeStart553, align 8
  %381 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd554 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %381, i32 0, i32 8
  %382 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd554, align 8
  %pChain555 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %382, i32 0, i32 3
  %383 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain555, align 8
  %tobool556 = icmp ne %struct._CXXTokenChain* %383, null
  br i1 %tobool556, label %cond.true557, label %cond.false561

cond.true557:                                     ; preds = %cond.end550
  %384 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd558 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %384, i32 0, i32 8
  %385 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd558, align 8
  %pChain559 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %385, i32 0, i32 3
  %386 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain559, align 8
  %pTail560 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %386, i32 0, i32 1
  %387 = load %struct._CXXToken*, %struct._CXXToken** %pTail560, align 8
  br label %cond.end562

cond.false561:                                    ; preds = %cond.end550
  br label %cond.end562

cond.end562:                                      ; preds = %cond.false561, %cond.true557
  %cond563 = phi %struct._CXXToken* [ %387, %cond.true557 ], [ null, %cond.false561 ]
  %pPrev564 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond563, i32 0, i32 8
  %388 = load %struct._CXXToken*, %struct._CXXToken** %pPrev564, align 8
  %389 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd565 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %389, i32 0, i32 8
  store %struct._CXXToken* %388, %struct._CXXToken** %pTypeEnd565, align 8
  br label %if.end566

if.end566:                                        ; preds = %cond.end562, %land.lhs.true535, %land.lhs.true530, %land.lhs.true525, %cond.end519
  br label %if.end567

if.end567:                                        ; preds = %if.end566, %while.end511
  br label %if.end571

if.else568:                                       ; preds = %cond.end453
  %390 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd569 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %390, i32 0, i32 8
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeEnd569, align 8
  %391 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart570 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %391, i32 0, i32 7
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeStart570, align 8
  br label %if.end571

if.end571:                                        ; preds = %if.else568, %if.end567
  %392 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %bTypeContainsIdentifierScopeAndSignature572 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %392, i32 0, i32 9
  store i8 0, i8* %bTypeContainsIdentifierScopeAndSignature572, align 8
  br label %if.end573

if.end573:                                        ; preds = %if.end571, %cond.end444
  br label %do.body574

do.body574:                                       ; preds = %if.end573
  br label %do.end575

do.end575:                                        ; preds = %do.body574
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end575, %do.end239, %do.end200, %do.end109, %do.end101, %do.end93, %do.end44, %do.end36, %do.end2
  %393 = load i1, i1* %retval, align 1
  ret i1 %393
}

declare %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserLookForFunctionSignatureCheckParenthesisAndIdentifier(%struct._CXXToken* %pParenthesis, %struct._CXXTokenChain* %pIdentifierChain, %struct._CXXToken* %pIdentifierStart, %struct._CXXToken* %pIdentifierEnd, %struct._CXXFunctionSignatureInfo* %pInfo, %struct._CXXFunctionParameterInfo* %pParamInfo) #0 {
entry:
  %retval = alloca i1, align 1
  %pParenthesis.addr = alloca %struct._CXXToken*, align 8
  %pIdentifierChain.addr = alloca %struct._CXXTokenChain*, align 8
  %pIdentifierStart.addr = alloca %struct._CXXToken*, align 8
  %pIdentifierEnd.addr = alloca %struct._CXXToken*, align 8
  %pInfo.addr = alloca %struct._CXXFunctionSignatureInfo*, align 8
  %pParamInfo.addr = alloca %struct._CXXFunctionParameterInfo*, align 8
  %pInner = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %pParenthesis, %struct._CXXToken** %pParenthesis.addr, align 8
  store %struct._CXXTokenChain* %pIdentifierChain, %struct._CXXTokenChain** %pIdentifierChain.addr, align 8
  store %struct._CXXToken* %pIdentifierStart, %struct._CXXToken** %pIdentifierStart.addr, align 8
  store %struct._CXXToken* %pIdentifierEnd, %struct._CXXToken** %pIdentifierEnd.addr, align 8
  store %struct._CXXFunctionSignatureInfo* %pInfo, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  store %struct._CXXFunctionParameterInfo* %pParamInfo, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
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
  %0 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 3
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %call = call %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %1, i32 1)
  store %struct._CXXToken* %call, %struct._CXXToken** %pInner, align 8
  %2 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pChain5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 3
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain5, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 2
  %4 = load i32, i32* %iCount, align 8
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end4
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 0
  %6 = load i32, i32* %eType, align 8
  %cmp6 = icmp eq i32 %6, 268435456
  br i1 %cmp6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd.addr, align 8
  %eType8 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType8, align 8
  %cmp9 = icmp eq i32 %8, 2
  br i1 %cmp9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd.addr, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 8
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %tobool = icmp ne %struct._CXXToken* %10, null
  br i1 %tobool, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true10
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd.addr, align 8
  %pPrev12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 8
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pPrev12, align 8
  %eType13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  %13 = load i32, i32* %eType13, align 8
  %cmp14 = icmp eq i32 %13, 2
  br i1 %cmp14, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %pChain16 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 3
  %15 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain16, align 8
  %16 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %call17 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %15, %struct._CXXFunctionParameterInfo* %16)
  br i1 %call17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true15
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pChain18 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 3
  %18 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain18, align 8
  %19 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesisContainerChain = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %19, i32 0, i32 1
  store %struct._CXXTokenChain* %18, %struct._CXXTokenChain** %pParenthesisContainerChain, align 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd.addr, align 8
  %pPrev19 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 8
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pPrev19, align 8
  %22 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd20 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %22, i32 0, i32 3
  store %struct._CXXToken* %21, %struct._CXXToken** %pIdentifierEnd20, align 8
  %23 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd21 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %23, i32 0, i32 3
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd21, align 8
  %25 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart22 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %25, i32 0, i32 2
  store %struct._CXXToken* %24, %struct._CXXToken** %pIdentifierStart22, align 8
  %26 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain.addr, align 8
  %27 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierChain23 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %27, i32 0, i32 4
  store %struct._CXXTokenChain* %26, %struct._CXXTokenChain** %pIdentifierChain23, align 8
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pInner, align 8
  %29 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis24 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %29, i32 0, i32 0
  store %struct._CXXToken* %28, %struct._CXXToken** %pParenthesis24, align 8
  br label %do.body25

do.body25:                                        ; preds = %if.then
  br label %do.end26

do.end26:                                         ; preds = %do.body25
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true15, %land.lhs.true11, %land.lhs.true10, %land.lhs.true7, %land.lhs.true, %do.end4
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %pChain27 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 3
  %31 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain27, align 8
  %32 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pParamInfo.addr, align 8
  %call28 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %31, %struct._CXXFunctionParameterInfo* %32)
  br i1 %call28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end
  %33 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain.addr, align 8
  %34 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesisContainerChain30 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %34, i32 0, i32 1
  store %struct._CXXTokenChain* %33, %struct._CXXTokenChain** %pParenthesisContainerChain30, align 8
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart.addr, align 8
  %36 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart31 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %36, i32 0, i32 2
  store %struct._CXXToken* %35, %struct._CXXToken** %pIdentifierStart31, align 8
  %37 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd.addr, align 8
  %38 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd32 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %38, i32 0, i32 3
  store %struct._CXXToken* %37, %struct._CXXToken** %pIdentifierEnd32, align 8
  %39 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain.addr, align 8
  %40 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierChain33 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %40, i32 0, i32 4
  store %struct._CXXTokenChain* %39, %struct._CXXTokenChain** %pIdentifierChain33, align 8
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis.addr, align 8
  %42 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis34 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %42, i32 0, i32 0
  store %struct._CXXToken* %41, %struct._CXXToken** %pParenthesis34, align 8
  br label %do.body35

do.body35:                                        ; preds = %if.then29
  br label %do.end36

do.end36:                                         ; preds = %do.body35
  store i1 true, i1* %retval, align 1
  br label %return

if.end37:                                         ; preds = %if.end
  br label %do.body38

do.body38:                                        ; preds = %if.end37
  br label %do.end39

do.end39:                                         ; preds = %do.body38
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end39, %do.end36, %do.end26
  %43 = load i1, i1* %retval, align 1
  ret i1 %43
}

declare %struct._CXXToken* @cxxTokenChainFirstPossiblyNestedTokenOfType(%struct._CXXTokenChain*, i32, %struct._CXXTokenChain**) #1

declare %struct._CXXToken* @cxxTokenChainSkipBackToStartOfTemplateAngleBracket(%struct._CXXToken*) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxParserEmitFunctionTags(%struct._CXXFunctionSignatureInfo* %pInfo, i32 %uTagKind, i32 %uOptions, i32* %piCorkQueueIndex) #0 {
entry:
  %pInfo.addr = alloca %struct._CXXFunctionSignatureInfo*, align 8
  %uTagKind.addr = alloca i32, align 4
  %uOptions.addr = alloca i32, align 4
  %piCorkQueueIndex.addr = alloca i32*, align 8
  %iScopesPushed = alloca i32, align 4
  %eOuterScopeType = alloca i32, align 4
  %bPushScopes = alloca i8, align 1
  %pScopeId = alloca %struct._CXXToken*, align 8
  %pIdentifier = alloca %struct._CXXToken*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %pSavedScope = alloca %struct._CXXToken*, align 8
  %pszSignature = alloca %struct.sVString*, align 8
  %pTypeName = alloca %struct._CXXToken*, align 8
  %pTokenBeforeParenthesis = alloca %struct._CXXToken*, align 8
  %bIsEmptyTemplate = alloca i8, align 1
  %pszProperties = alloca %struct.sVString*, align 8
  %uProperties = alloca i32, align 4
  %iCorkQueueIndex = alloca i32, align 4
  store %struct._CXXFunctionSignatureInfo* %pInfo, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  store i32 %uTagKind, i32* %uTagKind.addr, align 4
  store i32 %uOptions, i32* %uOptions.addr, align 4
  store i32* %piCorkQueueIndex, i32** %piCorkQueueIndex.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %iScopesPushed, align 4
  %0 = load i32*, i32** %piCorkQueueIndex.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %1 = load i32*, i32** %piCorkQueueIndex.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %call = call i32 @cxxScopeGetType()
  store i32 %call, i32* %eOuterScopeType, align 4
  %2 = load i32, i32* %uOptions.addr, align 4
  %and = and i32 %2, 1
  %tobool1 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool1 to i8
  store i8 %frombool, i8* %bPushScopes, align 1
  br label %do.body2

do.body2:                                         ; preds = %if.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  %3 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %3, i32 0, i32 7
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  %tobool4 = icmp ne %struct._CXXToken* %4, null
  br i1 %tobool4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %do.end3
  %5 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart5 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %5, i32 0, i32 7
  %6 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart5, align 8
  %7 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %7, i32 0, i32 6
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart, align 8
  %cmp = icmp eq %struct._CXXToken* %6, %8
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart6 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %9, i32 0, i32 7
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart6, align 8
  %11 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %11, i32 0, i32 2
  %12 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart, align 8
  %cmp7 = icmp eq %struct._CXXToken* %10, %12
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %13, i32 0, i32 3
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 7
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %16 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart9 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %16, i32 0, i32 7
  store %struct._CXXToken* %15, %struct._CXXToken** %pTypeStart9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false, %do.end3
  br label %do.body11

do.body11:                                        ; preds = %if.end10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  %17 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart13 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %17, i32 0, i32 6
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart13, align 8
  %tobool14 = icmp ne %struct._CXXToken* %18, null
  br i1 %tobool14, label %if.then15, label %if.end42

if.then15:                                        ; preds = %do.end12
  %19 = load i8, i8* %bPushScopes, align 1
  %tobool16 = trunc i8 %19 to i1
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  br label %while.cond

while.cond:                                       ; preds = %do.end36, %do.end19
  %20 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart20 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %20, i32 0, i32 6
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart20, align 8
  %22 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart21 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %22, i32 0, i32 2
  %23 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart21, align 8
  %cmp22 = icmp ne %struct._CXXToken* %21, %23
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart23 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %24, i32 0, i32 6
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart23, align 8
  store %struct._CXXToken* %25, %struct._CXXToken** %pScopeId, align 8
  %26 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart24 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %26, i32 0, i32 6
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart24, align 8
  %call25 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %27, i32 32)
  %28 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart26 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %28, i32 0, i32 6
  store %struct._CXXToken* %call25, %struct._CXXToken** %pScopeStart26, align 8
  br label %do.body27

do.body27:                                        ; preds = %while.body
  br label %do.end28

do.end28:                                         ; preds = %do.body27
  %29 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart29 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %29, i32 0, i32 6
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart29, align 8
  %pNext30 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 7
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pNext30, align 8
  %32 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart31 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %32, i32 0, i32 6
  store %struct._CXXToken* %31, %struct._CXXToken** %pScopeStart31, align 8
  %33 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierChain = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %33, i32 0, i32 4
  %34 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain, align 8
  %35 = load %struct._CXXToken*, %struct._CXXToken** %pScopeId, align 8
  %pNext32 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 7
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pNext32, align 8
  %37 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart33 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %37, i32 0, i32 6
  %38 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart33, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 8
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  call void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %34, %struct._CXXToken* %36, %struct._CXXToken* %39)
  %40 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierChain34 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %40, i32 0, i32 4
  %41 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain34, align 8
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pScopeId, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %41, %struct._CXXToken* %42)
  br label %do.body35

do.body35:                                        ; preds = %do.end28
  br label %do.end36

do.end36:                                         ; preds = %do.body35
  %43 = load %struct._CXXToken*, %struct._CXXToken** %pScopeId, align 8
  call void @cxxScopePush(%struct._CXXToken* %43, i32 2, i32 0)
  %44 = load i32, i32* %iScopesPushed, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %iScopesPushed, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end41

if.else:                                          ; preds = %if.then15
  %45 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierChain37 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %45, i32 0, i32 4
  %46 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain37, align 8
  %47 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pScopeStart38 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %47, i32 0, i32 6
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart38, align 8
  %49 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart39 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %49, i32 0, i32 2
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart39, align 8
  %pPrev40 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 8
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pPrev40, align 8
  call void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %46, %struct._CXXToken* %48, %struct._CXXToken* %51)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %while.end
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %do.end12
  %52 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart43 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %52, i32 0, i32 2
  %53 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart43, align 8
  %54 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd44 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %54, i32 0, i32 3
  %55 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd44, align 8
  %call45 = call %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken* %53, %struct._CXXToken* %55, i32 0)
  store %struct._CXXToken* %call45, %struct._CXXToken** %pIdentifier, align 8
  %56 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierChain46 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %56, i32 0, i32 4
  %57 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pIdentifierChain46, align 8
  %58 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierStart47 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %58, i32 0, i32 2
  %59 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierStart47, align 8
  %60 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pIdentifierEnd48 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %60, i32 0, i32 3
  %61 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifierEnd48, align 8
  call void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %57, %struct._CXXToken* %59, %struct._CXXToken* %61)
  br label %do.body49

do.body49:                                        ; preds = %if.end42
  br label %do.end50

do.end50:                                         ; preds = %do.body49
  %62 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %62, i32 0, i32 0
  store i32 2, i32* %eType, align 8
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  br label %do.end52

do.end52:                                         ; preds = %do.body51
  %63 = load i32, i32* %uTagKind.addr, align 4
  %cmp53 = icmp eq i32 %63, 2
  br i1 %cmp53, label %land.lhs.true54, label %if.else62

land.lhs.true54:                                  ; preds = %do.end52
  %64 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and55 = and i32 %64, 4096
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %land.lhs.true57, label %if.else62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %call58 = call zeroext i1 @cxxScopeIsGlobal()
  br i1 %call58, label %if.else62, label %if.then59

if.then59:                                        ; preds = %land.lhs.true57
  %call60 = call %struct._CXXToken* @cxxScopeTakeTop()
  store %struct._CXXToken* %call60, %struct._CXXToken** %pSavedScope, align 8
  %65 = load i32, i32* %uTagKind.addr, align 4
  %66 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %call61 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 %65, %struct._CXXToken* %66)
  store %struct.sTagEntryInfo* %call61, %struct.sTagEntryInfo** %tag, align 8
  %67 = load %struct._CXXToken*, %struct._CXXToken** %pSavedScope, align 8
  call void @cxxScopePushTop(%struct._CXXToken* %67)
  br label %if.end64

if.else62:                                        ; preds = %land.lhs.true57, %land.lhs.true54, %do.end52
  %68 = load i32, i32* %uTagKind.addr, align 4
  %69 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %call63 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 %68, %struct._CXXToken* %69)
  store %struct.sTagEntryInfo* %call63, %struct.sTagEntryInfo** %tag, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then59
  %70 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool65 = icmp ne %struct.sTagEntryInfo* %70, null
  br i1 %tobool65, label %if.then66, label %if.end273

if.then66:                                        ; preds = %if.end64
  %71 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %71, i32 0, i32 0
  %72 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %72, i32 0, i32 3
  %73 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %73, i32 0, i32 1
  %74 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  %tobool67 = icmp ne %struct._CXXToken* %74, null
  br i1 %tobool67, label %if.then68, label %if.end74

if.then68:                                        ; preds = %if.then66
  %75 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis69 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %75, i32 0, i32 0
  %76 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis69, align 8
  %pChain70 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %76, i32 0, i32 3
  %77 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain70, align 8
  call void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain* %77)
  %78 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis71 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %78, i32 0, i32 0
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis71, align 8
  %pChain72 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %79, i32 0, i32 3
  %80 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain72, align 8
  %pTail73 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %80, i32 0, i32 1
  %81 = load %struct._CXXToken*, %struct._CXXToken** %pTail73, align 8
  %bFollowedBySpace = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %81, i32 0, i32 4
  store i8 0, i8* %bFollowedBySpace, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %if.then66
  %82 = load i32, i32* %uTagKind.addr, align 4
  %cmp75 = icmp eq i32 %82, 7
  br i1 %cmp75, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.end74
  %call77 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call77, true
  %lnot.ext = zext i1 %lnot to i32
  %83 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %84 = bitcast %struct.sTagEntryInfo* %83 to i8*
  %85 = trunc i32 %lnot.ext to i8
  %bf.load = load i8, i8* %84, align 8
  %bf.value = and i8 %85, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %84, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end103

if.else78:                                        ; preds = %if.end74
  %86 = load i32, i32* %eOuterScopeType, align 4
  %cmp79 = icmp eq i32 %86, 1
  br i1 %cmp79, label %if.then80, label %if.else92

if.then80:                                        ; preds = %if.else78
  %87 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and81 = and i32 %87, 8
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then80
  %call83 = call zeroext i1 @isInputHeaderFile()
  %lnot84 = xor i1 %call83, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then80
  %88 = phi i1 [ false, %if.then80 ], [ %lnot84, %land.rhs ]
  %land.ext = zext i1 %88 to i32
  %89 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %90 = bitcast %struct.sTagEntryInfo* %89 to i8*
  %91 = trunc i32 %land.ext to i8
  %bf.load86 = load i8, i8* %90, align 8
  %bf.value87 = and i8 %91, 1
  %bf.shl88 = shl i8 %bf.value87, 1
  %bf.clear89 = and i8 %bf.load86, -3
  %bf.set90 = or i8 %bf.clear89, %bf.shl88
  store i8 %bf.set90, i8* %90, align 8
  %bf.result.cast91 = zext i8 %bf.value87 to i32
  br label %if.end102

if.else92:                                        ; preds = %if.else78
  %call93 = call zeroext i1 @isInputHeaderFile()
  %lnot94 = xor i1 %call93, true
  %lnot.ext95 = zext i1 %lnot94 to i32
  %92 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %93 = bitcast %struct.sTagEntryInfo* %92 to i8*
  %94 = trunc i32 %lnot.ext95 to i8
  %bf.load96 = load i8, i8* %93, align 8
  %bf.value97 = and i8 %94, 1
  %bf.shl98 = shl i8 %bf.value97, 1
  %bf.clear99 = and i8 %bf.load96, -3
  %bf.set100 = or i8 %bf.clear99, %bf.shl98
  store i8 %bf.set100, i8* %93, align 8
  %bf.result.cast101 = zext i8 %bf.value97 to i32
  br label %if.end102

if.end102:                                        ; preds = %if.else92, %land.end
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then76
  %95 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis104 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %95, i32 0, i32 0
  %96 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis104, align 8
  %pChain105 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %96, i32 0, i32 3
  %97 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain105, align 8
  %call106 = call %struct.sVString* @cxxTokenChainJoin(%struct._CXXTokenChain* %97, i8* null, i32 0)
  store %struct.sVString* %call106, %struct.sVString** %pszSignature, align 8
  %98 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %98, i32 0, i32 5
  %99 = load %struct._CXXToken*, %struct._CXXToken** %pSignatureConst, align 8
  %tobool107 = icmp ne %struct._CXXToken* %99, null
  br i1 %tobool107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end103
  %100 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  call void @vStringPut(%struct.sVString* %100, i32 32)
  %101 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %102 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst109 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %102, i32 0, i32 5
  %103 = load %struct._CXXToken*, %struct._CXXToken** %pSignatureConst109, align 8
  call void @cxxTokenAppendToString(%struct.sVString* %101, %struct._CXXToken* %103)
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end103
  %104 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart111 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %104, i32 0, i32 7
  %105 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart111, align 8
  %tobool112 = icmp ne %struct._CXXToken* %105, null
  br i1 %tobool112, label %if.then113, label %if.else154

if.then113:                                       ; preds = %if.end110
  %106 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %bTypeContainsIdentifierScopeAndSignature = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %106, i32 0, i32 9
  %107 = load i8, i8* %bTypeContainsIdentifierScopeAndSignature, align 8
  %tobool114 = trunc i8 %107 to i1
  br i1 %tobool114, label %if.then115, label %if.else149

if.then115:                                       ; preds = %if.then113
  br label %do.body116

do.body116:                                       ; preds = %if.then115
  br label %do.end117

do.end117:                                        ; preds = %do.body116
  %108 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart118 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %108, i32 0, i32 7
  %109 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart118, align 8
  %110 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis119 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %110, i32 0, i32 0
  %111 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis119, align 8
  %cmp120 = icmp eq %struct._CXXToken* %109, %111
  br i1 %cmp120, label %if.then121, label %if.end125

if.then121:                                       ; preds = %do.end117
  %112 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis122 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %112, i32 0, i32 0
  %113 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis122, align 8
  %pNext123 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %113, i32 0, i32 7
  %114 = load %struct._CXXToken*, %struct._CXXToken** %pNext123, align 8
  %115 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart124 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %115, i32 0, i32 7
  store %struct._CXXToken* %114, %struct._CXXToken** %pTypeStart124, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %do.end117
  %116 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %116, i32 0, i32 8
  %117 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %118 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis126 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %118, i32 0, i32 0
  %119 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis126, align 8
  %cmp127 = icmp eq %struct._CXXToken* %117, %119
  br i1 %cmp127, label %if.then128, label %if.end132

if.then128:                                       ; preds = %if.end125
  %120 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis129 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %120, i32 0, i32 0
  %121 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis129, align 8
  %pPrev130 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %121, i32 0, i32 8
  %122 = load %struct._CXXToken*, %struct._CXXToken** %pPrev130, align 8
  %123 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd131 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %123, i32 0, i32 8
  store %struct._CXXToken* %122, %struct._CXXToken** %pTypeEnd131, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.end125
  %124 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart133 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %124, i32 0, i32 7
  %125 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart133, align 8
  %tobool134 = icmp ne %struct._CXXToken* %125, null
  br i1 %tobool134, label %land.lhs.true135, label %if.else147

land.lhs.true135:                                 ; preds = %if.end132
  %126 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd136 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %126, i32 0, i32 8
  %127 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd136, align 8
  %tobool137 = icmp ne %struct._CXXToken* %127, null
  br i1 %tobool137, label %if.then138, label %if.else147

if.then138:                                       ; preds = %land.lhs.true135
  %128 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis139 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %128, i32 0, i32 0
  %129 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis139, align 8
  %pPrev140 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %129, i32 0, i32 8
  %130 = load %struct._CXXToken*, %struct._CXXToken** %pPrev140, align 8
  store %struct._CXXToken* %130, %struct._CXXToken** %pTokenBeforeParenthesis, align 8
  %131 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesisContainerChain = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %131, i32 0, i32 1
  %132 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParenthesisContainerChain, align 8
  %133 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis141 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %133, i32 0, i32 0
  %134 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis141, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %132, %struct._CXXToken* %134)
  %135 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart142 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %135, i32 0, i32 7
  %136 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart142, align 8
  %137 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd143 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %137, i32 0, i32 8
  %138 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd143, align 8
  %call144 = call %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %136, %struct._CXXToken* %138)
  store %struct._CXXToken* %call144, %struct._CXXToken** %pTypeName, align 8
  %139 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesisContainerChain145 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %139, i32 0, i32 1
  %140 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pParenthesisContainerChain145, align 8
  %141 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBeforeParenthesis, align 8
  %142 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pParenthesis146 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %142, i32 0, i32 0
  %143 = load %struct._CXXToken*, %struct._CXXToken** %pParenthesis146, align 8
  call void @cxxTokenChainInsertAfter(%struct._CXXTokenChain* %140, %struct._CXXToken* %141, %struct._CXXToken* %143)
  br label %if.end148

if.else147:                                       ; preds = %land.lhs.true135, %if.end132
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeName, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.then138
  br label %if.end153

if.else149:                                       ; preds = %if.then113
  %144 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeStart150 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %144, i32 0, i32 7
  %145 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart150, align 8
  %146 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pTypeEnd151 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %146, i32 0, i32 8
  %147 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd151, align 8
  %call152 = call %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %145, %struct._CXXToken* %147)
  store %struct._CXXToken* %call152, %struct._CXXToken** %pTypeName, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.else149, %if.end148
  br label %if.end155

if.else154:                                       ; preds = %if.end110
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeName, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.else154, %if.end153
  %148 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %tobool156 = icmp ne %struct.sVString* %148, null
  br i1 %tobool156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.end155
  %149 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %149, i32 0, i32 2
  %150 = load i8*, i8** %buffer, align 8
  %151 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %151, i32 0, i32 11
  %signature = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 8
  store i8* %150, i8** %signature, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end155
  store i8 0, i8* %bIsEmptyTemplate, align 1
  %152 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool159 = icmp ne %struct._CXXTokenChain* %152, null
  br i1 %tobool159, label %land.lhs.true160, label %if.end172

land.lhs.true160:                                 ; preds = %if.end158
  %153 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %153, i32 0, i32 2
  %154 = load i32, i32* %iCount, align 8
  %cmp161 = icmp sgt i32 %154, 0
  br i1 %cmp161, label %land.lhs.true162, label %if.end172

land.lhs.true162:                                 ; preds = %land.lhs.true160
  %155 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp163 = icmp eq i32 %155, 2
  br i1 %cmp163, label %land.lhs.true164, label %if.end172

land.lhs.true164:                                 ; preds = %land.lhs.true162
  %call165 = call zeroext i1 @cxxTagFieldEnabled(i32 1)
  br i1 %call165, label %if.then166, label %if.end172

if.then166:                                       ; preds = %land.lhs.true164
  %156 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %iCount167 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %156, i32 0, i32 2
  %157 = load i32, i32* %iCount167, align 8
  %cmp168 = icmp eq i32 %157, 2
  %frombool169 = zext i1 %cmp168 to i8
  store i8 %frombool169, i8* %bIsEmptyTemplate, align 1
  %158 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainNormalizeTypeNameSpacing(%struct._CXXTokenChain* %158)
  %159 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainCondense(%struct._CXXTokenChain* %159, i32 0)
  %160 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool170 = icmp ne %struct._CXXTokenChain* %160, null
  br i1 %tobool170, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then166
  %161 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %161, i32 0, i32 0
  %162 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then166
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %162, %cond.true ], [ null, %cond.false ]
  %pszWord = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond, i32 0, i32 1
  %163 = load %struct.sVString*, %struct.sVString** %pszWord, align 8
  %buffer171 = getelementptr inbounds %struct.sVString, %struct.sVString* %163, i32 0, i32 2
  %164 = load i8*, i8** %buffer171, align 8
  call void @cxxTagSetField(i32 1, i8* %164)
  br label %if.end172

if.end172:                                        ; preds = %cond.end, %land.lhs.true164, %land.lhs.true162, %land.lhs.true160, %if.end158
  store %struct.sVString* null, %struct.sVString** %pszProperties, align 8
  %call173 = call zeroext i1 @cxxTagFieldEnabled(i32 0)
  br i1 %call173, label %if.then174, label %if.end259

if.then174:                                       ; preds = %if.end172
  store i32 0, i32* %uProperties, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and175 = and i32 %165, 64
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.then174
  %166 = load i32, i32* %uProperties, align 4
  %or = or i32 %166, 1
  store i32 %or, i32* %uProperties, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.then174
  %167 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and179 = and i32 %167, 8
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then181, label %if.end183

if.then181:                                       ; preds = %if.end178
  %168 = load i32, i32* %uProperties, align 4
  %or182 = or i32 %168, 2
  store i32 %or182, i32* %uProperties, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then181, %if.end178
  %169 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and184 = and i32 %169, 2
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.end183
  %170 = load i32, i32* %uProperties, align 4
  %or187 = or i32 %170, 4
  store i32 %or187, i32* %uProperties, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.end183
  %171 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and189 = and i32 %171, 16
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then191, label %if.end193

if.then191:                                       ; preds = %if.end188
  %172 = load i32, i32* %uProperties, align 4
  %or192 = or i32 %172, 8
  store i32 %or192, i32* %uProperties, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end188
  %173 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and194 = and i32 %173, 4
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %if.then196, label %if.end198

if.then196:                                       ; preds = %if.end193
  %174 = load i32, i32* %uProperties, align 4
  %or197 = or i32 %174, 16
  store i32 %or197, i32* %uProperties, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %if.end193
  %175 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and199 = and i32 %175, 2048
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.then201, label %if.end203

if.then201:                                       ; preds = %if.end198
  %176 = load i32, i32* %uProperties, align 4
  %or202 = or i32 %176, 32768
  store i32 %or202, i32* %uProperties, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %if.end198
  %177 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %pSignatureConst204 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %177, i32 0, i32 5
  %178 = load %struct._CXXToken*, %struct._CXXToken** %pSignatureConst204, align 8
  %tobool205 = icmp ne %struct._CXXToken* %178, null
  br i1 %tobool205, label %if.then206, label %if.end208

if.then206:                                       ; preds = %if.end203
  %179 = load i32, i32* %uProperties, align 4
  %or207 = or i32 %179, 32
  store i32 %or207, i32* %uProperties, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %if.end203
  %180 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %180, i32 0, i32 11
  %181 = load i32, i32* %uFlags, align 8
  %and209 = and i32 %181, 1
  %tobool210 = icmp ne i32 %and209, 0
  br i1 %tobool210, label %if.then211, label %if.end213

if.then211:                                       ; preds = %if.end208
  %182 = load i32, i32* %uProperties, align 4
  %or212 = or i32 %182, 65
  store i32 %or212, i32* %uProperties, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.then211, %if.end208
  %183 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags214 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %183, i32 0, i32 11
  %184 = load i32, i32* %uFlags214, align 8
  %and215 = and i32 %184, 4
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.then217, label %if.end219

if.then217:                                       ; preds = %if.end213
  %185 = load i32, i32* %uProperties, align 4
  %or218 = or i32 %185, 129
  store i32 %or218, i32* %uProperties, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %if.end213
  %186 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags220 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %186, i32 0, i32 11
  %187 = load i32, i32* %uFlags220, align 8
  %and221 = and i32 %187, 8
  %tobool222 = icmp ne i32 %and221, 0
  br i1 %tobool222, label %if.then223, label %if.end225

if.then223:                                       ; preds = %if.end219
  %188 = load i32, i32* %uProperties, align 4
  %or224 = or i32 %188, 513
  store i32 %or224, i32* %uProperties, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.end219
  %189 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags226 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %189, i32 0, i32 11
  %190 = load i32, i32* %uFlags226, align 8
  %and227 = and i32 %190, 2
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then229, label %if.end231

if.then229:                                       ; preds = %if.end225
  %191 = load i32, i32* %uProperties, align 4
  %or230 = or i32 %191, 256
  store i32 %or230, i32* %uProperties, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %if.end225
  %192 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags232 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %192, i32 0, i32 11
  %193 = load i32, i32* %uFlags232, align 8
  %and233 = and i32 %193, 16
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %if.then235, label %if.end237

if.then235:                                       ; preds = %if.end231
  %194 = load i32, i32* %uProperties, align 4
  %or236 = or i32 %194, 1024
  store i32 %or236, i32* %uProperties, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then235, %if.end231
  %195 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags238 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %195, i32 0, i32 11
  %196 = load i32, i32* %uFlags238, align 8
  %and239 = and i32 %196, 32
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.then241, label %if.end243

if.then241:                                       ; preds = %if.end237
  %197 = load i32, i32* %uProperties, align 4
  %or242 = or i32 %197, 4096
  store i32 %or242, i32* %uProperties, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %if.end237
  %198 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags244 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %198, i32 0, i32 11
  %199 = load i32, i32* %uFlags244, align 8
  %and245 = and i32 %199, 128
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then247, label %if.end249

if.then247:                                       ; preds = %if.end243
  %200 = load i32, i32* %uProperties, align 4
  %or248 = or i32 %200, 24576
  store i32 %or248, i32* %uProperties, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then247, %if.end243
  %201 = load %struct._CXXFunctionSignatureInfo*, %struct._CXXFunctionSignatureInfo** %pInfo.addr, align 8
  %uFlags250 = getelementptr inbounds %struct._CXXFunctionSignatureInfo, %struct._CXXFunctionSignatureInfo* %201, i32 0, i32 11
  %202 = load i32, i32* %uFlags250, align 8
  %and251 = and i32 %202, 64
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.then255, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %if.end249
  %203 = load i8, i8* %bIsEmptyTemplate, align 1
  %tobool254 = trunc i8 %203 to i1
  br i1 %tobool254, label %if.then255, label %if.end257

if.then255:                                       ; preds = %lor.lhs.false253, %if.end249
  %204 = load i32, i32* %uProperties, align 4
  %or256 = or i32 %204, 8192
  store i32 %or256, i32* %uProperties, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then255, %lor.lhs.false253
  %205 = load i32, i32* %uProperties, align 4
  %call258 = call %struct.sVString* @cxxTagSetProperties(i32 %205)
  store %struct.sVString* %call258, %struct.sVString** %pszProperties, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.end257, %if.end172
  %call260 = call i32 @cxxTagCommit()
  store i32 %call260, i32* %iCorkQueueIndex, align 4
  %206 = load i32*, i32** %piCorkQueueIndex.addr, align 8
  %tobool261 = icmp ne i32* %206, null
  br i1 %tobool261, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end259
  %207 = load i32, i32* %iCorkQueueIndex, align 4
  %208 = load i32*, i32** %piCorkQueueIndex.addr, align 8
  store i32 %207, i32* %208, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.end259
  %209 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  %tobool264 = icmp ne %struct.sVString* %209, null
  br i1 %tobool264, label %if.then265, label %if.end266

if.then265:                                       ; preds = %if.end263
  %210 = load %struct.sVString*, %struct.sVString** %pszSignature, align 8
  call void @vStringDelete(%struct.sVString* %210)
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.end263
  %211 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  %tobool267 = icmp ne %struct.sVString* %211, null
  br i1 %tobool267, label %if.then268, label %if.end269

if.then268:                                       ; preds = %if.end266
  %212 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringDelete(%struct.sVString* %212)
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %if.end266
  %213 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  %tobool270 = icmp ne %struct._CXXToken* %213, null
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end269
  %214 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %214)
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %if.end269
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.end64
  %215 = load i8, i8* %bPushScopes, align 1
  %tobool274 = trunc i8 %215 to i1
  br i1 %tobool274, label %if.then275, label %if.else277

if.then275:                                       ; preds = %if.end273
  %216 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxScopePush(%struct._CXXToken* %216, i32 0, i32 0)
  %217 = load i32, i32* %iScopesPushed, align 4
  %inc276 = add nsw i32 %217, 1
  store i32 %inc276, i32* %iScopesPushed, align 4
  br label %if.end278

if.else277:                                       ; preds = %if.end273
  %218 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %218)
  br label %if.end278

if.end278:                                        ; preds = %if.else277, %if.then275
  br label %do.body279

do.body279:                                       ; preds = %if.end278
  br label %do.end280

do.end280:                                        ; preds = %do.body279
  %219 = load i32, i32* %iScopesPushed, align 4
  ret i32 %219
}

declare i32 @cxxScopeGetType() #1

declare void @cxxTokenChainDestroyRange(%struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken*, %struct._CXXToken*, i32) #1

declare zeroext i1 @cxxScopeIsGlobal() #1

declare %struct._CXXToken* @cxxScopeTakeTop() #1

declare void @cxxScopePushTop(%struct._CXXToken*) #1

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

declare void @cxxTokenAppendToString(%struct.sVString*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken*, %struct._CXXToken*) #1

declare void @cxxTokenChainInsertAfter(%struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*) #1

declare zeroext i1 @cxxTagFieldEnabled(i32) #1

declare void @cxxTokenChainCondense(%struct._CXXTokenChain*, i32) #1

declare void @cxxTagSetField(i32, i8*) #1

declare %struct.sVString* @cxxTagSetProperties(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @cxxParserExtractFunctionSignatureBeforeOpeningBracket(i32* %piCorkQueueIndex) #0 {
entry:
  %retval = alloca i32, align 4
  %piCorkQueueIndex.addr = alloca i32*, align 8
  %oInfo = alloca %struct._CXXFunctionSignatureInfo, align 8
  %oParamInfo = alloca %struct._CXXFunctionParameterInfo, align 8
  %iScopesPushed = alloca i32, align 4
  store i32* %piCorkQueueIndex, i32** %piCorkQueueIndex.addr, align 8
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
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %0)
  call void @cxxTokenDestroy(%struct._CXXToken* %call)
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call5 = call zeroext i1 @cxxParserLookForFunctionSignature(%struct._CXXTokenChain* %1, %struct._CXXFunctionSignatureInfo* %oInfo, %struct._CXXFunctionParameterInfo* %oParamInfo)
  br i1 %call5, label %if.end, label %if.then

if.then:                                          ; preds = %do.end4
  br label %do.body6

do.body6:                                         ; preds = %if.then
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %2 = load i32*, i32** %piCorkQueueIndex.addr, align 8
  %call8 = call i32 @cxxParserEmitFunctionTags(%struct._CXXFunctionSignatureInfo* %oInfo, i32 2, i32 1, i32* %2)
  store i32 %call8, i32* %iScopesPushed, align 4
  %call9 = call zeroext i1 @cxxTagKindEnabled(i32 13)
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @cxxParserEmitFunctionParameterTags(%struct._CXXFunctionParameterInfo* %oParamInfo)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  %3 = load i32, i32* %iScopesPushed, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end13, %do.end7
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxParserEmitFunctionParameterTags(%struct._CXXFunctionParameterInfo* %pInfo) #0 {
entry:
  %pInfo.addr = alloca %struct._CXXFunctionParameterInfo*, align 8
  %i = alloca i32, align 4
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %pTypeName = alloca %struct._CXXToken*, align 8
  %pTypeStart = alloca %struct._CXXToken*, align 8
  %pTypeEnd = alloca %struct._CXXToken*, align 8
  store %struct._CXXFunctionParameterInfo* %pInfo, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %uParameterCount = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %1, i32 0, i32 0
  %2 = load i32, i32* %uParameterCount, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aIdentifiers = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %3, i32 0, i32 4
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aIdentifiers, i64 0, i64 %idxprom
  %5 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx, align 8
  %call = call %struct.sTagEntryInfo* @cxxTagBegin(i32 13, %struct._CXXToken* %5)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %tag, align 8
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aDeclarationStarts = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %7, i32 0, i32 2
  %8 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aDeclarationStarts, i64 0, i64 %idxprom1
  %9 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx2, align 8
  %tobool3 = icmp ne %struct._CXXToken* %9, null
  br i1 %tobool3, label %land.lhs.true, label %if.else35

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aDeclarationEnds = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %10, i32 0, i32 3
  %11 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aDeclarationEnds, i64 0, i64 %idxprom4
  %12 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx5, align 8
  %tobool6 = icmp ne %struct._CXXToken* %12, null
  br i1 %tobool6, label %if.then7, label %if.else35

if.then7:                                         ; preds = %land.lhs.true
  %13 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aDeclarationStarts8 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %13, i32 0, i32 2
  %14 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aDeclarationStarts8, i64 0, i64 %idxprom9
  %15 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx10, align 8
  store %struct._CXXToken* %15, %struct._CXXToken** %pTypeStart, align 8
  %16 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aDeclarationEnds11 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %16, i32 0, i32 3
  %17 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aDeclarationEnds11, i64 0, i64 %idxprom12
  %18 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx13, align 8
  store %struct._CXXToken* %18, %struct._CXXToken** %pTypeEnd, align 8
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %cmp14 = icmp ne %struct._CXXToken* %19, %20
  br i1 %cmp14, label %if.then15, label %if.else33

if.then15:                                        ; preds = %if.then7
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  %22 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aIdentifiers16 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %22, i32 0, i32 4
  %23 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aIdentifiers16, i64 0, i64 %idxprom17
  %24 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx18, align 8
  %cmp19 = icmp eq %struct._CXXToken* %21, %24
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then15
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 7
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %26, %struct._CXXToken** %pTypeStart, align 8
  br label %if.end27

if.else:                                          ; preds = %if.then15
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %28 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aIdentifiers21 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %28, i32 0, i32 4
  %29 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aIdentifiers21, i64 0, i64 %idxprom22
  %30 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx23, align 8
  %cmp24 = icmp eq %struct._CXXToken* %27, %30
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %31, i32 0, i32 8
  %32 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  store %struct._CXXToken* %32, %struct._CXXToken** %pTypeEnd, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then20
  %33 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %pChain = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %33, i32 0, i32 1
  %34 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %35 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aIdentifiers28 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %35, i32 0, i32 4
  %36 = load i32, i32* %i, align 4
  %idxprom29 = zext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aIdentifiers28, i64 0, i64 %idxprom29
  %37 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx30, align 8
  %call31 = call zeroext i1 @cxxTokenChainTakeRecursive(%struct._CXXTokenChain* %34, %struct._CXXToken* %37)
  %38 = load %struct._CXXToken*, %struct._CXXToken** %pTypeStart, align 8
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pTypeEnd, align 8
  %call32 = call %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %38, %struct._CXXToken* %39)
  store %struct._CXXToken* %call32, %struct._CXXToken** %pTypeName, align 8
  br label %if.end34

if.else33:                                        ; preds = %if.then7
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeName, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.end27
  br label %if.end36

if.else35:                                        ; preds = %land.lhs.true, %if.end
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeName, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.end34
  %40 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %41 = bitcast %struct.sTagEntryInfo* %40 to i8*
  %bf.load = load i8, i8* %41, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %41, align 8
  %call37 = call i32 @cxxTagCommit()
  %42 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  %tobool38 = icmp ne %struct._CXXToken* %42, null
  br i1 %tobool38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end36
  %43 = load %struct._CXXFunctionParameterInfo*, %struct._CXXFunctionParameterInfo** %pInfo.addr, align 8
  %aIdentifiers40 = getelementptr inbounds %struct._CXXFunctionParameterInfo, %struct._CXXFunctionParameterInfo* %43, i32 0, i32 4
  %44 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds [24 x %struct._CXXToken*], [24 x %struct._CXXToken*]* %aIdentifiers40, i64 0, i64 %idxprom41
  %45 = load %struct._CXXToken*, %struct._CXXToken** %arrayidx42, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %45)
  %46 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %46)
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36
  %47 = load i32, i32* %i, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare zeroext i1 @cxxTokenChainTakeRecursive(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainFirstTokenNotOfType(%struct._CXXTokenChain*, i32) #1

declare %struct._CXXToken* @cxxTokenChainLastPossiblyNestedTokenOfType(%struct._CXXTokenChain*, i32, %struct._CXXTokenChain**) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
