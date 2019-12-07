; ModuleID = 'param.c'
source_filename = "param.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.colprintTable = type opaque
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.colprintLine = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"L:LANGUAGE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"L:NAME\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"L:DESCRIPTION\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.colprintTable* @paramColprintTableNew() #0 {
entry:
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* null)
  ret %struct.colprintTable* %call
}

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @paramColprintAddParameter(%struct.colprintTable* %table, i32 %language, %struct.sParameterHandlerTable* %paramHandler) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %language.addr = alloca i32, align 4
  %paramHandler.addr = alloca %struct.sParameterHandlerTable*, align 8
  %line = alloca %struct.colprintLine*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sParameterHandlerTable* %paramHandler, %struct.sParameterHandlerTable** %paramHandler.addr, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %0)
  store %struct.colprintLine* %call, %struct.colprintLine** %line, align 8
  %1 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %2 = load i32, i32* %language.addr, align 4
  %call1 = call i8* @getLanguageName(i32 %2)
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %1, i8* %call1)
  %3 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %4 = load %struct.sParameterHandlerTable*, %struct.sParameterHandlerTable** %paramHandler.addr, align 8
  %name = getelementptr inbounds %struct.sParameterHandlerTable, %struct.sParameterHandlerTable* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %3, i8* %5)
  %6 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %7 = load %struct.sParameterHandlerTable*, %struct.sParameterHandlerTable** %paramHandler.addr, align 8
  %desc = getelementptr inbounds %struct.sParameterHandlerTable, %struct.sParameterHandlerTable* %7, i32 0, i32 1
  %8 = load i8*, i8** %desc, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %6, i8* %8)
  ret void
}

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #1

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #1

declare i8* @getLanguageName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @paramColprintTablePrint(%struct.colprintTable* %table, i1 zeroext %noparser, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
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
  call void @colprintTableSort(%struct.colprintTable* %0, i32 (%struct.colprintLine*, %struct.colprintLine*)* @paramColprintCompareLines)
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
define internal i32 @paramColprintCompareLines(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  %a_parser = alloca i8*, align 8
  %b_parser = alloca i8*, align 8
  %r = alloca i32, align 4
  %a_name = alloca i8*, align 8
  %b_name = alloca i8*, align 8
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
  store i8* %call3, i8** %a_name, align 8
  %7 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call4 = call i8* @colprintLineGetColumn(%struct.colprintLine* %7, i32 1)
  store i8* %call4, i8** %b_name, align 8
  %8 = load i8*, i8** %a_name, align 8
  %9 = load i8*, i8** %b_name, align 8
  %call5 = call i32 @strcmp(i8* %8, i8* %9)
  store i32 %call5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

declare i8* @colprintLineGetColumn(%struct.colprintLine*, i32) #1

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
