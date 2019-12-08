; ModuleID = 'cxx/cxx_parser_using.c'
source_filename = "cxx/cxx_parser_using.c"
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

@g_cxx = external global %struct._CXXParserState, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseUsingClause() #0 {
entry:
  %retval = alloca i1, align 1
  %pAssignment = alloca %struct._CXXToken*, align 8
  %pFirst = alloca %struct._CXXToken*, align 8
  %t = alloca %struct._CXXToken*, align 8
  %bUsingNamespace = alloca i8, align 1
  %tag = alloca %struct.sTagEntryInfo*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainClear(%struct._CXXTokenChain* %0)
  %call = call zeroext i1 @cxxParserParseUpToOneOf(i32 8388673, i1 zeroext false)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 0
  %2 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %2, 64
  br i1 %cmp, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %do.body4

do.body4:                                         ; preds = %if.then3
  br label %do.end5

do.end5:                                          ; preds = %do.body4
  store i1 true, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call7 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %3)
  call void @cxxTokenDestroy(%struct._CXXToken* %call7)
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %4, i32 0, i32 2
  %5 = load i32, i32* %iCount, align 8
  %cmp8 = icmp slt i32 %5, 1
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  store i1 true, i1* %retval, align 1
  br label %return

if.end12:                                         ; preds = %if.end6
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call13 = call %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain* %6, i32 256)
  store %struct._CXXToken* %call13, %struct._CXXToken** %pAssignment, align 8
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %tobool = icmp ne %struct._CXXToken* %7, null
  br i1 %tobool, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool15 = icmp ne %struct._CXXTokenChain* %8, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %9, i32 0, i32 0
  %10 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %pFirst, align 8
  %11 = load %struct._CXXToken*, %struct._CXXToken** %pFirst, align 8
  %eType16 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 0
  %12 = load i32, i32* %eType16, align 8
  %cmp17 = icmp eq i32 %12, 2
  br i1 %cmp17, label %if.then18, label %if.end30

if.then18:                                        ; preds = %cond.end
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  br label %do.end20

do.end20:                                         ; preds = %do.body19
  %13 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %14 = load %struct._CXXToken*, %struct._CXXToken** %pFirst, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %13, %struct._CXXToken* %14)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end20
  %15 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool21 = icmp ne %struct._CXXTokenChain* %15, null
  br i1 %tobool21, label %cond.true22, label %cond.false24

cond.true22:                                      ; preds = %while.cond
  %16 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead23 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %16, i32 0, i32 0
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pHead23, align 8
  br label %cond.end25

cond.false24:                                     ; preds = %while.cond
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true22
  %cond26 = phi %struct._CXXToken* [ %17, %cond.true22 ], [ null, %cond.false24 ]
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pAssignment, align 8
  %cmp27 = icmp ne %struct._CXXToken* %cond26, %18
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end25
  %19 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call28 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %19)
  call void @cxxTokenDestroy(%struct._CXXToken* %call28)
  br label %while.cond

while.end:                                        ; preds = %cond.end25
  %20 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call29 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %20)
  call void @cxxTokenDestroy(%struct._CXXToken* %call29)
  %21 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %22 = load %struct._CXXToken*, %struct._CXXToken** %pFirst, align 8
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %21, %struct._CXXToken* %22)
  %23 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxParserExtractTypedef(%struct._CXXTokenChain* %23, i1 zeroext false)
  br label %if.end30

if.end30:                                         ; preds = %while.end, %cond.end
  br label %if.end87

if.else:                                          ; preds = %if.end12
  br label %do.body31

do.body31:                                        ; preds = %if.else
  br label %do.end32

do.end32:                                         ; preds = %do.body31
  %24 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool33 = icmp ne %struct._CXXTokenChain* %24, null
  br i1 %tobool33, label %cond.true34, label %cond.false36

cond.true34:                                      ; preds = %do.end32
  %25 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead35 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %25, i32 0, i32 0
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pHead35, align 8
  br label %cond.end37

cond.false36:                                     ; preds = %do.end32
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true34
  %cond38 = phi %struct._CXXToken* [ %26, %cond.true34 ], [ null, %cond.false36 ]
  store %struct._CXXToken* %cond38, %struct._CXXToken** %t, align 8
  store i8 0, i8* %bUsingNamespace, align 1
  %27 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType39 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %27, i32 0, i32 0
  %28 = load i32, i32* %eType39, align 8
  %cmp40 = icmp eq i32 %28, 4
  br i1 %cmp40, label %if.then41, label %if.end52

if.then41:                                        ; preds = %cond.end37
  %29 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 2
  %30 = load i32, i32* %eKeyword, align 8
  %cmp42 = icmp eq i32 %30, 57
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.then41
  store i8 1, i8* %bUsingNamespace, align 1
  %31 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call44 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %31)
  call void @cxxTokenDestroy(%struct._CXXToken* %call44)
  br label %if.end51

