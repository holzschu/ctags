; ModuleID = 'flags.c'
source_filename = "flags.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sFlagDefinition = type { i8, i8*, void (i8, i8*)*, void (i8*, i8*, i8*)*, i8*, i8* }
%struct.colprintTable = type opaque
%struct.sVString = type { i64, i64, i8* }
%struct.colprintLine = type opaque

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"long flags specifier opened with `%c' is not closed `%c'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"L:LETTER\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"L:NAME\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"L:DESCRIPTION\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @flagsEval(i8* %flags_original, %struct.sFlagDefinition* %defs, i32 %ndefs, i8* %data) #0 {
entry:
  %flags_original.addr = alloca i8*, align 8
  %defs.addr = alloca %struct.sFlagDefinition*, align 8
  %ndefs.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %flags = alloca i8*, align 8
  %aflag = alloca i8*, align 8
  %needle_close_paren = alloca i8*, align 8
  %param = alloca i8*, align 8
  %needle_eqaul = alloca i8*, align 8
  store i8* %flags_original, i8** %flags_original.addr, align 8
  store %struct.sFlagDefinition* %defs, %struct.sFlagDefinition** %defs.addr, align 8
  store i32 %ndefs, i32* %ndefs.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %flags_original.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %defs.addr, align 8
  %tobool1 = icmp ne %struct.sFlagDefinition* %1, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %flags_original.addr, align 8
  %call = call i8* @eStrdup(i8* %2)
  store i8* %call, i8** %flags, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.end3
  %3 = load i8*, i8** %flags, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %flags, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 123
  br i1 %cmp8, label %if.then10, label %if.else50

if.then10:                                        ; preds = %for.body
  %9 = load i8*, i8** %flags, align 8
  %10 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8* %add.ptr11, i8** %aflag, align 8
  %11 = load i8*, i8** %aflag, align 8
  %call12 = call i8* @strchr(i8* %11, i32 125)
  store i8* %call12, i8** %needle_close_paren, align 8
  %12 = load i8*, i8** %needle_close_paren, align 8
  %cmp13 = icmp eq i8* %12, null
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.then10
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call16 = call i8* @getExecutableName()
  %call17 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %call16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 123, i32 125)
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call19 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.__sFILE* %15)
  br label %for.end75

if.end20:                                         ; preds = %if.then10
  %16 = load i8*, i8** %needle_close_paren, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %aflag, align 8
  %call21 = call i8* @strchr(i8* %17, i32 61)
  store i8* %call21, i8** %needle_eqaul, align 8
  %18 = load i8*, i8** %needle_eqaul, align 8
  %cmp22 = icmp eq i8* %18, null
  br i1 %cmp22, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %19 = load i8*, i8** %needle_eqaul, align 8
  %20 = load i8*, i8** %needle_close_paren, align 8
  %cmp24 = icmp uge i8* %19, %20
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %lor.lhs.false, %if.end20
  store i8* null, i8** %needle_eqaul, align 8
  store i8* null, i8** %param, align 8
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i8*, i8** %needle_eqaul, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %add.ptr27, i8** %param, align 8
  %22 = load i8*, i8** %needle_eqaul, align 8
  store i8 0, i8* %22, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  store i32 0, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc, %if.end28
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %ndefs.addr, align 4
  %cmp30 = icmp ult i32 %23, %24
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond29
  %25 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %defs.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom33 = zext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %25, i64 %idxprom33
  %longStr = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx34, i32 0, i32 1
  %27 = load i8*, i8** %longStr, align 8
  %tobool35 = icmp ne i8* %27, null
  br i1 %tobool35, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %for.body32
  %28 = load i8*, i8** %aflag, align 8
  %29 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %defs.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom36 = zext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %29, i64 %idxprom36
  %longStr38 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx37, i32 0, i32 1
  %31 = load i8*, i8** %longStr38, align 8
  %call39 = call i32 @strcmp(i8* %28, i8* %31)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %land.lhs.true
  %32 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %defs.addr, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom43 = zext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %32, i64 %idxprom43
  %longProc = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx44, i32 0, i32 3
  %34 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %longProc, align 8
  %35 = load i8*, i8** %aflag, align 8
  %36 = load i8*, i8** %param, align 8
  %37 = load i8*, i8** %data.addr, align 8
  call void %34(i8* %35, i8* %36, i8* %37)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true, %for.body32
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %38 = load i32, i32* %j, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond29

