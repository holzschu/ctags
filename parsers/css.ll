; ModuleID = 'css.c'
source_filename = "css.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
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
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tokenInfo = type { i32, %struct.sVString* }

@.str = private unnamed_addr constant [4 x i8] c"CSS\00", align 1
@CssKinds = internal global [3 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"selectors\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"identities\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"css\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"supports\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @CssParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @CssKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 3, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findCssTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findCssTags() #0 {
entry:
  %readNextToken = alloca i8, align 1
  %token = alloca %struct.tokenInfo, align 8
  %useContents = alloca i8, align 1
  %kind = alloca i32, align 4
  %filePosition = alloca %struct._MIOPos, align 8
  %lineNumber = alloca i64, align 8
  %selector = alloca %struct.sVString*, align 8
  %tmp = alloca %struct._MIOPos, align 8
  %depth = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  %depth74 = alloca i32, align 4
  store i8 1, i8* %readNextToken, align 1
  %call = call %struct.sVString* @vStringNew()
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  store %struct.sVString* %call, %struct.sVString** %string, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond97, %entry
  %0 = load i8, i8* %readNextToken, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @readToken(%struct.tokenInfo* %token)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  store i8 1, i8* %readNextToken, align 1
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %1, 64
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @readToken(%struct.tokenInfo* %token)
  %string2 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %2 = load %struct.sVString*, %struct.sVString** %string2, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %call3 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %string5 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %4 = load %struct.sVString*, %struct.sVString** %string5, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer6, align 8
  %call7 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %cmp8 = icmp eq i32 %call7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %6 = phi i1 [ true, %if.then1 ], [ %cmp8, %lor.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %useContents, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %lor.end
  %type9 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %7 = load i32, i32* %type9, align 8
  %cmp10 = icmp ne i32 %7, 257
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %type11 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %8 = load i32, i32* %type11, align 8
  %cmp12 = icmp ne i32 %8, 59
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %type13 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %9 = load i32, i32* %type13, align 8
  %cmp14 = icmp ne i32 %9, 123
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @readToken(%struct.tokenInfo* %token)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8, i8* %useContents, align 1
  %tobool15 = trunc i8 %11 to i1
  br i1 %tobool15, label %land.rhs16, label %land.end19

land.rhs16:                                       ; preds = %while.end
  %type17 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %12 = load i32, i32* %type17, align 8
  %cmp18 = icmp eq i32 %12, 123
  br label %land.end19

land.end19:                                       ; preds = %land.rhs16, %while.end
  %13 = phi i1 [ false, %while.end ], [ %cmp18, %land.rhs16 ]
  %frombool20 = zext i1 %13 to i8
  store i8 %frombool20, i8* %readNextToken, align 1
  br label %if.end96

if.else:                                          ; preds = %if.end
  %type21 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %14 = load i32, i32* %type21, align 8
  %cmp22 = icmp eq i32 %14, 258
  br i1 %cmp22, label %if.then23, label %if.else70

if.then23:                                        ; preds = %if.else
  store i32 1, i32* %kind, align 4
  %call24 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call24, %struct.sVString** %selector, align 8
  br label %do.body25

do.body25:                                        ; preds = %do.cond, %if.then23
  %15 = load %struct.sVString*, %struct.sVString** %selector, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 0
  %16 = load i64, i64* %length, align 8
  %cmp26 = icmp ugt i64 %16, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body25
  %17 = load %struct.sVString*, %struct.sVString** %selector, align 8
  call void @vStringPut(%struct.sVString* %17, i32 32)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.body25
  %18 = load %struct.sVString*, %struct.sVString** %selector, align 8
  %string29 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %19 = load %struct.sVString*, %struct.sVString** %string29, align 8
  call void @vStringCat(%struct.sVString* %18, %struct.sVString* %19)
  %string30 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %20 = load %struct.sVString*, %struct.sVString** %string30, align 8
  %call31 = call i32 @classifySelector(%struct.sVString* %20)
  store i32 %call31, i32* %kind, align 4
  %call32 = call i64 @getInputLineNumber()
  store i64 %call32, i64* %lineNumber, align 8
  %call33 = call [2 x i64] @getInputFilePosition()
  %21 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call33, [2 x i64]* %21, align 8
  %22 = bitcast %struct._MIOPos* %filePosition to i8*
  %23 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  call void @readToken(%struct.tokenInfo* %token)
  %type34 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %24 = load i32, i32* %type34, align 8
  %cmp35 = icmp eq i32 %24, 91
  br i1 %cmp35, label %if.then36, label %if.end60

if.then36:                                        ; preds = %if.end28
  store i32 1, i32* %depth, align 4
  br label %while.cond37

while.cond37:                                     ; preds = %if.end53, %if.then36
  %25 = load i32, i32* %depth, align 4
  %cmp38 = icmp sgt i32 %25, 0
  br i1 %cmp38, label %land.rhs39, label %land.end42

land.rhs39:                                       ; preds = %while.cond37
  %type40 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %26 = load i32, i32* %type40, align 8
  %cmp41 = icmp ne i32 %26, 257
  br label %land.end42

land.end42:                                       ; preds = %land.rhs39, %while.cond37
  %27 = phi i1 [ false, %while.cond37 ], [ %cmp41, %land.rhs39 ]
  br i1 %27, label %while.body43, label %while.end54

while.body43:                                     ; preds = %land.end42
  %28 = load %struct.sVString*, %struct.sVString** %selector, align 8
  %string44 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %29 = load %struct.sVString*, %struct.sVString** %string44, align 8
  call void @vStringCat(%struct.sVString* %28, %struct.sVString* %29)
  call void @readToken(%struct.tokenInfo* %token)
  %type45 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %30 = load i32, i32* %type45, align 8
  %cmp46 = icmp eq i32 %30, 91
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %while.body43
  %31 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %depth, align 4
  br label %if.end53

if.else48:                                        ; preds = %while.body43
  %type49 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %32 = load i32, i32* %type49, align 8
  %cmp50 = icmp eq i32 %32, 93
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else48
  %33 = load i32, i32* %depth, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %depth, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.else48
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then47
  br label %while.cond37

while.end54:                                      ; preds = %land.end42
  %type55 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %34 = load i32, i32* %type55, align 8
  %cmp56 = icmp ne i32 %34, 257
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %while.end54
  %35 = load %struct.sVString*, %struct.sVString** %selector, align 8
  %string58 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %36 = load %struct.sVString*, %struct.sVString** %string58, align 8
  call void @vStringCat(%struct.sVString* %35, %struct.sVString* %36)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %while.end54
  call void @readToken(%struct.tokenInfo* %token)
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end28
  br label %do.cond

do.cond:                                          ; preds = %if.end60
  %type61 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %37 = load i32, i32* %type61, align 8
  %cmp62 = icmp eq i32 %37, 258
  br i1 %cmp62, label %do.body25, label %do.end

do.end:                                           ; preds = %do.cond
  store i8 0, i8* %readNextToken, align 1
  %38 = load i32, i32* %kind, align 4
  %idxprom = zext i32 %38 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.sKindDefinition], [3 x %struct.sKindDefinition]* @CssKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %39 = load i8, i8* %enabled, align 8
  %tobool63 = trunc i8 %39 to i1
  br i1 %tobool63, label %if.then64, label %if.end69

if.then64:                                        ; preds = %do.end
  %40 = load %struct.sVString*, %struct.sVString** %selector, align 8
  %buffer65 = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer65, align 8
  %42 = load i32, i32* %kind, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %41, i32 %42)
  %43 = load i64, i64* %lineNumber, align 8
  %lineNumber66 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 1
  store i64 %43, i64* %lineNumber66, align 8
  %filePosition67 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 4
  %44 = bitcast %struct._MIOPos* %filePosition67 to i8*
  %45 = bitcast %struct._MIOPos* %filePosition to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %call68 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %do.end
  %46 = load %struct.sVString*, %struct.sVString** %selector, align 8
  call void @vStringDelete(%struct.sVString* %46)
  br label %if.end95

