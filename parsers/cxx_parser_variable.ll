; ModuleID = 'cxx/cxx_parser_variable.c'
source_filename = "cxx/cxx_parser_variable.c"
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

@g_cxx = external global %struct._CXXParserState, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxParserExtractVariableDeclarations(%struct._CXXTokenChain* %pChain, i32 %uFlags) #0 {
entry:
  %retval = alloca i1, align 1
  %pChain.addr = alloca %struct._CXXTokenChain*, align 8
  %uFlags.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  %eScopeType = alloca i32, align 4
  %bGotVariable = alloca i8, align 1
  %pIdentifier = alloca %struct._CXXToken*, align 8
  %pTokenBefore = alloca %struct._CXXToken*, align 8
  %pRemoveStart = alloca %struct._CXXToken*, align 8
  %pScopeEnd = alloca %struct._CXXToken*, align 8
  %pScopeStart = alloca %struct._CXXToken*, align 8
  %pAux = alloca %struct._CXXToken*, align 8
  %t2 = alloca %struct._CXXToken*, align 8
  %iLevel = alloca i32, align 4
  %iScopesPushed = alloca i32, align 4
  %pPartEnd = alloca %struct._CXXToken*, align 8
  %pScopeId = alloca %struct._CXXToken*, align 8
  %pAux446 = alloca %struct._CXXToken*, align 8
  %bKnRStyleParameters = alloca i8, align 1
  %tag = alloca %struct.sTagEntryInfo*, align 8
  %pPartOfType = alloca %struct._CXXToken*, align 8
  %pAuxChain = alloca %struct._CXXTokenChain*, align 8
  %pTypeToken = alloca %struct._CXXToken*, align 8
  %pszProperties = alloca %struct.sVString*, align 8
  %uProperties = alloca i32, align 4
  store %struct._CXXTokenChain* %pChain, %struct._CXXTokenChain** %pChain.addr, align 8
  store i32 %uFlags, i32* %uFlags.addr, align 4
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
  %2 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool = icmp ne %struct._CXXTokenChain* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %3, i32 0, i32 0
  %4 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %4, %cond.true ], [ null, %cond.false ]
  store %struct._CXXToken* %cond, %struct._CXXToken** %t, align 8
  %call = call i32 @cxxScopeGetType()
  store i32 %call, i32* %eScopeType, align 4
  br label %do.body3

do.body3:                                         ; preds = %cond.end
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %5 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %5, i32 0, i32 0
  %6 = load i32, i32* %eType, align 8
  %and = and i32 %6, 6
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %do.end4
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i1 false, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %do.end4
  %7 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType10 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %7, i32 0, i32 0
  %8 = load i32, i32* %eType10, align 8
  %cmp11 = icmp eq i32 %8, 4
  br i1 %cmp11, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end9
  %9 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %9, i32 0, i32 2
  %10 = load i32, i32* %eKeyword, align 8
  %cmp12 = icmp eq i32 %10, 37
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eKeyword13 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %11, i32 0, i32 2
  %12 = load i32, i32* %eKeyword13, align 8
  %cmp14 = icmp eq i32 %12, 58
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %do.end17

do.end17:                                         ; preds = %do.body16
  store i1 false, i1* %retval, align 1
  br label %return

if.end18:                                         ; preds = %lor.lhs.false, %if.end9
  store i8 0, i8* %bGotVariable, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end615, %if.end18
  %13 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool19 = icmp ne %struct._CXXToken* %13, null
  br i1 %tobool19, label %while.body, label %while.end617

while.body:                                       ; preds = %while.cond
  br label %while.cond20

while.cond20:                                     ; preds = %if.end46, %while.body
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool21 = icmp ne %struct._CXXToken* %14, null
  br i1 %tobool21, label %while.body22, label %while.end

while.body22:                                     ; preds = %while.cond20
  %15 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType23 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 0
  %16 = load i32, i32* %eType23, align 8
  %and24 = and i32 %16, 940048848
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %while.body22
  br label %while.end

if.end27:                                         ; preds = %while.body22
  %17 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType28 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 0
  %18 = load i32, i32* %eType28, align 8
  %and29 = and i32 %18, 1200042496
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end27
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  br label %do.end33

do.end33:                                         ; preds = %do.body32
  %19 = load i8, i8* %bGotVariable, align 1
  %tobool34 = trunc i8 %19 to i1
  store i1 %tobool34, i1* %retval, align 1
  br label %return

if.end35:                                         ; preds = %if.end27
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType36 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %20, i32 0, i32 0
  %21 = load i32, i32* %eType36, align 8
  %cmp37 = icmp eq i32 %21, 4194304
  br i1 %cmp37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %if.end35
  %22 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call39 = call %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken* %22)
  store %struct._CXXToken* %call39, %struct._CXXToken** %t, align 8
  %23 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool40 = icmp ne %struct._CXXToken* %23, null
  br i1 %tobool40, label %if.end45, label %if.then41

if.then41:                                        ; preds = %if.then38
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  br label %do.end43

do.end43:                                         ; preds = %do.body42
  %24 = load i8, i8* %bGotVariable, align 1
  %tobool44 = trunc i8 %24 to i1
  store i1 %tobool44, i1* %retval, align 1
  br label %return

if.end45:                                         ; preds = %if.then38
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end35
  %25 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %25, i32 0, i32 7
  %26 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  store %struct._CXXToken* %26, %struct._CXXToken** %t, align 8
  br label %while.cond20

while.end:                                        ; preds = %if.then26, %while.cond20
  %27 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool47 = icmp ne %struct._CXXToken* %27, null
  br i1 %tobool47, label %if.end52, label %if.then48

if.then48:                                        ; preds = %while.end
  br label %do.body49

do.body49:                                        ; preds = %if.then48
  br label %do.end50

do.end50:                                         ; preds = %do.body49
  %28 = load i8, i8* %bGotVariable, align 1
  %tobool51 = trunc i8 %28 to i1
  store i1 %tobool51, i1* %retval, align 1
  br label %return

if.end52:                                         ; preds = %while.end
  br label %do.body53

do.body53:                                        ; preds = %if.end52
  br label %do.end54

do.end54:                                         ; preds = %do.body53
  %29 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %29, i32 0, i32 8
  %30 = load %struct._CXXToken*, %struct._CXXToken** %pPrev, align 8
  %tobool55 = icmp ne %struct._CXXToken* %30, null
  br i1 %tobool55, label %if.end60, label %if.then56

if.then56:                                        ; preds = %do.end54
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  br label %do.end58

do.end58:                                         ; preds = %do.body57
  %31 = load i8, i8* %bGotVariable, align 1
  %tobool59 = trunc i8 %31 to i1
  store i1 %tobool59, i1* %retval, align 1
  br label %return

if.end60:                                         ; preds = %do.end54
  store %struct._CXXToken* null, %struct._CXXToken** %pIdentifier, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %pTokenBefore, align 8
  %32 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %32, %struct._CXXToken** %pRemoveStart, align 8
  %33 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType61 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %33, i32 0, i32 0
  %34 = load i32, i32* %eType61, align 8
  switch i32 %34, label %sw.default [
    i32 268435456, label %sw.bb
    i32 134217728, label %sw.bb179
    i32 16, label %sw.bb196
    i32 536870912, label %sw.bb232
  ]

sw.bb:                                            ; preds = %if.end60
  %35 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext62 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %35, i32 0, i32 7
  %36 = load %struct._CXXToken*, %struct._CXXToken** %pNext62, align 8
  %tobool63 = icmp ne %struct._CXXToken* %36, null
  br i1 %tobool63, label %land.lhs.true64, label %if.else

land.lhs.true64:                                  ; preds = %sw.bb
  %37 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext65 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %37, i32 0, i32 7
  %38 = load %struct._CXXToken*, %struct._CXXToken** %pNext65, align 8
  %eType66 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %38, i32 0, i32 0
  %39 = load i32, i32* %eType66, align 8
  %cmp67 = icmp eq i32 %39, 268435456
  br i1 %cmp67, label %land.lhs.true68, label %lor.lhs.false72

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %40 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext69 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %40, i32 0, i32 7
  %41 = load %struct._CXXToken*, %struct._CXXToken** %pNext69, align 8
  %pChain70 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %41, i32 0, i32 3
  %42 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain70, align 8
  %call71 = call zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain* %42, %struct._CXXFunctionParameterInfo* null)
  br i1 %call71, label %land.lhs.true76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %land.lhs.true68, %land.lhs.true64
  %43 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext73 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %43, i32 0, i32 7
  %44 = load %struct._CXXToken*, %struct._CXXToken** %pNext73, align 8
  %eType74 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %44, i32 0, i32 0
  %45 = load i32, i32* %eType74, align 8
  %cmp75 = icmp eq i32 %45, 536870912
  br i1 %cmp75, label %land.lhs.true76, label %if.else

land.lhs.true76:                                  ; preds = %lor.lhs.false72, %land.lhs.true68
  %46 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain77 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %46, i32 0, i32 3
  %47 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain77, align 8
  %call78 = call %struct._CXXToken* @cxxTokenChainFirstPossiblyNestedTokenOfType(%struct._CXXTokenChain* %47, i32 2, %struct._CXXTokenChain** null)
  store %struct._CXXToken* %call78, %struct._CXXToken** %pIdentifier, align 8
  %tobool79 = icmp ne %struct._CXXToken* %call78, null
  br i1 %tobool79, label %land.lhs.true80, label %if.else

land.lhs.true80:                                  ; preds = %land.lhs.true76
  %48 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pNext81 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %48, i32 0, i32 7
  %49 = load %struct._CXXToken*, %struct._CXXToken** %pNext81, align 8
  %tobool82 = icmp ne %struct._CXXToken* %49, null
  br i1 %tobool82, label %lor.lhs.false83, label %if.then87

