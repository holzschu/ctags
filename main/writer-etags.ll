; ModuleID = 'writer-etags.c'
source_filename = "writer-etags.c"
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
%struct.sEtags = type { i8*, %struct._MIO*, i64, %struct.sVString* }
%struct.sVString = type { i64, i64, i8* }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque

@.str = private unnamed_addr constant [5 x i8] c"TAGS\00", align 1
@etagsWriter = global { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i8* (%struct.sTagWriter*, %struct._MIO*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, i8*, i8*, i32 } { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)* @writeEtagsEntry, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)* null, i8* (%struct.sTagWriter*, %struct._MIO*)* @beginEtagsFile, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)* @endEtagsFile, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null, i32 0 }, align 8
@beginEtagsFile.etags = internal global %struct.sEtags zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\0C\0A%s,%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\7F%s\01%lu,0\0A\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"%s\7F%s\01%lu,%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeEtagsEntry(%struct.sTagWriter* %writer, %struct._MIO* %mio, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %length = alloca i32, align 4
  %etags = alloca %struct.sEtags*, align 8
  %len = alloca i64, align 8
  %seekValue = alloca i64, align 8
  %line = alloca i8*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 6
  %1 = load i8*, i8** %private, align 8
  %2 = bitcast i8* %1 to %struct.sEtags*
  store %struct.sEtags* %2, %struct.sEtags** %etags, align 8
  %3 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %mio1 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %3, i32 0, i32 1
  %4 = load %struct._MIO*, %struct._MIO** %mio1, align 8
  store %struct._MIO* %4, %struct._MIO** %mio.addr, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %6 = bitcast %struct.sTagEntryInfo* %5 to i8*
  %bf.load = load i8, i8* %6, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 7
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %10, i32 0, i32 1
  %11 = load i64, i64* %lineNumber, align 8
  %call = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %9, i64 %11)
  store i32 %call, i32* %length, align 4
  br label %if.end23

if.else:                                          ; preds = %entry
  %12 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %vLine = getelementptr inbounds %struct.sEtags, %struct.sEtags* %12, i32 0, i32 3
  %13 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call2 = call i8* @readLineFromBypassAnyway(%struct.sVString* %13, %struct.sTagEntryInfo* %14, i64* %seekValue)
  store i8* %call2, i8** %line, align 8
  %15 = load i8*, i8** %line, align 8
  %cmp = icmp eq i8* %15, null
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %16 = load i8*, i8** %line, align 8
  %call4 = call i64 @strlen(i8* %16)
  store i64 %call4, i64* %len, align 8
  %17 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %18 = bitcast %struct.sTagEntryInfo* %17 to i8*
  %bf.load5 = load i8, i8* %18, align 8
  %bf.lshr6 = lshr i8 %bf.load5, 3
  %bf.clear7 = and i8 %bf.lshr6, 1
  %bf.cast8 = zext i8 %bf.clear7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end
  %19 = load i8*, i8** %line, align 8
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name11 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %20, i32 0, i32 7
  %21 = load i8*, i8** %name11, align 8
  call void @truncateTagLineAfterTag(i8* %19, i8* %21, i1 zeroext true)
  br label %if.end13

