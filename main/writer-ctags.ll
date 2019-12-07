; ModuleID = 'writer-ctags.c'
source_filename = "writer-ctags.c"
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
%struct.sPtagDesc = type { i8, i8*, i8*, i1 (%struct.sPtagDesc*, i8*)*, i8 }
%struct.rejection = type { i8, i8 }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@uCtagsWriter = global { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i8* (%struct.sTagWriter*, %struct._MIO*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, i8*, i8*, i32 } { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)* @writeCtagsEntry, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)* @writeCtagsPtagEntry, i8* (%struct.sTagWriter*, %struct._MIO*)* null, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)* null, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)* @buildCtagsFqTagCache, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null, i32 0 }, align 8
@eCtagsWriter = global { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i8* (%struct.sTagWriter*, %struct._MIO*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, i8*, i8*, i32 } { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)* @writeCtagsEntry, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)* @writeCtagsPtagEntry, i8* (%struct.sTagWriter*, %struct._MIO*)* @beginECtagsFile, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)* @endECTagsFile, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)* @buildCtagsFqTagCache, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null, i32 0 }, align 8
@beginECtagsFile.rej = internal global %struct.rejection zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s\09%s\09\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s\09%s:%s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s\09%s%s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s\09%s:%s:%s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%s\09%s%s:%s\00", align 1
@__const.addExtensionFields.sep = private unnamed_addr constant [3 x i8] c";\22\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s\09%s:%ld\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s\09%s:\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\09%s:%s\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s%s%s%s\09%s\09%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"!_\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"%s%s\09%s\09/%s/\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeCtagsEntry(%struct.sTagWriter* %writer, %struct._MIO* %mio, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %origin = alloca i64, align 8
  %rej = alloca %struct.rejection*, align 8
  %length = alloca i32, align 4
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i64 0, i64* %origin, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 6
  %1 = load i8*, i8** %private, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %2, i32 0, i32 6
  %3 = load i8*, i8** %private1, align 8
  %4 = bitcast i8* %3 to %struct.rejection*
  store %struct.rejection* %4, %struct.rejection** %rej, align 8
  %5 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call i64 @mio_tell(%struct._MIO* %5)
  store i64 %call, i64* %origin, align 8
  %6 = load %struct.rejection*, %struct.rejection** %rej, align 8
  %rejectedInThisRendering = getelementptr inbounds %struct.rejection, %struct.rejection* %6, i32 0, i32 0
  store i8 0, i8* %rejectedInThisRendering, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %8 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call2 = call i8* @escapeFieldValue(%struct.sTagWriter* %8, %struct.sTagEntryInfo* %9, i32 0)
  %10 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %11 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call3 = call i8* @escapeFieldValue(%struct.sTagWriter* %10, %struct.sTagEntryInfo* %11, i32 1)
  %call4 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %call2, i8* %call3)
  store i32 %call4, i32* %length, align 4
  %12 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %13 = bitcast %struct.sTagEntryInfo* %12 to i8*
  %bf.load = load i8, i8* %13, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %14 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %15 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call7 = call i32 @writeLineNumberEntry(%struct.sTagWriter* %14, %struct._MIO* %15, %struct.sTagEntryInfo* %16)
  %17 = load i32, i32* %length, align 4
  %add = add nsw i32 %17, %call7
  store i32 %add, i32* %length, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %18 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %19 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call8 = call i8* @escapeFieldValue(%struct.sTagWriter* %19, %struct.sTagEntryInfo* %20, i32 2)
  %call9 = call i32 @mio_puts(%struct._MIO* %18, i8* %call8)
  %21 = load i32, i32* %length, align 4
  %add10 = add nsw i32 %21, %call9
  store i32 %add10, i32* %length, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %22 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  %cmp = icmp ugt i32 %22, 1
  br i1 %cmp, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end11
  %23 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %25 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call13 = call i32 @addExtensionFields(%struct.sTagWriter* %23, %struct._MIO* %24, %struct.sTagEntryInfo* %25)
  %26 = load i32, i32* %length, align 4
  %add14 = add nsw i32 %26, %call13
  store i32 %add14, i32* %length, align 4
  %27 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %28 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call15 = call i32 @addParserFields(%struct.sTagWriter* %27, %struct._MIO* %28, %struct.sTagEntryInfo* %29)
  %30 = load i32, i32* %length, align 4
  %add16 = add nsw i32 %30, %call15
  store i32 %add16, i32* %length, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end11
  %31 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call18 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* %length, align 4
  %add19 = add nsw i32 %32, %call18
  store i32 %add19, i32* %length, align 4
  %33 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private20 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %33, i32 0, i32 6
  %34 = load i8*, i8** %private20, align 8
  %tobool21 = icmp ne i8* %34, null
  br i1 %tobool21, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end17
  %35 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private22 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %35, i32 0, i32 6
  %36 = load i8*, i8** %private22, align 8
  %37 = bitcast i8* %36 to %struct.rejection*
  %rejectedInThisRendering23 = getelementptr inbounds %struct.rejection, %struct.rejection* %37, i32 0, i32 0
  %38 = load i8, i8* %rejectedInThisRendering23, align 1
  %tobool24 = trunc i8 %38 to i1
  br i1 %tobool24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %land.lhs.true
  %39 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %40 = load i64, i64* %origin, align 8
  %call26 = call i32 @mio_seek(%struct._MIO* %39, i64 %40, i32 0)
  %41 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private27 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %41, i32 0, i32 6
  %42 = load i8*, i8** %private27, align 8
  %43 = bitcast i8* %42 to %struct.rejection*
  %rejectedInThisInput = getelementptr inbounds %struct.rejection, %struct.rejection* %43, i32 0, i32 1
  store i8 1, i8* %rejectedInThisInput, align 1
  store i32 0, i32* %length, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true, %if.end17
  %44 = load i32, i32* %length, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeCtagsPtagEntry(%struct.sTagWriter* %writer, %struct._MIO* %mio, %struct.sPtagDesc* %desc, i8* %fileName, i8* %pattern, i8* %parserName) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %fileName.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %parserName.addr = alloca i8*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %parserName, i8** %parserName.addr, align 8
  %0 = load i8*, i8** %parserName.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false8