for.end:                                          ; preds = %for.cond29
  %39 = load i8*, i8** %needle_eqaul, align 8
  %tobool46 = icmp ne i8* %39, null
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.end
  %40 = load i8*, i8** %needle_eqaul, align 8
  store i8 61, i8* %40, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %for.end
  %41 = load i8*, i8** %needle_close_paren, align 8
  store i8 125, i8* %41, align 1
  %42 = load i8*, i8** %needle_close_paren, align 8
  %43 = load i8*, i8** %flags, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv49 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv49, i32* %i, align 4
  br label %if.end72

if.else50:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc69, %if.else50
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %ndefs.addr, align 4
  %cmp52 = icmp ult i32 %44, %45
  br i1 %cmp52, label %for.body54, label %for.end71

for.body54:                                       ; preds = %for.cond51
  %46 = load i8*, i8** %flags, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom55 = zext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %46, i64 %idxprom55
  %48 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %48 to i32
  %49 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %defs.addr, align 8
  %50 = load i32, i32* %j, align 4
  %idxprom58 = zext i32 %50 to i64
  %arrayidx59 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %49, i64 %idxprom58
  %shortChar = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx59, i32 0, i32 0
  %51 = load i8, i8* %shortChar, align 8
  %conv60 = sext i8 %51 to i32
  %cmp61 = icmp eq i32 %conv57, %conv60
  br i1 %cmp61, label %if.then63, label %if.end68

if.then63:                                        ; preds = %for.body54
  %52 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %defs.addr, align 8
  %53 = load i32, i32* %j, align 4
  %idxprom64 = zext i32 %53 to i64
  %arrayidx65 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %52, i64 %idxprom64
  %shortProc = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx65, i32 0, i32 2
  %54 = load void (i8, i8*)*, void (i8, i8*)** %shortProc, align 8
  %55 = load i8*, i8** %flags, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %56 to i64
  %arrayidx67 = getelementptr inbounds i8, i8* %55, i64 %idxprom66
  %57 = load i8, i8* %arrayidx67, align 1
  %58 = load i8*, i8** %data.addr, align 8
  call void %54(i8 signext %57, i8* %58)
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %for.body54
  br label %for.inc69

for.inc69:                                        ; preds = %if.end68
  %59 = load i32, i32* %j, align 4
  %inc70 = add i32 %59, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond51

for.end71:                                        ; preds = %for.cond51
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %if.end48
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %60 = load i32, i32* %i, align 4
  %inc74 = add i32 %60, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond

for.end75:                                        ; preds = %if.then15, %for.cond
  %61 = load i8*, i8** %flags, align 8
  call void @eFree(i8* %61)
  br label %return

return:                                           ; preds = %for.end75, %if.then2, %if.then
  ret void
}

declare i8* @eStrdup(i8*) #1

