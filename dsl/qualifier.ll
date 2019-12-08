; ModuleID = 'qualifier.c'
source_filename = "qualifier.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sCode = type { i8*, %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)*, %struct._EsObject*, i32, i32, i8* }
%struct.tagEntry = type { i8*, i8*, %struct.anon, i8*, i16, %struct.anon.0 }
%struct.anon = type { i8*, i64 }
%struct.anon.0 = type { i16, %struct.tagExtensionField* }
%struct.tagExtensionField = type { i8*, i8* }
%struct._EsObject = type opaque
%struct.sQCode = type { %struct._EsObject* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._MIO = type opaque

@.str = private unnamed_addr constant [6 x i8] c"null?\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"eq?\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"prefix?\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"(prefix? TARGET<string> PREFIX<string>) -> <boolean>\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"suffix?\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"(suffix? TARGET<string> SUFFIX<string>) -> <boolean>\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"substr?\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"(substr? TARGET<string> SUBSTR<string>) -> <boolean>\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"(member ELEMENT LIST) -> #f|<list>'\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"($ NAME) -> #f|<string>'\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"$name\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"$input\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"input file name\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"$access\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"$file\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"file scope<boolean>\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"$language\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"$implementation\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"$line\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"$kind\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"$role\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"$pattern\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"$inherits\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"<list>\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"$scope-kind\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"$scope-name\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@codes = global [28 x %struct.sCode] [%struct.sCode { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_null, %struct._EsObject* null, i32 8, i32 1, i8* null }, %struct.sCode { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_and, %struct._EsObject* null, i32 4, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_or, %struct._EsObject* null, i32 4, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_not, %struct._EsObject* null, i32 8, i32 1, i8* null }, %struct.sCode { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_eq, %struct._EsObject* null, i32 8, i32 2, i8* null }, %struct.sCode { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_lt, %struct._EsObject* null, i32 8, i32 2, i8* null }, %struct.sCode { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_gt, %struct._EsObject* null, i32 8, i32 2, i8* null }, %struct.sCode { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_le, %struct._EsObject* null, i32 8, i32 2, i8* null }, %struct.sCode { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_ge, %struct._EsObject* null, i32 8, i32 2, i8* null }, %struct.sCode { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_prefix, %struct._EsObject* null, i32 8, i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_suffix, %struct._EsObject* null, i32 8, i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_substr, %struct._EsObject* null, i32 8, i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_member, %struct._EsObject* null, i32 8, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @builtin_entry_ref, %struct._EsObject* null, i32 8, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_name, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_input, %struct._EsObject* null, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_access, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_file, %struct._EsObject* null, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_language, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_implementation, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_line, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_kind, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_role, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_pattern, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_inherits, %struct._EsObject* null, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0) }, %struct.sCode { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_scope_kind, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_scope_name, %struct._EsObject* null, i32 1, i32 0, i8* null }, %struct.sCode { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)* @value_end, %struct._EsObject* null, i32 1, i32 0, i8* null }], align 8
@q_compile.code = internal global %struct.sQCode zeroinitializer, align 8
@q_compile.initialized = internal global i32 0, align 4
@__stderrp = external global %struct.__sFILE*, align 8
@.str.36 = private unnamed_addr constant [30 x i8] c"GOT ERROR in QUALIFYING: %s: \00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"%15s: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"number-required\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"wrong-type-argument\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"inherits\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"MEMORY EXHAUSTED\0A\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"unbound-variable\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"too-few-arguments\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"too-many-arguments\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_null(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  %call2 = call i32 @es_null(%struct._EsObject* %call)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call3 = call %struct._EsObject* @es_boolean_new(i32 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call %struct._EsObject* @es_boolean_new(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._EsObject* [ %call3, %cond.true ], [ %call4, %cond.false ]
  ret %struct._EsObject* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_and(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %o = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  store %struct._EsObject* %call2, %struct._EsObject** %o, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %3 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call3 = call %struct._EsObject* @eval(%struct._EsObject* %2, %struct.tagEntry* %3)
  store %struct._EsObject* %call3, %struct._EsObject** %o, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %call4 = call %struct._EsObject* @es_boolean_new(i32 0)
  %call5 = call i32 @es_object_equal(%struct._EsObject* %4, %struct._EsObject* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call7 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %while.body
  %5 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %call8 = call i32 @es_error_p(%struct._EsObject* %5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %6 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  store %struct._EsObject* %6, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end
  %7 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call12 = call %struct._EsObject* @es_cdr(%struct._EsObject* %7)
  store %struct._EsObject* %call12, %struct._EsObject** %args.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call13 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_or(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %o = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  store %struct._EsObject* %call2, %struct._EsObject** %o, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %3 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call3 = call %struct._EsObject* @eval(%struct._EsObject* %2, %struct.tagEntry* %3)
  store %struct._EsObject* %call3, %struct._EsObject** %o, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %call4 = call %struct._EsObject* @es_boolean_new(i32 0)
  %call5 = call i32 @es_object_equal(%struct._EsObject* %4, %struct._EsObject* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %call7 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %while.body
  %5 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %call8 = call i32 @es_error_p(%struct._EsObject* %5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %6 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  store %struct._EsObject* %6, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end
  %7 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call12 = call %struct._EsObject* @es_cdr(%struct._EsObject* %7)
  store %struct._EsObject* %call12, %struct._EsObject** %args.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call13 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_not(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  %call2 = call %struct._EsObject* @es_boolean_new(i32 0)
  %call3 = call i32 @es_object_equal(%struct._EsObject* %call, %struct._EsObject* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call4, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call5 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  %call6 = call i32 @es_error_p(%struct._EsObject* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  %2 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call9 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  store %struct._EsObject* %call9, %struct._EsObject** %retval, align 8
  br label %return

if.else10:                                        ; preds = %if.else
  %call11 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call11, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else10, %if.then8, %if.then
  %3 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_eq(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %a = alloca %struct._EsObject*, align 8
  %b = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %a, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %b, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call4 = call i32 @es_object_equal(%struct._EsObject* %2, %struct._EsObject* %3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call5, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call6 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call6, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_lt(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %a = alloca %struct._EsObject*, align 8
  %b = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %a, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %b, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call4 = call i32 @es_number_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call6 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %call7 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call5, %struct._EsObject* %call6)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call8 = call i32 @es_number_p(%struct._EsObject* %3)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call12 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %call13 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call11, %struct._EsObject* %call12)
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end
  %4 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call15 = call double @es_number_get(%struct._EsObject* %4)
  %5 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call16 = call double @es_number_get(%struct._EsObject* %5)
  %cmp = fcmp olt double %call15, %call16
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %call18 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call18, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end14
  %call19 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call19, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then17, %if.then10, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_gt(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %a = alloca %struct._EsObject*, align 8
  %b = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %a, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %b, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call4 = call i32 @es_number_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call6 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %call7 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call5, %struct._EsObject* %call6)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call8 = call i32 @es_number_p(%struct._EsObject* %3)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call12 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %call13 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call11, %struct._EsObject* %call12)
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end
  %4 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call15 = call double @es_number_get(%struct._EsObject* %4)
  %5 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call16 = call double @es_number_get(%struct._EsObject* %5)
  %cmp = fcmp ogt double %call15, %call16
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %call18 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call18, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end14
  %call19 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call19, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then17, %if.then10, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_le(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %a = alloca %struct._EsObject*, align 8
  %b = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %a, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %b, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call4 = call i32 @es_number_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call6 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %call7 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call5, %struct._EsObject* %call6)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call8 = call i32 @es_number_p(%struct._EsObject* %3)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call12 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %call13 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call11, %struct._EsObject* %call12)
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end
  %4 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call15 = call double @es_number_get(%struct._EsObject* %4)
  %5 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call16 = call double @es_number_get(%struct._EsObject* %5)
  %cmp = fcmp ole double %call15, %call16
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %call18 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call18, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end14
  %call19 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call19, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then17, %if.then10, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_ge(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %a = alloca %struct._EsObject*, align 8
  %b = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %a, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %b, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call4 = call i32 @es_number_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call6 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %call7 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call5, %struct._EsObject* %call6)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call8 = call i32 @es_number_p(%struct._EsObject* %3)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %call12 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %call13 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call11, %struct._EsObject* %call12)
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end
  %4 = load %struct._EsObject*, %struct._EsObject** %a, align 8
  %call15 = call double @es_number_get(%struct._EsObject* %4)
  %5 = load %struct._EsObject*, %struct._EsObject** %b, align 8
  %call16 = call double @es_number_get(%struct._EsObject* %5)
  %cmp = fcmp oge double %call15, %call16
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %call18 = call %struct._EsObject* @es_boolean_new(i32 1)
  store %struct._EsObject* %call18, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end14
  %call19 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call19, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then17, %if.then10, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_prefix(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %target = alloca %struct._EsObject*, align 8
  %prefix = alloca %struct._EsObject*, align 8
  %ts = alloca i8*, align 8
  %ps = alloca i8*, align 8
  %tl = alloca i64, align 8
  %pl = alloca i64, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %target, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %prefix, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %target, align 8
  %call4 = call i32 @es_string_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %prefix, align 8
  %call5 = call i32 @es_string_p(%struct._EsObject* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call7 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %call8 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %call9 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call7, %struct._EsObject* %call8)
  store %struct._EsObject* %call9, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._EsObject*, %struct._EsObject** %target, align 8
  %call10 = call i8* @es_string_get(%struct._EsObject* %4)
  store i8* %call10, i8** %ts, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %prefix, align 8
  %call11 = call i8* @es_string_get(%struct._EsObject* %5)
  store i8* %call11, i8** %ps, align 8
  %6 = load i8*, i8** %ts, align 8
  %call12 = call i64 @strlen(i8* %6)
  store i64 %call12, i64* %tl, align 8
  %7 = load i8*, i8** %ps, align 8
  %call13 = call i64 @strlen(i8* %7)
  store i64 %call13, i64* %pl, align 8
  %8 = load i64, i64* %tl, align 8
  %9 = load i64, i64* %pl, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %call15 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call15, %struct._EsObject** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end
  %10 = load i8*, i8** %ts, align 8
  %11 = load i8*, i8** %ps, align 8
  %12 = load i64, i64* %pl, align 8
  %call17 = call i32 @strncmp(i8* %10, i8* %11, i64 %12)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  %call19 = call %struct._EsObject* @es_boolean_new(i32 1)
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  %call20 = call %struct._EsObject* @es_boolean_new(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._EsObject* [ %call19, %cond.true ], [ %call20, %cond.false ]
  store %struct._EsObject* %cond, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then14, %if.then
  %13 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_suffix(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %target = alloca %struct._EsObject*, align 8
  %suffix = alloca %struct._EsObject*, align 8
  %ts = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %tl = alloca i64, align 8
  %sl = alloca i64, align 8
  %d = alloca i32, align 4
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %target, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %suffix, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %target, align 8
  %call4 = call i32 @es_string_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %suffix, align 8
  %call5 = call i32 @es_string_p(%struct._EsObject* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call7 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %call8 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %call9 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call7, %struct._EsObject* %call8)
  store %struct._EsObject* %call9, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._EsObject*, %struct._EsObject** %target, align 8
  %call10 = call i8* @es_string_get(%struct._EsObject* %4)
  store i8* %call10, i8** %ts, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %suffix, align 8
  %call11 = call i8* @es_string_get(%struct._EsObject* %5)
  store i8* %call11, i8** %ss, align 8
  %6 = load i8*, i8** %ts, align 8
  %call12 = call i64 @strlen(i8* %6)
  store i64 %call12, i64* %tl, align 8
  %7 = load i8*, i8** %ss, align 8
  %call13 = call i64 @strlen(i8* %7)
  store i64 %call13, i64* %sl, align 8
  %8 = load i64, i64* %tl, align 8
  %9 = load i64, i64* %sl, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %call15 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call15, %struct._EsObject** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end
  %10 = load i64, i64* %tl, align 8
  %11 = load i64, i64* %sl, align 8
  %sub = sub i64 %10, %11
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %d, align 4
  %12 = load i8*, i8** %ts, align 8
  %13 = load i32, i32* %d, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i8*, i8** %ss, align 8
  %call17 = call i32 @strcmp(i8* %add.ptr, i8* %14)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  %call20 = call %struct._EsObject* @es_boolean_new(i32 1)
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  %call21 = call %struct._EsObject* @es_boolean_new(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._EsObject* [ %call20, %cond.true ], [ %call21, %cond.false ]
  store %struct._EsObject* %cond, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then14, %if.then
  %15 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_substr(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %target = alloca %struct._EsObject*, align 8
  %substr = alloca %struct._EsObject*, align 8
  %ts = alloca i8*, align 8
  %ss = alloca i8*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %target, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %substr, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %target, align 8
  %call4 = call i32 @es_string_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %substr, align 8
  %call5 = call i32 @es_string_p(%struct._EsObject* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call7 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %call8 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %call9 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call7, %struct._EsObject* %call8)
  store %struct._EsObject* %call9, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._EsObject*, %struct._EsObject** %target, align 8
  %call10 = call i8* @es_string_get(%struct._EsObject* %4)
  store i8* %call10, i8** %ts, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %substr, align 8
  %call11 = call i8* @es_string_get(%struct._EsObject* %5)
  store i8* %call11, i8** %ss, align 8
  %6 = load i8*, i8** %ts, align 8
  %7 = load i8*, i8** %ss, align 8
  %call12 = call i8* @strstr(i8* %6, i8* %7)
  %cmp = icmp eq i8* %call12, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call13 = call %struct._EsObject* @es_boolean_new(i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call14 = call %struct._EsObject* @es_boolean_new(i32 1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._EsObject* [ %call13, %cond.true ], [ %call14, %cond.false ]
  store %struct._EsObject* %cond, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_member(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %elt = alloca %struct._EsObject*, align 8
  %lst = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %elt, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %lst, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %lst, align 8
  %call4 = call i32 @es_list_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %call6 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %call7 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call5, %struct._EsObject* %call6)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %3 = load %struct._EsObject*, %struct._EsObject** %lst, align 8
  %call8 = call i32 @es_null(%struct._EsObject* %3)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._EsObject*, %struct._EsObject** %elt, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %lst, align 8
  %call10 = call %struct._EsObject* @es_car(%struct._EsObject* %5)
  %call11 = call i32 @es_object_equal(%struct._EsObject* %4, %struct._EsObject* %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  %6 = load %struct._EsObject*, %struct._EsObject** %lst, align 8
  store %struct._EsObject* %6, %struct._EsObject** %retval, align 8
  br label %return

if.end14:                                         ; preds = %while.body
  %7 = load %struct._EsObject*, %struct._EsObject** %lst, align 8
  %call15 = call %struct._EsObject* @es_cdr(%struct._EsObject* %7)
  store %struct._EsObject* %call15, %struct._EsObject** %lst, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call16 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call16, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then13, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @builtin_entry_ref(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %key = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %args.addr, align 8
  %call = call %struct._EsObject* @es_car(%struct._EsObject* %0)
  store %struct._EsObject* %call, %struct._EsObject** %key, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %key, align 8
  %call2 = call i32 @es_error_p(%struct._EsObject* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %key, align 8
  store %struct._EsObject* %2, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct._EsObject*, %struct._EsObject** %key, align 8
  %call3 = call i32 @es_string_p(%struct._EsObject* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else9, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %call7 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %call8 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call6, %struct._EsObject* %call7)
  store %struct._EsObject* %call8, %struct._EsObject** %retval, align 8
  br label %return

if.else9:                                         ; preds = %if.else
  %4 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %key, align 8
  %call10 = call i8* @es_string_get(%struct._EsObject* %5)
  %call11 = call %struct._EsObject* @entry_xget_string(%struct.tagEntry* %4, i8* %call10)
  store %struct._EsObject* %call11, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else9, %if.then5, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_name(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %name = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call %struct._EsObject* @es_string_new(i8* %1)
  %call2 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call)
  ret %struct._EsObject* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_input(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %file = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %0, i32 0, i32 1
  %1 = load i8*, i8** %file, align 8
  %call = call %struct._EsObject* @es_string_new(i8* %1)
  %call2 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call)
  ret %struct._EsObject* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_access(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call %struct._EsObject* @entry_xget_string(%struct.tagEntry* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_file(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %fileScope = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %0, i32 0, i32 4
  %1 = load i16, i16* %fileScope, align 8
  %conv = sext i16 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call %struct._EsObject* @es_boolean_new(i32 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call %struct._EsObject* @es_boolean_new(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._EsObject* [ %call, %cond.true ], [ %call2, %cond.false ]
  ret %struct._EsObject* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_language(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call %struct._EsObject* @entry_xget_string(%struct.tagEntry* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0))
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_implementation(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call %struct._EsObject* @entry_xget_string(%struct.tagEntry* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0))
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_line(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %ln = alloca i64, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %address = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %0, i32 0, i32 2
  %lineNumber = getelementptr inbounds %struct.anon, %struct.anon* %address, i32 0, i32 1
  %1 = load i64, i64* %lineNumber, align 8
  store i64 %1, i64* %ln, align 8
  %2 = load i64, i64* %ln, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %ln, align 8
  %conv = trunc i64 %3 to i32
  %call2 = call %struct._EsObject* @es_integer_new(i32 %conv)
  %call3 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_kind(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %kind = alloca i8*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %kind2 = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %0, i32 0, i32 3
  %1 = load i8*, i8** %kind2, align 8
  store i8* %1, i8** %kind, align 8
  %2 = load i8*, i8** %kind, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %kind3 = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %3, i32 0, i32 3
  %4 = load i8*, i8** %kind3, align 8
  %call = call %struct._EsObject* @es_string_new(i8* %4)
  %call4 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call)
  store %struct._EsObject* %call4, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call5 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call5, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_role(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call %struct._EsObject* @entry_xget_string(%struct.tagEntry* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_pattern(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %pattern = alloca i8*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %address = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %0, i32 0, i32 2
  %pattern2 = getelementptr inbounds %struct.anon, %struct.anon* %address, i32 0, i32 0
  %1 = load i8*, i8** %pattern2, align 8
  store i8* %1, i8** %pattern, align 8
  %2 = load i8*, i8** %pattern, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %pattern, align 8
  %call3 = call %struct._EsObject* @es_string_new(i8* %3)
  %call4 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call3)
  store %struct._EsObject* %call4, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_inherits(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %inherits = alloca i8*, align 8
  %s = alloca %struct._EsObject*, align 8
  %d = alloca i8*, align 8
  %h = alloca i8*, align 8
  %t = alloca i8*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call i8* @entry_xget(%struct.tagEntry* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  store i8* %call, i8** %inherits, align 8
  %1 = load i8*, i8** %inherits, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store %struct._EsObject* null, %struct._EsObject** %s, align 8
  %2 = load i8*, i8** %inherits, align 8
  %call2 = call i8* @strdup(i8* %2)
  store i8* %call2, i8** %d, align 8
  %3 = load i8*, i8** %d, align 8
  store i8* %3, i8** %h, align 8
  %4 = load i8*, i8** %h, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0))
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i8*, i8** %h, align 8
  %call6 = call i8* @strchr(i8* %6, i32 44)
  store i8* %call6, i8** %t, align 8
  %tobool = icmp ne i8* %call6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %t, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %h, align 8
  %call7 = call %struct._EsObject* @es_string_new(i8* %8)
  %call8 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call7)
  %9 = load %struct._EsObject*, %struct._EsObject** %s, align 8
  %call9 = call %struct._EsObject* @es_cons(%struct._EsObject* %call8, %struct._EsObject* %9)
  store %struct._EsObject* %call9, %struct._EsObject** %s, align 8
  %10 = load %struct._EsObject*, %struct._EsObject** %s, align 8
  %call10 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %10)
  store %struct._EsObject* %call10, %struct._EsObject** %s, align 8
  %11 = load i8*, i8** %t, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %add.ptr, i8** %h, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %h, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %while.end
  %14 = load i8*, i8** %h, align 8
  %call14 = call %struct._EsObject* @es_string_new(i8* %14)
  %call15 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call14)
  %15 = load %struct._EsObject*, %struct._EsObject** %s, align 8
  %call16 = call %struct._EsObject* @es_cons(%struct._EsObject* %call15, %struct._EsObject* %15)
  store %struct._EsObject* %call16, %struct._EsObject** %s, align 8
  %16 = load %struct._EsObject*, %struct._EsObject** %s, align 8
  %call17 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %16)
  store %struct._EsObject* %call17, %struct._EsObject** %s, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %while.end
  %17 = load i8*, i8** %d, align 8
  call void @free(i8* %17)
  %18 = load %struct._EsObject*, %struct._EsObject** %s, align 8
  %call19 = call %struct._EsObject* @reverse(%struct._EsObject* %18)
  store %struct._EsObject* %call19, %struct._EsObject** %s, align 8
  %19 = load %struct._EsObject*, %struct._EsObject** %s, align 8
  store %struct._EsObject* %19, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then
  %20 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_scope_kind(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %scope = alloca i8*, align 8
  %kind = alloca i8*, align 8
  %r = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call i8* @entry_xget(%struct.tagEntry* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0))
  store i8* %call, i8** %scope, align 8
  %1 = load i8*, i8** %scope, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call2, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %scope, align 8
  %call3 = call i8* @strchr(i8* %2, i32 58)
  store i8* %call3, i8** %kind, align 8
  %3 = load i8*, i8** %kind, align 8
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call6, %struct._EsObject** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = load i8*, i8** %kind, align 8
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** %scope, align 8
  %call8 = call %struct._EsObject* @es_string_new(i8* %5)
  %call9 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call8)
  store %struct._EsObject* %call9, %struct._EsObject** %r, align 8
  %6 = load i8*, i8** %kind, align 8
  store i8 58, i8* %6, align 1
  %7 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %7, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_scope_name(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %scope = alloca i8*, align 8
  %kind = alloca i8*, align 8
  %r = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call i8* @entry_xget(%struct.tagEntry* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0))
  store i8* %call, i8** %scope, align 8
  %1 = load i8*, i8** %scope, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call2, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %scope, align 8
  %call3 = call i8* @strchr(i8* %2, i32 58)
  store i8* %call3, i8** %kind, align 8
  %3 = load i8*, i8** %kind, align 8
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call6, %struct._EsObject** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = load i8*, i8** %kind, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %call11 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call11, %struct._EsObject** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end7
  %6 = load i8*, i8** %kind, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %6, i64 1
  %call14 = call %struct._EsObject* @es_string_new(i8* %add.ptr13)
  %call15 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call14)
  store %struct._EsObject* %call15, %struct._EsObject** %r, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %7, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then5, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @value_end(%struct._EsObject* %args, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %args.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %end_str = alloca i8*, align 8
  %o = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %args, %struct._EsObject** %args.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call i8* @entry_xget(%struct.tagEntry* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  store i8* %call, i8** %end_str, align 8
  %1 = load i8*, i8** %end_str, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %end_str, align 8
  %call2 = call %struct._EsObject* @es_read_from_string(i8* %2, i8** null)
  store %struct._EsObject* %call2, %struct._EsObject** %o, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %call3 = call i32 @es_error_p(%struct._EsObject* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call6 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call6, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  %call7 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %4)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

if.else8:                                         ; preds = %entry
  %call9 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call9, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else8, %if.else, %if.then5
  %5 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sQCode* @q_compile(%struct._EsObject* %exp) #0 {
entry:
  %exp.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %exp, %struct._EsObject** %exp.addr, align 8
  %0 = load i32, i32* @q_compile.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @initialize()
  store i32 1, i32* @q_compile.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %exp.addr, align 8
  %call = call %struct._EsObject* @es_object_ref(%struct._EsObject* %1)
  store %struct._EsObject* %call, %struct._EsObject** getelementptr inbounds (%struct.sQCode, %struct.sQCode* @q_compile.code, i32 0, i32 0), align 8
  ret %struct.sQCode* @q_compile.code
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initialize() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sCode, %struct.sCode* getelementptr inbounds ([28 x %struct.sCode], [28 x %struct.sCode]* @codes, i64 0, i64 0), i64 %idx.ext
  call void @define(%struct.sCode* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._EsObject* @es_object_ref(%struct._EsObject*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @q_is_acceptable(%struct.sQCode* %code, %struct.tagEntry* %entry1) #0 {
entry:
  %code.addr = alloca %struct.sQCode*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %r = alloca %struct._EsObject*, align 8
  %i = alloca i32, align 4
  %mioerr = alloca %struct._MIO*, align 8
  store %struct.sQCode* %code, %struct.sQCode** %code.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  call void @es_autounref_pool_push()
  %0 = load %struct.sQCode*, %struct.sQCode** %code.addr, align 8
  %es = getelementptr inbounds %struct.sQCode, %struct.sQCode* %0, i32 0, i32 0
  %1 = load %struct._EsObject*, %struct._EsObject** %es, align 8
  %2 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call = call %struct._EsObject* @eval(%struct._EsObject* %1, %struct.tagEntry* %2)
  store %struct._EsObject* %call, %struct._EsObject** %r, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call2 = call %struct._EsObject* @es_boolean_new(i32 0)
  %call3 = call i32 @es_object_equal(%struct._EsObject* %3, %struct._EsObject* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %4 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call4 = call i32 @es_error_p(%struct._EsObject* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.else
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call7 = call %struct._MIO* @mio_new_fp(%struct.__sFILE* %5, i32 (%struct.__sFILE*)* null)
  store %struct._MIO* %call7, %struct._MIO** %mioerr, align 8
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call8 = call i8* @es_error_name(%struct._EsObject* %7)
  %call9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i8* %call8)
  %8 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call10 = call %struct._EsObject* @es_error_get_object(%struct._EsObject* %8)
  %9 = load %struct._MIO*, %struct._MIO** %mioerr, align 8
  call void @es_print(%struct._EsObject* %call10, %struct._MIO* %9)
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call11 = call i32 @putc(i32 10, %struct.__sFILE* %10)
  store i32 2, i32* %i, align 4
  %11 = load %struct._MIO*, %struct._MIO** %mioerr, align 8
  %call12 = call i32 @mio_free(%struct._MIO* %11)
  br label %if.end

if.else13:                                        ; preds = %if.else
  store i32 1, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  call void @es_autounref_pool_pop()
  call void @reset()
  %12 = load i32, i32* %i, align 4
  ret i32 %12
}

declare void @es_autounref_pool_push() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @eval(%struct._EsObject* %object, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %r = alloca %struct._EsObject*, align 8
  %code = alloca %struct.sCode*, align 8
  %car = alloca %struct._EsObject*, align 8
  %cdr = alloca %struct._EsObject*, align 8
  %l = alloca i32, align 4
  %err = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call2 = call i32 @es_symbol_p(%struct._EsObject* %1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else26

if.then4:                                         ; preds = %if.else
  %2 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call5 = call i8* @es_symbol_get_data(%struct._EsObject* %2)
  %3 = bitcast i8* %call5 to %struct.sCode*
  store %struct.sCode* %3, %struct.sCode** %code, align 8
  %4 = load %struct.sCode*, %struct.sCode** %code, align 8
  %tobool6 = icmp ne %struct.sCode* %4, null
  br i1 %tobool6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.then4
  %5 = load %struct.sCode*, %struct.sCode** %code, align 8
  %cache = getelementptr inbounds %struct.sCode, %struct.sCode* %5, i32 0, i32 2
  %6 = load %struct._EsObject*, %struct._EsObject** %cache, align 8
  %tobool8 = icmp ne %struct._EsObject* %6, null
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then7
  %7 = load %struct.sCode*, %struct.sCode** %code, align 8
  %cache10 = getelementptr inbounds %struct.sCode, %struct.sCode* %7, i32 0, i32 2
  %8 = load %struct._EsObject*, %struct._EsObject** %cache10, align 8
  store %struct._EsObject* %8, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then7
  %9 = load %struct.sCode*, %struct.sCode** %code, align 8
  %flags = getelementptr inbounds %struct.sCode, %struct.sCode* %9, i32 0, i32 3
  %10 = load i32, i32* %flags, align 8
  %and = and i32 %10, 2
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %call13 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0))
  %11 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call14 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call13, %struct._EsObject* %11)
  store %struct._EsObject* %call14, %struct._EsObject** %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end
  %12 = load %struct.sCode*, %struct.sCode** %code, align 8
  %proc = getelementptr inbounds %struct.sCode, %struct.sCode* %12, i32 0, i32 1
  %13 = load %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)*, %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)** %proc, align 8
  %14 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call16 = call %struct._EsObject* %13(%struct._EsObject* null, %struct.tagEntry* %14)
  store %struct._EsObject* %call16, %struct._EsObject** %r, align 8
  %15 = load %struct.sCode*, %struct.sCode** %code, align 8
  %flags17 = getelementptr inbounds %struct.sCode, %struct.sCode* %15, i32 0, i32 3
  %16 = load i32, i32* %flags17, align 8
  %and18 = and i32 %16, 1
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end15
  %17 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %18 = load %struct.sCode*, %struct.sCode** %code, align 8
  %cache21 = getelementptr inbounds %struct.sCode, %struct.sCode* %18, i32 0, i32 2
  store %struct._EsObject* %17, %struct._EsObject** %cache21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15
  %19 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %19, %struct._EsObject** %retval, align 8
  br label %return

if.else23:                                        ; preds = %if.then4
  %call24 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0))
  %20 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call25 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call24, %struct._EsObject* %20)
  store %struct._EsObject* %call25, %struct._EsObject** %retval, align 8
  br label %return

if.else26:                                        ; preds = %if.else
  %21 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call27 = call i32 @es_atom(%struct._EsObject* %21)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  %22 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  store %struct._EsObject* %22, %struct._EsObject** %retval, align 8
  br label %return

if.else30:                                        ; preds = %if.else26
  %23 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call31 = call %struct._EsObject* @es_car(%struct._EsObject* %23)
  store %struct._EsObject* %call31, %struct._EsObject** %car, align 8
  %24 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call32 = call %struct._EsObject* @es_cdr(%struct._EsObject* %24)
  store %struct._EsObject* %call32, %struct._EsObject** %cdr, align 8
  %25 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %call33 = call i8* @es_symbol_get_data(%struct._EsObject* %25)
  %26 = bitcast i8* %call33 to %struct.sCode*
  store %struct.sCode* %26, %struct.sCode** %code, align 8
  %27 = load %struct.sCode*, %struct.sCode** %code, align 8
  %tobool34 = icmp ne %struct.sCode* %27, null
  br i1 %tobool34, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.else30
  %call36 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0))
  %28 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %call37 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call36, %struct._EsObject* %28)
  store %struct._EsObject* %call37, %struct._EsObject** %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.else30
  %29 = load %struct.sCode*, %struct.sCode** %code, align 8
  %cache39 = getelementptr inbounds %struct.sCode, %struct.sCode* %29, i32 0, i32 2
  %30 = load %struct._EsObject*, %struct._EsObject** %cache39, align 8
  %tobool40 = icmp ne %struct._EsObject* %30, null
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %31 = load %struct.sCode*, %struct.sCode** %code, align 8
  %cache42 = getelementptr inbounds %struct.sCode, %struct.sCode* %31, i32 0, i32 2
  %32 = load %struct._EsObject*, %struct._EsObject** %cache42, align 8
  store %struct._EsObject* %32, %struct._EsObject** %retval, align 8
  br label %return

if.end43:                                         ; preds = %if.end38
  %33 = load %struct.sCode*, %struct.sCode** %code, align 8
  %flags44 = getelementptr inbounds %struct.sCode, %struct.sCode* %33, i32 0, i32 3
  %34 = load i32, i32* %flags44, align 8
  %and45 = and i32 %34, 8
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end60

if.then47:                                        ; preds = %if.end43
  %35 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call48 = call i32 @length(%struct._EsObject* %35)
  store i32 %call48, i32* %l, align 4
  %36 = load i32, i32* %l, align 4
  %37 = load %struct.sCode*, %struct.sCode** %code, align 8
  %arity = getelementptr inbounds %struct.sCode, %struct.sCode* %37, i32 0, i32 4
  %38 = load i32, i32* %arity, align 4
  %cmp = icmp slt i32 %36, %38
  br i1 %cmp, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.then47
  %call50 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0))
  %39 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %call51 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call50, %struct._EsObject* %39)
  store %struct._EsObject* %call51, %struct._EsObject** %retval, align 8
  br label %return

if.else52:                                        ; preds = %if.then47
  %40 = load i32, i32* %l, align 4
  %41 = load %struct.sCode*, %struct.sCode** %code, align 8
  %arity53 = getelementptr inbounds %struct.sCode, %struct.sCode* %41, i32 0, i32 4
  %42 = load i32, i32* %arity53, align 4
  %cmp54 = icmp sgt i32 %40, %42
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.else52
  %call56 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0))
  %43 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %call57 = call %struct._EsObject* @es_error_set_object(%struct._EsObject* %call56, %struct._EsObject* %43)
  store %struct._EsObject* %call57, %struct._EsObject** %retval, align 8
  br label %return

if.end58:                                         ; preds = %if.else52
  br label %if.end59

if.end59:                                         ; preds = %if.end58
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end43
  %44 = load %struct.sCode*, %struct.sCode** %code, align 8
  %flags61 = getelementptr inbounds %struct.sCode, %struct.sCode* %44, i32 0, i32 3
  %45 = load i32, i32* %flags61, align 8
  %and62 = and i32 %45, 4
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.end72, label %if.then64

if.then64:                                        ; preds = %if.end60
  %46 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %47 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call65 = call %struct._EsObject* @eval0(%struct._EsObject* %46, %struct.tagEntry* %47)
  store %struct._EsObject* %call65, %struct._EsObject** %cdr, align 8
  %48 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call66 = call %struct._EsObject* @error_included(%struct._EsObject* %48)
  store %struct._EsObject* %call66, %struct._EsObject** %err, align 8
  %49 = load %struct._EsObject*, %struct._EsObject** %err, align 8
  %call67 = call %struct._EsObject* @es_boolean_new(i32 0)
  %call68 = call i32 @es_object_equal(%struct._EsObject* %49, %struct._EsObject* %call67)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.then64
  %50 = load %struct._EsObject*, %struct._EsObject** %err, align 8
  store %struct._EsObject* %50, %struct._EsObject** %retval, align 8
  br label %return

if.end71:                                         ; preds = %if.then64
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end60
  %51 = load %struct.sCode*, %struct.sCode** %code, align 8
  %proc73 = getelementptr inbounds %struct.sCode, %struct.sCode* %51, i32 0, i32 1
  %52 = load %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)*, %struct._EsObject* (%struct._EsObject*, %struct.tagEntry*)** %proc73, align 8
  %53 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %54 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call74 = call %struct._EsObject* %52(%struct._EsObject* %53, %struct.tagEntry* %54)
  store %struct._EsObject* %call74, %struct._EsObject** %r, align 8
  %55 = load %struct.sCode*, %struct.sCode** %code, align 8
  %flags75 = getelementptr inbounds %struct.sCode, %struct.sCode* %55, i32 0, i32 3
  %56 = load i32, i32* %flags75, align 8
  %and76 = and i32 %56, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end72
  %57 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %58 = load %struct.sCode*, %struct.sCode** %code, align 8
  %cache79 = getelementptr inbounds %struct.sCode, %struct.sCode* %58, i32 0, i32 2
  store %struct._EsObject* %57, %struct._EsObject** %cache79, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end72
  %59 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %59, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end80, %if.then70, %if.then55, %if.then49, %if.then41, %if.then35, %if.then29, %if.else23, %if.end22, %if.then12, %if.then9, %if.then
  %60 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %60
}

declare i32 @es_object_equal(%struct._EsObject*, %struct._EsObject*) #1

declare %struct._EsObject* @es_boolean_new(i32) #1

declare i32 @es_error_p(%struct._EsObject*) #1

declare %struct._MIO* @mio_new_fp(%struct.__sFILE*, i32 (%struct.__sFILE*)*) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i8* @es_error_name(%struct._EsObject*) #1

declare void @es_print(%struct._EsObject*, %struct._MIO*) #1

declare %struct._EsObject* @es_error_get_object(%struct._EsObject*) #1

declare i32 @putc(i32, %struct.__sFILE*) #1

declare i32 @mio_free(%struct._MIO*) #1

declare void @es_autounref_pool_pop() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @reset() #0 {
entry:
  %i = alloca i32, align 4
  %code = alloca %struct.sCode*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sCode, %struct.sCode* getelementptr inbounds ([28 x %struct.sCode], [28 x %struct.sCode]* @codes, i64 0, i64 0), i64 %idx.ext
  store %struct.sCode* %add.ptr, %struct.sCode** %code, align 8
  %2 = load %struct.sCode*, %struct.sCode** %code, align 8
  %flags = getelementptr inbounds %struct.sCode, %struct.sCode* %2, i32 0, i32 3
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.sCode*, %struct.sCode** %code, align 8
  %cache = getelementptr inbounds %struct.sCode, %struct.sCode* %4, i32 0, i32 2
  store %struct._EsObject* null, %struct._EsObject** %cache, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @q_destroy(%struct.sQCode* %code) #0 {
entry:
  %code.addr = alloca %struct.sQCode*, align 8
  store %struct.sQCode* %code, %struct.sQCode** %code.addr, align 8
  %0 = load %struct.sQCode*, %struct.sQCode** %code.addr, align 8
  %es = getelementptr inbounds %struct.sQCode, %struct.sQCode* %0, i32 0, i32 0
  %1 = load %struct._EsObject*, %struct._EsObject** %es, align 8
  call void @es_object_unref(%struct._EsObject* %1)
  %2 = load %struct.sQCode*, %struct.sQCode** %code.addr, align 8
  %3 = bitcast %struct.sQCode* %2 to i8*
  call void @free(i8* %3)
  ret void
}

declare void @es_object_unref(%struct._EsObject*) #1

declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @q_help(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  %hs = alloca i8*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [28 x %struct.sCode], [28 x %struct.sCode]* @codes, i64 0, i64 %idxprom
  %helpstr = getelementptr inbounds %struct.sCode, %struct.sCode* %arrayidx, i32 0, i32 5
  %2 = load i8*, i8** %helpstr, align 8
  store i8* %2, i8** %hs, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [28 x %struct.sCode], [28 x %struct.sCode]* @codes, i64 0, i64 %idxprom2
  %name = getelementptr inbounds %struct.sCode, %struct.sCode* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %6 = load i8*, i8** %hs, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i8*, i8** %hs, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0), %cond.false ]
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* %5, i8* %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @es_null(%struct._EsObject*) #1

declare %struct._EsObject* @es_car(%struct._EsObject*) #1

declare %struct._EsObject* @es_cdr(%struct._EsObject*) #1

declare i32 @es_number_p(%struct._EsObject*) #1

declare %struct._EsObject* @es_error_set_object(%struct._EsObject*, %struct._EsObject*) #1

declare %struct._EsObject* @es_error_intern(i8*) #1

declare %struct._EsObject* @es_symbol_intern(i8*) #1

declare double @es_number_get(%struct._EsObject*) #1

declare i32 @es_string_p(%struct._EsObject*) #1

declare i8* @es_string_get(%struct._EsObject*) #1

declare i64 @strlen(i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

declare i32 @strcmp(i8*, i8*) #1

declare i8* @strstr(i8*, i8*) #1

declare i32 @es_list_p(%struct._EsObject*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @entry_xget_string(%struct.tagEntry* %entry1, i8* %name) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %name.addr = alloca i8*, align 8
  %value = alloca i8*, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @entry_xget(%struct.tagEntry* %0, i8* %1)
  store i8* %call, i8** %value, align 8
  %2 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %value, align 8
  %call2 = call %struct._EsObject* @es_string_new(i8* %3)
  %call3 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call4 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call4, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @entry_xget(%struct.tagEntry* %entry1, i8* %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %count = alloca i16, align 2
  %list = alloca %struct.tagExtensionField*, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %fields = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %0, i32 0, i32 5
  %count2 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %fields, i32 0, i32 0
  %1 = load i16, i16* %count2, align 8
  store i16 %1, i16* %count, align 2
  %2 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %fields3 = getelementptr inbounds %struct.tagEntry, %struct.tagEntry* %2, i32 0, i32 5
  %list4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %fields3, i32 0, i32 1
  %3 = load %struct.tagExtensionField*, %struct.tagExtensionField** %list4, align 8
  store %struct.tagExtensionField* %3, %struct.tagExtensionField** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i16, i16* %count, align 2
  %conv = zext i16 %5 to i32
  %cmp = icmp ult i32 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.tagExtensionField*, %struct.tagExtensionField** %list, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.tagExtensionField, %struct.tagExtensionField* %6, i64 %idxprom
  %key = getelementptr inbounds %struct.tagExtensionField, %struct.tagExtensionField* %arrayidx, i32 0, i32 0
  %8 = load i8*, i8** %key, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %8, i8* %9)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.tagExtensionField*, %struct.tagExtensionField** %list, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds %struct.tagExtensionField, %struct.tagExtensionField* %10, i64 %idxprom8
  %value = getelementptr inbounds %struct.tagExtensionField, %struct.tagExtensionField* %arrayidx9, i32 0, i32 1
  %12 = load i8*, i8** %value, align 8
  store i8* %12, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

declare %struct._EsObject* @es_object_autounref(%struct._EsObject*) #1

declare %struct._EsObject* @es_string_new(i8*) #1

declare %struct._EsObject* @es_integer_new(i32) #1

declare %struct._EsObject* @es_read_from_string(i8*, i8**) #1

declare i8* @strdup(i8*) #1

declare void @ctags_cleanup(...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i8* @strchr(i8*, i32) #1

declare %struct._EsObject* @es_cons(%struct._EsObject*, %struct._EsObject*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @reverse(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %h = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._EsObject* null, %struct._EsObject** %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  store %struct._EsObject* %call1, %struct._EsObject** %h, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %h, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call2 = call %struct._EsObject* @es_cons(%struct._EsObject* %2, %struct._EsObject* %3)
  %call3 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call2)
  store %struct._EsObject* %call3, %struct._EsObject** %r, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call4 = call %struct._EsObject* @es_cdr(%struct._EsObject* %4)
  store %struct._EsObject* %call4, %struct._EsObject** %object.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @define(%struct.sCode* %code) #0 {
entry:
  %code.addr = alloca %struct.sCode*, align 8
  %name = alloca %struct._EsObject*, align 8
  store %struct.sCode* %code, %struct.sCode** %code.addr, align 8
  %0 = load %struct.sCode*, %struct.sCode** %code.addr, align 8
  %name1 = getelementptr inbounds %struct.sCode, %struct.sCode* %0, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %call = call %struct._EsObject* @es_symbol_intern(i8* %1)
  store %struct._EsObject* %call, %struct._EsObject** %name, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %name, align 8
  %3 = load %struct.sCode*, %struct.sCode** %code.addr, align 8
  %4 = bitcast %struct.sCode* %3 to i8*
  %call2 = call i8* @es_symbol_set_data(%struct._EsObject* %2, i8* %4)
  ret void
}

declare i8* @es_symbol_set_data(%struct._EsObject*, i8*) #1

declare i32 @es_symbol_p(%struct._EsObject*) #1

declare i8* @es_symbol_get_data(%struct._EsObject*) #1

declare i32 @es_atom(%struct._EsObject*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @length(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %i = alloca i32, align 4
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  store %struct._EsObject* %call1, %struct._EsObject** %object.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @eval0(%struct._EsObject* %object, %struct.tagEntry* %entry1) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  %entry.addr = alloca %struct.tagEntry*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct.tagEntry* %entry1, %struct.tagEntry** %entry.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call2 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  %2 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call3 = call %struct._EsObject* @eval(%struct._EsObject* %call2, %struct.tagEntry* %2)
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call4 = call %struct._EsObject* @es_cdr(%struct._EsObject* %3)
  %4 = load %struct.tagEntry*, %struct.tagEntry** %entry.addr, align 8
  %call5 = call %struct._EsObject* @eval0(%struct._EsObject* %call4, %struct.tagEntry* %4)
  %call6 = call %struct._EsObject* @es_cons(%struct._EsObject* %call3, %struct._EsObject* %call5)
  %call7 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %call6)
  store %struct._EsObject* %call7, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @error_included(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  %call2 = call i32 @es_error_p(%struct._EsObject* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call4 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  store %struct._EsObject* %call4, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call5 = call %struct._EsObject* @es_cdr(%struct._EsObject* %3)
  store %struct._EsObject* %call5, %struct._EsObject** %object.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call6 = call %struct._EsObject* @es_boolean_new(i32 0)
  store %struct._EsObject* %call6, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %4
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
