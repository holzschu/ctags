; ModuleID = 'kind.c'
source_filename = "kind.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sVString = type { i64, i64, i8* }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.kindControlBlock = type { %struct.sKindObject*, i32, i32 }
%struct.sKindObject = type { %struct.sKindDefinition*, void (%struct.sKindDefinition*)* }
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
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.colprintTable = type opaque
%struct.colprintLine = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s%c  %s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" [off]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Add kind[%d] \22%c,%s,%s\22 to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"L:LANGUAGE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"L:LETTER\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"L:NAME\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"L:ENABLED\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"L:REFONLY\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"L:NROLES\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"L:MASTER\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"L:DESCRIPTION\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"L:KIND(L/N)\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"'{' is not closed with '}' in \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"empty kind name is given in \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"ThisShouldNotBePrintedKindNameMustBeGiven\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"NO DESCRIPTION GIVEN\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @renderRole(%struct.sRoleDesc* %role, %struct.sVString* %b) #0 {
entry:
  %role.addr = alloca %struct.sRoleDesc*, align 8
  %b.addr = alloca %struct.sVString*, align 8
  store %struct.sRoleDesc* %role, %struct.sRoleDesc** %role.addr, align 8
  store %struct.sVString* %b, %struct.sVString** %b.addr, align 8
  %0 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %1 = load %struct.sRoleDesc*, %struct.sRoleDesc** %role.addr, align 8
  %name = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  call void @vStringCatS(%struct.sVString* %0, i8* %2)
  %3 = load %struct.sVString*, %struct.sVString** %b.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  ret i8* %4
}

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printKind(%struct.sKindDefinition* %kind, i1 zeroext %indent) #0 {
entry:
  %kind.addr = alloca %struct.sKindDefinition*, align 8
  %indent.addr = alloca i8, align 1
  store %struct.sKindDefinition* %kind, %struct.sKindDefinition** %kind.addr, align 8
  %frombool = zext i1 %indent to i8
  store i8 %frombool, i8* %indent.addr, align 1
  %0 = load i8, i8* %indent.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %2, i32 0, i32 1
  %3 = load i8, i8* %letter, align 1
  %conv = sext i8 %3 to i32
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %description = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %4, i32 0, i32 3
  %5 = load i8*, i8** %description, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %description2 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %6, i32 0, i32 3
  %7 = load i8*, i8** %description2, align 8
  br label %cond.end9

cond.false:                                       ; preds = %entry
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %8, i32 0, i32 2
  %9 = load i8*, i8** %name, align 8
  %cmp3 = icmp ne i8* %9, null
  br i1 %cmp3, label %cond.true5, label %cond.false7

cond.true5:                                       ; preds = %cond.false
  %10 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %name6 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %10, i32 0, i32 2
  %11 = load i8*, i8** %name6, align 8
  br label %cond.end

cond.false7:                                      ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false7, %cond.true5
  %cond8 = phi i8* [ %11, %cond.true5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %cond.false7 ]
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi i8* [ %7, %cond.true ], [ %cond8, %cond.end ]
  %12 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %12, i32 0, i32 0
  %13 = load i8, i8* %enabled, align 8
  %tobool11 = trunc i8 %13 to i1
  %14 = zext i1 %tobool11 to i64
  %cond13 = select i1 %tobool11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %cond, i32 %conv, i8* %cond10, i8* %cond13)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @scopeSeparatorFor(i32 %lang, i32 %kindIndex, i32 %parentKindIndex) #0 {
entry:
  %retval = alloca i8*, align 8
  %lang.addr = alloca i32, align 4
  %kindIndex.addr = alloca i32, align 4
  %parentKindIndex.addr = alloca i32, align 4
  %kind = alloca %struct.sKindDefinition*, align 8
  %table = alloca %struct.sScopeSeparator*, align 8
  store i32 %lang, i32* %lang.addr, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %parentKindIndex, i32* %parentKindIndex.addr, align 4
  %0 = load i32, i32* %lang.addr, align 4
  %1 = load i32, i32* %kindIndex.addr, align 4
  %call = call %struct.sKindDefinition* @getLanguageKind(i32 %0, i32 %1)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %kind, align 8
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %separators = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %2, i32 0, i32 7
  %3 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %separators, align 8
  store %struct.sScopeSeparator* %3, %struct.sScopeSeparator** %table, align 8
  %4 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %table, align 8
  %cmp = icmp eq %struct.sScopeSeparator* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %parentKindIndex.addr, align 4
  %cmp1 = icmp eq i32 %5, -1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8* null, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end
  %6 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %table, align 8
  %7 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %separators3 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %7, i32 0, i32 7
  %8 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %separators3, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.sScopeSeparator* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sScopeSeparator* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %9 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %separatorCount = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %9, i32 0, i32 8
  %10 = load i32, i32* %separatorCount, align 8
  %conv = zext i32 %10 to i64
  %cmp4 = icmp slt i64 %sub.ptr.div, %conv
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %table, align 8
  %parentKindIndex6 = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %11, i32 0, i32 0
  %12 = load i32, i32* %parentKindIndex6, align 8
  %cmp7 = icmp eq i32 %12, -3
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %13 = load i32, i32* %parentKindIndex.addr, align 4
  %cmp9 = icmp ne i32 %13, -1
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %14 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %table, align 8
  %parentKindIndex11 = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %14, i32 0, i32 0
  %15 = load i32, i32* %parentKindIndex11, align 8
  %16 = load i32, i32* %parentKindIndex.addr, align 4
  %cmp12 = icmp eq i32 %15, %16
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %table, align 8
  %separator = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %17, i32 0, i32 1
  %18 = load i8*, i8** %separator, align 8
  store i8* %18, i8** %retval, align 8
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  %19 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %table, align 8
  %incdec.ptr = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %19, i32 1
  store %struct.sScopeSeparator* %incdec.ptr, %struct.sScopeSeparator** %table, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %parentKindIndex.addr, align 4
  %cmp16 = icmp eq i32 %20, -1
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %while.end
  store i8* null, i8** %retval, align 8
  br label %return