lor.lhs.false83:                                  ; preds = %land.lhs.true80
  %50 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pNext84 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %50, i32 0, i32 7
  %51 = load %struct._CXXToken*, %struct._CXXToken** %pNext84, align 8
  %eType85 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %51, i32 0, i32 0
  %52 = load i32, i32* %eType85, align 8
  %cmp86 = icmp eq i32 %52, 268435456
  br i1 %cmp86, label %if.else, label %if.then87

if.then87:                                        ; preds = %lor.lhs.false83, %land.lhs.true80
  %53 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev88 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %53, i32 0, i32 8
  %54 = load %struct._CXXToken*, %struct._CXXToken** %pPrev88, align 8
  store %struct._CXXToken* %54, %struct._CXXToken** %pTokenBefore, align 8
  %55 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext89 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %55, i32 0, i32 7
  %56 = load %struct._CXXToken*, %struct._CXXToken** %pNext89, align 8
  %pNext90 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %56, i32 0, i32 7
  %57 = load %struct._CXXToken*, %struct._CXXToken** %pNext90, align 8
  store %struct._CXXToken* %57, %struct._CXXToken** %t, align 8
  %58 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %58, %struct._CXXToken** %pRemoveStart, align 8
  br label %if.end178

if.else:                                          ; preds = %lor.lhs.false83, %land.lhs.true76, %lor.lhs.false72, %sw.bb
  %59 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain91 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %59, i32 0, i32 3
  %60 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain91, align 8
  %iCount92 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %60, i32 0, i32 2
  %61 = load i32, i32* %iCount92, align 8
  %cmp93 = icmp eq i32 %61, 3
  br i1 %cmp93, label %land.lhs.true94, label %if.else119

land.lhs.true94:                                  ; preds = %if.else
  %62 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain95 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %62, i32 0, i32 3
  %63 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain95, align 8
  %call96 = call %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %63, i32 1)
  %eType97 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %call96, i32 0, i32 0
  %64 = load i32, i32* %eType97, align 8
  %cmp98 = icmp eq i32 %64, 268435456
  br i1 %cmp98, label %land.lhs.true99, label %if.else119

land.lhs.true99:                                  ; preds = %land.lhs.true94
  %65 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev100 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %65, i32 0, i32 8
  %66 = load %struct._CXXToken*, %struct._CXXToken** %pPrev100, align 8
  %tobool101 = icmp ne %struct._CXXToken* %66, null
  br i1 %tobool101, label %land.lhs.true102, label %if.else119

land.lhs.true102:                                 ; preds = %land.lhs.true99
  %67 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev103 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %67, i32 0, i32 8
  %68 = load %struct._CXXToken*, %struct._CXXToken** %pPrev103, align 8
  %eType104 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %68, i32 0, i32 0
  %69 = load i32, i32* %eType104, align 8
  %cmp105 = icmp eq i32 %69, 2
  br i1 %cmp105, label %land.lhs.true106, label %if.else119

land.lhs.true106:                                 ; preds = %land.lhs.true102
  %70 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev107 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %70, i32 0, i32 8
  %71 = load %struct._CXXToken*, %struct._CXXToken** %pPrev107, align 8
  %pPrev108 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %71, i32 0, i32 8
  %72 = load %struct._CXXToken*, %struct._CXXToken** %pPrev108, align 8
  %tobool109 = icmp ne %struct._CXXToken* %72, null
  br i1 %tobool109, label %land.lhs.true110, label %if.else119

land.lhs.true110:                                 ; preds = %land.lhs.true106
  %73 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev111 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %73, i32 0, i32 8
  %74 = load %struct._CXXToken*, %struct._CXXToken** %pPrev111, align 8
  %pPrev112 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %74, i32 0, i32 8
  %75 = load %struct._CXXToken*, %struct._CXXToken** %pPrev112, align 8
  %eType113 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %75, i32 0, i32 0
  %76 = load i32, i32* %eType113, align 8
  %cmp114 = icmp eq i32 %76, 2
  br i1 %cmp114, label %if.then115, label %if.else119

if.then115:                                       ; preds = %land.lhs.true110
  br label %do.body116

do.body116:                                       ; preds = %if.then115
  br label %do.end117

do.end117:                                        ; preds = %do.body116
  %77 = load i8, i8* %bGotVariable, align 1
  %tobool118 = trunc i8 %77 to i1
  store i1 %tobool118, i1* %retval, align 1
  br label %return

if.else119:                                       ; preds = %land.lhs.true110, %land.lhs.true106, %land.lhs.true102, %land.lhs.true99, %land.lhs.true94, %if.else
  %78 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev120 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %78, i32 0, i32 8
  %79 = load %struct._CXXToken*, %struct._CXXToken** %pPrev120, align 8
  %eType121 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %79, i32 0, i32 0
  %80 = load i32, i32* %eType121, align 8
  %cmp122 = icmp eq i32 %80, 2
  br i1 %cmp122, label %land.lhs.true123, label %if.else135

land.lhs.true123:                                 ; preds = %if.else119
  %81 = load i32, i32* %eScopeType, align 4
  %cmp124 = icmp eq i32 %81, 1
  br i1 %cmp124, label %land.lhs.true127, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %land.lhs.true123
  %82 = load i32, i32* %eScopeType, align 4
  %cmp126 = icmp eq i32 %82, 0
  br i1 %cmp126, label %land.lhs.true127, label %if.else135

land.lhs.true127:                                 ; preds = %lor.lhs.false125, %land.lhs.true123
  %83 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp128 = icmp eq i32 %83, 2
  br i1 %cmp128, label %land.lhs.true129, label %if.else135

land.lhs.true129:                                 ; preds = %land.lhs.true127
  %84 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain130 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %84, i32 0, i32 3
  %85 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain130, align 8
  %call131 = call zeroext i1 @cxxParserTokenChainLooksLikeConstructorParameterSet(%struct._CXXTokenChain* %85)
  br i1 %call131, label %if.then132, label %if.else135

if.then132:                                       ; preds = %land.lhs.true129
  %86 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev133 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %86, i32 0, i32 8
  %87 = load %struct._CXXToken*, %struct._CXXToken** %pPrev133, align 8
  store %struct._CXXToken* %87, %struct._CXXToken** %pIdentifier, align 8
  %88 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev134 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %88, i32 0, i32 8
  %89 = load %struct._CXXToken*, %struct._CXXToken** %pPrev134, align 8
  store %struct._CXXToken* %89, %struct._CXXToken** %pTokenBefore, align 8
  br label %if.end176

if.else135:                                       ; preds = %land.lhs.true129, %land.lhs.true127, %lor.lhs.false125, %if.else119
  %90 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain136 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %90, i32 0, i32 3
  %91 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain136, align 8
  %iCount137 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %91, i32 0, i32 2
  %92 = load i32, i32* %iCount137, align 8
  %cmp138 = icmp eq i32 %92, 3
  br i1 %cmp138, label %land.lhs.true139, label %lor.lhs.false151

land.lhs.true139:                                 ; preds = %if.else135
  %93 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev140 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %93, i32 0, i32 8
  %94 = load %struct._CXXToken*, %struct._CXXToken** %pPrev140, align 8
  %eType141 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %94, i32 0, i32 0
  %95 = load i32, i32* %eType141, align 8
  %cmp142 = icmp eq i32 %95, 2
  br i1 %cmp142, label %lor.lhs.false151, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %land.lhs.true139
  %96 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev144 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %96, i32 0, i32 8
  %97 = load %struct._CXXToken*, %struct._CXXToken** %pPrev144, align 8
  %eType145 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %97, i32 0, i32 0
  %98 = load i32, i32* %eType145, align 8
  %cmp146 = icmp eq i32 %98, 4
  br i1 %cmp146, label %lor.lhs.false147, label %land.lhs.true155

lor.lhs.false147:                                 ; preds = %land.lhs.true143
  %99 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev148 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %99, i32 0, i32 8
  %100 = load %struct._CXXToken*, %struct._CXXToken** %pPrev148, align 8
  %eKeyword149 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %100, i32 0, i32 2
  %101 = load i32, i32* %eKeyword149, align 8
  %call150 = call zeroext i1 @cxxKeywordMayBePartOfTypeName(i32 %101)
  br i1 %call150, label %land.lhs.true155, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false147, %land.lhs.true139, %if.else135
  %102 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain152 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %102, i32 0, i32 3
  %103 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain152, align 8
  %iCount153 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %103, i32 0, i32 2
  %104 = load i32, i32* %iCount153, align 8
  %cmp154 = icmp sgt i32 %104, 3
  br i1 %cmp154, label %land.lhs.true155, label %if.else171

land.lhs.true155:                                 ; preds = %lor.lhs.false151, %lor.lhs.false147, %land.lhs.true143
  %105 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain156 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %105, i32 0, i32 3
  %106 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain156, align 8
  %tobool157 = icmp ne %struct._CXXTokenChain* %106, null
  br i1 %tobool157, label %cond.true158, label %cond.false161

cond.true158:                                     ; preds = %land.lhs.true155
  %107 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain159 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %107, i32 0, i32 3
  %108 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain159, align 8
  %pHead160 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %108, i32 0, i32 0
  %109 = load %struct._CXXToken*, %struct._CXXToken** %pHead160, align 8
  br label %cond.end162

cond.false161:                                    ; preds = %land.lhs.true155
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false161, %cond.true158
  %cond163 = phi %struct._CXXToken* [ %109, %cond.true158 ], [ null, %cond.false161 ]
  %call164 = call %struct._CXXToken* @cxxParserVardefInParenthesis(%struct._CXXToken* %cond163, i32 0)
  store %struct._CXXToken* %call164, %struct._CXXToken** %pIdentifier, align 8
  %tobool165 = icmp ne %struct._CXXToken* %call164, null
  br i1 %tobool165, label %if.then166, label %if.else171

if.then166:                                       ; preds = %cond.end162
  br label %do.body167

do.body167:                                       ; preds = %if.then166
  br label %do.end168

