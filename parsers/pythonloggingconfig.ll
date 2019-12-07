; ModuleID = 'pythonloggingconfig.c'
source_filename = "pythonloggingconfig.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sPythonLoggingConfigSubparser = type { %struct.sIniconfSubparser, i32 }
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

@.str = private unnamed_addr constant [20 x i8] c"PythonLoggingConfig\00", align 1
@dependencies = internal global [1 x %struct.sParserDependency] [%struct.sParserDependency { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* bitcast (%struct.sPythonLoggingConfigSubparser* @pythonLoggingConfigSubparser to i8*) }], align 8
@PythonLoggingConfigKinds = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Iniconf\00", align 1
@pythonLoggingConfigSubparser = internal global %struct.sPythonLoggingConfigSubparser { %struct.sIniconfSubparser { %struct.sSubparser { %struct.sSlaveParser* null, %struct.sSubparser* null, i8 0, i8 0, i32 3, void (%struct.sSubparser*)* null, void (%struct.sSubparser*)* null, void (%struct.sSubparser*, i8*)* @exclusiveSubparserChosenCallback, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* null }, i1 (i8*, i8*, i8*)* @probeLanguage, void (%struct.sIniconfSubparser*, i8*, i8*, i8*)* @newDataCallback }, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"logger_\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"qualname\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"loggerSection\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"logger sections\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"logger qualnames\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @PythonLoggingConfigParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  store %struct.sParserDependency* getelementptr inbounds ([1 x %struct.sParserDependency], [1 x %struct.sParserDependency]* @dependencies, i64 0, i64 0), %struct.sParserDependency** %dependencies, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @PythonLoggingConfigKinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 8
  store void ()* @findPythonLoggingConfigTags, void ()** %parser, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @findPythonLoggingConfigTags() #0 {
entry:
  call void @scheduleRunningBaseparser(i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @exclusiveSubparserChosenCallback(%struct.sSubparser* %s, i8* %data) #0 {
entry:
  %s.addr = alloca %struct.sSubparser*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sSubparser* %s, %struct.sSubparser** %s.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.sSubparser*, %struct.sSubparser** %s.addr, align 8
  %1 = bitcast %struct.sSubparser* %0 to %struct.sPythonLoggingConfigSubparser*
  %index = getelementptr inbounds %struct.sPythonLoggingConfigSubparser, %struct.sPythonLoggingConfigSubparser* %1, i32 0, i32 1
  store i32 0, i32* %index, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @probeLanguage(i8* %section, i8* %key, i8* %value) #0 {
entry:
  %retval = alloca i1, align 1
  %section.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store i8* %section, i8** %section.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %section.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %section.addr, align 8
  %call = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %1, i64 7)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @newDataCallback(%struct.sIniconfSubparser* %iniconf, i8* %section, i8* %key, i8* %value) #0 {
entry:
  %iniconf.addr = alloca %struct.sIniconfSubparser*, align 8
  %section.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %logger = alloca i8*, align 8
  store %struct.sIniconfSubparser* %iniconf, %struct.sIniconfSubparser** %iniconf.addr, align 8
  store i8* %section, i8** %section.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %section.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %section.addr, align 8
  %call = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %1, i64 7)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %key.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %if.then
  %3 = load i8*, i8** %value.addr, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true2
  %4 = load i8*, i8** %section.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 7
  store i8* %add.ptr, i8** %logger, align 8
  %5 = load i8*, i8** %logger, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  br label %out

if.end:                                           ; preds = %if.then4
  %7 = load i8*, i8** %logger, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %7, i32 0)
  %call8 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  %8 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %iniconf.addr, align 8
  %9 = bitcast %struct.sIniconfSubparser* %8 to %struct.sPythonLoggingConfigSubparser*
  %index = getelementptr inbounds %struct.sPythonLoggingConfigSubparser, %struct.sPythonLoggingConfigSubparser* %9, i32 0, i32 1
  store i32 %call8, i32* %index, align 8
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true2, %if.then
  %10 = load i8*, i8** %key.addr, align 8
  %tobool9 = icmp ne i8* %10, null
  br i1 %tobool9, label %land.lhs.true10, label %if.end24

land.lhs.true10:                                  ; preds = %if.else
  %11 = load i8*, i8** %key.addr, align 8
  %call11 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true14, label %if.end24

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %12 = load i8*, i8** %value.addr, align 8
  %tobool15 = icmp ne i8* %12, null
  br i1 %tobool15, label %land.lhs.true16, label %if.end24

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %13 = load i8*, i8** %value.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %14 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %land.lhs.true16
  %15 = load i8*, i8** %value.addr, align 8
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %15, i32 1)
  %16 = load %struct.sIniconfSubparser*, %struct.sIniconfSubparser** %iniconf.addr, align 8
  %17 = bitcast %struct.sIniconfSubparser* %16 to %struct.sPythonLoggingConfigSubparser*
  %index22 = getelementptr inbounds %struct.sPythonLoggingConfigSubparser, %struct.sPythonLoggingConfigSubparser* %17, i32 0, i32 1
  %18 = load i32, i32* %index22, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %18, i32* %scopeIndex, align 8
  %call23 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true16, %land.lhs.true14, %land.lhs.true10, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %land.lhs.true, %entry
  br label %out

out:                                              ; preds = %if.end26, %if.then7
  ret void
}

declare i32 @strncmp(i8*, i8*, i64) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @scheduleRunningBaseparser(i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
