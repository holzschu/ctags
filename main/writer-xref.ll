; ModuleID = 'writer-xref.c'
source_filename = "writer-xref.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sTagWriter = type { {}*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i8* (%struct.sTagWriter*, %struct._MIO*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, i8*, i8*, i32 }
%struct._MIO = type opaque
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sPtagDesc = type opaque
%struct.sFmtElement = type opaque
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }

@xrefWriter = global { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i8* (%struct.sTagWriter*, %struct._MIO*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, i8*, i8*, i32 } { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)* @writeXrefEntry, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)* null, i8* (%struct.sTagWriter*, %struct._MIO*)* null, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)* null, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)* @buildXrefFqTagCache, i8* null, i8* null, i32 0 }, align 8
@writeXrefEntry.fmt1 = internal global %struct.sFmtElement* null, align 8
@writeXrefEntry.fmt2 = internal global %struct.sFmtElement* null, align 8
@Option = external constant %struct.sOptionValues, align 8
@.str = private unnamed_addr constant [19 x i8] c"%-16N %4n %-16F %C\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%-16N %-10K %4n %-16F %C\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeXrefEntry(%struct.sTagWriter* %writer, %struct._MIO* %mio, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %length = alloca i32, align 4
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sFmtElement*, %struct.sFmtElement** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 8), align 8
  %tobool = icmp ne %struct.sFmtElement* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.sFmtElement*, %struct.sFmtElement** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 8), align 8
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i32 @fmtPrint(%struct.sFmtElement* %1, %struct._MIO* %2, %struct.sTagEntryInfo* %3)
  store i32 %call, i32* %length, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %5 = bitcast %struct.sTagEntryInfo* %4 to i8*
  %bf.load = load i8, i8* %5, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then3, label %if.else9

if.then3:                                         ; preds = %if.end
  %7 = load %struct.sFmtElement*, %struct.sFmtElement** @writeXrefEntry.fmt1, align 8
  %cmp4 = icmp eq %struct.sFmtElement* %7, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %call6 = call %struct.sFmtElement* @fmtNew(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.sFmtElement* %call6, %struct.sFmtElement** @writeXrefEntry.fmt1, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3
  %8 = load %struct.sFmtElement*, %struct.sFmtElement** @writeXrefEntry.fmt1, align 8
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call8 = call i32 @fmtPrint(%struct.sFmtElement* %8, %struct._MIO* %9, %struct.sTagEntryInfo* %10)
  store i32 %call8, i32* %length, align 4
  br label %if.end15

if.else9:                                         ; preds = %if.end
  %11 = load %struct.sFmtElement*, %struct.sFmtElement** @writeXrefEntry.fmt2, align 8
  %cmp10 = icmp eq %struct.sFmtElement* %11, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else9
  %call12 = call %struct.sFmtElement* @fmtNew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sFmtElement* %call12, %struct.sFmtElement** @writeXrefEntry.fmt2, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else9
  %12 = load %struct.sFmtElement*, %struct.sFmtElement** @writeXrefEntry.fmt2, align 8
  %13 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call14 = call i32 @fmtPrint(%struct.sFmtElement* %12, %struct._MIO* %13, %struct.sTagEntryInfo* %14)
  store i32 %call14, i32* %length, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %15 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call17 = call i32 @mio_putc(%struct._MIO* %15, i32 10)
  %16 = load i32, i32* %length, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %length, align 4
  %17 = load i32, i32* %length, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then2
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @buildXrefFqTagCache(%struct.sTagWriter* %writer, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %type = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 7
  %1 = load i32, i32* %type, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i8* @renderFieldEscaped(i32 %1, i32 21, %struct.sTagEntryInfo* %2, i32 -1, i8* null)
  %3 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %type1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %3, i32 0, i32 7
  %4 = load i32, i32* %type1, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call2 = call i8* @renderFieldEscaped(i32 %4, i32 13, %struct.sTagEntryInfo* %5, i32 -1, i8* null)
  ret void
}

declare i32 @fmtPrint(%struct.sFmtElement*, %struct._MIO*, %struct.sTagEntryInfo*) #1

declare %struct.sFmtElement* @fmtNew(i8*) #1

declare i32 @mio_putc(%struct._MIO*, i32) #1

declare i8* @renderFieldEscaped(i32, i32, %struct.sTagEntryInfo*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
