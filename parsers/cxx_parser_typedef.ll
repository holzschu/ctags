; ModuleID = 'cxx/cxx_parser_typedef.c'
source_filename = "cxx/cxx_parser_typedef.c"
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
define zeroext i1 @cxxParserParseGenericTypedef() #0 {
entry:
  %retval = alloca i1, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %do.end
  %call = call zeroext i1 @cxxParserParseUpToOneOf(i32 8388677, i1 zeroext false)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.cond
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType4, align 8
  %cmp5 = icmp eq i32 %3, 64
  br i1 %cmp5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then3
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i1 true, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.then3
  br label %for.end

if.end10:                                         ; preds = %if.end
  %4 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 2
  %5 = load i32, i32* %eKeyword, align 8
  %cmp11 = icmp eq i32 %5, 45
  br i1 %cmp11, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %6 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 2
  %7 = load i32, i32* %eKeyword12, align 8
  %cmp13 = icmp eq i32 %7, 84
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %8 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eKeyword15 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %8, i32 0, i32 2
  %9 = load i32, i32* %eKeyword15, align 8
  %cmp16 = icmp eq i32 %9, 73
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.end10
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  store i1 true, i1* %retval, align 1
  br label %return

if.end20:                                         ; preds = %lor.lhs.false14
  br label %for.cond

for.end:                                          ; preds = %if.end9
  %10 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  call void @cxxParserExtractTypedef(%struct._CXXTokenChain* %10, i1 zeroext true)
  br label %do.body21

do.body21:                                        ; preds = %for.end
  br label %do.end22

do.end22:                                         ; preds = %do.body21
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end22, %do.end19, %do.end8, %do.end2
  %11 = load i1, i1* %retval, align 1
  ret i1 %11
}

declare zeroext i1 @cxxParserParseUpToOneOf(i32, i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxParserExtractTypedef(%struct._CXXTokenChain* %pChain, i1 zeroext %bExpectTerminatorAtEnd) #0 {
entry:
  %pChain.addr = alloca %struct._CXXTokenChain*, align 8
  %bExpectTerminatorAtEnd.addr = alloca i8, align 1
  %t = alloca %struct._CXXToken*, align 8
  %pFirstParenthesis = alloca %struct._CXXToken*, align 8
  %iSearchTypes = alloca i32, align 4
  %pComma = alloca %struct._CXXToken*, align 8
  %pTParentChain = alloca %struct._CXXTokenChain*, align 8
  %pLookupStart = alloca %struct._CXXToken*, align 8
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %pTypeName = alloca %struct._CXXToken*, align 8
  %pAux = alloca %struct._CXXToken*, align 8
  store %struct._CXXTokenChain* %pChain, %struct._CXXTokenChain** %pChain.addr, align 8
  %frombool = zext i1 %bExpectTerminatorAtEnd to i8
  store i8 %frombool, i8* %bExpectTerminatorAtEnd.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %iCount = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %0, i32 0, i32 2
  %1 = load i32, i32* %iCount, align 8
  %2 = load i8, i8* %bExpectTerminatorAtEnd.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 3, i32 2
  %cmp = icmp slt i32 %1, %cond
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %return

if.end:                                           ; preds = %do.end
  %4 = load i8, i8* %bExpectTerminatorAtEnd.addr, align 1
  %tobool3 = trunc i8 %4 to i1
  br i1 %tobool3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool5 = icmp ne %struct._CXXTokenChain* %5, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %6, i32 0, i32 1
  %7 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi %struct._CXXToken* [ %7, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond6, %struct._CXXToken** %t, align 8
  br label %do.body7

do.body7:                                         ; preds = %cond.end
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %8 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %call = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %8)
  call void @cxxTokenDestroy(%struct._CXXToken* %call)
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end9
  %9 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %iCount10 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %9, i32 0, i32 2
  %10 = load i32, i32* %iCount10, align 8
  %cmp11 = icmp sge i32 %10, 2
  br i1 %cmp11, label %while.body, label %while.end157

while.body:                                       ; preds = %while.cond
  %11 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool12 = icmp ne %struct._CXXTokenChain* %11, null
  br i1 %tobool12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %while.body
  %12 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %12, i32 0, i32 0
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end15

cond.false14:                                     ; preds = %while.body
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi %struct._CXXToken* [ %13, %cond.true13 ], [ null, %cond.false14 ]
  store %struct._CXXToken* %cond16, %struct._CXXToken** %t, align 8
  br label %do.body17

do.body17:                                        ; preds = %cond.end15
  br label %do.end18

do.end18:                                         ; preds = %do.body17
  store %struct._CXXToken* null, %struct._CXXToken** %pFirstParenthesis, align 8
  store i32 272629888, i32* %iSearchTypes, align 4
  br label %skip_to_comma_or_end

skip_to_comma_or_end:                             ; preds = %do.end37, %if.end31, %do.end18
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %15 = load i32, i32* %iSearchTypes, align 4
  %call19 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %14, i32 %15)
  store %struct._CXXToken* %call19, %struct._CXXToken** %pComma, align 8
  %16 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %tobool20 = icmp ne %struct._CXXToken* %16, null
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %skip_to_comma_or_end
  %17 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 0
  %18 = load i32, i32* %eType, align 8
  %cmp22 = icmp eq i32 %18, 4194304
  br i1 %cmp22, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.then21
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.end25