do.end168:                                        ; preds = %do.body167
  %110 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev169 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %110, i32 0, i32 8
  %111 = load %struct._CXXToken*, %struct._CXXToken** %pPrev169, align 8
  store %struct._CXXToken* %111, %struct._CXXToken** %pTokenBefore, align 8
  %112 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext170 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %112, i32 0, i32 7
  %113 = load %struct._CXXToken*, %struct._CXXToken** %pNext170, align 8
  store %struct._CXXToken* %113, %struct._CXXToken** %t, align 8
  br label %if.end175

if.else171:                                       ; preds = %cond.end162, %lor.lhs.false151
  br label %do.body172

do.body172:                                       ; preds = %if.else171
  br label %do.end173

do.end173:                                        ; preds = %do.body172
  %114 = load i8, i8* %bGotVariable, align 1
  %tobool174 = trunc i8 %114 to i1
  store i1 %tobool174, i1* %retval, align 1
  br label %return

if.end175:                                        ; preds = %do.end168
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.then132
  br label %if.end177

if.end177:                                        ; preds = %if.end176
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then87
  br label %sw.epilog

sw.bb179:                                         ; preds = %if.end60
  %115 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev180 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %115, i32 0, i32 8
  %116 = load %struct._CXXToken*, %struct._CXXToken** %pPrev180, align 8
  %eType181 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %116, i32 0, i32 0
  %117 = load i32, i32* %eType181, align 8
  %cmp182 = icmp eq i32 %117, 2
  br i1 %cmp182, label %land.lhs.true183, label %if.else191

land.lhs.true183:                                 ; preds = %sw.bb179
  %118 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp184 = icmp eq i32 %118, 2
  br i1 %cmp184, label %land.lhs.true185, label %if.else191

land.lhs.true185:                                 ; preds = %land.lhs.true183
  %119 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain186 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %119, i32 0, i32 3
  %120 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain186, align 8
  %call187 = call zeroext i1 @cxxParserTokenChainLooksLikeConstructorParameterSet(%struct._CXXTokenChain* %120)
  br i1 %call187, label %if.then188, label %if.else191

if.then188:                                       ; preds = %land.lhs.true185
  %121 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev189 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %121, i32 0, i32 8
  %122 = load %struct._CXXToken*, %struct._CXXToken** %pPrev189, align 8
  store %struct._CXXToken* %122, %struct._CXXToken** %pIdentifier, align 8
  %123 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev190 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %123, i32 0, i32 8
  %124 = load %struct._CXXToken*, %struct._CXXToken** %pPrev190, align 8
  store %struct._CXXToken* %124, %struct._CXXToken** %pTokenBefore, align 8
  br label %if.end195

if.else191:                                       ; preds = %land.lhs.true185, %land.lhs.true183, %sw.bb179
  br label %do.body192

do.body192:                                       ; preds = %if.else191
  br label %do.end193

do.end193:                                        ; preds = %do.body192
  %125 = load i8, i8* %bGotVariable, align 1
  %tobool194 = trunc i8 %125 to i1
  store i1 %tobool194, i1* %retval, align 1
  br label %return

if.end195:                                        ; preds = %if.then188
  br label %sw.epilog

sw.bb196:                                         ; preds = %if.end60
  %126 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext197 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %126, i32 0, i32 7
  %127 = load %struct._CXXToken*, %struct._CXXToken** %pNext197, align 8
  %tobool198 = icmp ne %struct._CXXToken* %127, null
  br i1 %tobool198, label %land.lhs.true199, label %if.else227

land.lhs.true199:                                 ; preds = %sw.bb196
  %128 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext200 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %128, i32 0, i32 7
  %129 = load %struct._CXXToken*, %struct._CXXToken** %pNext200, align 8
  %eType201 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %129, i32 0, i32 0
  %130 = load i32, i32* %eType201, align 8
  %and202 = and i32 %130, 10
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then204, label %if.else227

if.then204:                                       ; preds = %land.lhs.true199
  %131 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext205 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %131, i32 0, i32 7
  %132 = load %struct._CXXToken*, %struct._CXXToken** %pNext205, align 8
  %eType206 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %132, i32 0, i32 0
  %133 = load i32, i32* %eType206, align 8
  %cmp207 = icmp eq i32 %133, 8
  br i1 %cmp207, label %land.lhs.true208, label %if.else223

land.lhs.true208:                                 ; preds = %if.then204
  %134 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext209 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %134, i32 0, i32 7
  %135 = load %struct._CXXToken*, %struct._CXXToken** %pNext209, align 8
  %pNext210 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %135, i32 0, i32 7
  %136 = load %struct._CXXToken*, %struct._CXXToken** %pNext210, align 8
  %tobool211 = icmp ne %struct._CXXToken* %136, null
  br i1 %tobool211, label %land.lhs.true212, label %if.else223

land.lhs.true212:                                 ; preds = %land.lhs.true208
  %137 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext213 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %137, i32 0, i32 7
  %138 = load %struct._CXXToken*, %struct._CXXToken** %pNext213, align 8
  %pNext214 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %138, i32 0, i32 7
  %139 = load %struct._CXXToken*, %struct._CXXToken** %pNext214, align 8
  %eType215 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %139, i32 0, i32 0
  %140 = load i32, i32* %eType215, align 8
  %and216 = and i32 %140, 448
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.then218, label %if.else223

if.then218:                                       ; preds = %land.lhs.true212
  %141 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev219 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %141, i32 0, i32 8
  %142 = load %struct._CXXToken*, %struct._CXXToken** %pPrev219, align 8
  store %struct._CXXToken* %142, %struct._CXXToken** %pIdentifier, align 8
  %143 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev220 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %143, i32 0, i32 8
  %144 = load %struct._CXXToken*, %struct._CXXToken** %pPrev220, align 8
  store %struct._CXXToken* %144, %struct._CXXToken** %pTokenBefore, align 8
  %145 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext221 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %145, i32 0, i32 7
  %146 = load %struct._CXXToken*, %struct._CXXToken** %pNext221, align 8
  %pNext222 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %146, i32 0, i32 7
  %147 = load %struct._CXXToken*, %struct._CXXToken** %pNext222, align 8
  store %struct._CXXToken* %147, %struct._CXXToken** %t, align 8
  br label %if.end226

if.else223:                                       ; preds = %land.lhs.true212, %land.lhs.true208, %if.then204
  %148 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev224 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %148, i32 0, i32 8
  %149 = load %struct._CXXToken*, %struct._CXXToken** %pPrev224, align 8
  store %struct._CXXToken* %149, %struct._CXXToken** %pIdentifier, align 8
  %150 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev225 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %150, i32 0, i32 8
  %151 = load %struct._CXXToken*, %struct._CXXToken** %pPrev225, align 8
  store %struct._CXXToken* %151, %struct._CXXToken** %pTokenBefore, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.else223, %if.then218
  br label %if.end231

if.else227:                                       ; preds = %land.lhs.true199, %sw.bb196
  br label %do.body228

do.body228:                                       ; preds = %if.else227
  br label %do.end229

do.end229:                                        ; preds = %do.body228
  %152 = load i8, i8* %bGotVariable, align 1
  %tobool230 = trunc i8 %152 to i1
  store i1 %tobool230, i1* %retval, align 1
  br label %return

if.end231:                                        ; preds = %if.end226
  br label %sw.epilog

sw.bb232:                                         ; preds = %if.end60
  %153 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev233 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %153, i32 0, i32 8
  %154 = load %struct._CXXToken*, %struct._CXXToken** %pPrev233, align 8
  store %struct._CXXToken* %154, %struct._CXXToken** %pIdentifier, align 8
  %155 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev234 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %155, i32 0, i32 8
  %156 = load %struct._CXXToken*, %struct._CXXToken** %pPrev234, align 8
  store %struct._CXXToken* %156, %struct._CXXToken** %pTokenBefore, align 8
  br label %while.cond235

while.cond235:                                    ; preds = %while.body241, %sw.bb232
  %157 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext236 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %157, i32 0, i32 7
  %158 = load %struct._CXXToken*, %struct._CXXToken** %pNext236, align 8
  %tobool237 = icmp ne %struct._CXXToken* %158, null
  br i1 %tobool237, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond235
  %159 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext238 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %159, i32 0, i32 7
  %160 = load %struct._CXXToken*, %struct._CXXToken** %pNext238, align 8
  %eType239 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %160, i32 0, i32 0
  %161 = load i32, i32* %eType239, align 8
  %cmp240 = icmp eq i32 %161, 536870912
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond235
  %162 = phi i1 [ false, %while.cond235 ], [ %cmp240, %land.rhs ]
  br i1 %162, label %while.body241, label %while.end243

while.body241:                                    ; preds = %land.end
  %163 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext242 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %163, i32 0, i32 7
  %164 = load %struct._CXXToken*, %struct._CXXToken** %pNext242, align 8
  store %struct._CXXToken* %164, %struct._CXXToken** %t, align 8
  br label %while.cond235

while.end243:                                     ; preds = %land.end
  %165 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext244 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %165, i32 0, i32 7
  %166 = load %struct._CXXToken*, %struct._CXXToken** %pNext244, align 8
  %tobool245 = icmp ne %struct._CXXToken* %166, null
  br i1 %tobool245, label %if.end250, label %if.then246

if.then246:                                       ; preds = %while.end243
  br label %do.body247

do.body247:                                       ; preds = %if.then246
  br label %do.end248

do.end248:                                        ; preds = %do.body247
  %167 = load i8, i8* %bGotVariable, align 1
  %tobool249 = trunc i8 %167 to i1
  store i1 %tobool249, i1* %retval, align 1
  br label %return

if.end250:                                        ; preds = %while.end243
  br label %while.cond251

while.cond251:                                    ; preds = %if.end269, %if.end250
  %168 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext252 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %168, i32 0, i32 7
  %169 = load %struct._CXXToken*, %struct._CXXToken** %pNext252, align 8
  %tobool253 = icmp ne %struct._CXXToken* %169, null
  br i1 %tobool253, label %land.rhs254, label %land.end258