if.else19:                                        ; preds = %while.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else19, %if.then18, %if.then14, %if.else, %if.then2
  %21 = load i8*, i8** %retval, align 8
  ret i8* %21
}

declare %struct.sKindDefinition* @getLanguageKind(i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @enableKind(%struct.sKindDefinition* %kind, i1 zeroext %enable) #0 {
entry:
  %kind.addr = alloca %struct.sKindDefinition*, align 8
  %enable.addr = alloca i8, align 1
  %slave = alloca %struct.sKindDefinition*, align 8
  store %struct.sKindDefinition* %kind, %struct.sKindDefinition** %kind.addr, align 8
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  %0 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %master = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %0, i32 0, i32 12
  %1 = load %struct.sKindDefinition*, %struct.sKindDefinition** %master, align 8
  %tobool = icmp ne %struct.sKindDefinition* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %master1 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %2, i32 0, i32 12
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %master1, align 8
  %4 = load i8, i8* %enable.addr, align 1
  %tobool2 = trunc i8 %4 to i1
  call void @enableKind(%struct.sKindDefinition* %3, i1 zeroext %tobool2)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8, i8* %enable.addr, align 1
  %tobool3 = trunc i8 %5 to i1
  %6 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %6, i32 0, i32 0
  %frombool4 = zext i1 %tobool3 to i8
  store i8 %frombool4, i8* %enabled, align 8
  %7 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %slave5 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %7, i32 0, i32 11
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave5, align 8
  store %struct.sKindDefinition* %8, %struct.sKindDefinition** %slave, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave, align 8
  %tobool6 = icmp ne %struct.sKindDefinition* %9, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8, i8* %enable.addr, align 1
  %tobool7 = trunc i8 %10 to i1
  %11 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave, align 8
  %enabled8 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %11, i32 0, i32 0
  %frombool9 = zext i1 %tobool7 to i8
  store i8 %frombool9, i8* %enabled8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave, align 8
  %slave10 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %12, i32 0, i32 11
  %13 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave10, align 8
  store %struct.sKindDefinition* %13, %struct.sKindDefinition** %slave, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.kindControlBlock* @allocKindControlBlock(%struct.sParserDefinition* %parser) #0 {
entry:
  %parser.addr = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  %kcb = alloca %struct.kindControlBlock*, align 8
  store %struct.sParserDefinition* %parser, %struct.sParserDefinition** %parser.addr, align 8
  %call = call i8* @eMalloc(i64 16)
  %0 = bitcast i8* %call to %struct.kindControlBlock*
  store %struct.kindControlBlock* %0, %struct.kindControlBlock** %kcb, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 2
  %2 = load i32, i32* %kindCount, align 8
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 16
  %call1 = call i8* @eMalloc(i64 %mul)
  %3 = bitcast i8* %call1 to %struct.sKindObject*
  %4 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %kind = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %4, i32 0, i32 0
  store %struct.sKindObject* %3, %struct.sKindObject** %kind, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %kindCount2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 2
  %6 = load i32, i32* %kindCount2, align 8
  %7 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %count = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %7, i32 0, i32 1
  store i32 %6, i32* %count, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 33
  %9 = load i32, i32* %id, align 4
  %10 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %owner = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %10, i32 0, i32 2
  store i32 %9, i32* %owner, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %kindCount3 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %12, i32 0, i32 2
  %13 = load i32, i32* %kindCount3, align 8
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %14, i32 0, i32 1
  %15 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kindTable, align 8
  %16 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %15, i64 %idx.ext
  %17 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %kind5 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %17, i32 0, i32 0
  %18 = load %struct.sKindObject*, %struct.sKindObject** %kind5, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %18, i64 %idxprom
  %def = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx, i32 0, i32 0
  store %struct.sKindDefinition* %add.ptr, %struct.sKindDefinition** %def, align 8
  %20 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %kind6 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %20, i32 0, i32 0
  %21 = load %struct.sKindObject*, %struct.sKindObject** %kind6, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %21, i64 %idxprom7
  %free = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx8, i32 0, i32 1
  store void (%struct.sKindDefinition*)* null, void (%struct.sKindDefinition*)** %free, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %kind9 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %24, i32 0, i32 0
  %25 = load %struct.sKindObject*, %struct.sKindObject** %kind9, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %26 to i64
  %arrayidx11 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %25, i64 %idxprom10
  %def12 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx11, i32 0, i32 0
  %27 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def12, align 8
  %id13 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %27, i32 0, i32 9
  store i32 %23, i32* %id13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  ret %struct.kindControlBlock* %29
}

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeKindControlBlock(%struct.kindControlBlock* %kcb) #0 {
entry:
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %i = alloca i32, align 4
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %count = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %3, i32 0, i32 0
  %4 = load %struct.sKindObject*, %struct.sKindObject** %kind, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %4, i64 %idxprom
  %free = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx, i32 0, i32 1
  %6 = load void (%struct.sKindDefinition*)*, void (%struct.sKindDefinition*)** %free, align 8
  %tobool = icmp ne void (%struct.sKindDefinition*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind1 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %7, i32 0, i32 0
  %8 = load %struct.sKindObject*, %struct.sKindObject** %kind1, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %8, i64 %idxprom2
  %free4 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx3, i32 0, i32 1
  %10 = load void (%struct.sKindDefinition*)*, void (%struct.sKindDefinition*)** %free4, align 8
  %11 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind5 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %11, i32 0, i32 0
  %12 = load %struct.sKindObject*, %struct.sKindObject** %kind5, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %12, i64 %idxprom6
  %def = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx7, i32 0, i32 0
  %14 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  call void %10(%struct.sKindDefinition* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind8 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %16, i32 0, i32 0
  %17 = load %struct.sKindObject*, %struct.sKindObject** %kind8, align 8
  %18 = bitcast %struct.sKindObject* %17 to i8*
  call void @eFree(i8* %18)
  %19 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %20 = bitcast %struct.kindControlBlock* %19 to i8*
  call void @eFree(i8* %20)
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @defineKind(%struct.kindControlBlock* %kcb, %struct.sKindDefinition* %def, void (%struct.sKindDefinition*)* %freeKindDef) #0 {
entry:
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %def.addr = alloca %struct.sKindDefinition*, align 8
  %freeKindDef.addr = alloca void (%struct.sKindDefinition*)*, align 8
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store %struct.sKindDefinition* %def, %struct.sKindDefinition** %def.addr, align 8
  store void (%struct.sKindDefinition*)* %freeKindDef, void (%struct.sKindDefinition*)** %freeKindDef.addr, align 8
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %count = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %count, align 8
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %id = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %2, i32 0, i32 9
  store i32 %1, i32* %id, align 4
  %3 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %3, i32 0, i32 0
  %4 = load %struct.sKindObject*, %struct.sKindObject** %kind, align 8
  %5 = bitcast %struct.sKindObject* %4 to i8*
  %6 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %count1 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %6, i32 0, i32 1
  %7 = load i32, i32* %count1, align 8
  %conv = zext i32 %7 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @eRealloc(i8* %5, i64 %mul)
  %8 = bitcast i8* %call to %struct.sKindObject*
  %9 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind2 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %9, i32 0, i32 0
  store %struct.sKindObject* %8, %struct.sKindObject** %kind2, align 8
  %10 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %11 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind3 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %11, i32 0, i32 0
  %12 = load %struct.sKindObject*, %struct.sKindObject** %kind3, align 8
  %13 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %id4 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %13, i32 0, i32 9
  %14 = load i32, i32* %id4, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %12, i64 %idxprom
  %def5 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx, i32 0, i32 0
  store %struct.sKindDefinition* %10, %struct.sKindDefinition** %def5, align 8
  %15 = load void (%struct.sKindDefinition*)*, void (%struct.sKindDefinition*)** %freeKindDef.addr, align 8
  %16 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind6 = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %16, i32 0, i32 0
  %17 = load %struct.sKindObject*, %struct.sKindObject** %kind6, align 8
  %18 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %id7 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %18, i32 0, i32 9
  %19 = load i32, i32* %id7, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %17, i64 %idxprom8
  %free = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx9, i32 0, i32 1
  store void (%struct.sKindDefinition*)* %15, void (%struct.sKindDefinition*)** %free, align 8
  %20 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %id10 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %20, i32 0, i32 9
  %21 = load i32, i32* %id10, align 4
  %22 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %22, i32 0, i32 1
  %23 = load i8, i8* %letter, align 1
  %conv11 = sext i8 %23 to i32
  %24 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %24, i32 0, i32 2
  %25 = load i8*, i8** %name, align 8
  %26 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %description = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %26, i32 0, i32 3
  %27 = load i8*, i8** %description, align 8
  %28 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %owner = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %28, i32 0, i32 2
  %29 = load i32, i32* %owner, align 4
  %call12 = call i8* @getLanguageName(i32 %29)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %21, i32 %conv11, i8* %25, i8* %27, i8* %call12)
  %30 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %id13 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %30, i32 0, i32 9
  %31 = load i32, i32* %id13, align 4
  ret i32 %31
}

