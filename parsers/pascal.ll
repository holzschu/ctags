; ModuleID = 'pascal.c'
source_filename = "pascal.c"
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

@.str = private unnamed_addr constant [7 x i8] c"Pascal\00", align 1
@extensions = internal constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 8
@PascalKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pas\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"procedures\00", align 1
@dbp = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"onstructor\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"estructor\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"rocedure\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unction\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @PascalParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @PascalKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @findPascalTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %4
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findPascalTags() #0 {
entry:
  %name = alloca %struct.sVString*, align 8
  %tag = alloca %struct.sTagEntryInfo, align 8
  %kind = alloca i32, align 4
  %incomment = alloca i8, align 1
  %comment_char = alloca i32, align 4
  %inquote = alloca i8, align 1
  %get_tagname = alloca i8, align 1
  %found_tag = alloca i8, align 1
  %inparms = alloca i8, align 1
  %verify_tag = alloca i8, align 1
  %c = alloca i32, align 4
  %cp = alloca i8*, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  store i32 0, i32* %kind, align 4
  store i8 0, i8* %incomment, align 1
  store i32 0, i32* %comment_char, align 4
  store i8 0, i8* %inquote, align 1
  store i8 0, i8* %get_tagname, align 1
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %inparms, align 1
  store i8 0, i8* %verify_tag, align 1
  %call1 = call i8* @readLineFromInputFile()
  store i8* %call1, i8** @dbp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end179, %if.then124, %if.then116, %if.then89, %if.end73, %if.end66, %if.end62, %sw.bb51, %sw.bb, %if.end49, %if.end42, %if.then10, %entry
  %0 = load i8*, i8** @dbp, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %while.body, label %while.end180

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** @dbp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** @dbp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end21

if.then:                                          ; preds = %while.body
  %call4 = call i8* @readLineFromInputFile()
  store i8* %call4, i8** @dbp, align 8
  %4 = load i8*, i8** @dbp, align 8
  %cmp5 = icmp eq i8* %4, null
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i8*, i8** @dbp, align 8
  %6 = load i8, i8* %5, align 1
  %conv7 = zext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %if.then
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i8, i8* %found_tag, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false14

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8, i8* %verify_tag, align 1
  %tobool12 = trunc i8 %8 to i1
  br i1 %tobool12, label %if.end20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %land.lhs.true, %if.end
  %9 = load i8, i8* %get_tagname, align 1
  %tobool15 = trunc i8 %9 to i1
  br i1 %tobool15, label %if.end20, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false14
  %10 = load i8*, i8** @dbp, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr18, i8** @dbp, align 8
  %11 = load i8, i8* %10, align 1
  %conv19 = zext i8 %11 to i32
  store i32 %conv19, i32* %c, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %lor.lhs.false14, %land.lhs.true
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %while.body
  %12 = load i8, i8* %incomment, align 1
  %tobool22 = trunc i8 %12 to i1
  br i1 %tobool22, label %if.then23, label %if.else43

if.then23:                                        ; preds = %if.end21
  %13 = load i32, i32* %comment_char, align 4
  %cmp24 = icmp eq i32 %13, 123
  br i1 %cmp24, label %land.lhs.true26, label %if.else

land.lhs.true26:                                  ; preds = %if.then23
  %14 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %14, 125
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %land.lhs.true26
  store i8 0, i8* %incomment, align 1
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true26, %if.then23
  %15 = load i32, i32* %comment_char, align 4
  %cmp30 = icmp eq i32 %15, 40
  br i1 %cmp30, label %land.lhs.true32, label %if.end41

land.lhs.true32:                                  ; preds = %if.else
  %16 = load i32, i32* %c, align 4
  %cmp33 = icmp eq i32 %16, 42
  br i1 %cmp33, label %land.lhs.true35, label %if.end41

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %17 = load i8*, i8** @dbp, align 8
  %18 = load i8, i8* %17, align 1
  %conv36 = zext i8 %18 to i32
  %cmp37 = icmp eq i32 %conv36, 41
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %land.lhs.true35
  %19 = load i8*, i8** @dbp, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr40, i8** @dbp, align 8
  store i8 0, i8* %incomment, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true35, %land.lhs.true32, %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then29
  br label %while.cond

if.else43:                                        ; preds = %if.end21
  %20 = load i8, i8* %inquote, align 1
  %tobool44 = trunc i8 %20 to i1
  br i1 %tobool44, label %if.then45, label %if.else50

if.then45:                                        ; preds = %if.else43
  %21 = load i32, i32* %c, align 4
  %cmp46 = icmp eq i32 %21, 39
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  store i8 0, i8* %inquote, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then45
  br label %while.cond