land.rhs254:                                      ; preds = %while.cond251
  %170 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext255 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %170, i32 0, i32 7
  %171 = load %struct._CXXToken*, %struct._CXXToken** %pNext255, align 8
  %eType256 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %171, i32 0, i32 0
  %172 = load i32, i32* %eType256, align 8
  %cmp257 = icmp eq i32 %172, 2
  br label %land.end258

land.end258:                                      ; preds = %land.rhs254, %while.cond251
  %173 = phi i1 [ false, %while.cond251 ], [ %cmp257, %land.rhs254 ]
  br i1 %173, label %while.body259, label %while.end270

while.body259:                                    ; preds = %land.end258
  %174 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext260 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %174, i32 0, i32 7
  %175 = load %struct._CXXToken*, %struct._CXXToken** %pNext260, align 8
  store %struct._CXXToken* %175, %struct._CXXToken** %t, align 8
  %176 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext261 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %176, i32 0, i32 7
  %177 = load %struct._CXXToken*, %struct._CXXToken** %pNext261, align 8
  %tobool262 = icmp ne %struct._CXXToken* %177, null
  br i1 %tobool262, label %land.lhs.true263, label %if.end269

land.lhs.true263:                                 ; preds = %while.body259
  %178 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext264 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %178, i32 0, i32 7
  %179 = load %struct._CXXToken*, %struct._CXXToken** %pNext264, align 8
  %eType265 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %179, i32 0, i32 0
  %180 = load i32, i32* %eType265, align 8
  %cmp266 = icmp eq i32 %180, 268435456
  br i1 %cmp266, label %if.then267, label %if.end269

if.then267:                                       ; preds = %land.lhs.true263
  %181 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext268 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %181, i32 0, i32 7
  %182 = load %struct._CXXToken*, %struct._CXXToken** %pNext268, align 8
  store %struct._CXXToken* %182, %struct._CXXToken** %t, align 8
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %land.lhs.true263, %while.body259
  br label %while.cond251

while.end270:                                     ; preds = %land.end258
  %183 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext271 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %183, i32 0, i32 7
  %184 = load %struct._CXXToken*, %struct._CXXToken** %pNext271, align 8
  %tobool272 = icmp ne %struct._CXXToken* %184, null
  br i1 %tobool272, label %if.end277, label %if.then273

if.then273:                                       ; preds = %while.end270
  br label %do.body274

do.body274:                                       ; preds = %if.then273
  br label %do.end275

do.end275:                                        ; preds = %do.body274
  %185 = load i8, i8* %bGotVariable, align 1
  %tobool276 = trunc i8 %185 to i1
  store i1 %tobool276, i1* %retval, align 1
  br label %return

if.end277:                                        ; preds = %while.end270
  %186 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext278 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %186, i32 0, i32 7
  %187 = load %struct._CXXToken*, %struct._CXXToken** %pNext278, align 8
  %eType279 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %187, i32 0, i32 0
  %188 = load i32, i32* %eType279, align 8
  %and280 = and i32 %188, 134218176
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.end286, label %if.then282

if.then282:                                       ; preds = %if.end277
  br label %do.body283

do.body283:                                       ; preds = %if.then282
  br label %do.end284

do.end284:                                        ; preds = %do.body283
  %189 = load i8, i8* %bGotVariable, align 1
  %tobool285 = trunc i8 %189 to i1
  store i1 %tobool285, i1* %retval, align 1
  br label %return

if.end286:                                        ; preds = %if.end277
  %190 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext287 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %190, i32 0, i32 7
  %191 = load %struct._CXXToken*, %struct._CXXToken** %pNext287, align 8
  store %struct._CXXToken* %191, %struct._CXXToken** %t, align 8
  %192 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %192, %struct._CXXToken** %pRemoveStart, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end60
  %193 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev288 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %193, i32 0, i32 8
  %194 = load %struct._CXXToken*, %struct._CXXToken** %pPrev288, align 8
  %eType289 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %194, i32 0, i32 0
  %195 = load i32, i32* %eType289, align 8
  %cmp290 = icmp ne i32 %195, 2
  br i1 %cmp290, label %if.then291, label %if.end295

if.then291:                                       ; preds = %sw.default
  br label %do.body292

do.body292:                                       ; preds = %if.then291
  br label %do.end293

do.end293:                                        ; preds = %do.body292
  %196 = load i8, i8* %bGotVariable, align 1
  %tobool294 = trunc i8 %196 to i1
  store i1 %tobool294, i1* %retval, align 1
  br label %return

if.end295:                                        ; preds = %sw.default
  %197 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev296 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %197, i32 0, i32 8
  %198 = load %struct._CXXToken*, %struct._CXXToken** %pPrev296, align 8
  store %struct._CXXToken* %198, %struct._CXXToken** %pIdentifier, align 8
  %199 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %pPrev297 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %199, i32 0, i32 8
  %200 = load %struct._CXXToken*, %struct._CXXToken** %pPrev297, align 8
  store %struct._CXXToken* %200, %struct._CXXToken** %pTokenBefore, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end295, %if.end286, %if.end231, %if.end195, %if.end178
  br label %do.body298

do.body298:                                       ; preds = %sw.epilog
  br label %do.end299

do.end299:                                        ; preds = %do.body298
  %201 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %tobool300 = icmp ne %struct._CXXToken* %201, null
  br i1 %tobool300, label %if.end331, label %if.then301

if.then301:                                       ; preds = %do.end299
  br label %do.body302

do.body302:                                       ; preds = %if.then301
  br label %do.end303

do.end303:                                        ; preds = %do.body302
  %202 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType304 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %202, i32 0, i32 0
  %203 = load i32, i32* %eType304, align 8
  %cmp305 = icmp eq i32 %203, 268435456
  br i1 %cmp305, label %land.lhs.true306, label %if.else328

land.lhs.true306:                                 ; preds = %do.end303
  %204 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext307 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %204, i32 0, i32 7
  %205 = load %struct._CXXToken*, %struct._CXXToken** %pNext307, align 8
  %tobool308 = icmp ne %struct._CXXToken* %205, null
  br i1 %tobool308, label %land.lhs.true309, label %if.else328

land.lhs.true309:                                 ; preds = %land.lhs.true306
  %206 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext310 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %206, i32 0, i32 7
  %207 = load %struct._CXXToken*, %struct._CXXToken** %pNext310, align 8
  %eType311 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %207, i32 0, i32 0
  %208 = load i32, i32* %eType311, align 8
  %cmp312 = icmp eq i32 %208, 2
  br i1 %cmp312, label %land.lhs.true313, label %if.else328

land.lhs.true313:                                 ; preds = %land.lhs.true309
  %209 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext314 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %209, i32 0, i32 7
  %210 = load %struct._CXXToken*, %struct._CXXToken** %pNext314, align 8
  %pNext315 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %210, i32 0, i32 7
  %211 = load %struct._CXXToken*, %struct._CXXToken** %pNext315, align 8
  %tobool316 = icmp ne %struct._CXXToken* %211, null
  br i1 %tobool316, label %land.lhs.true317, label %if.else328

land.lhs.true317:                                 ; preds = %land.lhs.true313
  %212 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext318 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %212, i32 0, i32 7
  %213 = load %struct._CXXToken*, %struct._CXXToken** %pNext318, align 8
  %pNext319 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %213, i32 0, i32 7
  %214 = load %struct._CXXToken*, %struct._CXXToken** %pNext319, align 8
  %eType320 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %214, i32 0, i32 0
  %215 = load i32, i32* %eType320, align 8
  %cmp321 = icmp eq i32 %215, 64
  br i1 %cmp321, label %if.then322, label %if.else328

if.then322:                                       ; preds = %land.lhs.true317
  br label %do.body323

do.body323:                                       ; preds = %if.then322
  br label %do.end324

do.end324:                                        ; preds = %do.body323
  %216 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext325 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %216, i32 0, i32 7
  %217 = load %struct._CXXToken*, %struct._CXXToken** %pNext325, align 8
  store %struct._CXXToken* %217, %struct._CXXToken** %pIdentifier, align 8
  %218 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %218, %struct._CXXToken** %pTokenBefore, align 8
  %219 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext326 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %219, i32 0, i32 7
  %220 = load %struct._CXXToken*, %struct._CXXToken** %pNext326, align 8
  %pNext327 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %220, i32 0, i32 7
  %221 = load %struct._CXXToken*, %struct._CXXToken** %pNext327, align 8
  store %struct._CXXToken* %221, %struct._CXXToken** %t, align 8
  br label %if.end330

if.else328:                                       ; preds = %land.lhs.true317, %land.lhs.true313, %land.lhs.true309, %land.lhs.true306, %do.end303
  %222 = load i8, i8* %bGotVariable, align 1
  %tobool329 = trunc i8 %222 to i1
  store i1 %tobool329, i1* %retval, align 1
  br label %return

if.end330:                                        ; preds = %do.end324
  br label %if.end331

if.end331:                                        ; preds = %if.end330, %do.end299
  %223 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %pNext332 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %223, i32 0, i32 7
  %224 = load %struct._CXXToken*, %struct._CXXToken** %pNext332, align 8
  store %struct._CXXToken* %224, %struct._CXXToken** %pScopeEnd, align 8
  store %struct._CXXToken* null, %struct._CXXToken** %pScopeStart, align 8
  br label %while.cond333

while.cond333:                                    ; preds = %if.end377, %if.end331
  %225 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %eType334 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %225, i32 0, i32 0
  %226 = load i32, i32* %eType334, align 8
  %cmp335 = icmp eq i32 %226, 32
  br i1 %cmp335, label %while.body336, label %while.end378

while.body336:                                    ; preds = %while.cond333
  %227 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 0), align 8
  %cmp337 = icmp eq i32 %227, 2
  br i1 %cmp337, label %if.end341, label %if.then338

if.then338:                                       ; preds = %while.body336
  br label %do.body339

do.body339:                                       ; preds = %if.then338
  br label %do.end340

do.end340:                                        ; preds = %do.body339
  store i1 false, i1* %retval, align 1
  br label %return