declare i8* @eRealloc(i8*, i64) #1

declare void @verbose(i8*, ...) #1

declare i8* @getLanguageName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isKindEnabled(%struct.kindControlBlock* %kcb, i32 %kindIndex) #0 {
entry:
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %kindIndex.addr = alloca i32, align 4
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 0
  %1 = load %struct.sKindObject*, %struct.sKindObject** %kind, align 8
  %2 = load i32, i32* %kindIndex.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 0
  %4 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %4 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isRoleEnabled(%struct.kindControlBlock* %kcb, i32 %kindIndex, i32 %roleIndex) #0 {
entry:
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %kindIndex.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 0
  %1 = load %struct.sKindObject*, %struct.sKindObject** %kind, align 8
  %2 = load i32, i32* %kindIndex.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  %roles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 6
  %4 = load %struct.sRoleDesc*, %struct.sRoleDesc** %roles, align 8
  %5 = load i32, i32* %roleIndex.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %4, i64 %idxprom1
  %enabled = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %arrayidx2, i32 0, i32 0
  %6 = load i8, i8* %enabled, align 8
  %tobool = trunc i8 %6 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countKinds(%struct.kindControlBlock* %kcb) #0 {
entry:
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %count = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 1
  %1 = load i32, i32* %count, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countRoles(%struct.kindControlBlock* %kcb, i32 %kindIndex) #0 {
entry:
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %kindIndex.addr = alloca i32, align 4
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 0
  %1 = load %struct.sKindObject*, %struct.sKindObject** %kind, align 8
  %2 = load i32, i32* %kindIndex.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  %nRoles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 5
  %4 = load i32, i32* %nRoles, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %kcb, i32 %kindIndex) #0 {
entry:
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %kindIndex.addr = alloca i32, align 4
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %kind = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 0
  %1 = load %struct.sKindObject*, %struct.sKindObject** %kind, align 8
  %2 = load i32, i32* %kindIndex.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sKindObject, %struct.sKindObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  ret %struct.sKindDefinition* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @getKindForLetter(%struct.kindControlBlock* %kcb, i32 %letter) #0 {
