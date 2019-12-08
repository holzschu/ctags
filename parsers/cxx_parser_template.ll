; ModuleID = 'cxx/cxx_parser_template.c'
source_filename = "cxx/cxx_parser_template.c"
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
define zeroext i1 @cxxParserParseTemplateAngleBracketsToSeparateChain() #0 {
entry:
  %retval = alloca i1, align 1
  %pSave = alloca %struct._CXXTokenChain*, align 8
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
  store %struct._CXXTokenChain* %0, %struct._CXXTokenChain** %pSave, align 8
  %call = call %struct._CXXTokenChain* @cxxTokenChainCreate()
  store %struct._CXXTokenChain* %call, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %1 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pSave, align 8
  %call5 = call %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain* %2)
  call void @cxxTokenChainAppend(%struct._CXXTokenChain* %1, %struct._CXXToken* %call5)
  %call6 = call zeroext i1 @cxxParserParseTemplateAngleBrackets()
  br i1 %call6, label %if.end, label %if.then

if.then:                                          ; preds = %do.end4
  br label %do.body7

do.body7:                                         ; preds = %if.then
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pSave, align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %3)
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end4
  %4 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %tobool = icmp ne %struct._CXXTokenChain* %4, null
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  call void @cxxTokenChainDestroy(%struct._CXXTokenChain* %5)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %6 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  store %struct._CXXTokenChain* %6, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 10), align 8
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pSave, align 8
  store %struct._CXXTokenChain* %7, %struct._CXXTokenChain** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 9), align 8
  br label %do.body11

do.body11:                                        ; preds = %if.end10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end12, %do.end8
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

declare %struct._CXXTokenChain* @cxxTokenChainCreate() #1