if.end341:                                        ; preds = %while.body336
  %228 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %pPrev342 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %228, i32 0, i32 8
  %229 = load %struct._CXXToken*, %struct._CXXToken** %pPrev342, align 8
  store %struct._CXXToken* %229, %struct._CXXToken** %pTokenBefore, align 8
  %230 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %tobool343 = icmp ne %struct._CXXToken* %230, null
  br i1 %tobool343, label %if.end348, label %if.then344

if.then344:                                       ; preds = %if.end341
  br label %do.body345

do.body345:                                       ; preds = %if.then344
  br label %do.end346

do.end346:                                        ; preds = %do.body345
  %231 = load i8, i8* %bGotVariable, align 1
  %tobool347 = trunc i8 %231 to i1
  store i1 %tobool347, i1* %retval, align 1
  br label %return

if.end348:                                        ; preds = %if.end341
  %232 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %eType349 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %232, i32 0, i32 0
  %233 = load i32, i32* %eType349, align 8
  %cmp350 = icmp eq i32 %233, 67108864
  br i1 %cmp350, label %if.then351, label %if.end363

if.then351:                                       ; preds = %if.end348
  %234 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %call352 = call %struct._CXXToken* @cxxTokenChainSkipBackToStartOfTemplateAngleBracket(%struct._CXXToken* %234)
  store %struct._CXXToken* %call352, %struct._CXXToken** %pAux, align 8
  %235 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %tobool353 = icmp ne %struct._CXXToken* %235, null
  br i1 %tobool353, label %lor.lhs.false354, label %if.then357

lor.lhs.false354:                                 ; preds = %if.then351
  %236 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %pPrev355 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %236, i32 0, i32 8
  %237 = load %struct._CXXToken*, %struct._CXXToken** %pPrev355, align 8
  %tobool356 = icmp ne %struct._CXXToken* %237, null
  br i1 %tobool356, label %if.end361, label %if.then357

if.then357:                                       ; preds = %lor.lhs.false354, %if.then351
  br label %do.body358

do.body358:                                       ; preds = %if.then357
  br label %do.end359

do.end359:                                        ; preds = %do.body358
  %238 = load i8, i8* %bGotVariable, align 1
  %tobool360 = trunc i8 %238 to i1
  store i1 %tobool360, i1* %retval, align 1
  br label %return

if.end361:                                        ; preds = %lor.lhs.false354
  %239 = load %struct._CXXToken*, %struct._CXXToken** %pAux, align 8
  %pPrev362 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %239, i32 0, i32 8
  %240 = load %struct._CXXToken*, %struct._CXXToken** %pPrev362, align 8
  store %struct._CXXToken* %240, %struct._CXXToken** %pTokenBefore, align 8
  br label %if.end363

if.end363:                                        ; preds = %if.end361, %if.end348
  %241 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %eType364 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %241, i32 0, i32 0
  %242 = load i32, i32* %eType364, align 8
  %cmp365 = icmp eq i32 %242, 2
  br i1 %cmp365, label %if.end370, label %if.then366

if.then366:                                       ; preds = %if.end363
  br label %do.body367

do.body367:                                       ; preds = %if.then366
  br label %do.end368

do.end368:                                        ; preds = %do.body367
  %243 = load i8, i8* %bGotVariable, align 1
  %tobool369 = trunc i8 %243 to i1
  store i1 %tobool369, i1* %retval, align 1
  br label %return

if.end370:                                        ; preds = %if.end363
  %244 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  store %struct._CXXToken* %244, %struct._CXXToken** %pScopeStart, align 8
  %245 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %pPrev371 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %245, i32 0, i32 8
  %246 = load %struct._CXXToken*, %struct._CXXToken** %pPrev371, align 8
  store %struct._CXXToken* %246, %struct._CXXToken** %pTokenBefore, align 8
  %247 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %tobool372 = icmp ne %struct._CXXToken* %247, null
  br i1 %tobool372, label %if.end377, label %if.then373

if.then373:                                       ; preds = %if.end370
  br label %do.body374

do.body374:                                       ; preds = %if.then373
  br label %do.end375

do.end375:                                        ; preds = %do.body374
  %248 = load i8, i8* %bGotVariable, align 1
  %tobool376 = trunc i8 %248 to i1
  store i1 %tobool376, i1* %retval, align 1
  br label %return

if.end377:                                        ; preds = %if.end370
  br label %while.cond333

while.end378:                                     ; preds = %while.cond333
  %249 = load i8, i8* %bGotVariable, align 1
  %tobool379 = trunc i8 %249 to i1
  br i1 %tobool379, label %if.end433, label %if.then380

if.then380:                                       ; preds = %while.end378
  %250 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %eType381 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %250, i32 0, i32 0
  %251 = load i32, i32* %eType381, align 8
  %and382 = and i32 %251, 49158
  %tobool383 = icmp ne i32 %and382, 0
  br i1 %tobool383, label %if.end432, label %if.then384

if.then384:                                       ; preds = %if.then380
  %252 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %eType385 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %252, i32 0, i32 0
  %253 = load i32, i32* %eType385, align 8
  %cmp386 = icmp eq i32 %253, 67108864
  br i1 %cmp386, label %if.then387, label %if.else409

if.then387:                                       ; preds = %if.then384
  %254 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %pPrev388 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %254, i32 0, i32 8
  %255 = load %struct._CXXToken*, %struct._CXXToken** %pPrev388, align 8
  store %struct._CXXToken* %255, %struct._CXXToken** %t2, align 8
  store i32 1, i32* %iLevel, align 4
  br label %while.cond389

while.cond389:                                    ; preds = %if.end400, %if.then387
  %256 = load %struct._CXXToken*, %struct._CXXToken** %t2, align 8
  %tobool390 = icmp ne %struct._CXXToken* %256, null
  br i1 %tobool390, label %while.body391, label %while.end402

while.body391:                                    ; preds = %while.cond389
  %257 = load %struct._CXXToken*, %struct._CXXToken** %t2, align 8
  %eType392 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %257, i32 0, i32 0
  %258 = load i32, i32* %eType392, align 8
  %cmp393 = icmp eq i32 %258, 67108864
  br i1 %cmp393, label %if.then394, label %if.else395

if.then394:                                       ; preds = %while.body391
  %259 = load i32, i32* %iLevel, align 4
  %inc = add nsw i32 %259, 1
  store i32 %inc, i32* %iLevel, align 4
  br label %if.end400

if.else395:                                       ; preds = %while.body391
  %260 = load %struct._CXXToken*, %struct._CXXToken** %t2, align 8
  %eType396 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %260, i32 0, i32 0
  %261 = load i32, i32* %eType396, align 8
  %cmp397 = icmp eq i32 %261, 4194304
  br i1 %cmp397, label %if.then398, label %if.end399

if.then398:                                       ; preds = %if.else395
  %262 = load i32, i32* %iLevel, align 4
  %dec = add nsw i32 %262, -1
  store i32 %dec, i32* %iLevel, align 4
  br label %if.end399

if.end399:                                        ; preds = %if.then398, %if.else395
  br label %if.end400

if.end400:                                        ; preds = %if.end399, %if.then394
  %263 = load %struct._CXXToken*, %struct._CXXToken** %t2, align 8
  %pPrev401 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %263, i32 0, i32 8
  %264 = load %struct._CXXToken*, %struct._CXXToken** %pPrev401, align 8
  store %struct._CXXToken* %264, %struct._CXXToken** %t2, align 8
  br label %while.cond389

while.end402:                                     ; preds = %while.cond389
  %265 = load i32, i32* %iLevel, align 4
  %cmp403 = icmp ne i32 %265, 0
  br i1 %cmp403, label %if.then404, label %if.end408

if.then404:                                       ; preds = %while.end402
  br label %do.body405

do.body405:                                       ; preds = %if.then404
  br label %do.end406

do.end406:                                        ; preds = %do.body405
  %266 = load i8, i8* %bGotVariable, align 1
  %tobool407 = trunc i8 %266 to i1
  store i1 %tobool407, i1* %retval, align 1
  br label %return

if.end408:                                        ; preds = %while.end402
  br label %if.end431

if.else409:                                       ; preds = %if.then384
  %267 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %eType410 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %267, i32 0, i32 0
  %268 = load i32, i32* %eType410, align 8
  %cmp411 = icmp eq i32 %268, 268435456
  br i1 %cmp411, label %land.lhs.true412, label %if.else426

land.lhs.true412:                                 ; preds = %if.else409
  %269 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %pPrev413 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %269, i32 0, i32 8
  %270 = load %struct._CXXToken*, %struct._CXXToken** %pPrev413, align 8
  %tobool414 = icmp ne %struct._CXXToken* %270, null
  br i1 %tobool414, label %land.lhs.true415, label %if.else426

land.lhs.true415:                                 ; preds = %land.lhs.true412
  %271 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %pPrev416 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %271, i32 0, i32 8
  %272 = load %struct._CXXToken*, %struct._CXXToken** %pPrev416, align 8
  %eType417 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %272, i32 0, i32 0
  %273 = load i32, i32* %eType417, align 8
  %cmp418 = icmp eq i32 %273, 2
  br i1 %cmp418, label %land.lhs.true419, label %if.else426

land.lhs.true419:                                 ; preds = %land.lhs.true415
  %274 = load %struct._CXXToken*, %struct._CXXToken** %pTokenBefore, align 8
  %pPrev420 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %274, i32 0, i32 8
  %275 = load %struct._CXXToken*, %struct._CXXToken** %pPrev420, align 8
  %pPrev421 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %275, i32 0, i32 8
  %276 = load %struct._CXXToken*, %struct._CXXToken** %pPrev421, align 8
  %tobool422 = icmp ne %struct._CXXToken* %276, null
  br i1 %tobool422, label %if.else426, label %if.then423

if.then423:                                       ; preds = %land.lhs.true419
  br label %do.body424

do.body424:                                       ; preds = %if.then423
  br label %do.end425

do.end425:                                        ; preds = %do.body424
  br label %if.end430

if.else426:                                       ; preds = %land.lhs.true419, %land.lhs.true415, %land.lhs.true412, %if.else409
  br label %do.body427