entry:
  %retval = alloca %struct.sKindDefinition*, align 8
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %letter.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %kdef = alloca %struct.sKindDefinition*, align 8
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i32 %letter, i32* %letter.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call1 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %2, i32 %3)
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kdef, align 8
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter2 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %4, i32 0, i32 1
  %5 = load i8, i8* %letter2, align 1
  %conv = sext i8 %5 to i32
  %6 = load i32, i32* %letter.addr, align 4
  %cmp3 = icmp eq i32 %conv, %6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  store %struct.sKindDefinition* %7, %struct.sKindDefinition** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.sKindDefinition* null, %struct.sKindDefinition** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.sKindDefinition*, %struct.sKindDefinition** %retval, align 8
  ret %struct.sKindDefinition* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @getKindForName(%struct.kindControlBlock* %kcb, i8* %name) #0 {
entry:
  %retval = alloca %struct.sKindDefinition*, align 8
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %kdef = alloca %struct.sKindDefinition*, align 8
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call1 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %2, i32 %3)
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kdef, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name2 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %4, i32 0, i32 2
  %5 = load i8*, i8** %name2, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name3 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %6, i32 0, i32 2
  %7 = load i8*, i8** %name3, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %7, i8* %8)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  store %struct.sKindDefinition* %9, %struct.sKindDefinition** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.sKindDefinition* null, %struct.sKindDefinition** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load %struct.sKindDefinition*, %struct.sKindDefinition** %retval, align 8
  ret %struct.sKindDefinition* %11
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @linkKindDependency(%struct.kindControlBlock* %masterKCB, %struct.kindControlBlock* %slaveKCB) #0 {
entry:
  %masterKCB.addr = alloca %struct.kindControlBlock*, align 8
  %slaveKCB.addr = alloca %struct.kindControlBlock*, align 8
  %k_slave = alloca i32, align 4
  %k_master = alloca i32, align 4
  %kind_slave = alloca %struct.sKindDefinition*, align 8
  %kind_master = alloca %struct.sKindDefinition*, align 8
  store %struct.kindControlBlock* %masterKCB, %struct.kindControlBlock** %masterKCB.addr, align 8
  store %struct.kindControlBlock* %slaveKCB, %struct.kindControlBlock** %slaveKCB.addr, align 8
  store i32 0, i32* %k_slave, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %k_slave, align 4
  %1 = load %struct.kindControlBlock*, %struct.kindControlBlock** %slaveKCB.addr, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %slaveKCB.addr, align 8
  %3 = load i32, i32* %k_slave, align 4
  %call1 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %2, i32 %3)
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kind_slave, align 8
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind_slave, align 8
  %syncWith = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %4, i32 0, i32 10
  %5 = load i32, i32* %syncWith, align 8
  %cmp2 = icmp eq i32 %5, -1
  br i1 %cmp2, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  store i32 0, i32* %k_master, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %6 = load i32, i32* %k_master, align 4
  %7 = load %struct.kindControlBlock*, %struct.kindControlBlock** %masterKCB.addr, align 8
  %call4 = call i32 @countKinds(%struct.kindControlBlock* %7)
  %cmp5 = icmp ult i32 %6, %call4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %8 = load %struct.kindControlBlock*, %struct.kindControlBlock** %masterKCB.addr, align 8
  %9 = load i32, i32* %k_master, align 4
  %call7 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %8, i32 %9)
  store %struct.sKindDefinition* %call7, %struct.sKindDefinition** %kind_master, align 8
  %10 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind_slave, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %10, i32 0, i32 1
  %11 = load i8, i8* %letter, align 1
  %conv = sext i8 %11 to i32
  %12 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind_master, align 8
  %letter8 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %12, i32 0, i32 1
  %13 = load i8, i8* %letter8, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv, %conv9
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %14 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind_slave, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %14, i32 0, i32 2
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind_master, align 8
  %name12 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %16, i32 0, i32 2
  %17 = load i8*, i8** %name12, align 8
  %call13 = call i32 @strcmp(i8* %15, i8* %17)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %land.lhs.true
  %18 = load %struct.kindControlBlock*, %struct.kindControlBlock** %masterKCB.addr, align 8
  %owner = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %18, i32 0, i32 2
  %19 = load i32, i32* %owner, align 4
  %20 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind_master, align 8
  %21 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind_slave, align 8
  call void @linkKinds(i32 %19, %struct.sKindDefinition* %20, %struct.sKindDefinition* %21)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %k_master, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %k_master, align 4
  br label %for.cond3

for.end:                                          ; preds = %if.then16, %for.cond3
  br label %if.end17

