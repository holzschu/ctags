; ModuleID = 'writer.c'
source_filename = "writer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sTagWriter = type { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i8* (%struct.sTagWriter*, %struct._MIO*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, i8*, i8*, i32 }
%struct._MIO = type opaque
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sPtagDesc = type opaque

@writerTable = internal global [5 x %struct.sTagWriter*] [%struct.sTagWriter* @uCtagsWriter, %struct.sTagWriter* @eCtagsWriter, %struct.sTagWriter* @etagsWriter, %struct.sTagWriter* @xrefWriter, %struct.sTagWriter* @jsonWriter], align 8
@writer = internal global %struct.sTagWriter* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@uCtagsWriter = external global %struct.sTagWriter, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"u-ctags\00", align 1
@eCtagsWriter = external global %struct.sTagWriter, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"e-ctags\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"u-ctags or e-ctags\00", align 1
@etagsWriter = external global %struct.sTagWriter, align 8
@xrefWriter = external global %struct.sTagWriter, align 8
@jsonWriter = external global %struct.sTagWriter, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setTagWriter(i32 %wtype) #0 {
entry:
  %wtype.addr = alloca i32, align 4
  store i32 %wtype, i32* %wtype.addr, align 4
  %0 = load i32, i32* %wtype.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.sTagWriter*], [5 x %struct.sTagWriter*]* @writerTable, i64 0, i64 %idxprom
  %1 = load %struct.sTagWriter*, %struct.sTagWriter** %arrayidx, align 8
  store %struct.sTagWriter* %1, %struct.sTagWriter** @writer, align 8
  %2 = load i32, i32* %wtype.addr, align 4
  %3 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %type = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %3, i32 0, i32 7
  store i32 %2, i32* %type, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @writerSetup(%struct._MIO* %mio) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %preWriteEntry = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 2
  %1 = load i8* (%struct.sTagWriter*, %struct._MIO*)*, i8* (%struct.sTagWriter*, %struct._MIO*)** %preWriteEntry, align 8
  %tobool = icmp ne i8* (%struct.sTagWriter*, %struct._MIO*)* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %preWriteEntry1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %2, i32 0, i32 2
  %3 = load i8* (%struct.sTagWriter*, %struct._MIO*)*, i8* (%struct.sTagWriter*, %struct._MIO*)** %preWriteEntry1, align 8
  %4 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call i8* %3(%struct.sTagWriter* %4, %struct._MIO* %5)
  %6 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %6, i32 0, i32 6
  store i8* %call, i8** %private, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %private2 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %7, i32 0, i32 6
  store i8* null, i8** %private2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @writerTeardown(%struct._MIO* %mio, i8* %filename) #0 {
entry:
  %retval = alloca i1, align 1
  %mio.addr = alloca %struct._MIO*, align 8
  %filename.addr = alloca i8*, align 8
  %r = alloca i8, align 1
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %postWriteEntry = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 3
  %1 = load i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)** %postWriteEntry, align 8
  %tobool = icmp ne i1 (%struct.sTagWriter*, %struct._MIO*, i8*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %postWriteEntry1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %2, i32 0, i32 3
  %3 = load i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)** %postWriteEntry1, align 8
  %4 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %call = call zeroext i1 %3(%struct.sTagWriter* %4, %struct._MIO* %5, i8* %6)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %r, align 1
  %7 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %7, i32 0, i32 6
  store i8* null, i8** %private, align 8
  %8 = load i8, i8* %r, align 1
  %tobool2 = trunc i8 %8 to i1
  store i1 %tobool2, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @writerWriteTag(%struct._MIO* %mio, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %mio.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %writeEntry = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 0
  %1 = load i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)** %writeEntry, align 8
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i32 %1(%struct.sTagWriter* %2, %struct._MIO* %3, %struct.sTagEntryInfo* %4)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @writerWritePtag(%struct._MIO* %mio, %struct.sPtagDesc* %desc, i8* %fileName, i8* %pattern, i8* %parserName) #0 {
entry:
  %retval = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %fileName.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %parserName.addr = alloca i8*, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %parserName, i8** %parserName.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %writePtagEntry = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 1
  %1 = load i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)** %writePtagEntry, align 8
  %cmp = icmp eq i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %writePtagEntry1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %2, i32 0, i32 1
  %3 = load i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)** %writePtagEntry1, align 8
  %4 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %6 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %7 = load i8*, i8** %fileName.addr, align 8
  %8 = load i8*, i8** %pattern.addr, align 8
  %9 = load i8*, i8** %parserName.addr, align 8
  %call = call i32 %3(%struct.sTagWriter* %4, %struct._MIO* %5, %struct.sPtagDesc* %6, i8* %7, i8* %8, i8* %9)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @writerBuildFqTagCache(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %buildFqTagCache = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 4
  %1 = load void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)** %buildFqTagCache, align 8
  %tobool = icmp ne void (%struct.sTagWriter*, %struct.sTagEntryInfo*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %buildFqTagCache1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %2, i32 0, i32 4
  %3 = load void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)** %buildFqTagCache1, align 8
  %4 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  call void %3(%struct.sTagWriter* %4, %struct.sTagEntryInfo* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @ptagMakeCtagsOutputMode(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  %mode = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %mode, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %cmp = icmp eq %struct.sTagWriter* @uCtagsWriter, %0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %mode, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %1 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %cmp1 = icmp eq %struct.sTagWriter* @eCtagsWriter, %1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %2 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %3 = load i8*, i8** %mode, align 8
  %call = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %2, i8* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* null)
  ret i1 %call
}

declare zeroext i1 @writePseudoTag(%struct.sPtagDesc*, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @outputDefaultFileName() #0 {
entry:
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %defaultFileName = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 5
  %1 = load i8*, i8** %defaultFileName, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @writerCanPrintPtag() #0 {
entry:
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** @writer, align 8
  %writePtagEntry = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 1
  %1 = load i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)** %writePtagEntry, align 8
  %tobool = icmp ne i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)* %1, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  ret i1 %tobool1
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