do.end25:                                         ; preds = %do.body24
  %19 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %call26 = call %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken* %19)
  store %struct._CXXToken* %call26, %struct._CXXToken** %t, align 8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool27 = icmp ne %struct._CXXToken* %20, null
  br i1 %tobool27, label %if.end31, label %if.then28

if.then28:                                        ; preds = %do.end25
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  br label %do.end30

do.end30:                                         ; preds = %do.body29
  br label %return

if.end31:                                         ; preds = %do.end25
  br label %skip_to_comma_or_end

if.end32:                                         ; preds = %if.then21
  %21 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %eType33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %21, i32 0, i32 0
  %22 = load i32, i32* %eType33, align 8
  %cmp34 = icmp eq i32 %22, 268435456
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  br label %do.end37

do.end37:                                         ; preds = %do.body36
  %23 = load i32, i32* %iSearchTypes, align 4
  %and = and i32 %23, -268435457
  store i32 %and, i32* %iSearchTypes, align 4
  %24 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  store %struct._CXXToken* %24, %struct._CXXToken** %pFirstParenthesis, align 8
  br label %skip_to_comma_or_end

if.end38:                                         ; preds = %if.end32
  br label %do.body39

do.body39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.body39
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  br label %do.end42

do.end42:                                         ; preds = %do.body41
  %25 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 8
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %tobool43 = icmp ne %struct._CXXToken* %26, null
  br i1 %tobool43, label %lor.lhs.false, label %if.then47

lor.lhs.false:                                    ; preds = %do.end42
  %27 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %pPrev44 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %27, i32 0, i32 8
  %28 = load %struct._CXXToken*, %struct._CXXToken** %pPrev44, align 8
  %pPrev45 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %28, i32 0, i32 8
  %29 = load %struct._CXXToken*, %struct._CXXToken** %pPrev45, align 8
  %tobool46 = icmp ne %struct._CXXToken* %29, null
  br i1 %tobool46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %lor.lhs.false, %do.end42
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  br label %do.end49

do.end49:                                         ; preds = %do.body48
  br label %return

if.end50:                                         ; preds = %lor.lhs.false
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %pPrev51 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %30, i32 0, i32 8
  %31 = load %struct._CXXToken*, %struct._CXXToken** %pPrev51, align 8
  store %struct._CXXToken* %31, %struct._CXXToken** %t, align 8
  br label %if.end60

if.else:                                          ; preds = %skip_to_comma_or_end
  br label %do.body52

do.body52:                                        ; preds = %if.else
  br label %do.end53

do.end53:                                         ; preds = %do.body52
  %32 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool54 = icmp ne %struct._CXXTokenChain* %32, null
  br i1 %tobool54, label %cond.true55, label %cond.false57

