; ModuleID = 'qemuhx.c'
source_filename = "qemuhx.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct._MIO = type opaque
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type opaque
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"QemuHX\00", align 1
@extensions = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* null], align 8
@patterns = internal constant [1 x i8*] zeroinitializer, align 8
@aliases = internal constant [1 x i8*] zeroinitializer, align 8
@QemuHXKindTable = internal global [2 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@QemuHXXtagTable = internal global [1 x %struct.sXtagDefinition] [%struct.sXtagDefinition { i8 1, i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i1 (%struct.sXtagDefinition*)* null, i1 (%struct.sXtagDefinition*)* null, i32 0 }], align 8
@QemuHXTagRegexTable = internal global [3 x %struct.tagRegexTable] [%struct.tagRegexTable { i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* null, i8 1 }, %struct.tagRegexTable { i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* null, i8 1 }, %struct.tagRegexTable { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i8 0 }], align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"hx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"qmp\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"QEMU Management Protocol dispatch table entries\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"infoitem\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"item in texinfo doc\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"funcmap\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Include mapping SQMP to C function name\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"^SQMP[[:space:]]([-a-z_0-9A-Z]+)[[:space:]]---\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\1\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"{mgroup=1}\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"qmp_\\1\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"{mgroup=1}{_extra=funcmap}\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"^@item[[:space:]]{1,}([-.a-z_0-9A-Z]{1,})\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"i\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @QemuHXParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %enabled, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 3
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @extensions, i64 0, i64 0), i8*** %extensions, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 4
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @patterns, i64 0, i64 0), i8*** %patterns, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 5
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @aliases, i64 0, i64 0), i8*** %aliases, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 11
  store i32 3, i32* %method, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([2 x %struct.sKindDefinition], [2 x %struct.sKindDefinition]* @QemuHXKindTable, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 2
  store i32 2, i32* %kindCount, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %xtagTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 25
  store %struct.sXtagDefinition* getelementptr inbounds ([1 x %struct.sXtagDefinition], [1 x %struct.sXtagDefinition]* @QemuHXXtagTable, i64 0, i64 0), %struct.sXtagDefinition** %xtagTable, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %xtagCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 26
  store i32 1, i32* %xtagCount, align 8
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagRegexTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 16
  store %struct.tagRegexTable* getelementptr inbounds ([3 x %struct.tagRegexTable], [3 x %struct.tagRegexTable]* @QemuHXTagRegexTable, i64 0, i64 0), %struct.tagRegexTable** %tagRegexTable, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tagRegexCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 17
  store i32 3, i32* %tagRegexCount, align 8
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 6
  store void (i32)* @initializeQemuHXParser, void (i32)** %initialize, align 8
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %12
}

declare %struct.sParserDefinition* @parserNew(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeQemuHXParser(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
