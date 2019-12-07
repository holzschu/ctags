; ModuleID = 'lxpath.c'
source_filename = "lxpath.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sPtrArray = type opaque
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addTagXpath(i32 %language, %struct.sTagXpathTable* %xpathTable) #0 {
entry:
  %language.addr = alloca i32, align 4
  %xpathTable.addr = alloca %struct.sTagXpathTable*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sTagXpathTable* %xpathTable, %struct.sTagXpathTable** %xpathTable.addr, align 8
  %0 = load %struct.sTagXpathTable*, %struct.sTagXpathTable** %xpathTable.addr, align 8
  %xpathCompiled = getelementptr inbounds %struct.sTagXpathTable, %struct.sTagXpathTable* %0, i32 0, i32 3
  store i8* null, i8** %xpathCompiled, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @findXMLTags(i8* %ctx, i8* %root, %struct.sTagXpathTableTable* %xpathTableTable, %struct.sKindDefinition* %kinds, i8* %userData) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %root.addr = alloca i8*, align 8
  %xpathTableTable.addr = alloca %struct.sTagXpathTableTable*, align 8
  %kinds.addr = alloca %struct.sKindDefinition*, align 8
  %userData.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %root, i8** %root.addr, align 8
  store %struct.sTagXpathTableTable* %xpathTableTable, %struct.sTagXpathTableTable** %xpathTableTable.addr, align 8
  store %struct.sKindDefinition* %kinds, %struct.sKindDefinition** %kinds.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