cond.true55:                                      ; preds = %do.end53
  %33 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pTail56 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %33, i32 0, i32 1
  %34 = load %struct._CXXToken*, %struct._CXXToken** %pTail56, align 8
  br label %cond.end58

cond.false57:                                     ; preds = %do.end53
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true55
  %cond59 = phi %struct._CXXToken* [ %34, %cond.true55 ], [ null, %cond.false57 ]
  store %struct._CXXToken* %cond59, %struct._CXXToken** %t, align 8
  br label %if.end60

if.end60:                                         ; preds = %cond.end58, %if.end50
  br label %do.body61

do.body61:                                        ; preds = %if.end60
  br label %do.end62

do.end62:                                         ; preds = %do.body61
  %35 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %35, %struct._CXXToken** %pLookupStart, align 8
  %36 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType63 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %36, i32 0, i32 0
  %37 = load i32, i32* %eType63, align 8
  %cmp64 = icmp eq i32 %37, 2
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %do.end62
  br label %do.body66

do.body66:                                        ; preds = %if.then65
  br label %do.end67

do.end67:                                         ; preds = %do.body66
  %38 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  store %struct._CXXTokenChain* %38, %struct._CXXTokenChain** %pTParentChain, align 8
  br label %if.end80

if.else68:                                        ; preds = %do.end62
  %39 = load %struct._CXXToken*, %struct._CXXToken** %pFirstParenthesis, align 8
  %tobool69 = icmp ne %struct._CXXToken* %39, null
  br i1 %tobool69, label %if.then70, label %if.else75

if.then70:                                        ; preds = %if.else68
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  br label %do.end72

do.end72:                                         ; preds = %do.body71
  %40 = load %struct._CXXToken*, %struct._CXXToken** %pFirstParenthesis, align 8
  %pChain73 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %40, i32 0, i32 3
  %41 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain73, align 8
  %call74 = call %struct._CXXToken* @cxxTokenChainLastPossiblyNestedTokenOfType(%struct._CXXTokenChain* %41, i32 2, %struct._CXXTokenChain** %pTParentChain)
  store %struct._CXXToken* %call74, %struct._CXXToken** %t, align 8
  br label %if.end79

if.else75:                                        ; preds = %if.else68
  br label %do.body76

do.body76:                                        ; preds = %if.else75
  br label %do.end77

do.end77:                                         ; preds = %do.body76
  %42 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  store %struct._CXXTokenChain* %42, %struct._CXXTokenChain** %pTParentChain, align 8
  %43 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call78 = call %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken* %43, i32 2)
  store %struct._CXXToken* %call78, %struct._CXXToken** %t, align 8
  br label %if.end79

if.end79:                                         ; preds = %do.end77, %do.end72
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %do.end67
  %44 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool81 = icmp ne %struct._CXXToken* %44, null
  br i1 %tobool81, label %if.end98, label %if.then82

if.then82:                                        ; preds = %if.end80
  %45 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp83 = icmp eq i32 %45, 2
  br i1 %cmp83, label %land.lhs.true, label %if.end92

land.lhs.true:                                    ; preds = %if.then82
  %46 = load i8, i8* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 14), align 8
  %tobool84 = trunc i8 %46 to i1
  br i1 %tobool84, label %if.end92, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %land.lhs.true
  %47 = load %struct._CXXToken*, %struct._CXXToken** %pLookupStart, align 8
  %eType86 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %47, i32 0, i32 0
  %48 = load i32, i32* %eType86, align 8
  %cmp87 = icmp eq i32 %48, 4
  br i1 %cmp87, label %land.lhs.true88, label %if.end92

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %49 = load %struct._CXXToken*, %struct._CXXToken** %pLookupStart, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %49, i32 0, i32 2
  %50 = load i32, i32* %eKeyword, align 8
  %call89 = call zeroext i1 @cxxKeywordIsCPPSpecific(i32 %50)
  br i1 %call89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %land.lhs.true88
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pLookupStart, align 8
  %eType91 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %51, i32 0, i32 0
  store i32 2, i32* %eType91, align 8
  %52 = load %struct._CXXToken*, %struct._CXXToken** %pLookupStart, align 8
  store %struct._CXXToken* %52, %struct._CXXToken** %t, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %land.lhs.true88, %land.lhs.true85, %land.lhs.true, %if.then82
  %53 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool93 = icmp ne %struct._CXXToken* %53, null
  br i1 %tobool93, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.end92
  br label %do.body95