declare void @cxxTokenChainAppend(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainTakeLast(%struct._CXXTokenChain*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cxxParserParseTemplateAngleBrackets() #0 {
entry:
  %retval = alloca i1, align 1
  %iTemplateLevel = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i32 0, i32* %iTemplateLevel, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %do.end2
  %call = call zeroext i1 @cxxParserParseAndCondenseSubchainsUpToOneOf(i32 71827777, i32 3145728, i1 zeroext false)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %do.body3

do.body3:                                         ; preds = %if.then
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.cond
  br label %evaluate_current_token

evaluate_current_token:                           ; preds = %if.then101, %if.end
  %0 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  switch i32 %1, label %sw.default [
    i32 4194304, label %sw.bb
    i32 67108864, label %sw.bb48
    i32 128, label %sw.bb91
    i32 256, label %sw.bb91
    i32 1, label %sw.bb103
    i32 64, label %sw.bb106
    i32 524288, label %sw.bb109
  ]

sw.bb:                                            ; preds = %evaluate_current_token
  %2 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 8
  %3 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %tobool = icmp ne %struct._CXXToken* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else44

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %pPrev5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 8
  %5 = load %struct._CXXToken*, %struct._CXXToken** %pPrev5, align 8
  %eType6 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 0
  %6 = load i32, i32* %eType6, align 8
  %and = and i32 %6, 6
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then8, label %if.else44

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  store i1 true, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.then8
  br label %do.body14

do.body14:                                        ; preds = %if.end13
  br label %do.end15

do.end15:                                         ; preds = %do.body14
  %7 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType16 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType16, align 8
  %cmp = icmp eq i32 %8, 4194304
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.end15
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  br label %if.end43

if.else:                                          ; preds = %do.end15
  br label %do.body20

do.body20:                                        ; preds = %if.else
  br label %do.end21

do.end21:                                         ; preds = %do.body20
  %9 = load i32, i32* %iTemplateLevel, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %iTemplateLevel, align 4
  %10 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType22 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 0
  %11 = load i32, i32* %eType22, align 8
  %and23 = and i32 %11, 3145728
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.else39

if.then25:                                        ; preds = %do.end21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  br label %do.end27

do.end27:                                         ; preds = %do.body26
  %call28 = call zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 3145728, i1 zeroext true, i1 zeroext false)
  br i1 %call28, label %if.end32, label %if.then29

if.then29:                                        ; preds = %do.end27
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  br label %do.end31

do.end31:                                         ; preds = %do.body30
  store i1 true, i1* %retval, align 1
  br label %return

if.end32:                                         ; preds = %do.end27
  %12 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType33 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 0
  %13 = load i32, i32* %eType33, align 8
  %cmp34 = icmp eq i32 %13, 1
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  br label %do.end37

do.end37:                                         ; preds = %do.body36
  store i1 true, i1* %retval, align 1
  br label %return

if.end38:                                         ; preds = %if.end32
  br label %if.end42

if.else39:                                        ; preds = %do.end21
  br label %do.body40

do.body40:                                        ; preds = %if.else39
  br label %do.end41

do.end41:                                         ; preds = %do.body40
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %if.end38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %do.end19
  br label %if.end47

if.else44:                                        ; preds = %land.lhs.true, %sw.bb
  br label %do.body45

do.body45:                                        ; preds = %if.else44
  br label %do.end46

do.end46:                                         ; preds = %do.body45
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %if.end43
  br label %sw.epilog

sw.bb48:                                          ; preds = %evaluate_current_token
  %14 = load i32, i32* %iTemplateLevel, align 4
  %cmp49 = icmp eq i32 %14, 0
  br i1 %cmp49, label %if.then50, label %if.end53

if.then50:                                        ; preds = %sw.bb48
  br label %do.body51

do.body51:                                        ; preds = %if.then50
  br label %do.end52

do.end52:                                         ; preds = %do.body51
  store i1 true, i1* %retval, align 1
  br label %return

if.end53:                                         ; preds = %sw.bb48
  %call54 = call zeroext i1 @cxxParserParseNextToken()
  br i1 %call54, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.end53
  br label %do.body56

do.body56:                                        ; preds = %if.then55
  br label %do.end57

do.end57:                                         ; preds = %do.body56
  store i1 true, i1* %retval, align 1
  br label %return

if.end58:                                         ; preds = %if.end53
  br label %do.body59

do.body59:                                        ; preds = %if.end58
  br label %do.end60

do.end60:                                         ; preds = %do.body59
  %15 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType61 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 0
  %16 = load i32, i32* %eType61, align 8
  %cmp62 = icmp eq i32 %16, 67108864
  br i1 %cmp62, label %if.then63, label %if.else66

if.then63:                                        ; preds = %do.end60
  br label %do.body64

do.body64:                                        ; preds = %if.then63
  br label %do.end65

do.end65:                                         ; preds = %do.body64
  br label %if.end90

if.else66:                                        ; preds = %do.end60
  br label %do.body67

do.body67:                                        ; preds = %if.else66
  br label %do.end68

do.end68:                                         ; preds = %do.body67
  %17 = load i32, i32* %iTemplateLevel, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %iTemplateLevel, align 4
  %18 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType69 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %18, i32 0, i32 0
  %19 = load i32, i32* %eType69, align 8
  %and70 = and i32 %19, 3145728
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.else86

if.then72:                                        ; preds = %do.end68
  br label %do.body73

do.body73:                                        ; preds = %if.then72
  br label %do.end74

do.end74:                                         ; preds = %do.body73
  %call75 = call zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32 3145728, i1 zeroext true, i1 zeroext false)
  br i1 %call75, label %if.end79, label %if.then76

if.then76:                                        ; preds = %do.end74
  br label %do.body77

do.body77:                                        ; preds = %if.then76
  br label %do.end78

do.end78:                                         ; preds = %do.body77
  store i1 true, i1* %retval, align 1
  br label %return

if.end79:                                         ; preds = %do.end74
  %20 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType80 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 0
  %21 = load i32, i32* %eType80, align 8
  %cmp81 = icmp eq i32 %21, 1
  br i1 %cmp81, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end79
  br label %do.body83

do.body83:                                        ; preds = %if.then82
  br label %do.end84

do.end84:                                         ; preds = %do.body83
  store i1 true, i1* %retval, align 1
  br label %return

if.end85:                                         ; preds = %if.end79
  br label %if.end89

if.else86:                                        ; preds = %do.end68
  br label %do.body87

do.body87:                                        ; preds = %if.else86
  br label %do.end88

do.end88:                                         ; preds = %do.body87
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %if.end85
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %do.end65
  br label %sw.epilog

sw.bb91:                                          ; preds = %evaluate_current_token, %evaluate_current_token
  br label %do.body92

do.body92:                                        ; preds = %sw.bb91
  br label %do.end93

do.end93:                                         ; preds = %do.body92
  %call94 = call zeroext i1 @cxxParserParseUpToOneOf(i32 67633345, i1 zeroext false)
  br i1 %call94, label %if.end98, label %if.then95