if.end17:                                         ; preds = %for.end, %for.body
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %23 = load i32, i32* %k_slave, align 4
  %inc19 = add i32 %23, 1
  store i32 %inc19, i32* %k_slave, align 4
  br label %for.cond

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @linkKinds(i32 %master, %struct.sKindDefinition* %masterKind, %struct.sKindDefinition* %slaveKind) #0 {
entry:
  %master.addr = alloca i32, align 4
  %masterKind.addr = alloca %struct.sKindDefinition*, align 8
  %slaveKind.addr = alloca %struct.sKindDefinition*, align 8
  %tail = alloca %struct.sKindDefinition*, align 8
  store i32 %master, i32* %master.addr, align 4
  store %struct.sKindDefinition* %masterKind, %struct.sKindDefinition** %masterKind.addr, align 8
  store %struct.sKindDefinition* %slaveKind, %struct.sKindDefinition** %slaveKind.addr, align 8
  %0 = load %struct.sKindDefinition*, %struct.sKindDefinition** %masterKind.addr, align 8
  %1 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slaveKind.addr, align 8
  %master1 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %1, i32 0, i32 12
  store %struct.sKindDefinition* %0, %struct.sKindDefinition** %master1, align 8
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slaveKind.addr, align 8
  store %struct.sKindDefinition* %2, %struct.sKindDefinition** %tail, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %tail, align 8
  %slave = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 11
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave, align 8
  %tobool = icmp ne %struct.sKindDefinition* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.sKindDefinition*, %struct.sKindDefinition** %masterKind.addr, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %5, i32 0, i32 0
  %6 = load i8, i8* %enabled, align 8
  %tobool2 = trunc i8 %6 to i1
  %7 = load %struct.sKindDefinition*, %struct.sKindDefinition** %tail, align 8
  %enabled3 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %7, i32 0, i32 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* %enabled3, align 8
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %tail, align 8
  %slave4 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %8, i32 0, i32 11
  %9 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave4, align 8
  store %struct.sKindDefinition* %9, %struct.sKindDefinition** %tail, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.sKindDefinition*, %struct.sKindDefinition** %masterKind.addr, align 8
  %slave5 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %10, i32 0, i32 11
  %11 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave5, align 8
  %12 = load %struct.sKindDefinition*, %struct.sKindDefinition** %tail, align 8
  %slave6 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %12, i32 0, i32 11
  store %struct.sKindDefinition* %11, %struct.sKindDefinition** %slave6, align 8
  %13 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slaveKind.addr, align 8
  %14 = load %struct.sKindDefinition*, %struct.sKindDefinition** %masterKind.addr, align 8
  %slave7 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %14, i32 0, i32 11
  store %struct.sKindDefinition* %13, %struct.sKindDefinition** %slave7, align 8
  %15 = load i32, i32* %master.addr, align 4
  %16 = load %struct.sKindDefinition*, %struct.sKindDefinition** %masterKind.addr, align 8
  %syncWith = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %16, i32 0, i32 10
  store i32 %15, i32* %syncWith, align 8
  %17 = load i32, i32* %master.addr, align 4
  %18 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slaveKind.addr, align 8
  %syncWith8 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %18, i32 0, i32 10
  store i32 %17, i32* %syncWith8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.colprintTable* @kindColprintTableNew() #0 {
entry:
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* null)
  ret %struct.colprintTable* %call
}

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @kindColprintAddLanguageLines(%struct.colprintTable* %table, %struct.kindControlBlock* %kcb) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %lang = alloca i8*, align 8
  %i = alloca i32, align 4
  %kdef = alloca %struct.sKindDefinition*, align 8
  %line = alloca %struct.colprintLine*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %owner = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 2
  %1 = load i32, i32* %owner, align 4
  %call = call i8* @getLanguageName(i32 %1)
  store i8* %call, i8** %lang, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %call1 = call i32 @countKinds(%struct.kindControlBlock* %3)
  %cmp = icmp ult i32 %2, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %4, i32 %5)
  store %struct.sKindDefinition* %call2, %struct.sKindDefinition** %kdef, align 8
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call3 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %6)
  store %struct.colprintLine* %call3, %struct.colprintLine** %line, align 8
  %7 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %8 = load i8*, i8** %lang, align 8
  %9 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  call void @kindColprintFillLine(%struct.colprintLine* %7, i8* %8, %struct.sKindDefinition* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @kindColprintFillLine(%struct.colprintLine* %line, i8* %lang, %struct.sKindDefinition* %kdef) #0 {
entry:
  %line.addr = alloca %struct.colprintLine*, align 8
  %lang.addr = alloca i8*, align 8
  %kdef.addr = alloca %struct.sKindDefinition*, align 8
  store %struct.colprintLine* %line, %struct.colprintLine** %line.addr, align 8
  store i8* %lang, i8** %lang.addr, align 8
  store %struct.sKindDefinition* %kdef, %struct.sKindDefinition** %kdef.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %1 = load i8*, i8** %lang.addr, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %0, i8* %1)
  %2 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 1
  %4 = load i8, i8* %letter, align 1
  call void @colprintLineAppendColumnChar(%struct.colprintLine* %2, i8 signext %4)
  %5 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %6 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %6, i32 0, i32 2
  %7 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %name1 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %8, i32 0, i32 2
  %9 = load i8*, i8** %name1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), %cond.false ]
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %5, i8* %cond)
  %10 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %11 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %11, i32 0, i32 0
  %12 = load i8, i8* %enabled, align 8
  %tobool2 = trunc i8 %12 to i1
  call void @colprintLineAppendColumnBool(%struct.colprintLine* %10, i1 zeroext %tobool2)
  %13 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %14 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %referenceOnly = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %14, i32 0, i32 4
  %15 = load i8, i8* %referenceOnly, align 8
  %tobool3 = trunc i8 %15 to i1
  call void @colprintLineAppendColumnBool(%struct.colprintLine* %13, i1 zeroext %tobool3)
  %16 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %17 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %nRoles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %17, i32 0, i32 5
  %18 = load i32, i32* %nRoles, align 4
  call void @colprintLineAppendColumnInt(%struct.colprintLine* %16, i32 %18)
  %19 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %20 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %master = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %20, i32 0, i32 12
  %21 = load %struct.sKindDefinition*, %struct.sKindDefinition** %master, align 8
  %tobool4 = icmp ne %struct.sKindDefinition* %21, null
  br i1 %tobool4, label %cond.true6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %22 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %slave = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %22, i32 0, i32 11
  %23 = load %struct.sKindDefinition*, %struct.sKindDefinition** %slave, align 8
  %tobool5 = icmp ne %struct.sKindDefinition* %23, null
  br i1 %tobool5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %lor.lhs.false, %cond.end
  %24 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %syncWith = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %24, i32 0, i32 10
  %25 = load i32, i32* %syncWith, align 8
  %call = call i8* @getLanguageName(i32 %25)
  br label %cond.end8