cond.true:                                        ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %2 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %name = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %4 = load i8*, i8** %parserName.addr, align 8
  %5 = load i8*, i8** %fileName.addr, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %cond.true2, label %cond.false

cond.true2:                                       ; preds = %cond.true
  %6 = load i8*, i8** %fileName.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi i8* [ %6, %cond.true2 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %cond.false ]
  %7 = load i8*, i8** %pattern.addr, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %8 = load i8*, i8** %pattern.addr, align 8
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i8* [ %8, %cond.true4 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %cond.false5 ]
  %call = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* %4, i8* %cond, i8* %cond7)
  br label %cond.end21

cond.false8:                                      ; preds = %entry
  %9 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %10 = load %struct.sPtagDesc*, %struct.sPtagDesc** %desc.addr, align 8
  %name9 = getelementptr inbounds %struct.sPtagDesc, %struct.sPtagDesc* %10, i32 0, i32 1
  %11 = load i8*, i8** %name9, align 8
  %12 = load i8*, i8** %fileName.addr, align 8
  %tobool10 = icmp ne i8* %12, null
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false8
  %13 = load i8*, i8** %fileName.addr, align 8
  br label %cond.end13

cond.false12:                                     ; preds = %cond.false8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i8* [ %13, %cond.true11 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %cond.false12 ]
  %14 = load i8*, i8** %pattern.addr, align 8
  %tobool15 = icmp ne i8* %14, null
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end13
  %15 = load i8*, i8** %pattern.addr, align 8
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end13
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i8* [ %15, %cond.true16 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %cond.false17 ]
  %call20 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %11, i8* %cond14, i8* %cond19)
  br label %cond.end21