declare i8* @strchr(i8*, i32) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i8* @getExecutableName() #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare i32 @strcmp(i8*, i8*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.colprintTable* @flagsColprintTableNew() #0 {
entry:
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* null)
  ret %struct.colprintTable* %call
}

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @flagsColprintAddDefinitions(%struct.colprintTable* %table, %struct.sFlagDefinition* %def, i32 %ndefs) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %def.addr = alloca %struct.sFlagDefinition*, align 8
  %ndefs.addr = alloca i32, align 4
  %longName = alloca %struct.sVString*, align 8
  %i = alloca i32, align 4
  %line = alloca %struct.colprintLine*, align 8
  %shortChar = alloca i8, align 1
  %paramName = alloca i8*, align 8
  %description = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store %struct.sFlagDefinition* %def, %struct.sFlagDefinition** %def.addr, align 8
  store i32 %ndefs, i32* %ndefs.addr, align 4
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %longName, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ndefs.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call1 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %2)
  store %struct.colprintLine* %call1, %struct.colprintLine** %line, align 8
  %3 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %def.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %3, i64 %idxprom
  %shortChar2 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx, i32 0, i32 0
  %5 = load i8, i8* %shortChar2, align 8
  store i8 %5, i8* %shortChar, align 1
  %6 = load i8, i8* %shortChar, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 45, i8* %shortChar, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %8 = load i8, i8* %shortChar, align 1
  call void @colprintLineAppendColumnChar(%struct.colprintLine* %7, i8 signext %8)
  %9 = load %struct.sVString*, %struct.sVString** %longName, align 8
  %10 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %def.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %10, i64 %idxprom5
  %longStr = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx6, i32 0, i32 1
  %12 = load i8*, i8** %longStr, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %def.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %13, i64 %idxprom7
  %longStr9 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx8, i32 0, i32 1
  %15 = load i8*, i8** %longStr9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %cond.false ]
  call void @vStringCopyS(%struct.sVString* %9, i8* %cond)
  %16 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %def.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %16, i64 %idxprom10
  %paramName12 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx11, i32 0, i32 4
  %18 = load i8*, i8** %paramName12, align 8
  store i8* %18, i8** %paramName, align 8
  %19 = load i8*, i8** %paramName, align 8
  %tobool13 = icmp ne i8* %19, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %cond.end
  %20 = load %struct.sVString*, %struct.sVString** %longName, align 8
  call void @vStringPut(%struct.sVString* %20, i32 61)
  %21 = load %struct.sVString*, %struct.sVString** %longName, align 8
  %22 = load i8*, i8** %paramName, align 8
  call void @vStringCatS(%struct.sVString* %21, i8* %22)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %cond.end
  %23 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %24 = load %struct.sVString*, %struct.sVString** %longName, align 8
  call void @colprintLineAppendColumnVString(%struct.colprintLine* %23, %struct.sVString* %24)
  br label %do.body

do.body:                                          ; preds = %if.end15
  %25 = load %struct.sVString*, %struct.sVString** %longName, align 8
  store %struct.sVString* %25, %struct.sVString** %vStringClear_s, align 8
  %26 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %27 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %27, i32 0, i32 2
  %28 = load i8*, i8** %buffer, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %arrayidx16, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %29 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %def.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %29, i64 %idxprom17
  %description19 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx18, i32 0, i32 5
  %31 = load i8*, i8** %description19, align 8
  %tobool20 = icmp ne i8* %31, null
  br i1 %tobool20, label %cond.true21, label %cond.false25

cond.true21:                                      ; preds = %do.end
  %32 = load %struct.sFlagDefinition*, %struct.sFlagDefinition** %def.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %32, i64 %idxprom22
  %description24 = getelementptr inbounds %struct.sFlagDefinition, %struct.sFlagDefinition* %arrayidx23, i32 0, i32 5
  %34 = load i8*, i8** %description24, align 8
  br label %cond.end26

cond.false25:                                     ; preds = %do.end
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true21
  %cond27 = phi i8* [ %34, %cond.true21 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %cond.false25 ]
  store i8* %cond27, i8** %description, align 8
  %35 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %36 = load i8*, i8** %description, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %35, i8* %36)
  br label %for.inc

for.inc:                                          ; preds = %cond.end26
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.sVString*, %struct.sVString** %longName, align 8
  call void @vStringDelete(%struct.sVString* %38)
  ret void
}

declare %struct.sVString* @vStringNew() #1

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #1

declare void @colprintLineAppendColumnChar(%struct.colprintLine*, i8 signext) #1