do.body427:                                       ; preds = %if.else426
  br label %do.end428

do.end428:                                        ; preds = %do.body427
  %277 = load i8, i8* %bGotVariable, align 1
  %tobool429 = trunc i8 %277 to i1
  store i1 %tobool429, i1* %retval, align 1
  br label %return

if.end430:                                        ; preds = %do.end425
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %if.end408
  br label %if.end432

if.end432:                                        ; preds = %if.end431, %if.then380
  store i8 1, i8* %bGotVariable, align 1
  br label %if.end433

if.end433:                                        ; preds = %if.end432, %while.end378
  store i32 0, i32* %iScopesPushed, align 4
  %278 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart, align 8
  %tobool434 = icmp ne %struct._CXXToken* %278, null
  br i1 %tobool434, label %if.then435, label %if.end450

if.then435:                                       ; preds = %if.end433
  br label %while.cond436

while.cond436:                                    ; preds = %do.end443, %if.then435
  %279 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart, align 8
  %280 = load %struct._CXXToken*, %struct._CXXToken** %pScopeEnd, align 8
  %cmp437 = icmp ne %struct._CXXToken* %279, %280
  br i1 %cmp437, label %while.body438, label %while.end449

while.body438:                                    ; preds = %while.cond436
  %281 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart, align 8
  %call439 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %281, i32 32)
  store %struct._CXXToken* %call439, %struct._CXXToken** %pPartEnd, align 8
  br label %do.body440

do.body440:                                       ; preds = %while.body438
  br label %do.end441

do.end441:                                        ; preds = %do.body440
  br label %do.body442

do.body442:                                       ; preds = %do.end441
  br label %do.end443

do.end443:                                        ; preds = %do.body442
  %282 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart, align 8
  %283 = load %struct._CXXToken*, %struct._CXXToken** %pPartEnd, align 8
  %pPrev444 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %283, i32 0, i32 8
  %284 = load %struct._CXXToken*, %struct._CXXToken** %pPrev444, align 8
  %call445 = call %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken* %282, %struct._CXXToken* %284, i32 0)
  store %struct._CXXToken* %call445, %struct._CXXToken** %pScopeId, align 8
  %285 = load %struct._CXXToken*, %struct._CXXToken** %pScopeId, align 8
  call void @cxxScopePush(%struct._CXXToken* %285, i32 2, i32 0)
  %286 = load %struct._CXXToken*, %struct._CXXToken** %pPartEnd, align 8
  %pNext447 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %286, i32 0, i32 7
  %287 = load %struct._CXXToken*, %struct._CXXToken** %pNext447, align 8
  store %struct._CXXToken* %287, %struct._CXXToken** %pAux446, align 8
  %288 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %289 = load %struct._CXXToken*, %struct._CXXToken** %pScopeStart, align 8
  %290 = load %struct._CXXToken*, %struct._CXXToken** %pPartEnd, align 8
  call void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %288, %struct._CXXToken* %289, %struct._CXXToken* %290)
  %291 = load %struct._CXXToken*, %struct._CXXToken** %pAux446, align 8
  store %struct._CXXToken* %291, %struct._CXXToken** %pScopeStart, align 8
  %292 = load i32, i32* %iScopesPushed, align 4
  %inc448 = add nsw i32 %292, 1
  store i32 %inc448, i32* %iScopesPushed, align 4
  br label %while.cond436

while.end449:                                     ; preds = %while.cond436
  br label %if.end450

if.end450:                                        ; preds = %while.end449, %if.end433
  %293 = load i32, i32* %uFlags.addr, align 4
  %and451 = and i32 %293, 1
  %tobool452 = icmp ne i32 %and451, 0
  %frombool = zext i1 %tobool452 to i8
  store i8 %frombool, i8* %bKnRStyleParameters, align 1
  %294 = load i8, i8* %bKnRStyleParameters, align 1
  %tobool453 = trunc i8 %294 to i1
  br i1 %tobool453, label %cond.true454, label %cond.false455

cond.true454:                                     ; preds = %if.end450
  br label %cond.end463

cond.false455:                                    ; preds = %if.end450
  %295 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and456 = and i32 %295, 4
  %tobool457 = icmp ne i32 %and456, 0
  br i1 %tobool457, label %cond.true458, label %cond.false459

cond.true458:                                     ; preds = %cond.false455
  br label %cond.end461

cond.false459:                                    ; preds = %cond.false455
  %call460 = call i32 @cxxScopeGetVariableKind()
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false459, %cond.true458
  %cond462 = phi i32 [ 12, %cond.true458 ], [ %call460, %cond.false459 ]
  br label %cond.end463

cond.end463:                                      ; preds = %cond.end461, %cond.true454
  %cond464 = phi i32 [ 13, %cond.true454 ], [ %cond462, %cond.end461 ]
  %296 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %call465 = call %struct.sTagEntryInfo* @cxxTagBegin(i32 %cond464, %struct._CXXToken* %296)
  store %struct.sTagEntryInfo* %call465, %struct.sTagEntryInfo** %tag, align 8
  %297 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %tobool466 = icmp ne %struct.sTagEntryInfo* %297, null
  br i1 %tobool466, label %if.then467, label %if.end566

if.then467:                                       ; preds = %cond.end463
  br label %do.body468

do.body468:                                       ; preds = %if.then467
  br label %do.end469

do.end469:                                        ; preds = %do.body468
  %298 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %299 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  %call470 = call zeroext i1 @cxxTokenChainTakeRecursive(%struct._CXXTokenChain* %298, %struct._CXXToken* %299)
  %300 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev471 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %300, i32 0, i32 8
  %301 = load %struct._CXXToken*, %struct._CXXToken** %pPrev471, align 8
  store %struct._CXXToken* %301, %struct._CXXToken** %pPartOfType, align 8
  br label %do.body472

do.body472:                                       ; preds = %do.end469
  br label %do.end473

do.end473:                                        ; preds = %do.body472
  br label %while.cond474

while.cond474:                                    ; preds = %if.end506, %do.end473
  %302 = load %struct._CXXToken*, %struct._CXXToken** %pPartOfType, align 8
  %tobool475 = icmp ne %struct._CXXToken* %302, null
  br i1 %tobool475, label %land.rhs476, label %land.end479

land.rhs476:                                      ; preds = %while.cond474
  %303 = load %struct._CXXToken*, %struct._CXXToken** %pPartOfType, align 8
  %eType477 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %303, i32 0, i32 0
  %304 = load i32, i32* %eType477, align 8
  %cmp478 = icmp eq i32 %304, 536870912
  br label %land.end479

land.end479:                                      ; preds = %land.rhs476, %while.cond474
  %305 = phi i1 [ false, %while.cond474 ], [ %cmp478, %land.rhs476 ]
  br i1 %305, label %while.body480, label %while.end508

while.body480:                                    ; preds = %land.end479
  %306 = load %struct._CXXToken*, %struct._CXXToken** %pPartOfType, align 8
  %pChain481 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %306, i32 0, i32 3
  %307 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain481, align 8
  store %struct._CXXTokenChain* %307, %struct._CXXTokenChain** %pAuxChain, align 8
  %308 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %iCount482 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %308, i32 0, i32 2
  %309 = load i32, i32* %iCount482, align 8
  %cmp483 = icmp sgt i32 %309, 2
  br i1 %cmp483, label %if.then484, label %if.end506

if.then484:                                       ; preds = %while.body480
  %310 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %iCount485 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %310, i32 0, i32 2
  %311 = load i32, i32* %iCount485, align 8
  %cmp486 = icmp sgt i32 %311, 3
  br i1 %cmp486, label %if.then491, label %lor.lhs.false487

lor.lhs.false487:                                 ; preds = %if.then484
  %312 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %call488 = call %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain* %312, i32 1)
  %eType489 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %call488, i32 0, i32 0
  %313 = load i32, i32* %eType489, align 8
  %cmp490 = icmp eq i32 %313, 8
  br i1 %cmp490, label %if.end505, label %if.then491

if.then491:                                       ; preds = %lor.lhs.false487, %if.then484
  %314 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %315 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %tobool492 = icmp ne %struct._CXXTokenChain* %315, null
  br i1 %tobool492, label %cond.true493, label %cond.false495

cond.true493:                                     ; preds = %if.then491
  %316 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %pHead494 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %316, i32 0, i32 0
  %317 = load %struct._CXXToken*, %struct._CXXToken** %pHead494, align 8
  br label %cond.end496

cond.false495:                                    ; preds = %if.then491
  br label %cond.end496

cond.end496:                                      ; preds = %cond.false495, %cond.true493
  %cond497 = phi %struct._CXXToken* [ %317, %cond.true493 ], [ null, %cond.false495 ]
  %pNext498 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond497, i32 0, i32 7
  %318 = load %struct._CXXToken*, %struct._CXXToken** %pNext498, align 8
  %319 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %tobool499 = icmp ne %struct._CXXTokenChain* %319, null
  br i1 %tobool499, label %cond.true500, label %cond.false501

cond.true500:                                     ; preds = %cond.end496
  %320 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pAuxChain, align 8
  %pTail = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %320, i32 0, i32 1
  %321 = load %struct._CXXToken*, %struct._CXXToken** %pTail, align 8
  br label %cond.end502

cond.false501:                                    ; preds = %cond.end496
  br label %cond.end502

cond.end502:                                      ; preds = %cond.false501, %cond.true500
  %cond503 = phi %struct._CXXToken* [ %321, %cond.true500 ], [ null, %cond.false501 ]
  %pPrev504 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %cond503, i32 0, i32 8
  %322 = load %struct._CXXToken*, %struct._CXXToken** %pPrev504, align 8
  call void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %314, %struct._CXXToken* %318, %struct._CXXToken* %322)
  br label %if.end505

if.end505:                                        ; preds = %cond.end502, %lor.lhs.false487
  br label %if.end506