if.then95:                                        ; preds = %do.end93
  br label %do.body96

do.body96:                                        ; preds = %if.then95
  br label %do.end97

do.end97:                                         ; preds = %do.body96
  store i1 false, i1* %retval, align 1
  br label %return

if.end98:                                         ; preds = %do.end93
  %22 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType99 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %22, i32 0, i32 0
  %23 = load i32, i32* %eType99, align 8
  %cmp100 = icmp eq i32 %23, 128
  br i1 %cmp100, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.end98
  br label %evaluate_current_token

if.end102:                                        ; preds = %if.end98
  br label %sw.epilog

sw.bb103:                                         ; preds = %evaluate_current_token
  br label %do.body104

do.body104:                                       ; preds = %sw.bb103
  br label %do.end105

do.end105:                                        ; preds = %do.body104
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb106:                                         ; preds = %evaluate_current_token
  call void @cxxParserNewStatement()
  br label %do.body107

do.body107:                                       ; preds = %sw.bb106
  br label %do.end108

do.end108:                                        ; preds = %do.body107
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb109:                                         ; preds = %evaluate_current_token
  br label %do.body110

do.body110:                                       ; preds = %sw.bb109
  br label %do.end111

do.end111:                                        ; preds = %do.body110
  %call112 = call zeroext i1 @cxxParserParseUpToOneOf(i32 8388609, i1 zeroext false)
  br i1 %call112, label %if.end116, label %if.then113

if.then113:                                       ; preds = %do.end111
  br label %do.body114

do.body114:                                       ; preds = %if.then113
  br label %do.end115

do.end115:                                        ; preds = %do.body114
  store i1 false, i1* %retval, align 1
  br label %return

if.end116:                                        ; preds = %do.end111
  call void @cxxParserNewStatement()
  br label %do.body117

do.body117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.body117
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %evaluate_current_token
  br label %do.body119

do.body119:                                       ; preds = %sw.default
  br label %do.end120

do.end120:                                        ; preds = %do.body119
  br label %do.body121

do.body121:                                       ; preds = %do.end120
  br label %do.end122

do.end122:                                        ; preds = %do.body121
  store i1 false, i1* %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %if.end102, %if.end90, %if.end47
  br label %for.cond

return:                                           ; preds = %do.end122, %do.end118, %do.end115, %do.end108, %do.end105, %do.end97, %do.end84, %do.end78, %do.end57, %do.end52, %do.end37, %do.end31, %do.end12, %do.end4
  %24 = load i1, i1* %retval, align 1
  ret i1 %24
}

declare void @cxxTokenChainDestroy(%struct._CXXTokenChain*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserParseTemplatePrefix() #0 {
entry:
  %retval = alloca i1, align 1
  %bRet = alloca i8, align 1
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
  %call5 = call zeroext i1 @cxxParserParseUpToOneOf(i32 4194369, i1 zeroext false)
  br i1 %call5, label %if.end, label %if.then

if.then:                                          ; preds = %do.end4
  br label %do.body6

do.body6:                                         ; preds = %if.then
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end4
  %1 = load %struct._CXXToken*, %struct._CXXToken** getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 11), align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %1, i32 0, i32 0
  %2 = load i32, i32* %eType, align 8
  %and = and i32 %2, 65
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  call void @cxxParserNewStatement()
  store i1 true, i1* %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.end
  %call12 = call zeroext i1 @cxxParserParseTemplateAngleBracketsToSeparateChain()
  %frombool = zext i1 %call12 to i8
  store i8 %frombool, i8* %bRet, align 1
  br label %do.body13

do.body13:                                        ; preds = %if.end11
  br label %do.end14

do.end14:                                         ; preds = %do.body13
  %3 = load i8, i8* %bRet, align 1
  %tobool15 = trunc i8 %3 to i1
  store i1 %tobool15, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end14, %do.end10, %do.end7
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare zeroext i1 @cxxParserParseUpToOneOf(i32, i1 zeroext) #1

declare void @cxxParserNewStatement() #1

declare zeroext i1 @cxxParserParseAndCondenseSubchainsUpToOneOf(i32, i32, i1 zeroext) #1

declare zeroext i1 @cxxParserParseNextToken() #1

declare zeroext i1 @cxxParserParseAndCondenseCurrentSubchain(i32, i1 zeroext, i1 zeroext) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