if.else50:                                        ; preds = %if.else43
  %22 = load i32, i32* %c, align 4
  switch i32 %22, label %sw.epilog [
    i32 39, label %sw.bb
    i32 123, label %sw.bb51
    i32 40, label %sw.bb52
    i32 41, label %sw.bb63
    i32 59, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.else50
  store i8 1, i8* %inquote, align 1
  br label %while.cond

sw.bb51:                                          ; preds = %if.else50
  store i8 1, i8* %incomment, align 1
  %23 = load i32, i32* %c, align 4
  store i32 %23, i32* %comment_char, align 4
  br label %while.cond

sw.bb52:                                          ; preds = %if.else50
  %24 = load i8*, i8** @dbp, align 8
  %25 = load i8, i8* %24, align 1
  %conv53 = zext i8 %25 to i32
  %cmp54 = icmp eq i32 %conv53, 42
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %sw.bb52
  store i8 1, i8* %incomment, align 1
  %26 = load i32, i32* %c, align 4
  store i32 %26, i32* %comment_char, align 4
  %27 = load i8*, i8** @dbp, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr57, i8** @dbp, align 8
  br label %if.end62

if.else58:                                        ; preds = %sw.bb52
  %28 = load i8, i8* %found_tag, align 1
  %tobool59 = trunc i8 %28 to i1
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.else58
  store i8 1, i8* %inparms, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.else58
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then56
  br label %while.cond

sw.bb63:                                          ; preds = %if.else50
  %29 = load i8, i8* %inparms, align 1
  %tobool64 = trunc i8 %29 to i1
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %sw.bb63
  store i8 0, i8* %inparms, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %sw.bb63
  br label %while.cond

sw.bb67:                                          ; preds = %if.else50
  %30 = load i8, i8* %found_tag, align 1
  %tobool68 = trunc i8 %30 to i1
  br i1 %tobool68, label %land.lhs.true70, label %if.end73

land.lhs.true70:                                  ; preds = %sw.bb67
  %31 = load i8, i8* %inparms, align 1
  %tobool71 = trunc i8 %31 to i1
  br i1 %tobool71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %land.lhs.true70
  store i8 1, i8* %verify_tag, align 1
  br label %sw.epilog

if.end73:                                         ; preds = %land.lhs.true70, %sw.bb67
  br label %while.cond

sw.epilog:                                        ; preds = %if.else50, %if.then72
  br label %if.end74

if.end74:                                         ; preds = %sw.epilog
  br label %if.end75

if.end75:                                         ; preds = %if.end74
  %32 = load i8, i8* %found_tag, align 1
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %land.lhs.true78, label %if.end118

land.lhs.true78:                                  ; preds = %if.end75
  %33 = load i8, i8* %verify_tag, align 1
  %tobool79 = trunc i8 %33 to i1
  br i1 %tobool79, label %land.lhs.true81, label %if.end118

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %34 = load i8*, i8** @dbp, align 8
  %35 = load i8, i8* %34, align 1
  %conv82 = zext i8 %35 to i32
  %cmp83 = icmp ne i32 %conv82, 32
  br i1 %cmp83, label %if.then85, label %if.end118

if.then85:                                        ; preds = %land.lhs.true81
  %36 = load i8*, i8** @dbp, align 8
  %37 = load i8, i8* %36, align 1
  %conv86 = zext i8 %37 to i32
  %cmp87 = icmp eq i32 %conv86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then85
  br label %while.cond

if.end90:                                         ; preds = %if.then85
  %38 = load i8*, i8** @dbp, align 8
  %39 = load i8, i8* %38, align 1
  %conv91 = zext i8 %39 to i32
  %cmp92 = icmp eq i32 %conv91, 101
  %conv93 = zext i1 %cmp92 to i32
  %call94 = call i32 @tolower(i32 %conv93) #3
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then96, label %if.else100

if.then96:                                        ; preds = %if.end90
  %call97 = call zeroext i1 @tail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br i1 %call97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then96
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %verify_tag, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.then96
  br label %if.end110

if.else100:                                       ; preds = %if.end90
  %40 = load i8*, i8** @dbp, align 8
  %41 = load i8, i8* %40, align 1
  %conv101 = zext i8 %41 to i32
  %call102 = call i32 @tolower(i32 %conv101) #3
  %cmp103 = icmp eq i32 %call102, 102
  br i1 %cmp103, label %if.then105, label %if.end109

if.then105:                                       ; preds = %if.else100
  %call106 = call zeroext i1 @tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br i1 %call106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.then105
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %verify_tag, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.then105
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.else100
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end99
  %42 = load i8, i8* %found_tag, align 1
  %tobool111 = trunc i8 %42 to i1
  br i1 %tobool111, label %land.lhs.true113, label %if.end117

land.lhs.true113:                                 ; preds = %if.end110
  %43 = load i8, i8* %verify_tag, align 1
  %tobool114 = trunc i8 %43 to i1
  br i1 %tobool114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %land.lhs.true113
  store i8 0, i8* %found_tag, align 1
  store i8 0, i8* %verify_tag, align 1
  call void @makePascalTag(%struct.sTagEntryInfo* %tag)
  br label %while.cond

if.end117:                                        ; preds = %land.lhs.true113, %if.end110
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %land.lhs.true81, %land.lhs.true78, %if.end75
  %44 = load i8, i8* %get_tagname, align 1
  %tobool119 = trunc i8 %44 to i1
  br i1 %tobool119, label %if.then120, label %if.else153

if.then120:                                       ; preds = %if.end118
  %45 = load i8*, i8** @dbp, align 8
  %46 = load i8, i8* %45, align 1
  %conv121 = zext i8 %46 to i32
  %cmp122 = icmp eq i32 %conv121, 0
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.then120
  br label %while.cond

if.end125:                                        ; preds = %if.then120
  br label %while.cond126

while.cond126:                                    ; preds = %while.body130, %if.end125
  %47 = load i8*, i8** @dbp, align 8
  %48 = load i8, i8* %47, align 1
  %conv127 = zext i8 %48 to i32
  %call128 = call i32 @isspace(i32 %conv127) #3
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %while.body130, label %while.end

while.body130:                                    ; preds = %while.cond126
  %49 = load i8*, i8** @dbp, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr131, i8** @dbp, align 8
  br label %while.cond126

while.end:                                        ; preds = %while.cond126
  %50 = load i8*, i8** @dbp, align 8
  store i8* %50, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %51 = load i8*, i8** %cp, align 8
  %52 = load i8, i8* %51, align 1
  %conv132 = zext i8 %52 to i32
  %cmp133 = icmp ne i32 %conv132, 0
  br i1 %cmp133, label %land.rhs, label %land.end151

land.rhs:                                         ; preds = %for.cond
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv135 = zext i8 %54 to i32
  %call136 = call i32 @isalnum(i32 %conv135) #3
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %land.end, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %land.rhs
  %55 = load i8*, i8** %cp, align 8
  %56 = load i8, i8* %55, align 1
  %conv139 = zext i8 %56 to i32
  %cmp140 = icmp eq i32 %conv139, 95
  br i1 %cmp140, label %land.end, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false138
  %57 = load i8*, i8** %cp, align 8
  %58 = load i8, i8* %57, align 1
  %conv143 = zext i8 %58 to i32
  %cmp144 = icmp eq i32 %conv143, 46
  br i1 %cmp144, label %land.end, label %land.rhs146

land.rhs146:                                      ; preds = %lor.lhs.false142
  %59 = load i8*, i8** %cp, align 8
  %60 = load i8, i8* %59, align 1
  %conv147 = zext i8 %60 to i32
  %call148 = call i32 @isdigit(i32 %conv147) #3
  %tobool149 = icmp ne i32 %call148, 0
  %lnot = xor i1 %tobool149, true
  br label %land.end

land.end:                                         ; preds = %land.rhs146, %lor.lhs.false142, %lor.lhs.false138, %land.rhs
  %61 = phi i1 [ false, %lor.lhs.false142 ], [ false, %lor.lhs.false138 ], [ false, %land.rhs ], [ %lnot, %land.rhs146 ]
  %lnot150 = xor i1 %61, true
  br label %land.end151

land.end151:                                      ; preds = %land.end, %for.cond
  %62 = phi i1 [ false, %for.cond ], [ %lnot150, %land.end ]
  br i1 %62, label %for.body, label %for.end

for.body:                                         ; preds = %land.end151
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i8*, i8** %cp, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr152, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end151
  %64 = load %struct.sVString*, %struct.sVString** %name, align 8
  %65 = load i8*, i8** @dbp, align 8
  %66 = load i8*, i8** %cp, align 8
  %67 = load i8*, i8** @dbp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @vStringNCopyS(%struct.sVString* %64, i8* %65, i64 %sub.ptr.sub)
  %68 = load %struct.sVString*, %struct.sVString** %name, align 8
  %69 = load i32, i32* %kind, align 4
  call void @createPascalTag(%struct.sTagEntryInfo* %tag, %struct.sVString* %68, i32 %69)
  %70 = load i8*, i8** %cp, align 8
  store i8* %70, i8** @dbp, align 8
  store i8 0, i8* %get_tagname, align 1
  store i8 1, i8* %found_tag, align 1
  br label %if.end179

if.else153:                                       ; preds = %if.end118
  %71 = load i8, i8* %incomment, align 1
  %tobool154 = trunc i8 %71 to i1
  br i1 %tobool154, label %if.end178, label %land.lhs.true155

land.lhs.true155:                                 ; preds = %if.else153
  %72 = load i8, i8* %inquote, align 1
  %tobool156 = trunc i8 %72 to i1
  br i1 %tobool156, label %if.end178, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %land.lhs.true155
  %73 = load i8, i8* %found_tag, align 1
  %tobool158 = trunc i8 %73 to i1
  br i1 %tobool158, label %if.end178, label %if.then159

if.then159:                                       ; preds = %land.lhs.true157
  %74 = load i32, i32* %c, align 4
  %call160 = call i32 @tolower(i32 %74) #3
  switch i32 %call160, label %sw.epilog177 [
    i32 99, label %sw.bb161
    i32 100, label %sw.bb165
    i32 112, label %sw.bb169
    i32 102, label %sw.bb173
  ]

sw.bb161:                                         ; preds = %if.then159
  %call162 = call zeroext i1 @tail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br i1 %call162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %sw.bb161
  store i8 1, i8* %get_tagname, align 1
  store i32 1, i32* %kind, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %sw.bb161
  br label %sw.epilog177

sw.bb165:                                         ; preds = %if.then159
  %call166 = call zeroext i1 @tail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br i1 %call166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %sw.bb165
  store i8 1, i8* %get_tagname, align 1
  store i32 1, i32* %kind, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %sw.bb165
  br label %sw.epilog177

sw.bb169:                                         ; preds = %if.then159
  %call170 = call zeroext i1 @tail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br i1 %call170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %sw.bb169
  store i8 1, i8* %get_tagname, align 1
  store i32 1, i32* %kind, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %sw.bb169
  br label %sw.epilog177

sw.bb173:                                         ; preds = %if.then159
  %call174 = call zeroext i1 @tail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br i1 %call174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %sw.bb173
  store i8 1, i8* %get_tagname, align 1
  store i32 0, i32* %kind, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %sw.bb173
  br label %sw.epilog177

sw.epilog177:                                     ; preds = %if.then159, %if.end176, %if.end172, %if.end168, %if.end164
  br label %if.end178

if.end178:                                        ; preds = %sw.epilog177, %land.lhs.true157, %land.lhs.true155, %if.else153
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %for.end
  br label %while.cond

while.end180:                                     ; preds = %while.cond
  %75 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %75)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @tail(i8* %cp) #0 {