cond.end21:                                       ; preds = %cond.end18, %cond.end6
  %cond22 = phi i32 [ %call, %cond.end6 ], [ %call20, %cond.end18 ]
  ret i32 %cond22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @buildCtagsFqTagCache(%struct.sTagWriter* %writer, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i8* @escapeFieldValue(%struct.sTagWriter* %0, %struct.sTagEntryInfo* %1, i32 21)
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call1 = call i8* @escapeFieldValue(%struct.sTagWriter* %2, %struct.sTagEntryInfo* %3, i32 13)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @beginECtagsFile(%struct.sTagWriter* %writer, %struct._MIO* %mio) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8 0, i8* getelementptr inbounds (%struct.rejection, %struct.rejection* @beginECtagsFile.rej, i32 0, i32 1), align 1
  ret i8* getelementptr inbounds (%struct.rejection, %struct.rejection* @beginECtagsFile.rej, i32 0, i32 0)
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @endECTagsFile(%struct.sTagWriter* %writer, %struct._MIO* %mio, i8* %filename) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %filename.addr = alloca i8*, align 8
  %rej = alloca %struct.rejection*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 6
  %1 = load i8*, i8** %private, align 8
  %2 = bitcast i8* %1 to %struct.rejection*
  store %struct.rejection* %2, %struct.rejection** %rej, align 8
  %3 = load %struct.rejection*, %struct.rejection** %rej, align 8
  %rejectedInThisInput = getelementptr inbounds %struct.rejection, %struct.rejection* %3, i32 0, i32 1
  %4 = load i8, i8* %rejectedInThisInput, align 1
  %tobool = trunc i8 %4 to i1
  ret i1 %tobool
}

declare i64 @mio_tell(%struct._MIO*) #1

declare i32 @mio_printf(%struct._MIO*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @escapeFieldValue(%struct.sTagWriter* %writer, %struct.sTagEntryInfo* %tag, i32 %ftype) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %ftype.addr = alloca i32, align 4
  %reject = alloca i8*, align 8
  %rej = alloca %struct.rejection*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8* null, i8** %reject, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 6
  %1 = load i8*, i8** %private, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %2, i32 0, i32 6
  %3 = load i8*, i8** %private1, align 8
  %4 = bitcast i8* %3 to %struct.rejection*
  store %struct.rejection* %4, %struct.rejection** %rej, align 8
  %5 = load %struct.rejection*, %struct.rejection** %rej, align 8
  %rejectedInThisRendering = getelementptr inbounds %struct.rejection, %struct.rejection* %5, i32 0, i32 0
  store i8* %rejectedInThisRendering, i8** %reject, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %type = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %6, i32 0, i32 7
  %7 = load i32, i32* %type, align 8
  %8 = load i32, i32* %ftype.addr, align 4
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %10 = load i8*, i8** %reject, align 8
  %call = call i8* @renderFieldEscaped(i32 %7, i32 %8, %struct.sTagEntryInfo* %9, i32 -1, i8* %10)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @writeLineNumberEntry(%struct.sTagWriter* %writer, %struct._MIO* %mio, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call i8* @escapeFieldValue(%struct.sTagWriter* %2, %struct.sTagEntryInfo* %3, i32 11)
  %call1 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %call)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %5 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %5, i32 0, i32 1
  %6 = load i64, i64* %lineNumber, align 8
  %call2 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %6)
  store i32 %call2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare i32 @mio_puts(%struct._MIO*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @addExtensionFields(%struct.sTagWriter* %writer, %struct._MIO* %mio, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %isKindKeyEnabled = alloca i8, align 1
  %isScopeEnabled = alloca i8, align 1
  %kindKey = alloca i8*, align 8
  %kindFmt = alloca i8*, align 8
  %scopeKey = alloca i8*, align 8
  %scopeFmt = alloca i8*, align 8
  %sep = alloca [3 x i8], align 1
  %length = alloca i32, align 4
  %str = alloca i8*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  %kind_letter_str = alloca [2 x i8], align 1
  %k = alloca i8*, align 8
  %v = alloca i8*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %call = call zeroext i1 @isFieldEnabled(i32 15)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %isKindKeyEnabled, align 1
  %call1 = call zeroext i1 @isFieldEnabled(i32 18)
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, i8* %isScopeEnabled, align 1
  %0 = load i8, i8* %isKindKeyEnabled, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call3 = call i8* @getFieldName(i32 15)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %cond.false ]
  store i8* %cond, i8** %kindKey, align 8
  %1 = load i8, i8* %isKindKeyEnabled, align 1
  %tobool4 = trunc i8 %1 to i1
  %2 = zext i1 %tobool4 to i64
  %cond5 = select i1 %tobool4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  store i8* %cond5, i8** %kindFmt, align 8
  %3 = load i8, i8* %isScopeEnabled, align 1
  %tobool6 = trunc i8 %3 to i1
  br i1 %tobool6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.end
  %call8 = call i8* @getFieldName(i32 18)
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i8* [ %call8, %cond.true7 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %cond.false9 ]
  store i8* %cond11, i8** %scopeKey, align 8
  %4 = load i8, i8* %isScopeEnabled, align 1
  %tobool12 = trunc i8 %4 to i1
  %5 = zext i1 %tobool12 to i64
  %cond13 = select i1 %tobool12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)
  store i8* %cond13, i8** %scopeFmt, align 8
  %6 = bitcast [3 x i8]* %sep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.addExtensionFields.sep, i32 0, i32 0), i64 3, i1 false)
  store i32 0, i32* %length, align 4
  store i8* null, i8** %str, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 5
  %8 = load i32, i32* %langType, align 8
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %9, i32 0, i32 8
  %10 = load i32, i32* %kindIndex, align 8
  %call14 = call %struct.sKindDefinition* @getLanguageKind(i32 %8, i32 %10)
  store %struct.sKindDefinition* %call14, %struct.sKindDefinition** %kdef, align 8
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %kind_letter_str, i64 0, i64 0
  %11 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %11, i32 0, i32 1
  %12 = load i8, i8* %letter, align 1
  store i8 %12, i8* %arrayinit.begin, align 1
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1
  store i8 0, i8* %arrayinit.element, align 1
  %13 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %13, i32 0, i32 2
  %14 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end10
  %call15 = call zeroext i1 @isFieldEnabled(i32 7)
  br i1 %call15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call16 = call zeroext i1 @isFieldEnabled(i32 8)
  br i1 %call16, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %15 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter18 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %15, i32 0, i32 1
  %16 = load i8, i8* %letter18, align 1
  %conv = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv, 0
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true17, %land.lhs.true
  %17 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name21 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %17, i32 0, i32 2
  %18 = load i8*, i8** %name21, align 8
  store i8* %18, i8** %str, align 8
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true17, %lor.lhs.false, %cond.end10
  %19 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter22 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %19, i32 0, i32 1
  %20 = load i8, i8* %letter22, align 1
  %conv23 = sext i8 %20 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.end

