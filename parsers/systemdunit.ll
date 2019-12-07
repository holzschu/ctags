; ModuleID = 'systemdunit.c'
source_filename = "systemdunit.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sIniconfSubparser = type { %struct.sSubparser, i1 (i8*, i8*, i8*)*, void (%struct.sIniconfSubparser*, i8*, i8*, i8*)* }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"SystemdUnit\00", align 1
@dependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* bitcast (%struct.sIniconfSubparser* @systemdUnitSubparser to i8*) }], align 8
@SystemdUnitKinds = internal global [1 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8 1, i32 6, %struct.sRoleDesc* getelementptr inbounds ([6 x %struct.sRoleDesc], [6 x %struct.sRoleDesc]* @SystemdUnitUnitRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@extensions = internal constant [15 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Iniconf\00", align 1
@systemdUnitSubparser = internal global %struct.sIniconfSubparser { %struct.sSubparser { %struct.sSlaveParser* null, %struct.sSubparser* null, i8 0, i8 0, i32 2, void (%struct.sSubparser*)* null, void (%struct.sSubparser*)* null, void (%struct.sSubparser*, i8*)* null, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* null }, i1 (i8*, i8*, i8*)* null, void (%struct.sIniconfSubparser*, i8*, i8*, i8*)* @newDataCallback }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@SystemdUnitUnitRoles = internal global [6 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0) }], align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Requires\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"referred in Requires key\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Wants\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"referred in Wants key\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"After\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"referred in After key\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Before\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"referred in Before key\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"RequiredBy\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"referred in RequiredBy key\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"WantedBy\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"referred in WantedBy key\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"automount\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"time\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @SystemdUnitParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @dependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @SystemdUnitKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 1, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 3
  store i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 8
  store void ()* @findSystemdUnitTags, void ()** %parser, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %7
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findSystemdUnitTags() #0 {
entry:
  call void @scheduleRunningBaseparser(i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @newDataCallback(%struct.sIniconfSubparser* %s, i8* %section, i8* %key, i8* %value) #0 {
entry:
  %s.addr = alloca %struct.sIniconfSubparser*, align 8
  %section.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  store %struct.sIniconfSubparser* %s, %struct.sIniconfSubparser** %s.addr, align 8
  store i8* %section, i8** %section.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %call = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %entry
  %0 = load i8*, i8** %value.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %land.lhs.true
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call i32 @roleOf(i8* %1, i32 0)
  store i32 %call1, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load i32, i32* %r, align 4
  call void @makeSystemdReferencedUnit(i8* %3, i32 0, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare zeroext i1 @isXtagEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @roleOf(i8* %key, i32 %kind) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %kind.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @SystemdUnitKinds, i64 0, i64 %idxprom
  %nRoles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx, i32 0, i32 5
  %2 = load i32, i32* %nRoles, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %kind.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1 x %struct.sKindDefinition], [1 x %struct.sKindDefinition]* @SystemdUnitKinds, i64 0, i64 %idxprom1
  %roles = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx2, i32 0, i32 6
  %4 = load %struct.sRoleDesc*, %struct.sRoleDesc** %roles, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %4, i64 %idxprom3
  %name = getelementptr inbounds %struct.sRoleDesc, %struct.sRoleDesc* %arrayidx4, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* %6, i8* %7)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @makeSystemdReferencedUnit(i8* %value, i32 %kind, i32 %role) #0 {
entry:
  %value.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %role.addr = alloca i32, align 4
  %unit = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %role, i32* %role.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %unit, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i8*, i8** %value.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %value.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 44
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.sVString*, %struct.sVString** %unit, align 8
  %5 = load i32, i32* %kind.addr, align 4
  %6 = load i32, i32* %role.addr, align 4
  %call5 = call i32 @makeSimpleRefTag(%struct.sVString* %4, i32 %5, i32 %6)
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct.sVString*, %struct.sVString** %unit, align 8
  store %struct.sVString* %7, %struct.sVString** %vStringClear_s, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %9 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end10

if.else:                                          ; preds = %while.body
  %11 = load i8*, i8** %value.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv6 = sext i8 %12 to i32
  %call7 = call i32 @isspace(i32 %conv6) #3
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.else
  %13 = load %struct.sVString*, %struct.sVString** %unit, align 8
  %14 = load i8*, i8** %value.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv9 = sext i8 %15 to i32
  call void @vStringPut(%struct.sVString* %13, i32 %conv9)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %do.end
  %16 = load i8*, i8** %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %value.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.sVString*, %struct.sVString** %unit, align 8
  %length11 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  %18 = load i64, i64* %length11, align 8
  %cmp12 = icmp ugt i64 %18, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %while.end
  %19 = load %struct.sVString*, %struct.sVString** %unit, align 8
  %20 = load i32, i32* %kind.addr, align 4
  %21 = load i32, i32* %role.addr, align 4
  %call15 = call i32 @makeSimpleRefTag(%struct.sVString* %19, i32 %20, i32 %21)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.end
  %22 = load %struct.sVString*, %struct.sVString** %unit, align 8
  call void @vStringDelete(%struct.sVString* %22)
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

declare %struct.sVString* @vStringNew() #1

declare i32 @makeSimpleRefTag(%struct.sVString*, i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

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

declare void @vStringDelete(%struct.sVString*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare void @scheduleRunningBaseparser(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
