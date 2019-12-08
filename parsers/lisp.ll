; ModuleID = 'lisp.c'
source_filename = "lisp.c"
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
%struct.sTagEntryInfo = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"Lisp\00", align 1
@LispKinds = internal global [1 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [7 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* null], align 8
@aliases = internal constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clisp\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"el\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"lisp\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"lsp\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"emacs-lisp\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @LispParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @LispKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  store i32 1, i32* %kindCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 3
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findLispTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %5
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findLispTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %p = alloca i8*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end77, %entry
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** %p, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end78

while.body:                                       ; preds = %while.cond
  %0 = load i8*, i8** %p, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp2 = icmp eq i32 %conv, 40
  br i1 %cmp2, label %if.then, label %if.end77

if.then:                                          ; preds = %while.body
  %2 = load i8*, i8** %p, align 8
  %call4 = call i32 @L_isdef(i8* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  br label %while.cond6

while.cond6:                                      ; preds = %while.body13, %if.then5
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv7 = zext i8 %4 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond6
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv10 = zext i8 %6 to i32
  %call11 = call i32 @isspace(i32 %conv10) #3
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond6
  %7 = phi i1 [ false, %while.cond6 ], [ %lnot, %land.rhs ]
  br i1 %7, label %while.body13, label %while.end

while.body13:                                     ; preds = %land.end
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond6

while.end:                                        ; preds = %land.end
  br label %while.cond14

while.cond14:                                     ; preds = %while.body18, %while.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv15 = zext i8 %10 to i32
  %call16 = call i32 @isspace(i32 %conv15) #3
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %while.body18, label %while.end20

while.body18:                                     ; preds = %while.cond14
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr19, i8** %p, align 8
  br label %while.cond14

while.end20:                                      ; preds = %while.cond14
  %12 = load %struct.sVString*, %struct.sVString** %name, align 8
  %13 = load i8*, i8** %p, align 8
  call void @L_getit(%struct.sVString* %12, i8* %13)
  br label %if.end76

if.else:                                          ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %land.end40, %if.else
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr21, i8** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv22 = zext i8 %16 to i32
  %cmp23 = icmp ne i32 %conv22, 0
  br i1 %cmp23, label %land.lhs.true, label %land.end40

land.lhs.true:                                    ; preds = %do.cond
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv25 = zext i8 %18 to i32
  %call26 = call i32 @isspace(i32 %conv25) #3
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.end40, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv29 = zext i8 %20 to i32
  %cmp30 = icmp ne i32 %conv29, 58
  br i1 %cmp30, label %land.lhs.true32, label %land.end40

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv33 = zext i8 %22 to i32
  %cmp34 = icmp ne i32 %conv33, 40
  br i1 %cmp34, label %land.rhs36, label %land.end40

land.rhs36:                                       ; preds = %land.lhs.true32
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %conv37 = zext i8 %24 to i32
  %cmp38 = icmp ne i32 %conv37, 41
  br label %land.end40

land.end40:                                       ; preds = %land.rhs36, %land.lhs.true32, %land.lhs.true28, %land.lhs.true, %do.cond
  %25 = phi i1 [ false, %land.lhs.true32 ], [ false, %land.lhs.true28 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp38, %land.rhs36 ]
  br i1 %25, label %do.body, label %do.end

do.end:                                           ; preds = %land.end40
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv41 = zext i8 %27 to i32
  %cmp42 = icmp eq i32 %conv41, 58
  br i1 %cmp42, label %if.then44, label %if.end75

if.then44:                                        ; preds = %do.end
  br label %do.body45

do.body45:                                        ; preds = %do.cond47, %if.then44
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  br label %do.cond47

do.cond47:                                        ; preds = %do.body45
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv48 = zext i8 %30 to i32
  %cmp49 = icmp eq i32 %conv48, 58
  br i1 %cmp49, label %do.body45, label %do.end51

do.end51:                                         ; preds = %do.cond47
  %31 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 -1
  %call52 = call i32 @L_isdef(i8* %add.ptr)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end

if.then54:                                        ; preds = %do.end51
  br label %while.cond55

while.cond55:                                     ; preds = %while.body65, %if.then54
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv56 = zext i8 %33 to i32
  %cmp57 = icmp ne i32 %conv56, 0
  br i1 %cmp57, label %land.rhs59, label %land.end64

land.rhs59:                                       ; preds = %while.cond55
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv60 = zext i8 %35 to i32
  %call61 = call i32 @isspace(i32 %conv60) #3
  %tobool62 = icmp ne i32 %call61, 0
  %lnot63 = xor i1 %tobool62, true
  br label %land.end64

land.end64:                                       ; preds = %land.rhs59, %while.cond55
  %36 = phi i1 [ false, %while.cond55 ], [ %lnot63, %land.rhs59 ]
  br i1 %36, label %while.body65, label %while.end67

while.body65:                                     ; preds = %land.end64
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr66, i8** %p, align 8
  br label %while.cond55

while.end67:                                      ; preds = %land.end64
  br label %while.cond68

while.cond68:                                     ; preds = %while.body72, %while.end67
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv69 = zext i8 %39 to i32
  %call70 = call i32 @isspace(i32 %conv69) #3
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %while.body72, label %while.end74

while.body72:                                     ; preds = %while.cond68
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  br label %while.cond68

while.end74:                                      ; preds = %while.cond68
  %41 = load %struct.sVString*, %struct.sVString** %name, align 8
  %42 = load i8*, i8** %p, align 8
  call void @L_getit(%struct.sVString* %41, i8* %42)
  br label %if.end

if.end:                                           ; preds = %while.end74, %do.end51
  br label %if.end75

if.end75:                                         ; preds = %if.end, %do.end
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %while.end20
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %while.body
  br label %while.cond

while.end78:                                      ; preds = %while.cond
  %43 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %43)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @L_isdef(i8* %strp) #0 {
entry:
  %strp.addr = alloca i8*, align 8
  store i8* %strp, i8** %strp.addr, align 8
  %0 = load i8*, i8** %strp.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %strp.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 68
  br i1 %cmp4, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %strp.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 101
  br i1 %cmp8, label %land.rhs, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %strp.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %cmp13 = icmp eq i32 %conv12, 69
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false10, %land.lhs.true
  %8 = load i8*, i8** %strp.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp eq i32 %conv16, 102
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i8*, i8** %strp.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %11 to i32
  %cmp21 = icmp eq i32 %conv20, 70
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %12 = phi i1 [ true, %land.rhs ], [ %cmp21, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false10, %lor.lhs.false
  %13 = phi i1 [ false, %lor.lhs.false10 ], [ false, %lor.lhs.false ], [ %12, %lor.end ]
  %land.ext = zext i1 %13 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @L_getit(%struct.sVString* %name, i8* %dbp) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %dbp.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i8* %dbp, i8** %dbp.addr, align 8
  %0 = load i8*, i8** %dbp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dbp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %dbp.addr, align 8
  br label %if.end10

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %dbp.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 40
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %5 = load i8*, i8** %dbp.addr, align 8
  %call = call i32 @L_isquote(i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %6 = load i8*, i8** %dbp.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 7
  store i8* %add.ptr, i8** %dbp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then5
  %7 = load i8*, i8** %dbp.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = zext i8 %8 to i32
  %call7 = call i32 @isspace(i32 %conv6) #3
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %dbp.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr9, i8** %dbp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %10 = load i8*, i8** %dbp.addr, align 8
  store i8* %10, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv11 = zext i8 %12 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %land.lhs.true14, label %land.end

land.lhs.true14:                                  ; preds = %for.cond
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv15 = zext i8 %14 to i32
  %cmp16 = icmp ne i32 %conv15, 40
  br i1 %cmp16, label %land.lhs.true18, label %land.end

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv19 = zext i8 %16 to i32
  %call20 = call i32 @isspace(i32 %conv19) #3
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true18
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv22 = zext i8 %18 to i32
  %cmp23 = icmp ne i32 %conv22, 41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true18, %land.lhs.true14, %for.cond
  %19 = phi i1 [ false, %land.lhs.true18 ], [ false, %land.lhs.true14 ], [ false, %for.cond ], [ %cmp23, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %20 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv25 = zext i8 %22 to i32
  call void @vStringPut(%struct.sVString* %20, i32 %conv25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 0
  %25 = load i64, i64* %length, align 8
  %cmp27 = icmp ugt i64 %25, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %for.end
  %26 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %call30 = call i32 @makeSimpleTag(%struct.sVString* %26, i32 0)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %for.end
  br label %do.body

do.body:                                          ; preds = %if.end31
  %27 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  store %struct.sVString* %27, %struct.sVString** %vStringClear_s, align 8
  %28 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length32 = getelementptr inbounds %struct.sVString, %struct.sVString* %28, i32 0, i32 0
  store i64 0, i64* %length32, align 8
  %29 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %29, i32 0, i32 2
  %30 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @L_isquote(i8* %strp) #0 {
entry:
  %strp.addr = alloca i8*, align 8
  store i8* %strp, i8** %strp.addr, align 8
  %0 = load i8*, i8** %strp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %strp.addr, align 8
  %1 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 113
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %strp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 81
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %strp.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr5, i8** %strp.addr, align 8
  %5 = load i8, i8* %incdec.ptr5, align 1
  %conv6 = zext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 117
  br i1 %cmp7, label %land.lhs.true13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %strp.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 85
  br i1 %cmp11, label %land.lhs.true13, label %land.end

land.lhs.true13:                                  ; preds = %lor.lhs.false9, %land.lhs.true
  %8 = load i8*, i8** %strp.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr14, i8** %strp.addr, align 8
  %9 = load i8, i8* %incdec.ptr14, align 1
  %conv15 = zext i8 %9 to i32
  %cmp16 = icmp eq i32 %conv15, 111
  br i1 %cmp16, label %land.lhs.true22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true13
  %10 = load i8*, i8** %strp.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv19 = zext i8 %11 to i32
  %cmp20 = icmp eq i32 %conv19, 79
  br i1 %cmp20, label %land.lhs.true22, label %land.end

land.lhs.true22:                                  ; preds = %lor.lhs.false18, %land.lhs.true13
  %12 = load i8*, i8** %strp.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr23, i8** %strp.addr, align 8
  %13 = load i8, i8* %incdec.ptr23, align 1
  %conv24 = zext i8 %13 to i32
  %cmp25 = icmp eq i32 %conv24, 116
  br i1 %cmp25, label %land.lhs.true31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true22
  %14 = load i8*, i8** %strp.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv28 = zext i8 %15 to i32
  %cmp29 = icmp eq i32 %conv28, 84
  br i1 %cmp29, label %land.lhs.true31, label %land.end

land.lhs.true31:                                  ; preds = %lor.lhs.false27, %land.lhs.true22
  %16 = load i8*, i8** %strp.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr32, i8** %strp.addr, align 8
  %17 = load i8, i8* %incdec.ptr32, align 1
  %conv33 = zext i8 %17 to i32
  %cmp34 = icmp eq i32 %conv33, 101
  br i1 %cmp34, label %land.rhs, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true31
  %18 = load i8*, i8** %strp.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv37 = zext i8 %19 to i32
  %cmp38 = icmp eq i32 %conv37, 69
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false36, %land.lhs.true31
  %20 = load i8*, i8** %strp.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr40, i8** %strp.addr, align 8
  %21 = load i8, i8* %incdec.ptr40, align 1
  %conv41 = zext i8 %21 to i32
  %call = call i32 @isspace(i32 %conv41) #3
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false36, %lor.lhs.false27, %lor.lhs.false18, %lor.lhs.false9, %lor.lhs.false
  %22 = phi i1 [ false, %lor.lhs.false36 ], [ false, %lor.lhs.false27 ], [ false, %lor.lhs.false18 ], [ false, %lor.lhs.false9 ], [ false, %lor.lhs.false ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  ret i32 %land.ext
}

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

declare i32 @makeSimpleTag(%struct.sVString*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