if.else70:                                        ; preds = %if.else
  %type71 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %47 = load i32, i32* %type71, align 8
  %cmp72 = icmp eq i32 %47, 123
  br i1 %cmp72, label %if.then73, label %if.end94

if.then73:                                        ; preds = %if.else70
  store i32 1, i32* %depth74, align 4
  br label %while.cond75

while.cond75:                                     ; preds = %if.end92, %if.then73
  %48 = load i32, i32* %depth74, align 4
  %cmp76 = icmp sgt i32 %48, 0
  br i1 %cmp76, label %land.rhs77, label %land.end80

land.rhs77:                                       ; preds = %while.cond75
  %type78 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %49 = load i32, i32* %type78, align 8
  %cmp79 = icmp ne i32 %49, 257
  br label %land.end80

land.end80:                                       ; preds = %land.rhs77, %while.cond75
  %50 = phi i1 [ false, %while.cond75 ], [ %cmp79, %land.rhs77 ]
  br i1 %50, label %while.body81, label %while.end93

while.body81:                                     ; preds = %land.end80
  call void @readToken(%struct.tokenInfo* %token)
  %type82 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %51 = load i32, i32* %type82, align 8
  %cmp83 = icmp eq i32 %51, 123
  br i1 %cmp83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %while.body81
  %52 = load i32, i32* %depth74, align 4
  %inc85 = add nsw i32 %52, 1
  store i32 %inc85, i32* %depth74, align 4
  br label %if.end92