if.end506:                                        ; preds = %if.end505, %while.body480
  %323 = load %struct._CXXToken*, %struct._CXXToken** %pPartOfType, align 8
  %pPrev507 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %323, i32 0, i32 8
  %324 = load %struct._CXXToken*, %struct._CXXToken** %pPrev507, align 8
  store %struct._CXXToken* %324, %struct._CXXToken** %pPartOfType, align 8
  br label %while.cond474

while.end508:                                     ; preds = %land.end479
  %325 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %tobool509 = icmp ne %struct._CXXTokenChain* %325, null
  br i1 %tobool509, label %cond.true510, label %cond.false512

cond.true510:                                     ; preds = %while.end508
  %326 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %pHead511 = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %326, i32 0, i32 0
  %327 = load %struct._CXXToken*, %struct._CXXToken** %pHead511, align 8
  br label %cond.end513

cond.false512:                                    ; preds = %while.end508
  br label %cond.end513

cond.end513:                                      ; preds = %cond.false512, %cond.true510
  %cond514 = phi %struct._CXXToken* [ %327, %cond.true510 ], [ null, %cond.false512 ]
  %328 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev515 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %328, i32 0, i32 8
  %329 = load %struct._CXXToken*, %struct._CXXToken** %pPrev515, align 8
  %call516 = call %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken* %cond514, %struct._CXXToken* %329)
  store %struct._CXXToken* %call516, %struct._CXXToken** %pTypeToken, align 8
  %330 = load i8, i8* %bKnRStyleParameters, align 1
  %tobool517 = trunc i8 %330 to i1
  br i1 %tobool517, label %cond.true518, label %cond.false519

cond.true518:                                     ; preds = %cond.end513
  br label %cond.end534

cond.false519:                                    ; preds = %cond.end513
  %331 = load i32, i32* %eScopeType, align 4
  %cmp520 = icmp eq i32 %331, 1
  br i1 %cmp520, label %land.lhs.true521, label %lor.lhs.false526

land.lhs.true521:                                 ; preds = %cond.false519
  %332 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and522 = and i32 %332, 8
  %tobool523 = icmp ne i32 %and522, 0
  br i1 %tobool523, label %land.lhs.true524, label %lor.lhs.false526

land.lhs.true524:                                 ; preds = %land.lhs.true521
  %call525 = call zeroext i1 @isInputHeaderFile()
  br i1 %call525, label %lor.lhs.false526, label %lor.end

lor.lhs.false526:                                 ; preds = %land.lhs.true524, %land.lhs.true521, %cond.false519
  %333 = load i32, i32* %eScopeType, align 4
  %cmp527 = icmp eq i32 %333, 0
  br i1 %cmp527, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false526
  %334 = load i32, i32* %eScopeType, align 4
  %cmp528 = icmp ne i32 %334, 1
  br i1 %cmp528, label %land.lhs.true529, label %land.end533

land.lhs.true529:                                 ; preds = %lor.rhs
  %335 = load i32, i32* %eScopeType, align 4
  %cmp530 = icmp ne i32 %335, 0
  br i1 %cmp530, label %land.rhs531, label %land.end533

land.rhs531:                                      ; preds = %land.lhs.true529
  %call532 = call zeroext i1 @isInputHeaderFile()
  %lnot = xor i1 %call532, true
  br label %land.end533

land.end533:                                      ; preds = %land.rhs531, %land.lhs.true529, %lor.rhs
  %336 = phi i1 [ false, %land.lhs.true529 ], [ false, %lor.rhs ], [ %lnot, %land.rhs531 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end533, %lor.lhs.false526, %land.lhs.true524
  %337 = phi i1 [ true, %lor.lhs.false526 ], [ true, %land.lhs.true524 ], [ %336, %land.end533 ]
  %lor.ext = zext i1 %337 to i32
  br label %cond.end534

cond.end534:                                      ; preds = %lor.end, %cond.true518
  %cond535 = phi i32 [ 1, %cond.true518 ], [ %lor.ext, %lor.end ]
  %338 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag, align 8
  %339 = bitcast %struct.sTagEntryInfo* %338 to i8*
  %340 = trunc i32 %cond535 to i8
  %bf.load = load i8, i8* %339, align 8
  %bf.value = and i8 %340, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %339, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  store %struct.sVString* null, %struct.sVString** %pszProperties, align 8
  %call536 = call zeroext i1 @cxxTagFieldEnabled(i32 0)
  br i1 %call536, label %if.then537, label %if.end558

if.then537:                                       ; preds = %cond.end534
  store i32 0, i32* %uProperties, align 4
  %341 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and538 = and i32 %341, 8
  %tobool539 = icmp ne i32 %and538, 0
  br i1 %tobool539, label %if.then540, label %if.end541

if.then540:                                       ; preds = %if.then537
  %342 = load i32, i32* %uProperties, align 4
  %or = or i32 %342, 2
  store i32 %or, i32* %uProperties, align 4
  br label %if.end541

if.end541:                                        ; preds = %if.then540, %if.then537
  %343 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and542 = and i32 %343, 4
  %tobool543 = icmp ne i32 %and542, 0
  br i1 %tobool543, label %if.then544, label %if.end546

if.then544:                                       ; preds = %if.end541
  %344 = load i32, i32* %uProperties, align 4
  %or545 = or i32 %344, 16
  store i32 %or545, i32* %uProperties, align 4
  br label %if.end546

if.end546:                                        ; preds = %if.then544, %if.end541
  %345 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and547 = and i32 %345, 256
  %tobool548 = icmp ne i32 %and547, 0
  br i1 %tobool548, label %if.then549, label %if.end551

if.then549:                                       ; preds = %if.end546
  %346 = load i32, i32* %uProperties, align 4
  %or550 = or i32 %346, 2048
  store i32 %or550, i32* %uProperties, align 4
  br label %if.end551

if.end551:                                        ; preds = %if.then549, %if.end546
  %347 = load i32, i32* getelementptr inbounds (%struct._CXXParserState, %struct._CXXParserState* @g_cxx, i32 0, i32 13), align 4
  %and552 = and i32 %347, 2048
  %tobool553 = icmp ne i32 %and552, 0
  br i1 %tobool553, label %if.then554, label %if.end556

if.then554:                                       ; preds = %if.end551
  %348 = load i32, i32* %uProperties, align 4
  %or555 = or i32 %348, 32768
  store i32 %or555, i32* %uProperties, align 4
  br label %if.end556

if.end556:                                        ; preds = %if.then554, %if.end551
  %349 = load i32, i32* %uProperties, align 4
  %call557 = call %struct.sVString* @cxxTagSetProperties(i32 %349)
  store %struct.sVString* %call557, %struct.sVString** %pszProperties, align 8
  br label %if.end558

if.end558:                                        ; preds = %if.end556, %cond.end534
  %call559 = call i32 @cxxTagCommit()
  %350 = load %struct._CXXToken*, %struct._CXXToken** %pTypeToken, align 8
  %tobool560 = icmp ne %struct._CXXToken* %350, null
  br i1 %tobool560, label %if.then561, label %if.end562

if.then561:                                       ; preds = %if.end558
  %351 = load %struct._CXXToken*, %struct._CXXToken** %pTypeToken, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %351)
  br label %if.end562

if.end562:                                        ; preds = %if.then561, %if.end558
  %352 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  %tobool563 = icmp ne %struct.sVString* %352, null
  br i1 %tobool563, label %if.then564, label %if.end565

if.then564:                                       ; preds = %if.end562
  %353 = load %struct.sVString*, %struct.sVString** %pszProperties, align 8
  call void @vStringDelete(%struct.sVString* %353)
  br label %if.end565

if.end565:                                        ; preds = %if.then564, %if.end562
  %354 = load %struct._CXXToken*, %struct._CXXToken** %pIdentifier, align 8
  call void @cxxTokenDestroy(%struct._CXXToken* %354)
  br label %if.end566

if.end566:                                        ; preds = %if.end565, %cond.end463
  br label %while.cond567

while.cond567:                                    ; preds = %while.body569, %if.end566
  %355 = load i32, i32* %iScopesPushed, align 4
  %cmp568 = icmp sgt i32 %355, 0
  br i1 %cmp568, label %while.body569, label %while.end571

while.body569:                                    ; preds = %while.cond567
  call void @cxxScopePop()
  %356 = load i32, i32* %iScopesPushed, align 4
  %dec570 = add nsw i32 %356, -1
  store i32 %dec570, i32* %iScopesPushed, align 4
  br label %while.cond567

while.end571:                                     ; preds = %while.cond567
  %357 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool572 = icmp ne %struct._CXXToken* %357, null
  br i1 %tobool572, label %if.end577, label %if.then573

if.then573:                                       ; preds = %while.end571
  br label %do.body574

do.body574:                                       ; preds = %if.then573
  br label %do.end575

do.end575:                                        ; preds = %do.body574
  %358 = load i8, i8* %bGotVariable, align 1
  %tobool576 = trunc i8 %358 to i1
  store i1 %tobool576, i1* %retval, align 1
  br label %return

if.end577:                                        ; preds = %while.end571
  %359 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType578 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %359, i32 0, i32 0
  %360 = load i32, i32* %eType578, align 8
  %and579 = and i32 %360, 524480
  %tobool580 = icmp ne i32 %and579, 0
  br i1 %tobool580, label %if.end596, label %if.then581

if.then581:                                       ; preds = %if.end577
  %361 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %call582 = call %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken* %361, i32 4718784)
  store %struct._CXXToken* %call582, %struct._CXXToken** %t, align 8
  %362 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool583 = icmp ne %struct._CXXToken* %362, null
  br i1 %tobool583, label %if.end588, label %if.then584

if.then584:                                       ; preds = %if.then581
  br label %do.body585

do.body585:                                       ; preds = %if.then584
  br label %do.end586

do.end586:                                        ; preds = %do.body585
  %363 = load i8, i8* %bGotVariable, align 1
  %tobool587 = trunc i8 %363 to i1
  store i1 %tobool587, i1* %retval, align 1
  br label %return

if.end588:                                        ; preds = %if.then581
  %364 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType589 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %364, i32 0, i32 0
  %365 = load i32, i32* %eType589, align 8
  %cmp590 = icmp eq i32 %365, 4194304
  br i1 %cmp590, label %if.then591, label %if.end595