do.body95:                                        ; preds = %if.then94
  br label %do.end96

do.end96:                                         ; preds = %do.body95
  br label %return

if.end97:                                         ; preds = %if.end92
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end80
  %54 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call99 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 9, %struct._CXXToken* %54)
  store %struct.sTagEntryInfo* %call99, %struct.sTagEntryInfo** %tag, align 8
  %55 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool100 = icmp ne %struct.sTagEntryInfo* %55, null
  br i1 %tobool100, label %if.then101, label %if.end142

if.then101:                                       ; preds = %if.end98
  store %struct._CXXToken* null, %struct._CXXToken** %pTypeName, align 8
  %56 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pTParentChain, align 8
  %57 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %56, %struct._CXXToken* %57)
  %58 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pTParentChain, align 8
  %59 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %cmp102 = icmp eq %struct._CXXTokenChain* %58, %59
  br i1 %cmp102, label %land.lhs.true103, label %if.else114

land.lhs.true103:                                 ; preds = %if.then101
  %60 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %tobool104 = icmp ne %struct._CXXToken* %60, null
  br i1 %tobool104, label %cond.true105, label %cond.false108

cond.true105:                                     ; preds = %land.lhs.true103
  %61 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %call106 = call %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken* %61, i32 1342177280)
  %tobool107 = icmp ne %struct._CXXToken* %call106, null
  br i1 %tobool107, label %if.then111, label %if.else114

cond.false108:                                    ; preds = %land.lhs.true103
  %62 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %call109 = call %struct._CXXToken* @cxxTokenChainLastTokenOfType(%struct._CXXTokenChain* %62, i32 1342177280)
  %tobool110 = icmp ne %struct._CXXToken* %call109, null
  br i1 %tobool110, label %if.then111, label %if.else114

if.then111:                                       ; preds = %cond.false108, %cond.true105
  br label %do.body112

do.body112:                                       ; preds = %if.then111
  br label %do.end113

do.end113:                                        ; preds = %do.body112
  br label %if.end136

if.else114:                                       ; preds = %cond.false108, %cond.true105, %if.then101
  br label %do.body115

do.body115:                                       ; preds = %if.else114
  br label %do.end116

do.end116:                                        ; preds = %do.body115
  %63 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool117 = icmp ne %struct._CXXTokenChain* %63, null
  br i1 %tobool117, label %cond.true118, label %cond.false120

cond.true118:                                     ; preds = %do.end116
  %64 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead119 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %64, i32 0, i32 0
  %65 = load %struct._CXXToken*, %struct._CXXToken** %pHead119, align 8
  br label %cond.end121

cond.false120:                                    ; preds = %do.end116
  br label %cond.end121

cond.end121:                                      ; preds = %cond.false120, %cond.true118
  %cond122 = phi %struct._CXXToken* [ %65, %cond.true118 ], [ null, %cond.false120 ]
  %66 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %tobool123 = icmp ne %struct._CXXToken* %66, null
  br i1 %tobool123, label %cond.true124, label %cond.false126

cond.true124:                                     ; preds = %cond.end121
  %67 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %pPrev125 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %67, i32 0, i32 8
  %68 = load %struct._CXXToken*, %struct._CXXToken** %pPrev125, align 8
  br label %cond.end133

cond.false126:                                    ; preds = %cond.end121
  %69 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool127 = icmp ne %struct._CXXTokenChain* %69, null
  br i1 %tobool127, label %cond.true128, label %cond.false130

cond.true128:                                     ; preds = %cond.false126
  %70 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pTail129 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %70, i32 0, i32 1
  %71 = load %struct._CXXToken*, %struct._CXXToken** %pTail129, align 8
  br label %cond.end131

