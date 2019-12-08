; ModuleID = 'writer-json.c'
source_filename = "writer-json.c"
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

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@jsonWriter = global { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)*, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)*, i8* (%struct.sTagWriter*, %struct._MIO*)*, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)*, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)*, i8*, i8*, i32 } { i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sTagEntryInfo*)* null, i32 (%struct.sTagWriter*, %struct._MIO*, %struct.sPtagDesc*, i8*, i8*, i8*)* null, i8* (%struct.sTagWriter*, %struct._MIO*)* null, i1 (%struct.sTagWriter*, %struct._MIO*, i8*)* null, void (%struct.sTagWriter*, %struct.sTagEntryInfo*)* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null, i32 0 }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @ptagMakeJsonOutputVersion(%struct.sPtagDesc* %desc, i8* %data) #0 {
entry:
  %desc.addr = alloca %struct.sPtagDesc*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.sPtagDesc* %desc, %struct.sPtagDesc** %desc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  ret i1 false
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