if.else86:                                        ; preds = %while.body81
  %type87 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %53 = load i32, i32* %type87, align 8
  %cmp88 = icmp eq i32 %53, 125
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.else86
  %54 = load i32, i32* %depth74, align 4
  %dec90 = add nsw i32 %54, -1
  store i32 %dec90, i32* %depth74, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.else86
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then84
  br label %while.cond75

while.end93:                                      ; preds = %land.end80
  br label %if.end94

if.end94:                                         ; preds = %while.end93, %if.else70
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end69
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %land.end19
  br label %do.cond97

do.cond97:                                        ; preds = %if.end96
  %type98 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 0
  %55 = load i32, i32* %type98, align 8
  %cmp99 = icmp ne i32 %55, 257
  br i1 %cmp99, label %do.body, label %do.end100

do.end100:                                        ; preds = %do.cond97
  %string101 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %token, i32 0, i32 1
  %56 = load %struct.sVString*, %struct.sVString** %string101, align 8
  call void @vStringDelete(%struct.sVString* %56)
  ret void
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readToken(%struct.tokenInfo* %token) #0 {
entry:
  %token.addr = alloca %struct.tokenInfo*, align 8
  %c = alloca i32, align 4
  %vStringClear_s = alloca %struct.sVString*, align 8
  %delimiter = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.tokenInfo* %token, %struct.tokenInfo** %token.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %0, i32 0, i32 1
  %1 = load %struct.sVString*, %struct.sVString** %string, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %getNextChar

getNextChar:                                      ; preds = %do.end34, %do.end
  %call = call i32 @getcFromInputFile()
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %getNextChar
  %5 = load i32, i32* %c, align 4
  %call1 = call i32 @isspace(i32 %5) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @getcFromInputFile()
  store i32 %call2, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %c, align 4
  %7 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %7, i32 0, i32 0
  store i32 %6, i32* %type, align 8
  %8 = load i32, i32* %c, align 4
  switch i32 %8, label %sw.default [
    i32 -1, label %sw.bb
    i32 39, label %sw.bb4
    i32 34, label %sw.bb4
    i32 47, label %sw.bb17
  ]

sw.bb:                                            ; preds = %while.end
  %9 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type3 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %9, i32 0, i32 0
  store i32 257, i32* %type3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.end, %while.end
  %10 = load i32, i32* %c, align 4
  store i32 %10, i32* %delimiter, align 4
  br label %do.body5