entry:
  %cp.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %len = alloca i32, align 4
  store i8* %cp, i8** %cp.addr, align 8
  store i8 0, i8* %result, align 1
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cp.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %cp.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @tolower(i32 %conv2) #3
  %4 = load i8*, i8** @dbp, align 8
  %5 = load i32, i32* %len, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %6 to i32
  %call4 = call i32 @tolower(i32 %conv3) #3
  %cmp5 = icmp eq i32 %call, %call4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cp.addr, align 8
  %9 = load i32, i32* %len, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %cp.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %12 = load i8*, i8** @dbp, align 8
  %13 = load i32, i32* %len, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %call13 = call i32 @isalnum(i32 %conv12) #3
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i8*, i8** @dbp, align 8
  %16 = load i32, i32* %len, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom14
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 95
  br i1 %cmp17, label %if.end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %18 = load i8*, i8** @dbp, align 8
  %19 = load i32, i32* %len, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %idxprom20
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv22, 46
  br i1 %cmp23, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false19
  %21 = load i32, i32* %len, align 4
  %22 = load i8*, i8** @dbp, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** @dbp, align 8
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false19, %lor.lhs.false, %land.lhs.true, %while.end
  %23 = load i8, i8* %result, align 1
  %tobool25 = trunc i8 %23 to i1
  ret i1 %tobool25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makePascalTag(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 7
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i32 @makeTagEntry(%struct.sTagEntryInfo* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #2

declare void @vStringNCopyS(%struct.sVString*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @createPascalTag(%struct.sTagEntryInfo* %tag, %struct.sVString* %name, i32 %kind) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %kind.addr = alloca i32, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @PascalKinds, i64 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 0
  %1 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %cmp = icmp ne %struct.sVString* %2, null
  br i1 %cmp, label %land.lhs.true1, label %if.else

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp2 = icmp ugt i64 %4, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true1
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %6 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %8 = load i32, i32* %kind.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %5, i8* %7, i32 %8)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %9, i8* null, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @vStringDelete(%struct.sVString*) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