if.else12:                                        ; preds = %if.end
  %22 = load i8*, i8** %line, align 8
  %23 = load i64, i64* %len, align 8
  %sub = sub i64 %23, 1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  %24 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 27), align 4
  %conv = zext i32 %24 to i64
  %25 = load i64, i64* %len, align 8
  %cmp14 = icmp ult i64 %conv, %25
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  %26 = load i8*, i8** %line, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 27), align 4
  %sub17 = sub i32 %27, 1
  %idxprom = zext i32 %sub17 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  store i8 0, i8* %arrayidx18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13
  %28 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %29 = load i8*, i8** %line, align 8
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %name20 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %30, i32 0, i32 7
  %31 = load i8*, i8** %name20, align 8
  %32 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber21 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %32, i32 0, i32 1
  %33 = load i64, i64* %lineNumber21, align 8
  %34 = load i64, i64* %seekValue, align 8
  %call22 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %29, i8* %31, i64 %33, i64 %34)
  store i32 %call22, i32* %length, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %if.then
  %35 = load i32, i32* %length, align 4
  %conv24 = sext i32 %35 to i64
  %36 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %byteCount = getelementptr inbounds %struct.sEtags, %struct.sEtags* %36, i32 0, i32 2
  %37 = load i64, i64* %byteCount, align 8
  %add = add i64 %37, %conv24
  store i64 %add, i64* %byteCount, align 8
  %38 = load i32, i32* %length, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then3
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @beginEtagsFile(%struct.sTagWriter* %writer, %struct._MIO* %mio) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %call = call %struct._MIO* @tempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.sEtags, %struct.sEtags* @beginEtagsFile.etags, i32 0, i32 0))
  store %struct._MIO* %call, %struct._MIO** getelementptr inbounds (%struct.sEtags, %struct.sEtags* @beginEtagsFile.etags, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.sEtags, %struct.sEtags* @beginEtagsFile.etags, i32 0, i32 2), align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** getelementptr inbounds (%struct.sEtags, %struct.sEtags* @beginEtagsFile.etags, i32 0, i32 3), align 8
  ret i8* bitcast (%struct.sEtags* @beginEtagsFile.etags to i8*)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @endEtagsFile(%struct.sTagWriter* %writer, %struct._MIO* %mainfp, i8* %filename) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mainfp.addr = alloca %struct._MIO*, align 8
  %filename.addr = alloca i8*, align 8
  %line = alloca i8*, align 8
  %etags = alloca %struct.sEtags*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mainfp, %struct._MIO** %mainfp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 6
  %1 = load i8*, i8** %private, align 8
  %2 = bitcast i8* %1 to %struct.sEtags*
  store %struct.sEtags* %2, %struct.sEtags** %etags, align 8
  %3 = load %struct._MIO*, %struct._MIO** %mainfp.addr, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %byteCount = getelementptr inbounds %struct.sEtags, %struct.sEtags* %5, i32 0, i32 2
  %6 = load i64, i64* %byteCount, align 8
  %call = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %4, i64 %6)
  %7 = load %struct._MIO*, %struct._MIO** %mainfp.addr, align 8
  call void @abort_if_ferror(%struct._MIO* %7)
  %8 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %mio = getelementptr inbounds %struct.sEtags, %struct.sEtags* %8, i32 0, i32 1
  %9 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %cmp = icmp ne %struct._MIO* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %mio1 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %10, i32 0, i32 1
  %11 = load %struct._MIO*, %struct._MIO** %mio1, align 8
  call void @mio_rewind(%struct._MIO* %11)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %12 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %vLine = getelementptr inbounds %struct.sEtags, %struct.sEtags* %12, i32 0, i32 3
  %13 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  %14 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %mio2 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %14, i32 0, i32 1
  %15 = load %struct._MIO*, %struct._MIO** %mio2, align 8
  %call3 = call i8* @readLineRaw(%struct.sVString* %13, %struct._MIO* %15)
  store i8* %call3, i8** %line, align 8
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._MIO*, %struct._MIO** %mainfp.addr, align 8
  %17 = load i8*, i8** %line, align 8
  %call5 = call i32 @mio_puts(%struct._MIO* %16, i8* %17)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %vLine6 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %18, i32 0, i32 3
  %19 = load %struct.sVString*, %struct.sVString** %vLine6, align 8
  call void @vStringDelete(%struct.sVString* %19)
  %20 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %mio7 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %20, i32 0, i32 1
  %21 = load %struct._MIO*, %struct._MIO** %mio7, align 8
  %call8 = call i32 @mio_free(%struct._MIO* %21)
  %22 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %name = getelementptr inbounds %struct.sEtags, %struct.sEtags* %22, i32 0, i32 0
  %23 = load i8*, i8** %name, align 8
  %call9 = call i32 @remove(i8* %23)
  %24 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %name10 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %24, i32 0, i32 0
  %25 = load i8*, i8** %name10, align 8
  call void @eFree(i8* %25)
  %26 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %vLine11 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %26, i32 0, i32 3
  store %struct.sVString* null, %struct.sVString** %vLine11, align 8
  %27 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %mio12 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %27, i32 0, i32 1
  store %struct._MIO* null, %struct._MIO** %mio12, align 8
  %28 = load %struct.sEtags*, %struct.sEtags** %etags, align 8
  %name13 = getelementptr inbounds %struct.sEtags, %struct.sEtags* %28, i32 0, i32 0
  store i8* null, i8** %name13, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret i1 false
}

declare %struct._MIO* @tempFile(i8*, i8**) #1

declare %struct.sVString* @vStringNew() #1

declare i32 @mio_printf(%struct._MIO*, i8*, ...) #1

declare void @abort_if_ferror(%struct._MIO*) #1

declare void @mio_rewind(%struct._MIO*) #1

declare i8* @readLineRaw(%struct.sVString*, %struct._MIO*) #1

declare i32 @mio_puts(%struct._MIO*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

declare i32 @mio_free(%struct._MIO*) #1

declare i32 @remove(i8*) #1

declare void @eFree(i8*) #1

declare i8* @readLineFromBypassAnyway(%struct.sVString*, %struct.sTagEntryInfo*, i64*) #1

declare i64 @strlen(i8*) #1

declare void @truncateTagLineAfterTag(i8*, i8*, i1 zeroext) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
