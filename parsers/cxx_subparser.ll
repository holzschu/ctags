; ModuleID = 'cxx/cxx_subparser.c'
source_filename = "cxx/cxx_subparser.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sPtrArray = type opaque
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.sTagEntryInfo = type opaque
%struct.sCxxSubparser = type { %struct.sSubparser, void (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*, %struct._CXXToken*)* }
%struct._CXXToken = type { i32, %struct.sVString*, i32, %struct._CXXTokenChain*, i8, i32, %struct._MIOPos, %struct._CXXToken*, %struct._CXXToken*, i8, i8 }
%struct.sVString = type { i64, i64, i8* }
%struct._CXXTokenChain = type { %struct._CXXToken*, %struct._CXXToken*, i32 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxSubparserNotifyParseAccessSpecifier(%struct.sPtrArray* %pSubparsers) #0 {
entry:
  %pSubparsers.addr = alloca %struct.sPtrArray*, align 8
  %bR = alloca i8, align 1
  %pSubparser = alloca %struct.sSubparser*, align 8
  %pS = alloca %struct.sCxxSubparser*, align 8
  store %struct.sPtrArray* %pSubparsers, %struct.sPtrArray** %pSubparsers.addr, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %pSubparser, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %pSubparser, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sCxxSubparser*
  store %struct.sCxxSubparser* %2, %struct.sCxxSubparser** %pS, align 8
  %3 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %parseAccessSpecifierNotify = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %3, i32 0, i32 5
  %4 = load i1 (%struct.sCxxSubparser*)*, i1 (%struct.sCxxSubparser*)** %parseAccessSpecifierNotify, align 8
  %tobool = icmp ne i1 (%struct.sCxxSubparser*)* %4, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %parseAccessSpecifierNotify1 = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %6, i32 0, i32 5
  %7 = load i1 (%struct.sCxxSubparser*)*, i1 (%struct.sCxxSubparser*)** %parseAccessSpecifierNotify1, align 8
  %8 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %call2 = call zeroext i1 %7(%struct.sCxxSubparser* %8)
  br i1 %call2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %pSubparsers.addr, align 8
  %10 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %11 = bitcast %struct.sCxxSubparser* %10 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %9, i8* %11)
  store i8 1, i8* %bR, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void @leaveSubparser()
  br label %if.end4

if.end4:                                          ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8, i8* %bR, align 1
  %tobool5 = trunc i8 %12 to i1
  ret i1 %tobool5
}

declare %struct.sSubparser* @getNextSubparser(%struct.sSubparser*, i1 zeroext) #1

declare void @enterSubparser(%struct.sSubparser*) #1

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

declare void @leaveSubparser() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxSubparserNotifyfoundExtraIdentifierAsAccessSpecifier(%struct.sPtrArray* %pSubparsers, %struct._CXXToken* %pToken) #0 {
entry:
  %pSubparsers.addr = alloca %struct.sPtrArray*, align 8
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %pS = alloca %struct.sCxxSubparser*, align 8
  store %struct.sPtrArray* %pSubparsers, %struct.sPtrArray** %pSubparsers.addr, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %pSubparsers.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %0)
  store i32 %call, i32* %c, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %c, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %pSubparsers.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call i8* @ptrArrayItem(%struct.sPtrArray* %3, i32 %4)
  %5 = bitcast i8* %call1 to %struct.sCxxSubparser*
  store %struct.sCxxSubparser* %5, %struct.sCxxSubparser** %pS, align 8
  %6 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %foundExtraIdentifierAsAccessSpecifier = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %6, i32 0, i32 6
  %7 = load void (%struct.sCxxSubparser*, %struct._CXXToken*)*, void (%struct.sCxxSubparser*, %struct._CXXToken*)** %foundExtraIdentifierAsAccessSpecifier, align 8
  %tobool = icmp ne void (%struct.sCxxSubparser*, %struct._CXXToken*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %9 = bitcast %struct.sCxxSubparser* %8 to %struct.sSubparser*
  call void @enterSubparser(%struct.sSubparser* %9)
  %10 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %foundExtraIdentifierAsAccessSpecifier2 = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %10, i32 0, i32 6
  %11 = load void (%struct.sCxxSubparser*, %struct._CXXToken*)*, void (%struct.sCxxSubparser*, %struct._CXXToken*)** %foundExtraIdentifierAsAccessSpecifier2, align 8
  %12 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %13 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  call void %11(%struct.sCxxSubparser* %12, %struct._CXXToken* %13)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @ptrArrayCount(%struct.sPtrArray*) #1

declare i8* @ptrArrayItem(%struct.sPtrArray*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cxxSubparserNewIdentifierAsHeadOfMemberNotify(%struct._CXXToken* %pToken) #0 {
entry:
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %pSubparser = alloca %struct.sSubparser*, align 8
  %handled = alloca i8, align 1
  %pS = alloca %struct.sCxxSubparser*, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  store i8 0, i8* %handled, align 1
  store %struct.sSubparser* null, %struct.sSubparser** %pSubparser, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %pSubparser, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sCxxSubparser*
  store %struct.sCxxSubparser* %2, %struct.sCxxSubparser** %pS, align 8
  %3 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %newIdentifierAsHeadOfMemberNotify = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %3, i32 0, i32 3
  %4 = load i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)** %newIdentifierAsHeadOfMemberNotify, align 8
  %tobool = icmp ne i1 (%struct.sCxxSubparser*, %struct._CXXToken*)* %4, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %newIdentifierAsHeadOfMemberNotify1 = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %6, i32 0, i32 3
  %7 = load i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)** %newIdentifierAsHeadOfMemberNotify1, align 8
  %8 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %call2 = call zeroext i1 %7(%struct.sCxxSubparser* %8, %struct._CXXToken* %9)
  br i1 %call2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i8 1, i8* %handled, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void @leaveSubparser()
  %10 = load i8, i8* %handled, align 1
  %tobool4 = trunc i8 %10 to i1
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then5, %while.cond
  %11 = load i8, i8* %handled, align 1
  %tobool8 = trunc i8 %11 to i1
  ret i1 %tobool8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxSubparserUnknownIdentifierInClassNotify(%struct._CXXToken* %pToken) #0 {