land.lhs.true26:                                  ; preds = %if.else
  %call27 = call zeroext i1 @isFieldEnabled(i32 8)
  br i1 %call27, label %if.then36, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %land.lhs.true26
  %call30 = call zeroext i1 @isFieldEnabled(i32 7)
  br i1 %call30, label %land.lhs.true32, label %if.end

land.lhs.true32:                                  ; preds = %lor.lhs.false29
  %21 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name33 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %21, i32 0, i32 2
  %22 = load i8*, i8** %name33, align 8
  %cmp34 = icmp eq i8* %22, null
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %land.lhs.true32, %land.lhs.true26
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %kind_letter_str, i64 0, i64 0
  store i8* %arraydecay, i8** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.then36, %land.lhs.true32, %lor.lhs.false29, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then
  %23 = load i8*, i8** %str, align 8
  %tobool38 = icmp ne i8* %23, null
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end37
  %24 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %25 = load i8*, i8** %kindFmt, align 8
  %arraydecay40 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %26 = load i8*, i8** %kindKey, align 8
  %27 = load i8*, i8** %str, align 8
  %call41 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %24, i8* %25, i8* %arraydecay40, i8* %26, i8* %27)
  %28 = load i32, i32* %length, align 4
  %add = add nsw i32 %28, %call41
  store i32 %add, i32* %length, align 4
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37
  %call43 = call zeroext i1 @isFieldEnabled(i32 11)
  br i1 %call43, label %land.lhs.true45, label %if.end54

