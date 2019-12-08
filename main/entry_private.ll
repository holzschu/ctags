; ModuleID = 'entry_private.c'
source_filename = "entry_private.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @getTagKind(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 5
  %1 = load i32, i32* %langType, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 8
  %3 = load i32, i32* %kindIndex, align 8
  %call = call %struct.sKindDefinition* @getLanguageKind(i32 %1, i32 %3)
  ret %struct.sKindDefinition* %call
}

declare %struct.sKindDefinition* @getLanguageKind(i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i8 @getTagKindLetter(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 5
  %1 = load i32, i32* %langType, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 8
  %3 = load i32, i32* %kindIndex, align 8
  %call = call %struct.sKindDefinition* @getLanguageKind(i32 %1, i32 %3)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %kdef, align 8
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %4, i32 0, i32 1
  %5 = load i8, i8* %letter, align 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getTagKindName(%struct.sTagEntryInfo* %tag) #0 {
entry:
  %tag.addr = alloca %struct.sTagEntryInfo*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  store %struct.sTagEntryInfo* %tag, %struct.sTagEntryInfo** %tag.addr, align 8
  %0 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %langType = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %0, i32 0, i32 5
  %1 = load i32, i32* %langType, align 8
  %2 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %tag.addr, align 8
  %kindIndex = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %2, i32 0, i32 8
  %3 = load i32, i32* %kindIndex, align 8
  %call = call %struct.sKindDefinition* @getLanguageKind(i32 %1, i32 %3)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %kdef, align 8
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %4, i32 0, i32 2
  %5 = load i8*, i8** %name, align 8
  ret i8* %5
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