declare void @vStringCopyS(%struct.sVString*, i8*) #1

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

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare void @colprintLineAppendColumnVString(%struct.colprintLine*, %struct.sVString*) #1

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @flagsColprintTablePrint(%struct.colprintTable* %table, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  call void @colprintTableSort(%struct.colprintTable* %0, i32 (%struct.colprintLine*, %struct.colprintLine*)* @flagsColprintCompareLines)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %2 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load i8, i8* %machinable.addr, align 1
  %tobool2 = trunc i8 %3 to i1
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %1, i32 0, i1 zeroext %tobool, i1 zeroext %tobool2, %struct.__sFILE* %4)
  ret void
}

declare void @colprintTableSort(%struct.colprintTable*, i32 (%struct.colprintLine*, %struct.colprintLine*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @flagsColprintCompareLines(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  %a_letter = alloca i8*, align 8
  %b_letter = alloca i8*, align 8
  %a_name = alloca i8*, align 8
  %b_name = alloca i8*, align 8
  store %struct.colprintLine* %a, %struct.colprintLine** %a.addr, align 8
  store %struct.colprintLine* %b, %struct.colprintLine** %b.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call = call i8* @colprintLineGetColumn(%struct.colprintLine* %0, i32 0)
  store i8* %call, i8** %a_letter, align 8
  %1 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call1 = call i8* @colprintLineGetColumn(%struct.colprintLine* %1, i32 0)
  store i8* %call1, i8** %b_letter, align 8
  %2 = load i8*, i8** %a_letter, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %b_letter, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %a_letter, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %land.lhs.true11, label %if.else17

land.lhs.true11:                                  ; preds = %if.else
  %8 = load i8*, i8** %b_letter, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp ne i32 %conv13, 45
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %land.lhs.true11
  store i32 1, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %land.lhs.true11, %if.else
  %10 = load i8*, i8** %a_letter, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %11 to i32
  %cmp20 = icmp ne i32 %conv19, 45
  br i1 %cmp20, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %if.else17
  %12 = load i8*, i8** %b_letter, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp ne i32 %conv24, 45
  br i1 %cmp25, label %if.then27, label %if.end

if.then27:                                        ; preds = %land.lhs.true22
  %14 = load i8*, i8** %a_letter, align 8
  %15 = load i8*, i8** %b_letter, align 8
  %call28 = call i32 @strcmp(i8* %14, i8* %15)
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true22, %if.else17
  br label %if.end29

if.end29:                                         ; preds = %if.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  %16 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call31 = call i8* @colprintLineGetColumn(%struct.colprintLine* %16, i32 1)
  store i8* %call31, i8** %a_name, align 8
  %17 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call32 = call i8* @colprintLineGetColumn(%struct.colprintLine* %17, i32 1)
  store i8* %call32, i8** %b_name, align 8
  %18 = load i8*, i8** %a_name, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %19 to i32
  %cmp35 = icmp ne i32 %conv34, 95
  br i1 %cmp35, label %land.lhs.true37, label %if.else43

land.lhs.true37:                                  ; preds = %if.end30
  %20 = load i8*, i8** %b_name, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %21 to i32
  %cmp40 = icmp eq i32 %conv39, 95
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %land.lhs.true37
  store i32 -1, i32* %retval, align 4
  br label %return

if.else43:                                        ; preds = %land.lhs.true37, %if.end30
  %22 = load i8*, i8** %a_name, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %23 to i32
  %cmp46 = icmp eq i32 %conv45, 95
  br i1 %cmp46, label %land.lhs.true48, label %if.end54

land.lhs.true48:                                  ; preds = %if.else43
  %24 = load i8*, i8** %b_name, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %25 to i32
  %cmp51 = icmp ne i32 %conv50, 95
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true48
  store i32 1, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %land.lhs.true48, %if.else43
  br label %if.end55

if.end55:                                         ; preds = %if.end54
  %26 = load i8*, i8** %a_name, align 8
  %27 = load i8*, i8** %b_name, align 8
  %call56 = call i32 @strcmp(i8* %26, i8* %27)
  store i32 %call56, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.then53, %if.then42, %if.then27, %if.then16, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

declare void @vStringResize(%struct.sVString*, i64) #1

declare i8* @colprintLineGetColumn(%struct.colprintLine*, i32) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