land.lhs.true45:                                  ; preds = %if.end42
  %29 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call46 = call zeroext i1 @doesFieldHaveValue(i32 11, %struct.sTagEntryInfo* %29)
  br i1 %call46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %land.lhs.true45
  %30 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %arraydecay49 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %call50 = call i8* @getFieldName(i32 11)
  %31 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %31, i32 0, i32 1
  %32 = load i64, i64* %lineNumber, align 8
  %call51 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %arraydecay49, i8* %call50, i64 %32)
  %33 = load i32, i32* %length, align 4
  %add52 = add nsw i32 %33, %call51
  store i32 %add52, i32* %length, align 4
  %arrayidx53 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  store i8 0, i8* %arrayidx53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %land.lhs.true45, %if.end42
  %34 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %35 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay55 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %36 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call56 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %34, i32 9, %struct.sTagEntryInfo* %35, i8* %arraydecay55, %struct._MIO* %36)
  %37 = load i32, i32* %length, align 4
  %add57 = add nsw i32 %37, %call56
  store i32 %add57, i32* %length, align 4
  %call58 = call zeroext i1 @isFieldEnabled(i32 13)
  br i1 %call58, label %if.then59, label %if.end71

if.then59:                                        ; preds = %if.end54
  %38 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %39 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call60 = call i8* @escapeFieldValue(%struct.sTagWriter* %38, %struct.sTagEntryInfo* %39, i32 21)
  store i8* %call60, i8** %k, align 8
  %40 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %41 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call61 = call i8* @escapeFieldValue(%struct.sTagWriter* %40, %struct.sTagEntryInfo* %41, i32 13)
  store i8* %call61, i8** %v, align 8
  %42 = load i8*, i8** %k, align 8
  %tobool62 = icmp ne i8* %42, null
  br i1 %tobool62, label %land.lhs.true63, label %if.end70

land.lhs.true63:                                  ; preds = %if.then59
  %43 = load i8*, i8** %v, align 8
  %tobool64 = icmp ne i8* %43, null
  br i1 %tobool64, label %if.then65, label %if.end70

if.then65:                                        ; preds = %land.lhs.true63
  %44 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %45 = load i8*, i8** %scopeFmt, align 8
  %arraydecay66 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %46 = load i8*, i8** %scopeKey, align 8
  %47 = load i8*, i8** %k, align 8
  %48 = load i8*, i8** %v, align 8
  %call67 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %44, i8* %45, i8* %arraydecay66, i8* %46, i8* %47, i8* %48)
  %49 = load i32, i32* %length, align 4
  %add68 = add nsw i32 %49, %call67
  store i32 %add68, i32* %length, align 4
  %arrayidx69 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  store i8 0, i8* %arrayidx69, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %land.lhs.true63, %if.then59
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end54
  %call72 = call zeroext i1 @isFieldEnabled(i32 14)
  br i1 %call72, label %land.lhs.true74, label %if.end85

land.lhs.true74:                                  ; preds = %if.end71
  %50 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call75 = call zeroext i1 @doesFieldHaveValue(i32 14, %struct.sTagEntryInfo* %50)
  br i1 %call75, label %if.then77, label %if.end85

if.then77:                                        ; preds = %land.lhs.true74
  %51 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %arraydecay78 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %call79 = call i8* @getFieldName(i32 14)
  %52 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %52, i32 0, i32 11
  %typeRef = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 9
  %arrayidx80 = getelementptr inbounds [2 x i8*], [2 x i8*]* %typeRef, i64 0, i64 0
  %53 = load i8*, i8** %arrayidx80, align 8
  %54 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %55 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call81 = call i8* @escapeFieldValue(%struct.sTagWriter* %54, %struct.sTagEntryInfo* %55, i32 14)
  %call82 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay78, i8* %call79, i8* %53, i8* %call81)
  %56 = load i32, i32* %length, align 4
  %add83 = add nsw i32 %56, %call82
  store i32 %add83, i32* %length, align 4
  %arrayidx84 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  store i8 0, i8* %arrayidx84, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %land.lhs.true74, %if.end71
  %call86 = call zeroext i1 @isFieldEnabled(i32 5)
  br i1 %call86, label %land.lhs.true88, label %if.end97