cond.false7:                                      ; preds = %lor.lhs.false
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i8* [ %call, %cond.true6 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), %cond.false7 ]
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %19, i8* %cond9)
  %26 = load %struct.colprintLine*, %struct.colprintLine** %line.addr, align 8
  %27 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %description = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %27, i32 0, i32 3
  %28 = load i8*, i8** %description, align 8
  %tobool10 = icmp ne i8* %28, null
  br i1 %tobool10, label %cond.true11, label %cond.false13

cond.true11:                                      ; preds = %cond.end8
  %29 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %description12 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %29, i32 0, i32 3
  %30 = load i8*, i8** %description12, align 8
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true11
  %cond15 = phi i8* [ %30, %cond.true11 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), %cond.false13 ]
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %26, i8* %cond15)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @kindColprintTablePrint(%struct.colprintTable* %table, i1 zeroext %noparser, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %noparser.addr = alloca i8, align 1
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  %frombool = zext i1 %noparser to i8
  store i8 %frombool, i8* %noparser.addr, align 1
  %frombool1 = zext i1 %withListHeader to i8
  store i8 %frombool1, i8* %withListHeader.addr, align 1
  %frombool2 = zext i1 %machinable to i8
  store i8 %frombool2, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  call void @colprintTableSort(%struct.colprintTable* %0, i32 (%struct.colprintLine*, %struct.colprintLine*)* @kindColprintCompareLines)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %2 = load i8, i8* %noparser.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %4 = load i8, i8* %withListHeader.addr, align 1
  %tobool3 = trunc i8 %4 to i1
  %5 = load i8, i8* %machinable.addr, align 1
  %tobool4 = trunc i8 %5 to i1
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %1, i32 %cond, i1 zeroext %tobool3, i1 zeroext %tobool4, %struct.__sFILE* %6)
  ret void
}

declare void @colprintTableSort(%struct.colprintTable*, i32 (%struct.colprintLine*, %struct.colprintLine*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @kindColprintCompareLines(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  %a_parser = alloca i8*, align 8
  %b_parser = alloca i8*, align 8
  %a_letter = alloca i8*, align 8
  %b_letter = alloca i8*, align 8
  %r = alloca i32, align 4
  store %struct.colprintLine* %a, %struct.colprintLine** %a.addr, align 8
  store %struct.colprintLine* %b, %struct.colprintLine** %b.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call = call i8* @colprintLineGetColumn(%struct.colprintLine* %0, i32 0)
  store i8* %call, i8** %a_parser, align 8
  %1 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call1 = call i8* @colprintLineGetColumn(%struct.colprintLine* %1, i32 0)
  store i8* %call1, i8** %b_parser, align 8
  %2 = load i8*, i8** %a_parser, align 8
  %3 = load i8*, i8** %b_parser, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %3)
  store i32 %call2, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %r, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call3 = call i8* @colprintLineGetColumn(%struct.colprintLine* %6, i32 1)
  store i8* %call3, i8** %a_letter, align 8
  %7 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call4 = call i8* @colprintLineGetColumn(%struct.colprintLine* %7, i32 1)
  store i8* %call4, i8** %b_letter, align 8
  %8 = load i8*, i8** %a_letter, align 8
  %9 = load i8*, i8** %b_letter, align 8
  %call5 = call i32 @strcmp(i8* %8, i8* %9)
  store i32 %call5, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %11 = load i32, i32* %r, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.colprintTable* @roleColprintTableNew() #0 {
entry:
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* null)
  ret %struct.colprintTable* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @roleColprintAddRoles(%struct.colprintTable* %table, %struct.kindControlBlock* %kcb, i8* %kindspecs) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %kcb.addr = alloca %struct.kindControlBlock*, align 8
  %kindspecs.addr = alloca i8*, align 8
  %lang = alloca i8*, align 8
  %kind_l_and_n = alloca %struct.sVString*, align 8
  %c = alloca i8*, align 8
  %kname = alloca i8*, align 8
  %kname_len = alloca i64, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %i = alloca i32, align 4
  %k = alloca %struct.sKindDefinition*, align 8
  %j = alloca i32, align 4
  %r = alloca %struct.sRoleDesc*, align 8
  %line = alloca %struct.colprintLine*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store %struct.kindControlBlock* %kcb, %struct.kindControlBlock** %kcb.addr, align 8
  store i8* %kindspecs, i8** %kindspecs.addr, align 8
  %0 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %owner = getelementptr inbounds %struct.kindControlBlock, %struct.kindControlBlock* %0, i32 0, i32 2
  %1 = load i32, i32* %owner, align 4
  %call = call i8* @getLanguageName(i32 %1)
  store i8* %call, i8** %lang, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %kind_l_and_n, align 8
  %2 = load i8*, i8** %kindspecs.addr, align 8
  store i8* %2, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %3 = load i8*, i8** %c, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end65

for.body:                                         ; preds = %for.cond
  store i8* null, i8** %kname, align 8
  %5 = load i8*, i8** %c, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 123
  br i1 %cmp4, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %c, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %add.ptr, i8** %start, align 8
  %8 = load i8*, i8** %c, align 8
  %call6 = call i8* @strchr(i8* %8, i32 125)
  store i8* %call6, i8** %end, align 8
  %9 = load i8*, i8** %end, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  %10 = load i8*, i8** %c, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %11 = load i8*, i8** %start, align 8
  %12 = load i8*, i8** %end, align 8
  %cmp8 = icmp eq i8* %11, %12
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %13 = load i8*, i8** %c, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %13)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %14 = load i8*, i8** %start, align 8
  store i8* %14, i8** %kname, align 8
  %15 = load i8*, i8** %end, align 8
  %16 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %kname_len, align 8
  %17 = load i8*, i8** %end, align 8
  store i8* %17, i8** %c, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc61, %if.end12
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %call14 = call i32 @countKinds(%struct.kindControlBlock* %19)
  %cmp15 = icmp ult i32 %18, %call14
  br i1 %cmp15, label %for.body17, label %for.end63