entry:
  %pToken.addr = alloca %struct._CXXToken*, align 8
  %pSubparser = alloca %struct.sSubparser*, align 8
  %handled = alloca i8, align 1
  %pS = alloca %struct.sCxxSubparser*, align 8
  store %struct._CXXToken* %pToken, %struct._CXXToken** %pToken.addr, align 8
  store i8 0, i8* %handled, align 1
  store %struct.sSubparser* null, %struct.sSubparser** %pSubparser, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %pSubparser, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sCxxSubparser*
  store %struct.sCxxSubparser* %2, %struct.sCxxSubparser** %pS, align 8
  %3 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %unknownIdentifierInClassNotify = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %3, i32 0, i32 4
  %4 = load i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)** %unknownIdentifierInClassNotify, align 8
  %tobool = icmp ne i1 (%struct.sCxxSubparser*, %struct._CXXToken*)* %4, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %unknownIdentifierInClassNotify1 = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %6, i32 0, i32 4
  %7 = load i1 (%struct.sCxxSubparser*, %struct._CXXToken*)*, i1 (%struct.sCxxSubparser*, %struct._CXXToken*)** %unknownIdentifierInClassNotify1, align 8
  %8 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %9 = load %struct._CXXToken*, %struct._CXXToken** %pToken.addr, align 8
  %call2 = call zeroext i1 %7(%struct.sCxxSubparser* %8, %struct._CXXToken* %9)
  br i1 %call2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i8 1, i8* %handled, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  call void @leaveSubparser()
  %10 = load i8, i8* %handled, align 1
  %tobool4 = trunc i8 %10 to i1
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then5, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxSubparserNotifyEnterBlock() #0 {
entry:
  %pSubparser = alloca %struct.sSubparser*, align 8
  %pS = alloca %struct.sCxxSubparser*, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %pSubparser, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %pSubparser, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sCxxSubparser*
  store %struct.sCxxSubparser* %2, %struct.sCxxSubparser** %pS, align 8
  %3 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %enterBlockNotify = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %3, i32 0, i32 1
  %4 = load void (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*)** %enterBlockNotify, align 8
  %tobool = icmp ne void (%struct.sCxxSubparser*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %enterBlockNotify1 = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %6, i32 0, i32 1
  %7 = load void (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*)** %enterBlockNotify1, align 8
  %8 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  call void %7(%struct.sCxxSubparser* %8)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cxxSubparserNotifyLeaveBlock() #0 {
entry:
  %pSubparser = alloca %struct.sSubparser*, align 8
  %pS = alloca %struct.sCxxSubparser*, align 8
  store %struct.sSubparser* null, %struct.sSubparser** %pSubparser, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext false)
  store %struct.sSubparser* %call, %struct.sSubparser** %pSubparser, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  %2 = bitcast %struct.sSubparser* %1 to %struct.sCxxSubparser*
  store %struct.sCxxSubparser* %2, %struct.sCxxSubparser** %pS, align 8
  %3 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %leaveBlockNotify = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %3, i32 0, i32 2
  %4 = load void (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*)** %leaveBlockNotify, align 8
  %tobool = icmp ne void (%struct.sCxxSubparser*)* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.sSubparser*, %struct.sSubparser** %pSubparser, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  %leaveBlockNotify1 = getelementptr inbounds %struct.sCxxSubparser, %struct.sCxxSubparser* %6, i32 0, i32 2
  %7 = load void (%struct.sCxxSubparser*)*, void (%struct.sCxxSubparser*)** %leaveBlockNotify1, align 8
  %8 = load %struct.sCxxSubparser*, %struct.sCxxSubparser** %pS, align 8
  call void %7(%struct.sCxxSubparser* %8)
  call void @leaveSubparser()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