land.lhs.true88:                                  ; preds = %if.end85
  %57 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call89 = call zeroext i1 @doesFieldHaveValue(i32 5, %struct.sTagEntryInfo* %57)
  br i1 %call89, label %if.then91, label %if.end97

if.then91:                                        ; preds = %land.lhs.true88
  %58 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %arraydecay92 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %call93 = call i8* @getFieldName(i32 5)
  %call94 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %arraydecay92, i8* %call93)
  %59 = load i32, i32* %length, align 4
  %add95 = add nsw i32 %59, %call94
  store i32 %add95, i32* %length, align 4
  %arrayidx96 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  store i8 0, i8* %arrayidx96, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %land.lhs.true88, %if.end85
  %60 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %61 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay98 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %62 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call99 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %60, i32 6, %struct.sTagEntryInfo* %61, i8* %arraydecay98, %struct._MIO* %62)
  %63 = load i32, i32* %length, align 4
  %add100 = add nsw i32 %63, %call99
  store i32 %add100, i32* %length, align 4
  %64 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %65 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay101 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %66 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call102 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %64, i32 4, %struct.sTagEntryInfo* %65, i8* %arraydecay101, %struct._MIO* %66)
  %67 = load i32, i32* %length, align 4
  %add103 = add nsw i32 %67, %call102
  store i32 %add103, i32* %length, align 4
  %68 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %69 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay104 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %70 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call105 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %68, i32 10, %struct.sTagEntryInfo* %69, i8* %arraydecay104, %struct._MIO* %70)
  %71 = load i32, i32* %length, align 4
  %add106 = add nsw i32 %71, %call105
  store i32 %add106, i32* %length, align 4
  %72 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %73 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay107 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %74 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call108 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %72, i32 12, %struct.sTagEntryInfo* %73, i8* %arraydecay107, %struct._MIO* %74)
  %75 = load i32, i32* %length, align 4
  %add109 = add nsw i32 %75, %call108
  store i32 %add109, i32* %length, align 4
  %76 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %77 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay110 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %78 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call111 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %76, i32 16, %struct.sTagEntryInfo* %77, i8* %arraydecay110, %struct._MIO* %78)
  %79 = load i32, i32* %length, align 4
  %add112 = add nsw i32 %79, %call111
  store i32 %add112, i32* %length, align 4
  %80 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %81 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay113 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %82 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call114 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %80, i32 19, %struct.sTagEntryInfo* %81, i8* %arraydecay113, %struct._MIO* %82)
  %83 = load i32, i32* %length, align 4
  %add115 = add nsw i32 %83, %call114
  store i32 %add115, i32* %length, align 4
  %84 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %85 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay116 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %86 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call117 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %84, i32 20, %struct.sTagEntryInfo* %85, i8* %arraydecay116, %struct._MIO* %86)
  %87 = load i32, i32* %length, align 4
  %add118 = add nsw i32 %87, %call117
  store i32 %add118, i32* %length, align 4
  %88 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %89 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %arraydecay119 = getelementptr inbounds [3 x i8], [3 x i8]* %sep, i64 0, i64 0
  %90 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call120 = call i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %88, i32 22, %struct.sTagEntryInfo* %89, i8* %arraydecay119, %struct._MIO* %90)
  %91 = load i32, i32* %length, align 4
  %add121 = add nsw i32 %91, %call120
  store i32 %add121, i32* %length, align 4
  %92 = load i32, i32* %length, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @addParserFields(%struct.sTagWriter* %writer, %struct._MIO* %mio, %struct.sTagEntryInfo* %tag) #0 {
