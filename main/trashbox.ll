; ModuleID = 'trashbox.c'
source_filename = "trashbox.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sTrashBox = type { %struct.sTrash* }
%struct.sTrash = type { i8*, %struct.sTrash*, void (i8*)* }

@defaultTrashBox = internal global %struct.sTrashBox* null, align 8
@parserTrashBox = internal global %struct.sTrashBox* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sTrashBox* @trashBoxNew() #0 {
entry:
  %t = alloca %struct.sTrashBox*, align 8
  %call = call i8* @eMalloc(i64 8)
  %0 = bitcast i8* %call to %struct.sTrashBox*
  store %struct.sTrashBox* %0, %struct.sTrashBox** %t, align 8
  %1 = load %struct.sTrashBox*, %struct.sTrashBox** %t, align 8
  %trash = getelementptr inbounds %struct.sTrashBox, %struct.sTrashBox* %1, i32 0, i32 0
  store %struct.sTrash* null, %struct.sTrash** %trash, align 8
  %2 = load %struct.sTrashBox*, %struct.sTrashBox** %t, align 8
  ret %struct.sTrashBox* %2
}

declare i8* @eMalloc(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sTrashBox* @trashBoxStack(%struct.sTrashBox* %trash_box) #0 {
entry:
  %trash_box.addr = alloca %struct.sTrashBox*, align 8
  %t = alloca %struct.sTrashBox*, align 8
  store %struct.sTrashBox* %trash_box, %struct.sTrashBox** %trash_box.addr, align 8
  %call = call %struct.sTrashBox* @trashBoxNew()
  store %struct.sTrashBox* %call, %struct.sTrashBox** %t, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %tobool = icmp ne %struct.sTrashBox* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sTrashBox*, %struct.sTrashBox** @defaultTrashBox, align 8
  store %struct.sTrashBox* %1, %struct.sTrashBox** %trash_box.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %3 = load %struct.sTrashBox*, %struct.sTrashBox** %t, align 8
  %4 = bitcast %struct.sTrashBox* %3 to i8*
  %call1 = call i8* @trashBoxPut(%struct.sTrashBox* %2, i8* %4, void (i8*)* bitcast (void (%struct.sTrashBox*)* @trashBoxDelete to void (i8*)*))
  %5 = load %struct.sTrashBox*, %struct.sTrashBox** %t, align 8
  ret %struct.sTrashBox* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @trashBoxPut(%struct.sTrashBox* %trash_box, i8* %item, void (i8*)* %destroy) #0 {
entry:
  %trash_box.addr = alloca %struct.sTrashBox*, align 8
  %item.addr = alloca i8*, align 8
  %destroy.addr = alloca void (i8*)*, align 8
  store %struct.sTrashBox* %trash_box, %struct.sTrashBox** %trash_box.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store void (i8*)* %destroy, void (i8*)** %destroy.addr, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %tobool = icmp ne %struct.sTrashBox* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sTrashBox*, %struct.sTrashBox** @defaultTrashBox, align 8
  store %struct.sTrashBox* %1, %struct.sTrashBox** %trash_box.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %trash = getelementptr inbounds %struct.sTrashBox, %struct.sTrashBox* %2, i32 0, i32 0
  %3 = load %struct.sTrash*, %struct.sTrash** %trash, align 8
  %4 = load i8*, i8** %item.addr, align 8
  %5 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %call = call %struct.sTrash* @trashPut(%struct.sTrash* %3, i8* %4, void (i8*)* %5)
  %6 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %trash1 = getelementptr inbounds %struct.sTrashBox, %struct.sTrashBox* %6, i32 0, i32 0
  store %struct.sTrash* %call, %struct.sTrash** %trash1, align 8
  %7 = load i8*, i8** %item.addr, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @trashBoxDelete(%struct.sTrashBox* %trash_box) #0 {
entry:
  %trash_box.addr = alloca %struct.sTrashBox*, align 8
  store %struct.sTrashBox* %trash_box, %struct.sTrashBox** %trash_box.addr, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %tobool = icmp ne %struct.sTrashBox* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sTrashBox*, %struct.sTrashBox** @defaultTrashBox, align 8
  store %struct.sTrashBox* %1, %struct.sTrashBox** %trash_box.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  call void @trashBoxMakeEmpty(%struct.sTrashBox* %2)
  %3 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %4 = bitcast %struct.sTrashBox* %3 to i8*
  call void @eFree(i8* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @trashBoxMakeEmpty(%struct.sTrashBox* %trash_box) #0 {
entry:
  %trash_box.addr = alloca %struct.sTrashBox*, align 8
  store %struct.sTrashBox* %trash_box, %struct.sTrashBox** %trash_box.addr, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %tobool = icmp ne %struct.sTrashBox* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sTrashBox*, %struct.sTrashBox** @defaultTrashBox, align 8
  store %struct.sTrashBox* %1, %struct.sTrashBox** %trash_box.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %trash = getelementptr inbounds %struct.sTrashBox, %struct.sTrashBox* %2, i32 0, i32 0
  %3 = load %struct.sTrash*, %struct.sTrash** %trash, align 8
  %call = call %struct.sTrash* @trashMakeEmpty(%struct.sTrash* %3)
  %4 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %trash1 = getelementptr inbounds %struct.sTrashBox, %struct.sTrashBox* %4, i32 0, i32 0
  store %struct.sTrash* %call, %struct.sTrash** %trash1, align 8
  ret void
}

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTrash* @trashPut(%struct.sTrash* %trash, i8* %item, void (i8*)* %destrctor) #0 {
entry:
  %trash.addr = alloca %struct.sTrash*, align 8
  %item.addr = alloca i8*, align 8
  %destrctor.addr = alloca void (i8*)*, align 8
  %t = alloca %struct.sTrash*, align 8
  store %struct.sTrash* %trash, %struct.sTrash** %trash.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store void (i8*)* %destrctor, void (i8*)** %destrctor.addr, align 8
  %call = call i8* @eMalloc(i64 24)
  %0 = bitcast i8* %call to %struct.sTrash*
  store %struct.sTrash* %0, %struct.sTrash** %t, align 8
  %1 = load %struct.sTrash*, %struct.sTrash** %trash.addr, align 8
  %2 = load %struct.sTrash*, %struct.sTrash** %t, align 8
  %next = getelementptr inbounds %struct.sTrash, %struct.sTrash* %2, i32 0, i32 1
  store %struct.sTrash* %1, %struct.sTrash** %next, align 8
  %3 = load i8*, i8** %item.addr, align 8
  %4 = load %struct.sTrash*, %struct.sTrash** %t, align 8
  %item1 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %4, i32 0, i32 0
  store i8* %3, i8** %item1, align 8
  %5 = load void (i8*)*, void (i8*)** %destrctor.addr, align 8
  %tobool = icmp ne void (i8*)* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** %destrctor.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi void (i8*)* [ %6, %cond.true ], [ @eFree, %cond.false ]
  %7 = load %struct.sTrash*, %struct.sTrash** %t, align 8
  %destrctor2 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %7, i32 0, i32 2
  store void (i8*)* %cond, void (i8*)** %destrctor2, align 8
  %8 = load %struct.sTrash*, %struct.sTrash** %t, align 8
  ret %struct.sTrash* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void (i8*)* @trashBoxTakeBack(%struct.sTrashBox* %trash_box, i8* %item) #0 {
entry:
  %trash_box.addr = alloca %struct.sTrashBox*, align 8
  %item.addr = alloca i8*, align 8
  %d = alloca void (i8*)*, align 8
  store %struct.sTrashBox* %trash_box, %struct.sTrashBox** %trash_box.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %tobool = icmp ne %struct.sTrashBox* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sTrashBox*, %struct.sTrashBox** @defaultTrashBox, align 8
  store %struct.sTrashBox* %1, %struct.sTrashBox** %trash_box.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %trash = getelementptr inbounds %struct.sTrashBox, %struct.sTrashBox* %2, i32 0, i32 0
  %3 = load %struct.sTrash*, %struct.sTrash** %trash, align 8
  %4 = load i8*, i8** %item.addr, align 8
  %call = call %struct.sTrash* @trashTakeBack(%struct.sTrash* %3, i8* %4, void (i8*)** %d)
  %5 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %trash1 = getelementptr inbounds %struct.sTrashBox, %struct.sTrashBox* %5, i32 0, i32 0
  store %struct.sTrash* %call, %struct.sTrash** %trash1, align 8
  %6 = load void (i8*)*, void (i8*)** %d, align 8
  ret void (i8*)* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTrash* @trashTakeBack(%struct.sTrash* %trash, i8* %item, void (i8*)** %destrctor) #0 {
entry:
  %trash.addr = alloca %struct.sTrash*, align 8
  %item.addr = alloca i8*, align 8
  %destrctor.addr = alloca void (i8*)**, align 8
  %d = alloca void (i8*)*, align 8
  store %struct.sTrash* %trash, %struct.sTrash** %trash.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store void (i8*)** %destrctor, void (i8*)*** %destrctor.addr, align 8
  %0 = load i8*, i8** %item.addr, align 8
  %call = call void (i8*)* @trashTakeBack0(%struct.sTrash** %trash.addr, i8* %0)
  store void (i8*)* %call, void (i8*)** %d, align 8
  %1 = load void (i8*)**, void (i8*)*** %destrctor.addr, align 8
  %tobool = icmp ne void (i8*)** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load void (i8*)*, void (i8*)** %d, align 8
  %3 = load void (i8*)**, void (i8*)*** %destrctor.addr, align 8
  store void (i8*)* %2, void (i8*)** %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sTrash*, %struct.sTrash** %trash.addr, align 8
  ret %struct.sTrash* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sTrash* @trashMakeEmpty(%struct.sTrash* %trash) #0 {
entry:
  %trash.addr = alloca %struct.sTrash*, align 8
  %tmp = alloca %struct.sTrash*, align 8
  store %struct.sTrash* %trash, %struct.sTrash** %trash.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sTrash*, %struct.sTrash** %trash.addr, align 8
  %tobool = icmp ne %struct.sTrash* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sTrash*, %struct.sTrash** %trash.addr, align 8
  store %struct.sTrash* %1, %struct.sTrash** %tmp, align 8
  %2 = load %struct.sTrash*, %struct.sTrash** %trash.addr, align 8
  %next = getelementptr inbounds %struct.sTrash, %struct.sTrash* %2, i32 0, i32 1
  %3 = load %struct.sTrash*, %struct.sTrash** %next, align 8
  store %struct.sTrash* %3, %struct.sTrash** %trash.addr, align 8
  %4 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %destrctor = getelementptr inbounds %struct.sTrash, %struct.sTrash* %4, i32 0, i32 2
  %5 = load void (i8*)*, void (i8*)** %destrctor, align 8
  %6 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %item = getelementptr inbounds %struct.sTrash, %struct.sTrash* %6, i32 0, i32 0
  %7 = load i8*, i8** %item, align 8
  call void %5(i8* %7)
  %8 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %item1 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %8, i32 0, i32 0
  store i8* null, i8** %item1, align 8
  %9 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %destrctor2 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %9, i32 0, i32 2
  store void (i8*)* null, void (i8*)** %destrctor2, align 8
  %10 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %11 = bitcast %struct.sTrash* %10 to i8*
  call void @eFree(i8* %11)
  store %struct.sTrash* null, %struct.sTrash** %tmp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret %struct.sTrash* null
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @trashBoxFree(%struct.sTrashBox* %trash_box, i8* %item) #0 {
entry:
  %trash_box.addr = alloca %struct.sTrashBox*, align 8
  %item.addr = alloca i8*, align 8
  %d = alloca void (i8*)*, align 8
  store %struct.sTrashBox* %trash_box, %struct.sTrashBox** %trash_box.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %tobool = icmp ne %struct.sTrashBox* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sTrashBox*, %struct.sTrashBox** @defaultTrashBox, align 8
  store %struct.sTrashBox* %1, %struct.sTrashBox** %trash_box.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.sTrashBox*, %struct.sTrashBox** %trash_box.addr, align 8
  %3 = load i8*, i8** %item.addr, align 8
  %call = call void (i8*)* @trashBoxTakeBack(%struct.sTrashBox* %2, i8* %3)
  store void (i8*)* %call, void (i8*)** %d, align 8
  %4 = load void (i8*)*, void (i8*)** %d, align 8
  %5 = load i8*, i8** %item.addr, align 8
  call void %4(i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initDefaultTrashBox() #0 {
entry:
  %call = call %struct.sTrashBox* @trashBoxNew()
  store %struct.sTrashBox* %call, %struct.sTrashBox** @defaultTrashBox, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @finiDefaultTrashBox() #0 {
entry:
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** @defaultTrashBox, align 8
  call void @trashBoxDelete(%struct.sTrashBox* %0)
  store %struct.sTrashBox* null, %struct.sTrashBox** @defaultTrashBox, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initParserTrashBox() #0 {
entry:
  %call = call %struct.sTrashBox* @trashBoxNew()
  store %struct.sTrashBox* %call, %struct.sTrashBox** @parserTrashBox, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @finiParserTrashBox() #0 {
entry:
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** @parserTrashBox, align 8
  call void @trashBoxDelete(%struct.sTrashBox* %0)
  store %struct.sTrashBox* null, %struct.sTrashBox** @parserTrashBox, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @parserTrashBoxPut(i8* %item, void (i8*)* %destroy) #0 {
entry:
  %item.addr = alloca i8*, align 8
  %destroy.addr = alloca void (i8*)*, align 8
  store i8* %item, i8** %item.addr, align 8
  store void (i8*)* %destroy, void (i8*)** %destroy.addr, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** @parserTrashBox, align 8
  %1 = load i8*, i8** %item.addr, align 8
  %2 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %call = call i8* @trashBoxPut(%struct.sTrashBox* %0, i8* %1, void (i8*)* %2)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void (i8*)* @parserTrashBoxTakeBack(i8* %item) #0 {
entry:
  %item.addr = alloca i8*, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** @parserTrashBox, align 8
  %1 = load i8*, i8** %item.addr, align 8
  %call = call void (i8*)* @trashBoxTakeBack(%struct.sTrashBox* %0, i8* %1)
  ret void (i8*)* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void (i8*)* @trashTakeBack0(%struct.sTrash** %trash, i8* %item) #0 {
entry:
  %trash.addr = alloca %struct.sTrash**, align 8
  %item.addr = alloca i8*, align 8
  %removed = alloca void (i8*)*, align 8
  %tmp = alloca %struct.sTrash*, align 8
  store %struct.sTrash** %trash, %struct.sTrash*** %trash.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  store void (i8*)* null, void (i8*)** %removed, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.sTrash**, %struct.sTrash*** %trash.addr, align 8
  %1 = load %struct.sTrash*, %struct.sTrash** %0, align 8
  %tobool = icmp ne %struct.sTrash* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sTrash**, %struct.sTrash*** %trash.addr, align 8
  %3 = load %struct.sTrash*, %struct.sTrash** %2, align 8
  %item1 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %3, i32 0, i32 0
  %4 = load i8*, i8** %item1, align 8
  %5 = load i8*, i8** %item.addr, align 8
  %cmp = icmp eq i8* %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.sTrash**, %struct.sTrash*** %trash.addr, align 8
  %7 = load %struct.sTrash*, %struct.sTrash** %6, align 8
  store %struct.sTrash* %7, %struct.sTrash** %tmp, align 8
  %8 = load %struct.sTrash**, %struct.sTrash*** %trash.addr, align 8
  %9 = load %struct.sTrash*, %struct.sTrash** %8, align 8
  %next = getelementptr inbounds %struct.sTrash, %struct.sTrash* %9, i32 0, i32 1
  %10 = load %struct.sTrash*, %struct.sTrash** %next, align 8
  %11 = load %struct.sTrash**, %struct.sTrash*** %trash.addr, align 8
  store %struct.sTrash* %10, %struct.sTrash** %11, align 8
  %12 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %next2 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %12, i32 0, i32 1
  store %struct.sTrash* null, %struct.sTrash** %next2, align 8
  %13 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %item3 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %13, i32 0, i32 0
  store i8* null, i8** %item3, align 8
  %14 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %destrctor = getelementptr inbounds %struct.sTrash, %struct.sTrash* %14, i32 0, i32 2
  %15 = load void (i8*)*, void (i8*)** %destrctor, align 8
  store void (i8*)* %15, void (i8*)** %removed, align 8
  %16 = load %struct.sTrash*, %struct.sTrash** %tmp, align 8
  %17 = bitcast %struct.sTrash* %16 to i8*
  call void @eFree(i8* %17)
  store %struct.sTrash* null, %struct.sTrash** %tmp, align 8
  br label %while.end

if.else:                                          ; preds = %while.body
  %18 = load %struct.sTrash**, %struct.sTrash*** %trash.addr, align 8
  %19 = load %struct.sTrash*, %struct.sTrash** %18, align 8
  %next4 = getelementptr inbounds %struct.sTrash, %struct.sTrash* %19, i32 0, i32 1
  store %struct.sTrash** %next4, %struct.sTrash*** %trash.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  br label %do.body

do.body:                                          ; preds = %while.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %20 = load void (i8*)*, void (i8*)** %removed, align 8
  ret void (i8*)* %20
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