for.body17:                                       ; preds = %for.cond13
  %20 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb.addr, align 8
  %21 = load i32, i32* %i, align 4
  %call18 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %20, i32 %21)
  store %struct.sKindDefinition* %call18, %struct.sKindDefinition** %k, align 8
  %22 = load i8*, i8** %kname, align 8
  %tobool19 = icmp ne i8* %22, null
  br i1 %tobool19, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body17
  %23 = load %struct.sKindDefinition*, %struct.sKindDefinition** %k, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %23, i32 0, i32 2
  %24 = load i8*, i8** %name, align 8
  %call20 = call i64 @strlen(i8* %24)
  %25 = load i64, i64* %kname_len, align 8
  %cmp21 = icmp eq i64 %call20, %25
  br i1 %cmp21, label %land.lhs.true23, label %lor.lhs.false

land.lhs.true23:                                  ; preds = %land.lhs.true
  %26 = load %struct.sKindDefinition*, %struct.sKindDefinition** %k, align 8
  %name24 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %26, i32 0, i32 2
  %27 = load i8*, i8** %name24, align 8
  %28 = load i8*, i8** %kname, align 8
  %29 = load i64, i64* %kname_len, align 8
  %call25 = call i32 @strncmp(i8* %27, i8* %28, i64 %29)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true23, %land.lhs.true, %for.body17
  %30 = load i8*, i8** %kname, align 8
  %tobool28 = icmp ne i8* %30, null
  br i1 %tobool28, label %lor.lhs.false34, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %31 = load i8*, i8** %c, align 8
  %32 = load i8, i8* %31, align 1
  %conv30 = sext i8 %32 to i32
  %33 = load %struct.sKindDefinition*, %struct.sKindDefinition** %k, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %33, i32 0, i32 1
  %34 = load i8, i8* %letter, align 1
  %conv31 = sext i8 %34 to i32
  %cmp32 = icmp eq i32 %conv30, %conv31
  br i1 %cmp32, label %if.then40, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true29, %lor.lhs.false
  %35 = load i8*, i8** %kname, align 8
  %tobool35 = icmp ne i8* %35, null
  br i1 %tobool35, label %if.end60, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %lor.lhs.false34
  %36 = load i8*, i8** %c, align 8
  %37 = load i8, i8* %36, align 1
  %conv37 = sext i8 %37 to i32
  %cmp38 = icmp eq i32 %conv37, 42
  br i1 %cmp38, label %if.then40, label %if.end60

if.then40:                                        ; preds = %land.lhs.true36, %land.lhs.true29, %land.lhs.true23
  store i32 0, i32* %j, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %if.then40
  %38 = load i32, i32* %j, align 4
  %39 = load %struct.sKindDefinition*, %struct.sKindDefinition** %k, align 8
  %nRoles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %39, i32 0, i32 5
  %40 = load i32, i32* %nRoles, align 4
  %cmp42 = icmp slt i32 %38, %40
  br i1 %cmp42, label %for.body44, label %for.end

for.body44:                                       ; preds = %for.cond41
  %41 = load %struct.sKindDefinition*, %struct.sKindDefinition** %k, align 8
  %roles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %41, i32 0, i32 6
  %42 = load %struct.sRoleDesc*, %struct.sRoleDesc** %roles, align 8
  %43 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %43 to i64
  %add.ptr45 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %42, i64 %idx.ext
  store %struct.sRoleDesc* %add.ptr45, %struct.sRoleDesc** %r, align 8
  %44 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call46 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %44)
  store %struct.colprintLine* %call46, %struct.colprintLine** %line, align 8
  %45 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %46 = load i8*, i8** %lang, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %45, i8* %46)
  %47 = load %struct.sVString*, %struct.sVString** %kind_l_and_n, align 8
  %48 = load %struct.sKindDefinition*, %struct.sKindDefinition** %k, align 8
  %letter47 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %48, i32 0, i32 1
  %49 = load i8, i8* %letter47, align 1
  %conv48 = sext i8 %49 to i32
  call void @vStringPut(%struct.sVString* %47, i32 %conv48)
  %50 = load %struct.sVString*, %struct.sVString** %kind_l_and_n, align 8
  call void @vStringPut(%struct.sVString* %50, i32 47)
  %51 = load %struct.sVString*, %struct.sVString** %kind_l_and_n, align 8
  %52 = load %struct.sKindDefinition*, %struct.sKindDefinition** %k, align 8
  %name49 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %52, i32 0, i32 2
  %53 = load i8*, i8** %name49, align 8
  call void @vStringCatS(%struct.sVString* %51, i8* %53)
  %54 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %55 = load %struct.sVString*, %struct.sVString** %kind_l_and_n, align 8
  call void @colprintLineAppendColumnVString(%struct.colprintLine* %54, %struct.sVString* %55)
  br label %do.body