do.body5:                                         ; preds = %land.end, %sw.bb4
  %11 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string6 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %11, i32 0, i32 1
  %12 = load %struct.sVString*, %struct.sVString** %string6, align 8
  %13 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %12, i32 %13)
  %call7 = call i32 @getcFromInputFile()
  store i32 %call7, i32* %c, align 4
  %14 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %14, 92
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body5
  %call8 = call i32 @getcFromInputFile()
  store i32 %call8, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body5
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %15 = load i32, i32* %c, align 4
  %cmp9 = icmp ne i32 %15, -1
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %delimiter, align 4
  %cmp10 = icmp ne i32 %16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %cmp10, %land.rhs ]
  br i1 %18, label %do.body5, label %do.end11

do.end11:                                         ; preds = %land.end
  %19 = load i32, i32* %c, align 4
  %cmp12 = icmp ne i32 %19, -1
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.end11
  %20 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string14 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %20, i32 0, i32 1
  %21 = load %struct.sVString*, %struct.sVString** %string14, align 8
  %22 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %21, i32 %22)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end11
  %23 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type16 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %23, i32 0, i32 0
  store i32 259, i32* %type16, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.end
  %call18 = call i32 @getcFromInputFile()
  store i32 %call18, i32* %d, align 4
  %24 = load i32, i32* %d, align 4
  %cmp19 = icmp ne i32 %24, 42
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %sw.bb17
  %25 = load i32, i32* %d, align 4
  call void @ungetcToInputFile(i32 %25)
  %26 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string21 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %26, i32 0, i32 1
  %27 = load %struct.sVString*, %struct.sVString** %string21, align 8
  %28 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %27, i32 %28)
  %29 = load i32, i32* %c, align 4
  %30 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type22 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %30, i32 0, i32 0
  store i32 %29, i32* %type22, align 8
  br label %if.end35

if.else:                                          ; preds = %sw.bb17
  %call23 = call i32 @getcFromInputFile()
  store i32 %call23, i32* %d, align 4
  br label %do.body24

do.body24:                                        ; preds = %land.end33, %if.else
  %31 = load i32, i32* %d, align 4
  store i32 %31, i32* %c, align 4
  %call25 = call i32 @getcFromInputFile()
  store i32 %call25, i32* %d, align 4
  br label %do.cond26

do.cond26:                                        ; preds = %do.body24
  %32 = load i32, i32* %d, align 4
  %cmp27 = icmp ne i32 %32, -1
  br i1 %cmp27, label %land.rhs28, label %land.end33

land.rhs28:                                       ; preds = %do.cond26
  %33 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %33, 42
  br i1 %cmp29, label %land.rhs30, label %land.end32

land.rhs30:                                       ; preds = %land.rhs28
  %34 = load i32, i32* %d, align 4
  %cmp31 = icmp eq i32 %34, 47
  br label %land.end32

land.end32:                                       ; preds = %land.rhs30, %land.rhs28
  %35 = phi i1 [ false, %land.rhs28 ], [ %cmp31, %land.rhs30 ]
  %lnot = xor i1 %35, true
  br label %land.end33

land.end33:                                       ; preds = %land.end32, %do.cond26
  %36 = phi i1 [ false, %do.cond26 ], [ %lnot, %land.end32 ]
  br i1 %36, label %do.body24, label %do.end34

do.end34:                                         ; preds = %land.end33
  br label %getNextChar

if.end35:                                         ; preds = %if.then20
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  %37 = load i32, i32* %c, align 4
  %call36 = call i32 @isalnum(i32 %37) #4
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.else62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %38 = load i32, i32* %c, align 4
  %cmp38 = icmp eq i32 %38, 95
  br i1 %cmp38, label %if.else62, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %39 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %39, 45
  br i1 %cmp40, label %if.else62, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false39
  %40 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %40, 43
  br i1 %cmp42, label %if.else62, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false41
  %41 = load i32, i32* %c, align 4
  %cmp44 = icmp eq i32 %41, 62
  br i1 %cmp44, label %if.else62, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false43
  %42 = load i32, i32* %c, align 4
  %cmp46 = icmp eq i32 %42, 124
  br i1 %cmp46, label %if.else62, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false45
  %43 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %43, 40
  br i1 %cmp48, label %if.else62, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false47
  %44 = load i32, i32* %c, align 4
  %cmp50 = icmp eq i32 %44, 41
  br i1 %cmp50, label %if.else62, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false49
  %45 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %45, 46
  br i1 %cmp52, label %if.else62, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false51
  %46 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %46, 58
  br i1 %cmp54, label %if.else62, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false53
  %47 = load i32, i32* %c, align 4
  %cmp56 = icmp eq i32 %47, 42
  br i1 %cmp56, label %if.else62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false55
  %48 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %48, 35
  br i1 %cmp58, label %if.else62, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false57
  %49 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string60 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %49, i32 0, i32 1
  %50 = load %struct.sVString*, %struct.sVString** %string60, align 8
  %51 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %50, i32 %51)
  %52 = load i32, i32* %c, align 4
  %53 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type61 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %53, i32 0, i32 0
  store i32 %52, i32* %type61, align 8
  br label %if.end65