if.else45:                                        ; preds = %if.then41
  %32 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword46 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %32, i32 0, i32 2
  %33 = load i32, i32* %eKeyword46, align 8
  %cmp47 = icmp eq i32 %33, 86
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.else45
  %34 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %call49 = call %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain* %34)
  call void @cxxTokenDestroy(%struct._CXXToken* %call49)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.else45
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then43
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %cond.end37
  %35 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %iCount53 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %35, i32 0, i32 2
  %36 = load i32, i32* %iCount53, align 8
  %cmp54 = icmp sgt i32 %36, 0
  br i1 %cmp54, label %if.then55, label %if.end86

if.then55:                                        ; preds = %if.end52
  %37 = load i8, i8* %bUsingNamespace, align 1
  %tobool56 = trunc i8 %37 to i1
  br i1 %tobool56, label %if.then57, label %if.else69

if.then57:                                        ; preds = %if.then55
  %38 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxTokenChainCondense(%struct._CXXTokenChain* %38, i32 0)
  %39 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool58 = icmp ne %struct._CXXTokenChain* %39, null
  br i1 %tobool58, label %cond.true59, label %cond.false61

cond.true59:                                      ; preds = %if.then57
  %40 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pHead60 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %40, i32 0, i32 0
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pHead60, align 8
  br label %cond.end62

cond.false61:                                     ; preds = %if.then57
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %cond.true59
  %cond63 = phi %struct._CXXToken* [ %41, %cond.true59 ], [ null, %cond.false61 ]
  store %struct._CXXToken* %cond63, %struct._CXXToken** %t, align 8
  br label %do.body64

do.body64:                                        ; preds = %cond.end62
  br label %do.end65

do.end65:                                         ; preds = %do.body64
  br label %do.body66

do.body66:                                        ; preds = %do.end65
  br label %do.end67

do.end67:                                         ; preds = %do.body66
  %42 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call68 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 19, %struct._CXXToken* %42)
  store %struct.sTagEntryInfo* %call68, %struct.sTagEntryInfo** %tag, align 8
  br label %if.end78

if.else69:                                        ; preds = %if.then55
  %43 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %tobool70 = icmp ne %struct._CXXTokenChain* %43, null
  br i1 %tobool70, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %if.else69
  %44 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %44, i32 0, i32 1
  %45 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end73

cond.false72:                                     ; preds = %if.else69
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.true71
  %cond74 = phi %struct._CXXToken* [ %45, %cond.true71 ], [ null, %cond.false72 ]
  store %struct._CXXToken* %cond74, %struct._CXXToken** %t, align 8
  br label %do.body75

do.body75:                                        ; preds = %cond.end73
  br label %do.end76

do.end76:                                         ; preds = %do.body75
  %46 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call77 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 18, %struct._CXXToken* %46)
  store %struct.sTagEntryInfo* %call77, %struct.sTagEntryInfo** %tag, align 8
  br label %if.end78

if.end78:                                         ; preds = %do.end76, %do.end67
  %47 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool79 = icmp ne %struct.sTagEntryInfo* %47, null
  br i1 %tobool79, label %if.then80, label %if.end85

if.then80:                                        ; preds = %if.end78
  %call81 = call i32 @cxxScopeGetType()
  %cmp82 = icmp eq i32 %call81, 1
  br i1 %cmp82, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then80
  %call83 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call83, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then80
  %48 = phi i1 [ false, %if.then80 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %48 to i32
  %49 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %50 = bitcast %struct.sTagEntryInfo* %49 to i8*
  %51 = trunc i32 %land.ext to i8
  %bf.load = load i8, i8* %50, align 8
  %bf.value = and i8 %51, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %50, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %call84 = call i32 @cxxTagCommit()
  br label %if.end85

if.end85:                                         ; preds = %land.end, %if.end78
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end52
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end30
  %52 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool88 = trunc i8 %52 to i1
  br i1 %tobool88, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end87
  br label %do.body90

do.body90:                                        ; preds = %if.then89
  br label %do.end91

do.end91:                                         ; preds = %do.body90
  store i8 1, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %if.end87
  br label %do.body93

do.body93:                                        ; preds = %if.end92
  br label %do.end94

do.end94:                                         ; preds = %do.body93
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end94, %do.end11, %do.end5, %do.end2
  %53 = load i1, i1* %retval, align 1
  ret i1 %53
}

declare void @cxxTokenChainClear(%struct._CXXTokenChain*) #1

declare zeroext i1 @cxxParserParseUpToOneOf(i32, i1 zeroext) #1

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

declare %struct._CXXToken* @cxxTokenChainFirstTokenOfType(%struct._CXXTokenChain*, i32) #1

declare void @cxxTokenChainTake(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainTakeFirst(%struct._CXXTokenChain*) #1

declare void @cxxTokenChainAppend(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare void @cxxParserExtractTypedef(%struct._CXXTokenChain*, i1 zeroext) #1

declare void @cxxTokenChainCondense(%struct._CXXTokenChain*, i32) #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare i32 @cxxScopeGetType() #1

declare zeroext i1 @isInputHeaderFile() #1

declare i32 @cxxTagCommit() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