do.body:                                          ; preds = %for.body44
  %56 = load %struct.sVString*, %struct.sVString** %kind_l_and_n, align 8
  store %struct.sVString* %56, %struct.sVString** %vStringClear_s, align 8
  %57 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %57, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %58 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %58, i32 0, i32 2
  %59 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %60 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %61 = load %struct.sRoleDesc*, %struct.sRoleDesc** %r, align 8
  %name50 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %61, i32 0, i32 1
  %62 = load i8*, i8** %name50, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %60, i8* %62)
  %63 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %64 = load %struct.sRoleDesc*, %struct.sRoleDesc** %r, align 8
  %enabled = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %64, i32 0, i32 0
  %65 = load i8, i8* %enabled, align 8
  %tobool51 = trunc i8 %65 to i1
  %66 = zext i1 %tobool51 to i64
  %cond = select i1 %tobool51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %63, i8* %cond)
  %67 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %68 = load %struct.sRoleDesc*, %struct.sRoleDesc** %r, align 8
  %description = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %68, i32 0, i32 2
  %69 = load i8*, i8** %description, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %67, i8* %69)
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %70 = load i32, i32* %j, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond41

for.end:                                          ; preds = %for.cond41
  %71 = load i8*, i8** %kname, align 8
  %tobool53 = icmp ne i8* %71, null
  br i1 %tobool53, label %if.then58, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %for.end
  %72 = load i8*, i8** %c, align 8
  %73 = load i8, i8* %72, align 1
  %conv55 = sext i8 %73 to i32
  %cmp56 = icmp eq i32 %conv55, 42
  br i1 %cmp56, label %if.end59, label %if.then58

if.then58:                                        ; preds = %land.lhs.true54, %for.end
  br label %for.end63

if.end59:                                         ; preds = %land.lhs.true54
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %land.lhs.true36, %lor.lhs.false34
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %74 = load i32, i32* %i, align 4
  %inc62 = add i32 %74, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond13

for.end63:                                        ; preds = %if.then58, %for.cond13
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %75 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond

for.end65:                                        ; preds = %for.cond
  %76 = load %struct.sVString*, %struct.sVString** %kind_l_and_n, align 8
  call void @vStringDelete(%struct.sVString* %76)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare i8* @strchr(i8*, i32) #1

declare void @error(i32, i8*, ...) #1

declare i64 @strlen(i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #1

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

declare void @colprintLineAppendColumnVString(%struct.colprintLine*, %struct.sVString*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @roleColprintTablePrint(%struct.colprintTable* %table, i1 zeroext %noparser, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %noparser.addr = alloca i8, align 1
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  %frombool = zext i1 %noparser to i8
  store i8 %frombool, i8* %noparser.addr, align 1
  %frombool1 = zext i1 %withListHeader to i8
  store i8 %frombool1, i8* %withListHeader.addr, align 1
  %frombool2 = zext i1 %machinable to i8
  store i8 %frombool2, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  call void @colprintTableSort(%struct.colprintTable* %0, i32 (%struct.colprintLine*, %struct.colprintLine*)* @roleColprintCompareLines)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %2 = load i8, i8* %noparser.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %4 = load i8, i8* %withListHeader.addr, align 1
  %tobool3 = trunc i8 %4 to i1
  %5 = load i8, i8* %machinable.addr, align 1
  %tobool4 = trunc i8 %5 to i1
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %1, i32 %cond, i1 zeroext %tobool3, i1 zeroext %tobool4, %struct.__sFILE* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @roleColprintCompareLines(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  %r = alloca i32, align 4
  %a_parser = alloca i8*, align 8
  %b_parser = alloca i8*, align 8
  %a_kindln = alloca i8*, align 8
  %b_kindln = alloca i8*, align 8
  %a_role = alloca i8*, align 8
  %b_role = alloca i8*, align 8
  store %struct.colprintLine* %a, %struct.colprintLine** %a.addr, align 8
  store %struct.colprintLine* %b, %struct.colprintLine** %b.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call = call i8* @colprintLineGetColumn(%struct.colprintLine* %0, i32 0)
  store i8* %call, i8** %a_parser, align 8
  %1 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call1 = call i8* @colprintLineGetColumn(%struct.colprintLine* %1, i32 0)
  store i8* %call1, i8** %b_parser, align 8
  %2 = load i8*, i8** %a_parser, align 8
  %3 = load i8*, i8** %b_parser, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %3)
  store i32 %call2, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %r, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call3 = call i8* @colprintLineGetColumn(%struct.colprintLine* %6, i32 1)
  store i8* %call3, i8** %a_kindln, align 8
  %7 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call4 = call i8* @colprintLineGetColumn(%struct.colprintLine* %7, i32 1)
  store i8* %call4, i8** %b_kindln, align 8
  %8 = load i8*, i8** %a_kindln, align 8
  %9 = load i8*, i8** %b_kindln, align 8
  %call5 = call i32 @strcmp(i8* %8, i8* %9)
  store i32 %call5, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %11 = load i32, i32* %r, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %12 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call9 = call i8* @colprintLineGetColumn(%struct.colprintLine* %12, i32 2)
  store i8* %call9, i8** %a_role, align 8
  %13 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call10 = call i8* @colprintLineGetColumn(%struct.colprintLine* %13, i32 2)
  store i8* %call10, i8** %b_role, align 8
  %14 = load i8*, i8** %a_role, align 8
  %15 = load i8*, i8** %b_role, align 8
  %call11 = call i32 @strcmp(i8* %14, i8* %15)
  store i32 %call11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare void @colprintLineAppendColumnChar(%struct.colprintLine*, i8 signext) #1

declare void @colprintLineAppendColumnBool(%struct.colprintLine*, i1 zeroext) #1

declare void @colprintLineAppendColumnInt(%struct.colprintLine*, i32) #1

declare i8* @colprintLineGetColumn(%struct.colprintLine*, i32) #1

declare void @vStringResize(%struct.sVString*, i64) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