cond.false130:                                    ; preds = %cond.false126
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false130, %cond.true128
  %cond132 = phi %struct._CXXToken* [ %71, %cond.true128 ], [ null, %cond.false130 ]
  br label %cond.end133

cond.end133:                                      ; preds = %cond.end131, %cond.true124
  %cond134 = phi %struct._CXXToken* [ %68, %cond.true124 ], [ %cond132, %cond.end131 ]
  %call135 = call %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %cond122, %struct._CXXToken* %cond134)
  store %struct._CXXToken* %call135, %struct._CXXToken** %pTypeName, align 8
  br label %if.end136

if.end136:                                        ; preds = %cond.end133, %do.end113
  %call137 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call137, true
  %lnot.ext = zext i1 %lnot to i32
  %72 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %73 = bitcast %struct.sTagEntryInfo* %72 to i8*
  %74 = trunc i32 %lnot.ext to i8
  %bf.load = load i8, i8* %73, align 8
  %bf.value = and i8 %74, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %73, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %call138 = call i32 @cxxTagCommit()
  %75 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %75)
  %76 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  %tobool139 = icmp ne %struct._CXXToken* %76, null
  br i1 %tobool139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end136
  %77 = load %struct._CXXToken*, %struct._CXXToken** %pTypeName, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %77)
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.end136
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end98
  %78 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %tobool143 = icmp ne %struct._CXXToken* %78, null
  br i1 %tobool143, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end142
  br label %while.end157

if.end145:                                        ; preds = %if.end142
  br label %while.cond146

while.cond146:                                    ; preds = %while.body155, %if.end145
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %pPrev147 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %79, i32 0, i32 8
  %80 = load %struct._CXXToken*, %struct._CXXToken** %pPrev147, align 8
  %tobool148 = icmp ne %struct._CXXToken* %80, null
  br i1 %tobool148, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond146
  %81 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %pPrev149 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %81, i32 0, i32 8
  %82 = load %struct._CXXToken*, %struct._CXXToken** %pPrev149, align 8
  %eType150 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %82, i32 0, i32 0
  %83 = load i32, i32* %eType150, align 8
  %and151 = and i32 %83, 1140850694
  %tobool152 = icmp ne i32 %and151, 0
  %lnot153 = xor i1 %tobool152, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond146
  %84 = phi i1 [ false, %while.cond146 ], [ %lnot153, %land.rhs ]
  br i1 %84, label %while.body155, label %while.end

while.body155:                                    ; preds = %land.end
  %85 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  %pPrev156 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %85, i32 0, i32 8
  %86 = load %struct._CXXToken*, %struct._CXXToken** %pPrev156, align 8
  store %struct._CXXToken* %86, %struct._CXXToken** %pAux, align 8
  %87 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %88 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %87, %struct._CXXToken* %88)
  %89 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %89)
  br label %while.cond146

while.end:                                        ; preds = %land.end
  %90 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %91 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  call void @cxxTokenChainTake(%struct._CXXTokenChain* %90, %struct._CXXToken* %91)
  %92 = load %struct._CXXToken*, %struct._CXXToken** %pComma, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %92)
  br label %while.cond

while.end157:                                     ; preds = %if.then144, %while.cond
  br label %do.body158

do.body158:                                       ; preds = %while.end157
  br label %do.end159

do.end159:                                        ; preds = %do.body158
  br label %return

return:                                           ; preds = %do.end159, %do.end96, %do.end49, %do.end30, %do.end2
  ret void
}

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

declare %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken*, i32) #1

declare %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainLastPossiblyNestedTokenOfType(%struct._CXXTokenChain*, i32, %struct._CXXTokenChain**) #1

declare %struct._CXXToken* @cxxTokenChainPreviousTokenOfType(%struct._CXXToken*, i32) #1

declare zeroext i1 @cxxKeywordIsCPPSpecific(i32) #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare void @cxxTokenChainTake(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainLastTokenOfType(%struct._CXXTokenChain*, i32) #1

declare %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken*, %struct._CXXToken*) #1

declare zeroext i1 @isInputHeaderFile() #1

declare i32 @cxxTagCommit() #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