if.else62:                                        ; preds = %lor.lhs.false57, %lor.lhs.false55, %lor.lhs.false53, %lor.lhs.false51, %lor.lhs.false49, %lor.lhs.false47, %lor.lhs.false45, %lor.lhs.false43, %lor.lhs.false41, %lor.lhs.false39, %lor.lhs.false, %sw.default
  %54 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %string63 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %54, i32 0, i32 1
  %55 = load %struct.sVString*, %struct.sVString** %string63, align 8
  %56 = load i32, i32* %c, align 4
  call void @parseSelector(%struct.sVString* %55, i32 %56)
  %57 = load %struct.tokenInfo*, %struct.tokenInfo** %token.addr, align 8
  %type64 = getelementptr inbounds %struct.tokenInfo, %struct.tokenInfo* %57, i32 0, i32 0
  store i32 258, i32* %type64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then59
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end65, %if.end35, %if.end15, %sw.bb
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @classifySelector(%struct.sVString* %selector) #0 {
entry:
  %retval = alloca i32, align 4
  %selector.addr = alloca %struct.sVString*, align 8
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  store %struct.sVString* %selector, %struct.sVString** %selector.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %selector.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  store i64 %1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sVString*, %struct.sVString** %selector.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i64, i64* %i, align 8
  %sub = sub i64 %5, 1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %sub
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %c, align 1
  %7 = load i8, i8* %c, align 1
  %conv = sext i8 %7 to i32
  %cmp1 = icmp eq i32 %conv, 46
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.body
  %8 = load i8, i8* %c, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 35
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %9 = load i64, i64* %i, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then6, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare i64 @getInputLineNumber() #1

declare [2 x i64] @getInputFilePosition() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare i32 @getcFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare void @ungetcToInputFile(i32) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseSelector(%struct.sVString* %string, i32 %firstChar) #0 {
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
  br i1 %cmp, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %5, 45
  br i1 %cmp5, label %lor.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %6 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %6, 43
  br i1 %cmp8, label %lor.end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %7 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %7, 62
  br i1 %cmp11, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %8 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %8, 124
  br i1 %cmp14, label %lor.end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %9 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %9, 40
  br i1 %cmp17, label %lor.end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %10 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %10, 41
  br i1 %cmp20, label %lor.end, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %11 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %11, 46
  br i1 %cmp23, label %lor.end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %12 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %12, 58
  br i1 %cmp26, label %lor.end, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %13 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %13, 42
  br i1 %cmp29, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false28
  %14 = load i32, i32* %c, align 4
  %cmp31 = icmp eq i32 %14, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false28, %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %do.cond
  %15 = phi i1 [ true, %lor.lhs.false28 ], [ true, %lor.lhs.false25 ], [ true, %lor.lhs.false22 ], [ true, %lor.lhs.false19 ], [ true, %lor.lhs.false16 ], [ true, %lor.lhs.false13 ], [ true, %lor.lhs.false10 ], [ true, %lor.lhs.false7 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp31, %lor.rhs ]
  br i1 %15, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %16 = load i32, i32* %c, align 4
  call void @ungetcToInputFile(i32 %16)
  ret void
}

declare void @vStringResize(%struct.sVString*, i64) #1

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