if.then591:                                       ; preds = %if.end588
  br label %do.body592

do.body592:                                       ; preds = %if.then591
  br label %do.end593

do.end593:                                        ; preds = %do.body592
  %366 = load i8, i8* %bGotVariable, align 1
  %tobool594 = trunc i8 %366 to i1
  store i1 %tobool594, i1* %retval, align 1
  br label %return

if.end595:                                        ; preds = %if.end588
  br label %if.end596

if.end596:                                        ; preds = %if.end595, %if.end577
  %367 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType597 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %367, i32 0, i32 0
  %368 = load i32, i32* %eType597, align 8
  %and598 = and i32 %368, 524352
  %tobool599 = icmp ne i32 %and598, 0
  br i1 %tobool599, label %if.then600, label %if.end604

if.then600:                                       ; preds = %if.end596
  br label %do.body601

do.body601:                                       ; preds = %if.then600
  br label %do.end602

do.end602:                                        ; preds = %do.body601
  %369 = load i8, i8* %bGotVariable, align 1
  %tobool603 = trunc i8 %369 to i1
  store i1 %tobool603, i1* %retval, align 1
  br label %return

if.end604:                                        ; preds = %if.end596
  br label %do.body605

do.body605:                                       ; preds = %if.end604
  br label %do.end606

do.end606:                                        ; preds = %do.body605
  %370 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext607 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %370, i32 0, i32 7
  %371 = load %struct._CXXToken*, %struct._CXXToken** %pNext607, align 8
  store %struct._CXXToken* %371, %struct._CXXToken** %t, align 8
  br label %do.body608

do.body608:                                       ; preds = %do.end606
  br label %do.end609

do.end609:                                        ; preds = %do.body608
  %372 = load %struct._CXXToken*, %struct._CXXToken** %pRemoveStart, align 8
  %tobool610 = icmp ne %struct._CXXToken* %372, null
  br i1 %tobool610, label %if.end615, label %if.then611

if.then611:                                       ; preds = %do.end609
  br label %do.body612

do.body612:                                       ; preds = %if.then611
  br label %do.end613

do.end613:                                        ; preds = %do.body612
  %373 = load i8, i8* %bGotVariable, align 1
  %tobool614 = trunc i8 %373 to i1
  store i1 %tobool614, i1* %retval, align 1
  br label %return

if.end615:                                        ; preds = %do.end609
  %374 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain.addr, align 8
  %375 = load %struct._CXXToken*, %struct._CXXToken** %pRemoveStart, align 8
  %376 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pPrev616 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %376, i32 0, i32 8
  %377 = load %struct._CXXToken*, %struct._CXXToken** %pPrev616, align 8
  call void @cxxTokenChainDestroyRange(%struct._CXXTokenChain* %374, %struct._CXXToken* %375, %struct._CXXToken* %377)
  br label %while.cond

while.end617:                                     ; preds = %while.cond
  br label %do.body618

do.body618:                                       ; preds = %while.end617
  br label %do.end619

do.end619:                                        ; preds = %do.body618
  %378 = load i8, i8* %bGotVariable, align 1
  %tobool620 = trunc i8 %378 to i1
  store i1 %tobool620, i1* %retval, align 1
  br label %return

return:                                           ; preds = %do.end619, %do.end613, %do.end602, %do.end593, %do.end586, %do.end575, %do.end428, %do.end406, %do.end375, %do.end368, %do.end359, %do.end346, %do.end340, %if.else328, %do.end293, %do.end284, %do.end275, %do.end248, %do.end229, %do.end193, %do.end173, %do.end117, %do.end58, %do.end50, %do.end43, %do.end33, %do.end17, %do.end8, %do.end2
  %379 = load i1, i1* %retval, align 1
  ret i1 %379
}

declare i32 @cxxScopeGetType() #1

declare %struct._CXXToken* @cxxTokenChainSkipToEndOfTemplateAngleBracket(%struct._CXXToken*) #1

declare zeroext i1 @cxxParserTokenChainLooksLikeFunctionParameterList(%struct._CXXTokenChain*, %struct._CXXFunctionParameterInfo*) #1

declare %struct._CXXToken* @cxxTokenChainFirstPossiblyNestedTokenOfType(%struct._CXXTokenChain*, i32, %struct._CXXTokenChain**) #1

declare %struct._CXXToken* @cxxTokenChainAt(%struct._CXXTokenChain*, i32) #1

declare zeroext i1 @cxxParserTokenChainLooksLikeConstructorParameterSet(%struct._CXXTokenChain*) #1

declare zeroext i1 @cxxKeywordMayBePartOfTypeName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._CXXToken* @cxxParserVardefInParenthesis(%struct._CXXToken* %pToken, i32 %depth) #0 {
entry:
  %retval = alloca %struct._CXXToken*, align 8
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %depth.addr = alloca i32, align 4
  %t = alloca %struct._CXXToken*, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %call = call %struct._CXXToken* @cxxTokenChainNextTokenNotOfGeneric(%struct._CXXToken* %0, i1 (%struct._CXXToken*, i8*)* @isConstVolatileOrStar, i8* null)
  store %struct._CXXToken* %call, %struct._CXXToken** %t, align 8
  %1 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %tobool = icmp ne %struct._CXXToken* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %3, 268435456
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 3
  %5 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain, align 8
  %tobool2 = icmp ne %struct._CXXTokenChain* %5, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then1
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pChain3 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 3
  %7 = load %struct._CXXTokenChain*, %struct._CXXTokenChain** %pChain3, align 8
  %pHead = getelementptr inbounds %struct._CXXTokenChain, %struct._CXXTokenChain* %7, i32 0, i32 0
  %8 = load %struct._CXXToken*, %struct._CXXToken** %pHead, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._CXXToken* [ %8, %cond.true ], [ null, %cond.false ]
  %9 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %9, 1
  %call4 = call %struct._CXXToken* @cxxParserVardefInParenthesis(%struct._CXXToken* %cond, i32 %add)
  store %struct._CXXToken* %call4, %struct._CXXToken** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %10 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %eType5 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %10, i32 0, i32 0
  %11 = load i32, i32* %eType5, align 8
  %cmp6 = icmp eq i32 %11, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %12, i32 0, i32 7
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pNext, align 8
  %tobool7 = icmp ne %struct._CXXToken* %13, null
  br i1 %tobool7, label %land.lhs.true8, label %lor.lhs.false

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext9 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %14, i32 0, i32 7
  %15 = load %struct._CXXToken*, %struct._CXXToken** %pNext9, align 8
  %eType10 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %15, i32 0, i32 0
  %16 = load i32, i32* %eType10, align 8
  %and = and i32 %16, 553648128
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true8, %land.lhs.true
  %17 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  %pNext12 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %17, i32 0, i32 7
  %18 = load %struct._CXXToken*, %struct._CXXToken** %pNext12, align 8
  %tobool13 = icmp ne %struct._CXXToken* %18, null
  br i1 %tobool13, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %19 = load i32, i32* %depth.addr, align 4
  %cmp15 = icmp sgt i32 %19, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14, %land.lhs.true8
  %20 = load %struct._CXXToken*, %struct._CXXToken** %t, align 8
  store %struct._CXXToken* %20, %struct._CXXToken** %retval, align 8
  br label %return

if.end17:                                         ; preds = %land.lhs.true14, %lor.lhs.false, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  store %struct._CXXToken* null, %struct._CXXToken** %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then16, %cond.end, %if.then
  %21 = load %struct._CXXToken*, %struct._CXXToken** %retval, align 8
  ret %struct._CXXToken* %21
}

declare %struct._CXXToken* @cxxTokenChainSkipBackToStartOfTemplateAngleBracket(%struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTokenChainNextTokenOfType(%struct._CXXToken*, i32) #1

declare %struct._CXXToken* @cxxTokenChainExtractRange(%struct._CXXToken*, %struct._CXXToken*, i32) #1

declare void @cxxScopePush(%struct._CXXToken*, i32, i32) #1

declare void @cxxTokenChainDestroyRange(%struct._CXXTokenChain*, %struct._CXXToken*, %struct._CXXToken*) #1

declare %struct.sTagEntryInfo* @cxxTagBegin(i32, %struct._CXXToken*) #1

declare i32 @cxxScopeGetVariableKind() #1

declare zeroext i1 @cxxTokenChainTakeRecursive(%struct._CXXTokenChain*, %struct._CXXToken*) #1

declare %struct._CXXToken* @cxxTagCheckAndSetTypeField(%struct._CXXToken*, %struct._CXXToken*) #1

declare zeroext i1 @isInputHeaderFile() #1

declare zeroext i1 @cxxTagFieldEnabled(i32) #1

declare %struct.sVString* @cxxTagSetProperties(i32) #1

declare i32 @cxxTagCommit() #1

declare void @cxxTokenDestroy(%struct._CXXToken*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare void @cxxScopePop() #1

declare %struct._CXXToken* @cxxTokenChainNextTokenNotOfGeneric(%struct._CXXToken*, i1 (%struct._CXXToken*, i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isConstVolatileOrStar(%struct._CXXToken* %t, i8* %data) #0 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca %struct._CXXToken*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._CXXToken* %t, %struct._CXXToken** %t.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %0, i32 0, i32 0
  %1 = load i32, i32* %eType, align 8
  %cmp = icmp eq i32 %1, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eType1 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %2, i32 0, i32 0
  %3 = load i32, i32* %eType1, align 8
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eKeyword = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %4, i32 0, i32 2
  %5 = load i32, i32* %eKeyword, align 8
  %cmp3 = icmp eq i32 %5, 31
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._CXXToken*, %struct._CXXToken** %t.addr, align 8
  %eKeyword4 = getelementptr inbounds %struct._CXXToken, %struct._CXXToken* %6, i32 0, i32 2
  %7 = load i32, i32* %eKeyword4, align 8
  %cmp5 = icmp eq i32 %7, 92
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i1 true, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %lor.lhs.false, %if.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