entry:
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %reject = alloca i8*, align 8
  %rej = alloca %struct.rejection*, align 8
  %f = alloca %struct.sTagField*, align 8
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i32 0, i32* %length, align 4
  store i8* null, i8** %reject, align 8
  %0 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %0, i32 0, i32 6
  %1 = load i8*, i8** %private, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %private1 = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %2, i32 0, i32 6
  %3 = load i8*, i8** %private1, align 8
  %4 = bitcast i8* %3 to %struct.rejection*
  store %struct.rejection* %4, %struct.rejection** %rej, align 8
  %5 = load %struct.rejection*, %struct.rejection** %rej, align 8
  %rejectedInThisRendering = getelementptr inbounds %struct.rejection, %struct.rejection* %5, i32 0, i32 0
  store i8* %rejectedInThisRendering, i8** %reject, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %usedParserFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 12
  %8 = load i32, i32* %usedParserFields, align 8
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call = call %struct.sTagField* @getParserField(%struct.sTagEntryInfo* %9, i32 %10)
  store %struct.sTagField* %call, %struct.sTagField** %f, align 8
  %11 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %ftype = getelementptr inbounds %struct.sTagField, %struct.sTagField* %11, i32 0, i32 0
  %12 = load i32, i32* %ftype, align 8
  %call2 = call zeroext i1 @isFieldEnabled(i32 %12)
  br i1 %call2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.body
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %13 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %14 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %ftype5 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %14, i32 0, i32 0
  %15 = load i32, i32* %ftype5, align 8
  %call6 = call i8* @getFieldName(i32 %15)
  %16 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %type = getelementptr inbounds %struct.sTagWriter, %struct.sTagWriter* %16, i32 0, i32 7
  %17 = load i32, i32* %type, align 8
  %18 = load %struct.sTagField*, %struct.sTagField** %f, align 8
  %ftype7 = getelementptr inbounds %struct.sTagField, %struct.sTagField* %18, i32 0, i32 0
  %19 = load i32, i32* %ftype7, align 8
  %20 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i8*, i8** %reject, align 8
  %call8 = call i8* @renderFieldEscaped(i32 %17, i32 %19, %struct.sTagEntryInfo* %20, i32 %21, i8* %22)
  %call9 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %call6, i8* %call8)
  %23 = load i32, i32* %length, align 4
  %add = add nsw i32 %23, %call9
  store i32 %add, i32* %length, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %if.then3
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %length, align 4
  ret i32 %25
}

declare i32 @mio_seek(%struct._MIO*, i64, i32) #1

declare i8* @renderFieldEscaped(i32, i32, %struct.sTagEntryInfo*, i32, i8*) #1

declare zeroext i1 @isFieldEnabled(i32) #1

declare i8* @getFieldName(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare %struct.sKindDefinition* @getLanguageKind(i32, i32) #1

declare zeroext i1 @doesFieldHaveValue(i32, %struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @renderExtensionFieldMaybe(%struct.sTagWriter* %writer, i32 %xftype, %struct.sTagEntryInfo* %tag, i8* %sep, %struct._MIO* %mio) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct.sTagWriter*, align 8
  %xftype.addr = alloca i32, align 4
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %sep.addr = alloca i8*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %len = alloca i32, align 4
  store %struct.sTagWriter* %writer, %struct.sTagWriter** %writer.addr, align 8
  store i32 %xftype, i32* %xftype.addr, align 4
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  store i8* %sep, i8** %sep.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  %0 = load i32, i32* %xftype.addr, align 4
  %call = call zeroext i1 @isFieldEnabled(i32 %0)
  br i1 %call, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %xftype.addr, align 4
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %call1 = call zeroext i1 @doesFieldHaveValue(i32 %1, %struct.sTagEntryInfo* %2)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %4 = load i8*, i8** %sep.addr, align 8
  %5 = load i32, i32* %xftype.addr, align 4
  %call2 = call i8* @getFieldName(i32 %5)
  %6 = load %struct.sTagWriter*, %struct.sTagWriter** %writer.addr, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %8 = load i32, i32* %xftype.addr, align 4
  %call3 = call i8* @escapeFieldValue(%struct.sTagWriter* %6, %struct.sTagEntryInfo* %7, i32 %8)
  %call4 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %4, i8* %call2, i8* %call3)
  store i32 %call4, i32* %len, align 4
  %9 = load i8*, i8** %sep.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %arrayidx, align 1
  %10 = load i32, i32* %len, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare %struct.sTagField* @getParserField(%struct.sTagEntryInfo*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
