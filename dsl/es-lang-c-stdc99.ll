; ModuleID = 'es-lang-c-stdc99.c'
source_filename = "es-lang-c-stdc99.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._MIO = type opaque
%struct._EsObject = type { i32, %union.anon }
%union.anon = type { %struct._EsSingleton* }
%struct._EsSingleton = type { %struct._EsObject, i8* }
%struct._Token = type { i8*, i64, i64 }
%struct._EsAutounrefPool = type { %struct._EsAutounrefPool*, %struct._EsChain* }
%struct._EsChain = type { %struct._EsObject*, %struct._EsChain* }
%struct._EsObjectClass = type { i64, void (%struct._EsObject*)*, i32 (%struct._EsObject*, %struct._EsObject*)*, void (%struct._EsObject*, %struct._MIO*)*, i8, %struct._EsSingleton**, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._EsInteger = type { %struct._EsObject, i32 }
%struct._EsReal = type { %struct._EsObject, double }
%struct._EsBoolean = type { %struct._EsObject, i32 }
%struct._EsSymbol = type { %struct._EsSingleton, i8* }
%struct._EsString = type { %struct._EsObject, i8* }
%struct._EsCons = type { %struct._EsObject, %struct._EsObject*, %struct._EsObject* }
%struct._EsError = type { %struct._EsSingleton, %struct._EsObject* }

@out = internal global %struct._MIO* null, align 8
@in = internal global %struct._MIO* null, align 8
@err = internal global %struct._MIO* null, align 8
@es_debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c";; ref{%s}: [%d]0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"*** ref_count < 0: 0x%p ***\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"*** BOOSTING while(1). ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c";; unref{%s}: [%d]0x%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c";; free{%s}: 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c";; es_integer_get, Wrong type argument: \00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c";; es_real_get, Wrong type argument: \00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c";; es_number_get, Wrong type argument: \00", align 1
@es_boolean_new.T = internal global %struct._EsObject* null, align 8
@es_boolean_new.F = internal global %struct._EsObject* null, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c";; es_boolean_get, Wrong type argument: \00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c";; es_symbol_get, Wrong type argument: \00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c";; es_symbol_set_data, Wrong type argument: \00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c";; es_symbol_get_data, Wrong type argument: \00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c";; es_string_get, Wrong type argument: \00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c";; cons[0x%p] = (0x%p . 0x%p)\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c";; es_car, Wrong type argument: \00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c";; es_cdr, Wrong type argument: \00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c";; es_error_name, Wrong type argument: \00", align 1
@comment_prefix = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), align 8
@.str.17 = private unnamed_addr constant [4 x i8] c";; \00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"READ-ERROR\00", align 1
@eof_token = internal global %struct._Token zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@open_paren_token = internal global %struct._Token zeroinitializer, align 8
@close_paren_token = internal global %struct._Token zeroinitializer, align 8
@currrent_pool = internal global %struct._EsAutounrefPool* null, align 8
@classes = internal global [8 x %struct._EsObjectClass] [%struct._EsObjectClass { i64 0, void (%struct._EsObject*)* @es_nil_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_nil_equal, void (%struct._EsObject*, %struct._MIO*)* @es_nil_print, i8 1, %struct._EsSingleton** null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0) }, %struct._EsObjectClass { i64 24, void (%struct._EsObject*)* @es_integer_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_integer_equal, void (%struct._EsObject*, %struct._MIO*)* @es_integer_print, i8 1, %struct._EsSingleton** null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0) }, %struct._EsObjectClass { i64 24, void (%struct._EsObject*)* @es_real_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_real_equal, void (%struct._EsObject*, %struct._MIO*)* @es_real_print, i8 1, %struct._EsSingleton** null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0) }, %struct._EsObjectClass { i64 24, void (%struct._EsObject*)* @es_boolean_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_boolean_equal, void (%struct._EsObject*, %struct._MIO*)* @es_boolean_print, i8 1, %struct._EsSingleton** inttoptr (i64 1 to %struct._EsSingleton**), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0) }, %struct._EsObjectClass { i64 32, void (%struct._EsObject*)* @es_symbol_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_symbol_equal, void (%struct._EsObject*, %struct._MIO*)* @es_symbol_print, i8 1, %struct._EsSingleton** getelementptr inbounds ([83 x %struct._EsSingleton*], [83 x %struct._EsSingleton*]* @symbol_obarray, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0) }, %struct._EsObjectClass { i64 24, void (%struct._EsObject*)* @es_string_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_string_equal, void (%struct._EsObject*, %struct._MIO*)* @es_string_print, i8 1, %struct._EsSingleton** null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0) }, %struct._EsObjectClass { i64 32, void (%struct._EsObject*)* @es_cons_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_cons_equal, void (%struct._EsObject*, %struct._MIO*)* @es_cons_print, i8 0, %struct._EsSingleton** null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0) }, %struct._EsObjectClass { i64 32, void (%struct._EsObject*)* @es_error_free, i32 (%struct._EsObject*, %struct._EsObject*)* @es_error_equal, void (%struct._EsObject*, %struct._MIO*)* @es_error_print, i8 1, %struct._EsSingleton** getelementptr inbounds ([83 x %struct._EsSingleton*], [83 x %struct._EsSingleton*]* @error_obarray, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0) }], align 8
@.str.21 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@symbol_obarray = internal global [83 x %struct._EsSingleton*] zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"cons\00", align 1
@error_obarray = internal global [83 x %struct._EsSingleton*] zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"#%c\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@symbol_special = internal global [128 x i8] c"\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\03\00\03\03\00\00\00\03\03\03\00\01\03\01\01\00\01\01\01\01\01\01\01\01\01\01\00\03\00\00\00\00\01\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\03\0B\03\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\0B\03\00\07", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c";; Internal error: \0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c";;es_string_free, Wrong type argument: \00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c";; es_cons_free, Wrong type argument: \00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c";; es_cons_print, dotted list given: \00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"#%s:\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.44 = private unnamed_addr constant [18 x i8] c";; new{%s}: 0x%p\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@__stdinp = external global %struct.__sFILE*, align 8
@is_whitespace.whitespace_chars = internal constant i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), align 8
@.str.45 = private unnamed_addr constant [6 x i8] c" \09\0A\0D\0C\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c";; no character after escape character:\0A\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c";; got EOF during reading a sequence: \0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"#t\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"#f\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c";; is_integer, Integer out of range: %s\0A\00", align 1
@pattern_rest = internal global %struct._EsObject* null, align 8
@pattern_splice = internal global %struct._EsObject* null, align 8
@.str.53 = private unnamed_addr constant [41 x i8] c";; an atom is passed for splice format:\0A\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c";; => %s\0A\00", align 1
@pattern_d = internal global %struct._EsObject* null, align 8
@pattern_f = internal global %struct._EsObject* null, align 8
@pattern_F = internal global %struct._EsObject* null, align 8
@.str.55 = private unnamed_addr constant [3 x i8] c"%F\00", align 1
@pattern_s = internal global %struct._EsObject* null, align 8
@pattern_S = internal global %struct._EsObject* null, align 8
@.str.56 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@pattern_b = internal global %struct._EsObject* null, align 8
@.str.57 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@pattern_unquote = internal global %struct._EsObject* null, align 8
@.str.59 = private unnamed_addr constant [3 x i8] c"%,\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%,@\00", align 1
@pattern_i_d = internal global %struct._EsObject* null, align 8
@.str.61 = private unnamed_addr constant [4 x i8] c"%_d\00", align 1
@pattern_i_f = internal global %struct._EsObject* null, align 8
@.str.62 = private unnamed_addr constant [4 x i8] c"%_f\00", align 1
@pattern_i_F = internal global %struct._EsObject* null, align 8
@.str.63 = private unnamed_addr constant [4 x i8] c"%_F\00", align 1
@pattern_i_s = internal global %struct._EsObject* null, align 8
@.str.64 = private unnamed_addr constant [4 x i8] c"%_s\00", align 1
@pattern_i_S = internal global %struct._EsObject* null, align 8
@.str.65 = private unnamed_addr constant [4 x i8] c"%_S\00", align 1
@pattern_i_b = internal global %struct._EsObject* null, align 8
@.str.66 = private unnamed_addr constant [4 x i8] c"%_b\00", align 1
@pattern_i_rest = internal global %struct._EsObject* null, align 8
@.str.67 = private unnamed_addr constant [4 x i8] c"%_@\00", align 1
@pattern_i_unquote = internal global %struct._EsObject* null, align 8
@.str.68 = private unnamed_addr constant [4 x i8] c"%_,\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"=>%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mio_stdcleanup() #0 {
entry:
  %0 = load %struct._MIO*, %struct._MIO** @out, align 8
  %cmp = icmp ne %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** @out, align 8
  %call = call i32 @mio_free(%struct._MIO* %1)
  store %struct._MIO* null, %struct._MIO** @out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._MIO*, %struct._MIO** @in, align 8
  %cmp1 = icmp ne %struct._MIO* %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct._MIO*, %struct._MIO** @in, align 8
  %call3 = call i32 @mio_free(%struct._MIO* %3)
  store %struct._MIO* null, %struct._MIO** @in, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load %struct._MIO*, %struct._MIO** @err, align 8
  %cmp5 = icmp ne %struct._MIO* %4, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %5 = load %struct._MIO*, %struct._MIO** @err, align 8
  %call7 = call i32 @mio_free(%struct._MIO* %5)
  store %struct._MIO* null, %struct._MIO** @err, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  ret void
}

declare i32 @mio_free(%struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_object_get_type(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %tobool = icmp ne %struct._EsObject* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %type = getelementptr inbounds %struct._EsObject, %struct._EsObject* %1, i32 0, i32 0
  %2 = load i32, i32* %type, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_object_ref(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %tobool = icmp ne %struct._EsObject* %0, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsObjectClass* @class_of(%struct._EsObject* %1)
  %obarray = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call, i32 0, i32 5
  %2 = load %struct._EsSingleton**, %struct._EsSingleton*** %obarray, align 8
  %tobool1 = icmp ne %struct._EsSingleton** %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  store %struct._EsObject* %3, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* @es_debug, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %call5 = call %struct._MIO* @mio_stderr()
  %5 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call6 = call %struct._EsObjectClass* @class_of(%struct._EsObject* %5)
  %name = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call6, i32 0, i32 6
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %8 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %7, i32 0, i32 1
  %ref_count = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ref_count, align 8
  %10 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call7 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %9, %struct._EsObject* %10)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %11 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %12 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %11, i32 0, i32 1
  %ref_count9 = bitcast %union.anon* %12 to i32*
  %13 = load i32, i32* %ref_count9, align 8
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %ref_count9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry
  %14 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  store %struct._EsObject* %14, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then2
  %15 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObjectClass* @class_of(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_get_type(%struct._EsObject* %0)
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [8 x %struct._EsObjectClass], [8 x %struct._EsObjectClass]* @classes, i64 0, i64 %idxprom
  ret %struct._EsObjectClass* %arrayidx
}

declare i32 @mio_printf(%struct._MIO*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._MIO* @mio_stderr() #0 {
entry:
  %0 = load %struct._MIO*, %struct._MIO** @err, align 8
  %cmp = icmp eq %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call = call %struct._MIO* @mio_new_fp(%struct.__sFILE* %1, i32 (%struct.__sFILE*)* null)
  store %struct._MIO* %call, %struct._MIO** @err, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._MIO*, %struct._MIO** @err, align 8
  ret %struct._MIO* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @es_object_unref(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %tobool = icmp ne %struct._EsObject* %0, null
  br i1 %tobool, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsObjectClass* @class_of(%struct._EsObject* %1)
  %obarray = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call, i32 0, i32 5
  %2 = load %struct._EsSingleton**, %struct._EsSingleton*** %obarray, align 8
  %tobool1 = icmp ne %struct._EsSingleton** %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %if.end29

if.end:                                           ; preds = %if.then
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %4 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %3, i32 0, i32 1
  %ref_count = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ref_count, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call %struct._MIO* @mio_stderr()
  %6 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call5 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct._EsObject* %6)
  %call6 = call %struct._MIO* @mio_stderr()
  %call7 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %while.body

while.body:                                       ; preds = %if.then3, %while.body
  br label %while.body

if.end8:                                          ; preds = %if.end
  %7 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %8 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %7, i32 0, i32 1
  %ref_count9 = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ref_count9, align 8
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %ref_count9, align 8
  %10 = load i32, i32* @es_debug, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  %call12 = call %struct._MIO* @mio_stderr()
  %11 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call13 = call %struct._EsObjectClass* @class_of(%struct._EsObject* %11)
  %name = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call13, i32 0, i32 6
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %14 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %13, i32 0, i32 1
  %ref_count14 = bitcast %union.anon* %14 to i32*
  %15 = load i32, i32* %ref_count14, align 8
  %16 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call15 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %12, i32 %15, %struct._EsObject* %16)
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end8
  %17 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %18 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %17, i32 0, i32 1
  %ref_count17 = bitcast %union.anon* %18 to i32*
  %19 = load i32, i32* %ref_count17, align 8
  %cmp18 = icmp eq i32 %19, 0
  br i1 %cmp18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end16
  %20 = load i32, i32* @es_debug, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.then19
  %call22 = call %struct._MIO* @mio_stderr()
  %21 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call23 = call %struct._EsObjectClass* @class_of(%struct._EsObject* %21)
  %name24 = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call23, i32 0, i32 6
  %22 = load i8*, i8** %name24, align 8
  %23 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call25 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %22, %struct._EsObject* %23)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then19
  %24 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call27 = call %struct._EsObjectClass* @class_of(%struct._EsObject* %24)
  %free = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call27, i32 0, i32 1
  %25 = load void (%struct._EsObject*)*, void (%struct._EsObject*)** %free, align 8
  %26 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  call void %25(%struct._EsObject* %26)
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end16
  br label %if.end29

if.end29:                                         ; preds = %if.then2, %if.end28, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @es_object_unref_batch(%struct._EsObject** %array, i32 %count) #0 {
entry:
  %array.addr = alloca %struct._EsObject**, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._EsObject** %array, %struct._EsObject*** %array.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._EsObject**, %struct._EsObject*** %array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct._EsObject*, %struct._EsObject** %2, i64 %idxprom
  %4 = load %struct._EsObject*, %struct._EsObject** %arrayidx, align 8
  call void @es_object_unref(%struct._EsObject* %4)
  %5 = load %struct._EsObject**, %struct._EsObject*** %array.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct._EsObject*, %struct._EsObject** %5, i64 %idxprom1
  store %struct._EsObject* null, %struct._EsObject** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_object_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %cmp = icmp eq %struct._EsObject* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %call = call %struct._EsObjectClass* @class_of(%struct._EsObject* %2)
  %equal = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call, i32 0, i32 2
  %3 = load i32 (%struct._EsObject*, %struct._EsObject*)*, i32 (%struct._EsObject*, %struct._EsObject*)** %equal, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call1 = call i32 %3(%struct._EsObject* %4, %struct._EsObject* %5)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_atom(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsObjectClass* @class_of(%struct._EsObject* %0)
  %atom_p = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call, i32 0, i32 4
  %1 = load i8, i8* %atom_p, align 8
  %conv = sext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_null(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %cmp = icmp eq %struct._EsObject* %0, null
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_integer_new(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  %r = alloca %struct._EsObject*, align 8
  store i32 %value, i32* %value.addr, align 4
  %call = call %struct._EsObject* @es_object_new(i32 1)
  store %struct._EsObject* %call, %struct._EsObject** %r, align 8
  %0 = load i32, i32* %value.addr, align 4
  %1 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsInteger*
  %value1 = getelementptr inbounds %struct._EsInteger, %struct._EsInteger* %2, i32 0, i32 1
  store i32 %0, i32* %value1, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_object_new(i32 %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  %r = alloca %struct._EsObject*, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x %struct._EsObjectClass], [8 x %struct._EsObjectClass]* @classes, i64 0, i64 %idxprom
  %size = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %arrayidx, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  %call = call i8* @calloc(i64 1, i64 %1) #7
  %2 = bitcast i8* %call to %struct._EsObject*
  store %struct._EsObject* %2, %struct._EsObject** %r, align 8
  %3 = load i32, i32* %type.addr, align 4
  %4 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %type1 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %4, i32 0, i32 0
  store i32 %3, i32* %type1, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %6 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %5, i32 0, i32 1
  %ref_count = bitcast %union.anon* %6 to i32*
  store i32 1, i32* %ref_count, align 8
  %7 = load i32, i32* @es_debug, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._MIO* @mio_stderr()
  %8 = load i32, i32* %type.addr, align 4
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [8 x %struct._EsObjectClass], [8 x %struct._EsObjectClass]* @classes, i64 0, i64 %idxprom3
  %name = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %arrayidx4, i32 0, i32 6
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call5 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i8* %9, %struct._EsObject* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_integer_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_type_p(%struct._EsObject* %0, i32 1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_object_type_p(%struct._EsObject* %object, i32 %type) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %type.addr = alloca i32, align 4
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_get_type(%struct._EsObject* %0)
  %1 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %call, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_integer_get(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_integer_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsInteger*
  %value = getelementptr inbounds %struct._EsInteger, %struct._EsInteger* %2, i32 0, i32 1
  %3 = load i32, i32* %value, align 8
  store i32 %3, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._MIO* @mio_stderr()
  %call2 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %4, %struct._MIO* %call3)
  %call4 = call %struct._MIO* @mio_stderr()
  %call5 = call i32 @mio_putc(%struct._MIO* %call4, i32 10)
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @es_print(%struct._EsObject* %object, %struct._MIO* %out) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %out.addr = alloca %struct._MIO*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %out, %struct._MIO** %out.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsObjectClass* @class_of(%struct._EsObject* %0)
  %print = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call, i32 0, i32 3
  %1 = load void (%struct._EsObject*, %struct._MIO*)*, void (%struct._EsObject*, %struct._MIO*)** %print, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %3 = load %struct._MIO*, %struct._MIO** %out.addr, align 8
  %tobool = icmp ne %struct._MIO* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct._MIO*, %struct._MIO** %out.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call %struct._MIO* @mio_stdout()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._MIO* [ %4, %cond.true ], [ %call1, %cond.false ]
  call void %1(%struct._EsObject* %2, %struct._MIO* %cond)
  ret void
}

declare i32 @mio_putc(%struct._MIO*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_real_new(double %value) #0 {
entry:
  %value.addr = alloca double, align 8
  %r = alloca %struct._EsObject*, align 8
  store double %value, double* %value.addr, align 8
  %call = call %struct._EsObject* @es_object_new(i32 2)
  store %struct._EsObject* %call, %struct._EsObject** %r, align 8
  %0 = load double, double* %value.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsReal*
  %value1 = getelementptr inbounds %struct._EsReal, %struct._EsReal* %2, i32 0, i32 1
  store double %0, double* %value1, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_real_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_type_p(%struct._EsObject* %0, i32 2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @es_real_get(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca double, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_real_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsReal*
  %value = getelementptr inbounds %struct._EsReal, %struct._EsReal* %2, i32 0, i32 1
  %3 = load double, double* %value, align 8
  store double %3, double* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._MIO* @mio_stderr()
  %call2 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %4, %struct._MIO* %call3)
  %call4 = call %struct._MIO* @mio_stderr()
  %call5 = call i32 @mio_putc(%struct._MIO* %call4, i32 10)
  store double -1.000000e+00, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load double, double* %retval, align 8
  ret double %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_number_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_integer_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call i32 @es_real_p(%struct._EsObject* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %3 = zext i1 %2 to i64
  %cond = select i1 %2, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @es_number_get(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %r = alloca double, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_get_type(%struct._EsObject* %0)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call i32 @es_integer_get(%struct._EsObject* %1)
  %conv = sitofp i32 %call1 to double
  store double %conv, double* %r, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call double @es_real_get(%struct._EsObject* %2)
  store double %call3, double* %r, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call4 = call %struct._MIO* @mio_stderr()
  %call5 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call6 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %3, %struct._MIO* %call6)
  %call7 = call %struct._MIO* @mio_stderr()
  %call8 = call i32 @mio_putc(%struct._MIO* %call7, i32 10)
  store double -1.000000e+00, double* %r, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %4 = load double, double* %r, align 8
  ret double %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_boolean_new(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct._EsObject*, %struct._EsObject** @es_boolean_new.T, align 8
  %tobool = icmp ne %struct._EsObject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._EsObject* @es_object_new(i32 3)
  store %struct._EsObject* %call, %struct._EsObject** @es_boolean_new.T, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** @es_boolean_new.T, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsBoolean*
  %value1 = getelementptr inbounds %struct._EsBoolean, %struct._EsBoolean* %2, i32 0, i32 1
  store i32 1, i32* %value1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._EsObject*, %struct._EsObject** @es_boolean_new.F, align 8
  %tobool2 = icmp ne %struct._EsObject* %3, null
  br i1 %tobool2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call %struct._EsObject* @es_object_new(i32 3)
  store %struct._EsObject* %call4, %struct._EsObject** @es_boolean_new.F, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** @es_boolean_new.F, align 8
  %5 = bitcast %struct._EsObject* %4 to %struct._EsBoolean*
  %value5 = getelementptr inbounds %struct._EsBoolean, %struct._EsBoolean* %5, i32 0, i32 1
  store i32 0, i32* %value5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %value.addr, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end6
  %7 = load %struct._EsObject*, %struct._EsObject** @es_boolean_new.T, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  %8 = load %struct._EsObject*, %struct._EsObject** @es_boolean_new.F, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._EsObject* [ %7, %cond.true ], [ %8, %cond.false ]
  ret %struct._EsObject* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_boolean_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_type_p(%struct._EsObject* %0, i32 3)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_boolean_get(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_boolean_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsBoolean*
  %value = getelementptr inbounds %struct._EsBoolean, %struct._EsBoolean* %2, i32 0, i32 1
  %3 = load i32, i32* %value, align 8
  store i32 %3, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._MIO* @mio_stderr()
  %call2 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %4, %struct._MIO* %call3)
  %call4 = call %struct._MIO* @mio_stderr()
  %call5 = call i32 @mio_putc(%struct._MIO* %call4, i32 10)
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_symbol_intern(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %r = alloca %struct._EsSingleton*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._EsSingleton* @es_obarray_intern(i32 4, i8* %0)
  store %struct._EsSingleton* %call, %struct._EsSingleton** %r, align 8
  %1 = load %struct._EsSingleton*, %struct._EsSingleton** %r, align 8
  %2 = bitcast %struct._EsSingleton* %1 to %struct._EsObject*
  ret %struct._EsObject* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsSingleton* @es_obarray_intern(i32 %type, i8* %name) #0 {
entry:
  %retval = alloca %struct._EsSingleton*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %hv = alloca i32, align 4
  %obarray = alloca %struct._EsSingleton**, align 8
  %s = alloca %struct._EsSingleton*, align 8
  %tmp = alloca %struct._EsSingleton*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x %struct._EsObjectClass], [8 x %struct._EsObjectClass]* @classes, i64 0, i64 %idxprom
  %obarray1 = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %arrayidx, i32 0, i32 5
  %1 = load %struct._EsSingleton**, %struct._EsSingleton*** %obarray1, align 8
  store %struct._EsSingleton** %1, %struct._EsSingleton*** %obarray, align 8
  %2 = load %struct._EsSingleton**, %struct._EsSingleton*** %obarray, align 8
  %tobool = icmp ne %struct._EsSingleton** %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._EsSingleton* null, %struct._EsSingleton** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @hash(i8* %3)
  store i32 %call, i32* %hv, align 4
  %4 = load %struct._EsSingleton**, %struct._EsSingleton*** %obarray, align 8
  %5 = load i32, i32* %hv, align 4
  %idxprom2 = zext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds %struct._EsSingleton*, %struct._EsSingleton** %4, i64 %idxprom2
  %6 = load %struct._EsSingleton*, %struct._EsSingleton** %arrayidx3, align 8
  store %struct._EsSingleton* %6, %struct._EsSingleton** %tmp, align 8
  store %struct._EsSingleton* null, %struct._EsSingleton** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %7 = load %struct._EsSingleton*, %struct._EsSingleton** %tmp, align 8
  %tobool4 = icmp ne %struct._EsSingleton* %7, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._EsSingleton*, %struct._EsSingleton** %tmp, align 8
  %quark = getelementptr inbounds %struct._EsSingleton, %struct._EsSingleton* %8, i32 0, i32 1
  %9 = load i8*, i8** %quark, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %9, i8* %10)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then7

if.then7:                                         ; preds = %while.body
  %11 = load %struct._EsSingleton*, %struct._EsSingleton** %tmp, align 8
  store %struct._EsSingleton* %11, %struct._EsSingleton** %s, align 8
  br label %while.end

if.else:                                          ; preds = %while.body
  %12 = load %struct._EsSingleton*, %struct._EsSingleton** %tmp, align 8
  %13 = bitcast %struct._EsSingleton* %12 to %struct._EsObject*
  %14 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %13, i32 0, i32 1
  %next = bitcast %union.anon* %14 to %struct._EsSingleton**
  %15 = load %struct._EsSingleton*, %struct._EsSingleton** %next, align 8
  store %struct._EsSingleton* %15, %struct._EsSingleton** %tmp, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %if.then7, %while.cond
  %16 = load %struct._EsSingleton*, %struct._EsSingleton** %s, align 8
  %tobool9 = icmp ne %struct._EsSingleton* %16, null
  br i1 %tobool9, label %if.end19, label %if.then10

if.then10:                                        ; preds = %while.end
  %17 = load i32, i32* %type.addr, align 4
  %call11 = call %struct._EsObject* @es_object_new(i32 %17)
  %18 = bitcast %struct._EsObject* %call11 to %struct._EsSingleton*
  store %struct._EsSingleton* %18, %struct._EsSingleton** %s, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %call12 = call i8* @strdup(i8* %19)
  %20 = load %struct._EsSingleton*, %struct._EsSingleton** %s, align 8
  %quark13 = getelementptr inbounds %struct._EsSingleton, %struct._EsSingleton* %20, i32 0, i32 1
  store i8* %call12, i8** %quark13, align 8
  %21 = load %struct._EsSingleton**, %struct._EsSingleton*** %obarray, align 8
  %22 = load i32, i32* %hv, align 4
  %idxprom14 = zext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds %struct._EsSingleton*, %struct._EsSingleton** %21, i64 %idxprom14
  %23 = load %struct._EsSingleton*, %struct._EsSingleton** %arrayidx15, align 8
  store %struct._EsSingleton* %23, %struct._EsSingleton** %tmp, align 8
  %24 = load %struct._EsSingleton*, %struct._EsSingleton** %s, align 8
  %25 = load %struct._EsSingleton**, %struct._EsSingleton*** %obarray, align 8
  %26 = load i32, i32* %hv, align 4
  %idxprom16 = zext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds %struct._EsSingleton*, %struct._EsSingleton** %25, i64 %idxprom16
  store %struct._EsSingleton* %24, %struct._EsSingleton** %arrayidx17, align 8
  %27 = load %struct._EsSingleton*, %struct._EsSingleton** %tmp, align 8
  %28 = load %struct._EsSingleton*, %struct._EsSingleton** %s, align 8
  %29 = bitcast %struct._EsSingleton* %28 to %struct._EsObject*
  %30 = getelementptr inbounds %struct._EsObject, %struct._EsObject* %29, i32 0, i32 1
  %next18 = bitcast %union.anon* %30 to %struct._EsSingleton**
  store %struct._EsSingleton* %27, %struct._EsSingleton** %next18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %while.end
  %31 = load %struct._EsSingleton*, %struct._EsSingleton** %s, align 8
  store %struct._EsSingleton* %31, %struct._EsSingleton** %retval, align 8
  br label %return

return:                                           ; preds = %if.end19, %if.then
  %32 = load %struct._EsSingleton*, %struct._EsSingleton** %retval, align 8
  ret %struct._EsSingleton* %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_symbol_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_type_p(%struct._EsObject* %0, i32 4)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @es_symbol_get(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_symbol_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsSingleton*
  %call1 = call i8* @es_singleton_get(%struct._EsSingleton* %2)
  store i8* %call1, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call2 = call %struct._MIO* @mio_stderr()
  %call3 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call4 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %3, %struct._MIO* %call4)
  %call5 = call %struct._MIO* @mio_stderr()
  %call6 = call i32 @mio_putc(%struct._MIO* %call5, i32 10)
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @es_singleton_get(%struct._EsSingleton* %singleton) #0 {
entry:
  %singleton.addr = alloca %struct._EsSingleton*, align 8
  store %struct._EsSingleton* %singleton, %struct._EsSingleton** %singleton.addr, align 8
  %0 = load %struct._EsSingleton*, %struct._EsSingleton** %singleton.addr, align 8
  %quark = getelementptr inbounds %struct._EsSingleton, %struct._EsSingleton* %0, i32 0, i32 1
  %1 = load i8*, i8** %quark, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @es_symbol_set_data(%struct._EsObject* %object, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  %data.addr = alloca i8*, align 8
  %old_data = alloca i8*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_symbol_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsSymbol*
  %data1 = getelementptr inbounds %struct._EsSymbol, %struct._EsSymbol* %2, i32 0, i32 1
  %3 = load i8*, i8** %data1, align 8
  store i8* %3, i8** %old_data, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %6 = bitcast %struct._EsObject* %5 to %struct._EsSymbol*
  %data2 = getelementptr inbounds %struct._EsSymbol, %struct._EsSymbol* %6, i32 0, i32 1
  store i8* %4, i8** %data2, align 8
  %7 = load i8*, i8** %old_data, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct._MIO* @mio_stderr()
  %call4 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %8 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call5 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %8, %struct._MIO* %call5)
  %call6 = call %struct._MIO* @mio_stderr()
  %call7 = call i32 @mio_putc(%struct._MIO* %call6, i32 10)
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @es_symbol_get_data(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_symbol_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsSymbol*
  %data = getelementptr inbounds %struct._EsSymbol, %struct._EsSymbol* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._MIO* @mio_stderr()
  %call2 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %4, %struct._MIO* %call3)
  %call4 = call %struct._MIO* @mio_stderr()
  %call5 = call i32 @mio_putc(%struct._MIO* %call4, i32 10)
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_string_new(i8* %value) #0 {
entry:
  %value.addr = alloca i8*, align 8
  %r = alloca %struct._EsObject*, align 8
  store i8* %value, i8** %value.addr, align 8
  %call = call %struct._EsObject* @es_object_new(i32 5)
  store %struct._EsObject* %call, %struct._EsObject** %r, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call1 = call i8* @strdup(i8* %0)
  %1 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsString*
  %value2 = getelementptr inbounds %struct._EsString, %struct._EsString* %2, i32 0, i32 1
  store i8* %call1, i8** %value2, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %3
}

declare i8* @strdup(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_string_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_type_p(%struct._EsObject* %0, i32 5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @es_string_get(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_string_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsString*
  %value = getelementptr inbounds %struct._EsString, %struct._EsString* %2, i32 0, i32 1
  %3 = load i8*, i8** %value, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._MIO* @mio_stderr()
  %call2 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %4, %struct._MIO* %call3)
  %call4 = call %struct._MIO* @mio_stderr()
  %call5 = call i32 @mio_putc(%struct._MIO* %call4, i32 10)
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_cons(%struct._EsObject* %car, %struct._EsObject* %cdr) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %car.addr = alloca %struct._EsObject*, align 8
  %cdr.addr = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %car, %struct._EsObject** %car.addr, align 8
  store %struct._EsObject* %cdr, %struct._EsObject** %cdr.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %cdr.addr, align 8
  %call = call i32 @es_list_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._EsObject* @es_object_new(i32 6)
  store %struct._EsObject* %call1, %struct._EsObject** %r, align 8
  %1 = load i32, i32* @es_debug, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %call4 = call %struct._MIO* @mio_stderr()
  %2 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %car.addr, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %cdr.addr, align 8
  %call5 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), %struct._EsObject* %2, %struct._EsObject* %3, %struct._EsObject* %4)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %5 = load %struct._EsObject*, %struct._EsObject** %car.addr, align 8
  %call7 = call %struct._EsObject* @es_object_ref(%struct._EsObject* %5)
  %6 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %7 = bitcast %struct._EsObject* %6 to %struct._EsCons*
  %car8 = getelementptr inbounds %struct._EsCons, %struct._EsCons* %7, i32 0, i32 1
  store %struct._EsObject* %call7, %struct._EsObject** %car8, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** %cdr.addr, align 8
  %call9 = call %struct._EsObject* @es_object_ref(%struct._EsObject* %8)
  %9 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %10 = bitcast %struct._EsObject* %9 to %struct._EsCons*
  %cdr10 = getelementptr inbounds %struct._EsCons, %struct._EsCons* %10, i32 0, i32 2
  store %struct._EsObject* %call9, %struct._EsObject** %cdr10, align 8
  %11 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %11, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %12 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_list_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %t = alloca i32, align 4
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_get_type(%struct._EsObject* %0)
  store i32 %call, i32* %t, align 4
  %1 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %t, align 4
  %cmp1 = icmp eq i32 %2, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_cons_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_type_p(%struct._EsObject* %0, i32 6)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_car(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_cons_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsCons*
  %car = getelementptr inbounds %struct._EsCons, %struct._EsCons* %2, i32 0, i32 1
  %3 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  store %struct._EsObject* %3, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call i32 @es_null(%struct._EsObject* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.else
  %call5 = call %struct._MIO* @mio_stderr()
  %call6 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %5 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call7 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %5, %struct._MIO* %call7)
  %call8 = call %struct._MIO* @mio_stderr()
  %call9 = call i32 @mio_putc(%struct._MIO* %call8, i32 10)
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_cdr(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_cons_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsCons*
  %cdr = getelementptr inbounds %struct._EsCons, %struct._EsCons* %2, i32 0, i32 2
  %3 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  store %struct._EsObject* %3, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call i32 @es_null(%struct._EsObject* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.else
  %call5 = call %struct._MIO* @mio_stderr()
  %call6 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %5 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call7 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %5, %struct._MIO* %call7)
  %call8 = call %struct._MIO* @mio_stderr()
  %call9 = call i32 @mio_putc(%struct._MIO* %call8, i32 10)
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_reverse(%struct._EsObject* %cons) #0 {
entry:
  %cons.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %cons, %struct._EsObject** %cons.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %cons.addr, align 8
  %call = call %struct._EsObject* @es_cons_reverse(%struct._EsObject* %0)
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_cons_reverse(%struct._EsObject* %cons) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %cons.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %cons, %struct._EsObject** %cons.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %cons.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._EsObject* null, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %cons.addr, align 8
  %call1 = call %struct._EsObject* @es_cdr(%struct._EsObject* %1)
  %2 = load %struct._EsObject*, %struct._EsObject** %cons.addr, align 8
  %call2 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  %call3 = call %struct._EsObject* @es_cons_reverse_rec(%struct._EsObject* %call1, %struct._EsObject* %call2, %struct._EsObject* null)
  store %struct._EsObject* %call3, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_error_intern(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %r = alloca %struct._EsSingleton*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._EsSingleton* @es_obarray_intern(i32 7, i8* %0)
  store %struct._EsSingleton* %call, %struct._EsSingleton** %r, align 8
  %1 = load %struct._EsSingleton*, %struct._EsSingleton** %r, align 8
  %2 = bitcast %struct._EsSingleton* %1 to %struct._EsObject*
  ret %struct._EsObject* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_error_p(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_object_type_p(%struct._EsObject* %0, i32 7)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @es_error_name(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_error_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsSingleton*
  %call1 = call i8* @es_singleton_get(%struct._EsSingleton* %2)
  store i8* %call1, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %call2 = call %struct._MIO* @mio_stderr()
  %call3 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call4 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %3, %struct._MIO* %call4)
  %call5 = call %struct._MIO* @mio_stderr()
  %call6 = call i32 @mio_putc(%struct._MIO* %call5, i32 10)
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_error_set_object(%struct._EsObject* %error, %struct._EsObject* %object) #0 {
entry:
  %error.addr = alloca %struct._EsObject*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  %e = alloca %struct._EsError*, align 8
  store %struct._EsObject* %error, %struct._EsObject** %error.addr, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %error.addr, align 8
  %1 = bitcast %struct._EsObject* %0 to %struct._EsError*
  store %struct._EsError* %1, %struct._EsError** %e, align 8
  %2 = load %struct._EsError*, %struct._EsError** %e, align 8
  %object1 = getelementptr inbounds %struct._EsError, %struct._EsError* %2, i32 0, i32 1
  %3 = load %struct._EsObject*, %struct._EsObject** %object1, align 8
  %tobool = icmp ne %struct._EsObject* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._EsError*, %struct._EsError** %e, align 8
  %object2 = getelementptr inbounds %struct._EsError, %struct._EsError* %4, i32 0, i32 1
  %5 = load %struct._EsObject*, %struct._EsObject** %object2, align 8
  call void @es_object_unref(%struct._EsObject* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsObject* @es_object_ref(%struct._EsObject* %6)
  %7 = load %struct._EsError*, %struct._EsError** %e, align 8
  %object3 = getelementptr inbounds %struct._EsError, %struct._EsError* %7, i32 0, i32 1
  store %struct._EsObject* %call, %struct._EsObject** %object3, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** %error.addr, align 8
  ret %struct._EsObject* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_error_get_object(%struct._EsObject* %error) #0 {
entry:
  %error.addr = alloca %struct._EsObject*, align 8
  %e = alloca %struct._EsError*, align 8
  store %struct._EsObject* %error, %struct._EsObject** %error.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %error.addr, align 8
  %1 = bitcast %struct._EsObject* %0 to %struct._EsError*
  store %struct._EsError* %1, %struct._EsError** %e, align 8
  %2 = load %struct._EsError*, %struct._EsError** %e, align 8
  %object = getelementptr inbounds %struct._EsError, %struct._EsError* %2, i32 0, i32 1
  %3 = load %struct._EsObject*, %struct._EsObject** %object, align 8
  ret %struct._EsObject* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._MIO* @mio_stdout() #0 {
entry:
  %0 = load %struct._MIO*, %struct._MIO** @out, align 8
  %cmp = icmp eq %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call = call %struct._MIO* @mio_new_fp(%struct.__sFILE* %1, i32 (%struct.__sFILE*)* null)
  store %struct._MIO* %call, %struct._MIO** @out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._MIO*, %struct._MIO** @out, align 8
  ret %struct._MIO* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @es_print_to_string(%struct._EsObject* %object) #0 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %struct._EsObject*, align 8
  %bp = alloca i8*, align 8
  %size = alloca i64, align 8
  %out = alloca %struct._MIO*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %call = call %struct._MIO* @mio_new_memory(i8* null, i64 0, i8* (i8*, i64)* @realloc, void (i8*)* null)
  store %struct._MIO* %call, %struct._MIO** %out, align 8
  %0 = load %struct._MIO*, %struct._MIO** %out, align 8
  %tobool = icmp ne %struct._MIO* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = load %struct._MIO*, %struct._MIO** %out, align 8
  call void @es_print(%struct._EsObject* %1, %struct._MIO* %2)
  %3 = load %struct._MIO*, %struct._MIO** %out, align 8
  %call1 = call i8* @mio_memory_get_data(%struct._MIO* %3, i64* %size)
  store i8* %call1, i8** %bp, align 8
  %4 = load %struct._MIO*, %struct._MIO** %out, align 8
  %call2 = call i32 @mio_free(%struct._MIO* %4)
  %5 = load i8*, i8** %bp, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

declare %struct._MIO* @mio_new_memory(i8*, i64, i8* (i8*, i64)*, void (i8*)*) #1

; Function Attrs: allocsize(1)
declare i8* @realloc(i8*, i64) #2

declare i8* @mio_memory_get_data(%struct._MIO*, i64*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @es_comment(i8* %comment, %struct._MIO* %out) #0 {
entry:
  %comment.addr = alloca i8*, align 8
  %out.addr = alloca %struct._MIO*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8*, align 8
  store i8* %comment, i8** %comment.addr, align 8
  store %struct._MIO* %out, %struct._MIO** %out.addr, align 8
  %0 = load i8*, i8** @comment_prefix, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @comment_prefix, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), %cond.false ]
  store i8* %cond, i8** %p, align 8
  %2 = load i8*, i8** %comment.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  %3 = load i8*, i8** %comment.addr, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i8* [ %3, %cond.true2 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), %cond.false3 ]
  store i8* %cond5, i8** %c, align 8
  %4 = load %struct._MIO*, %struct._MIO** %out.addr, align 8
  %tobool6 = icmp ne %struct._MIO* %4, null
  br i1 %tobool6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end4
  %5 = load %struct._MIO*, %struct._MIO** %out.addr, align 8
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end4
  %call = call %struct._MIO* @mio_stdout()
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi %struct._MIO* [ %5, %cond.true7 ], [ %call, %cond.false8 ]
  store %struct._MIO* %cond10, %struct._MIO** %out.addr, align 8
  br label %while.body

while.body:                                       ; preds = %cond.end9, %while.end
  %6 = load %struct._MIO*, %struct._MIO** %out.addr, align 8
  %7 = load i8*, i8** %p, align 8
  %call11 = call i32 @mio_puts(%struct._MIO* %6, i8* %7)
  br label %while.body13

while.body13:                                     ; preds = %while.body, %if.end22
  %8 = load i8*, i8** %c, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body13
  %10 = load %struct._MIO*, %struct._MIO** %out.addr, align 8
  %call15 = call i32 @mio_putc(%struct._MIO* %10, i32 10)
  ret void

if.else:                                          ; preds = %while.body13
  %11 = load %struct._MIO*, %struct._MIO** %out.addr, align 8
  %12 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  %call17 = call i32 @mio_putc(%struct._MIO* %11, i32 %conv16)
  %14 = load i8*, i8** %c, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 -1
  %15 = load i8, i8* %add.ptr, align 1
  %conv18 = sext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 10
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end
  br label %while.body13

while.end:                                        ; preds = %if.then21
  br label %while.body
}

declare i32 @mio_puts(%struct._MIO*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @es_comment_to_string(i8* %comment) #0 {
entry:
  %retval = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %size = alloca i64, align 8
  %out = alloca %struct._MIO*, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %call = call %struct._MIO* @mio_new_memory(i8* null, i64 0, i8* (i8*, i64)* @realloc, void (i8*)* null)
  store %struct._MIO* %call, %struct._MIO** %out, align 8
  %0 = load %struct._MIO*, %struct._MIO** %out, align 8
  %tobool = icmp ne %struct._MIO* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %comment.addr, align 8
  %2 = load %struct._MIO*, %struct._MIO** %out, align 8
  call void @es_comment(i8* %1, %struct._MIO* %2)
  %3 = load %struct._MIO*, %struct._MIO** %out, align 8
  %call1 = call i8* @mio_memory_get_data(%struct._MIO* %3, i64* %size)
  store i8* %call1, i8** %bp, align 8
  %4 = load %struct._MIO*, %struct._MIO** %out, align 8
  %call2 = call i32 @mio_free(%struct._MIO* %4)
  %5 = load i8*, i8** %bp, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_read(%struct._MIO* %in) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %in.addr = alloca %struct._MIO*, align 8
  %t = alloca %struct._Token*, align 8
  %r = alloca %struct._EsObject*, align 8
  store %struct._MIO* %in, %struct._MIO** %in.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  %tobool = icmp ne %struct._MIO* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct._MIO* @mio_stdin()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._MIO* [ %1, %cond.true ], [ %call, %cond.false ]
  store %struct._MIO* %cond, %struct._MIO** %in.addr, align 8
  %2 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  %call1 = call %struct._Token* @get_token(%struct._MIO* %2)
  store %struct._Token* %call1, %struct._Token** %t, align 8
  %3 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp = icmp eq %struct._Token* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call2 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call2, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %cond.end
  %4 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp3 = icmp eq %struct._Token* %4, @eof_token
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %call5 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  store %struct._EsObject* %call5, %struct._EsObject** %retval, align 8
  br label %return

if.else6:                                         ; preds = %if.else
  %5 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp7 = icmp eq %struct._Token* %5, @open_paren_token
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  %6 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  %call9 = call %struct._EsObject* @fill_list(%struct._MIO* %6)
  store %struct._EsObject* %call9, %struct._EsObject** %r, align 8
  br label %if.end16

if.else10:                                        ; preds = %if.else6
  %7 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp11 = icmp eq %struct._Token* %7, @close_paren_token
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  %call13 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

if.else14:                                        ; preds = %if.else10
  %8 = load %struct._Token*, %struct._Token** %t, align 8
  %call15 = call %struct._EsObject* @make_atom(%struct._Token* %8)
  store %struct._EsObject* %call15, %struct._EsObject** %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else14
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %9 = load %struct._Token*, %struct._Token** %t, align 8
  call void @token_free(%struct._Token* %9)
  %10 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %10, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then12, %if.then4, %if.then
  %11 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._MIO* @mio_stdin() #0 {
entry:
  %0 = load %struct._MIO*, %struct._MIO** @in, align 8
  %cmp = icmp eq %struct._MIO* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8
  %call = call %struct._MIO* @mio_new_fp(%struct.__sFILE* %1, i32 (%struct.__sFILE*)* null)
  store %struct._MIO* %call, %struct._MIO** @in, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._MIO*, %struct._MIO** @in, align 8
  ret %struct._MIO* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._Token* @get_token(%struct._MIO* %in) #0 {
entry:
  %in.addr = alloca %struct._MIO*, align 8
  %t = alloca %struct._Token*, align 8
  %c = alloca i32, align 4
  %c0 = alloca i8, align 1
  store %struct._MIO* %in, %struct._MIO** %in.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.then2, %if.then6
  %0 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  %call = call i32 @mio_getc(%struct._MIO* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store %struct._Token* @eof_token, %struct._Token** %t, align 8
  br label %while.end

if.else:                                          ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* %c0, align 1
  %3 = load i8, i8* %c0, align 1
  %call1 = call i32 @is_whitespace(i8 signext %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br label %while.body

if.else3:                                         ; preds = %if.else
  %4 = load i8, i8* %c0, align 1
  %call4 = call i32 @is_comment_start(i8 signext %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else3
  %5 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  call void @skip_to_newline(%struct._MIO* %5)
  br label %while.body

if.else7:                                         ; preds = %if.else3
  %6 = load i8, i8* %c0, align 1
  %call8 = call i32 @is_paren_open(i8 signext %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  store %struct._Token* @open_paren_token, %struct._Token** %t, align 8
  br label %while.end

if.else11:                                        ; preds = %if.else7
  %7 = load i8, i8* %c0, align 1
  %call12 = call i32 @is_paren_close(i8 signext %7)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  store %struct._Token* @close_paren_token, %struct._Token** %t, align 8
  br label %while.end

if.else15:                                        ; preds = %if.else11
  %8 = load i8, i8* %c0, align 1
  %call16 = call i32 @is_string_start(i8 signext %8)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %9 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  %10 = load i8, i8* %c0, align 1
  %call19 = call %struct._Token* @get_string(%struct._MIO* %9, i8 signext %10)
  store %struct._Token* %call19, %struct._Token** %t, align 8
  br label %while.end

if.else20:                                        ; preds = %if.else15
  %11 = load i8, i8* %c0, align 1
  %call21 = call i32 @is_fence_start(i8 signext %11)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else20
  %12 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  %13 = load i8, i8* %c0, align 1
  %call24 = call %struct._Token* @get_escaped_symbol(%struct._MIO* %12, i8 signext %13)
  store %struct._Token* %call24, %struct._Token** %t, align 8
  br label %while.end

if.else25:                                        ; preds = %if.else20
  %14 = load %struct._MIO*, %struct._MIO** %in.addr, align 8
  %15 = load i8, i8* %c0, align 1
  %call26 = call %struct._Token* @get_symbol(%struct._MIO* %14, i8 signext %15)
  store %struct._Token* %call26, %struct._Token** %t, align 8
  br label %while.end

while.end:                                        ; preds = %if.else25, %if.then23, %if.then18, %if.then14, %if.then10, %if.then
  %16 = load %struct._Token*, %struct._Token** %t, align 8
  ret %struct._Token* %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @fill_list(%struct._MIO* %fp) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %r = alloca %struct._EsObject*, align 8
  %t = alloca %struct._Token*, align 8
  %tmp = alloca %struct._EsObject*, align 8
  %car = alloca %struct._EsObject*, align 8
  %cdr = alloca %struct._EsObject*, align 8
  %car17 = alloca %struct._EsObject*, align 8
  %cdr18 = alloca %struct._EsObject*, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store %struct._EsObject* null, %struct._EsObject** %r, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end, %if.else16
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call = call %struct._Token* @get_token(%struct._MIO* %0)
  store %struct._Token* %call, %struct._Token** %t, align 8
  %1 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp = icmp eq %struct._Token* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  call void @es_object_unref(%struct._EsObject* %2)
  %call1 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call1, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %while.body
  %3 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp2 = icmp eq %struct._Token* %3, @eof_token
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %4 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  call void @es_object_unref(%struct._EsObject* %4)
  %call4 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call4, %struct._EsObject** %retval, align 8
  br label %return

if.else5:                                         ; preds = %if.else
  %5 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp6 = icmp eq %struct._Token* %5, @close_paren_token
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %6 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call8 = call %struct._EsObject* @es_cons_reverse(%struct._EsObject* %6)
  store %struct._EsObject* %call8, %struct._EsObject** %tmp, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  call void @es_object_unref(%struct._EsObject* %7)
  %8 = load %struct._EsObject*, %struct._EsObject** %tmp, align 8
  store %struct._EsObject* %8, %struct._EsObject** %r, align 8
  br label %while.end

if.else9:                                         ; preds = %if.else5
  %9 = load %struct._Token*, %struct._Token** %t, align 8
  %cmp10 = icmp eq %struct._Token* %9, @open_paren_token
  br i1 %cmp10, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else9
  %10 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call12 = call %struct._EsObject* @fill_list(%struct._MIO* %10)
  store %struct._EsObject* %call12, %struct._EsObject** %car, align 8
  %11 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %call13 = call i32 @es_error_p(%struct._EsObject* %11)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then11
  %12 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  call void @es_object_unref(%struct._EsObject* %12)
  %13 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  store %struct._EsObject* %13, %struct._EsObject** %r, align 8
  br label %while.end

if.end:                                           ; preds = %if.then11
  %14 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %14, %struct._EsObject** %cdr, align 8
  %15 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %16 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call15 = call %struct._EsObject* @es_cons(%struct._EsObject* %15, %struct._EsObject* %16)
  store %struct._EsObject* %call15, %struct._EsObject** %r, align 8
  %17 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  call void @es_object_unref(%struct._EsObject* %17)
  %18 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  call void @es_object_unref(%struct._EsObject* %18)
  br label %while.body

if.else16:                                        ; preds = %if.else9
  %19 = load %struct._Token*, %struct._Token** %t, align 8
  %call19 = call %struct._EsObject* @make_atom(%struct._Token* %19)
  store %struct._EsObject* %call19, %struct._EsObject** %car17, align 8
  %20 = load %struct._Token*, %struct._Token** %t, align 8
  call void @token_free(%struct._Token* %20)
  %21 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %21, %struct._EsObject** %cdr18, align 8
  %22 = load %struct._EsObject*, %struct._EsObject** %car17, align 8
  %23 = load %struct._EsObject*, %struct._EsObject** %cdr18, align 8
  %call20 = call %struct._EsObject* @es_cons(%struct._EsObject* %22, %struct._EsObject* %23)
  store %struct._EsObject* %call20, %struct._EsObject** %r, align 8
  %24 = load %struct._EsObject*, %struct._EsObject** %car17, align 8
  call void @es_object_unref(%struct._EsObject* %24)
  %25 = load %struct._EsObject*, %struct._EsObject** %cdr18, align 8
  call void @es_object_unref(%struct._EsObject* %25)
  br label %while.body

while.end:                                        ; preds = %if.then14, %if.then7
  %26 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %26, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %27 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @make_atom(%struct._Token* %token) #0 {
entry:
  %token.addr = alloca %struct._Token*, align 8
  %r = alloca %struct._EsObject*, align 8
  %t = alloca i8*, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  store %struct._Token* %token, %struct._Token** %token.addr, align 8
  %0 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %buffer = getelementptr inbounds %struct._Token, %struct._Token* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %t, align 8
  %2 = load i8*, i8** %t, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %t, align 8
  %call = call %struct._EsObject* @make_string(i8* %4)
  store %struct._EsObject* %call, %struct._EsObject** %r, align 8
  br label %if.end35

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %t, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 124
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %7 = load i8*, i8** %t, align 8
  %call7 = call %struct._EsObject* @make_symbol(i8* %7, i32 1)
  store %struct._EsObject* %call7, %struct._EsObject** %r, align 8
  br label %if.end34

if.else8:                                         ; preds = %if.else
  %8 = load i8*, i8** %t, align 8
  %call9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else8
  %call13 = call %struct._EsObject* @make_boolean(i32 1)
  store %struct._EsObject* %call13, %struct._EsObject** %r, align 8
  br label %if.end33

if.else14:                                        ; preds = %if.else8
  %9 = load i8*, i8** %t, align 8
  %call15 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0))
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else14
  %call19 = call %struct._EsObject* @make_boolean(i32 0)
  store %struct._EsObject* %call19, %struct._EsObject** %r, align 8
  br label %if.end32

if.else20:                                        ; preds = %if.else14
  %10 = load i8*, i8** %t, align 8
  %call21 = call i32 @is_integer(i8* %10, i32* %i)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else20
  %11 = load i32, i32* %i, align 4
  %call23 = call %struct._EsObject* @make_integer(i32 %11)
  store %struct._EsObject* %call23, %struct._EsObject** %r, align 8
  br label %if.end31

if.else24:                                        ; preds = %if.else20
  %12 = load i8*, i8** %t, align 8
  %call25 = call i32 @is_real(i8* %12, double* %d)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  %13 = load double, double* %d, align 8
  %call28 = call %struct._EsObject* @make_real(double %13)
  store %struct._EsObject* %call28, %struct._EsObject** %r, align 8
  br label %if.end

if.else29:                                        ; preds = %if.else24
  %14 = load i8*, i8** %t, align 8
  %call30 = call %struct._EsObject* @make_symbol(i8* %14, i32 0)
  store %struct._EsObject* %call30, %struct._EsObject** %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else29, %if.then27
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then18
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then12
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then6
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  %15 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @token_free(%struct._Token* %token) #0 {
entry:
  %token.addr = alloca %struct._Token*, align 8
  store %struct._Token* %token, %struct._Token** %token.addr, align 8
  %0 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %cmp = icmp eq %struct._Token* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %cmp1 = icmp eq %struct._Token* %1, @eof_token
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %cmp3 = icmp eq %struct._Token* %2, @open_paren_token
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %cmp5 = icmp eq %struct._Token* %3, @close_paren_token
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %4 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %buffer = getelementptr inbounds %struct._Token, %struct._Token* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  call void @free(i8* %5)
  %6 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %buffer6 = getelementptr inbounds %struct._Token, %struct._Token* %6, i32 0, i32 0
  store i8* null, i8** %buffer6, align 8
  %7 = load %struct._Token*, %struct._Token** %token.addr, align 8
  %8 = bitcast %struct._Token* %7 to i8*
  call void @free(i8* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_read_from_string(i8* %buf, i8** %saveptr) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %saveptr.addr = alloca i8**, align 8
  %in = alloca %struct._MIO*, align 8
  %o = alloca %struct._EsObject*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8** %saveptr, i8*** %saveptr.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %call = call i64 @strlen(i8* %1)
  %call1 = call %struct._MIO* @mio_new_memory(i8* %0, i64 %call, i8* (i8*, i64)* null, void (i8*)* null)
  store %struct._MIO* %call1, %struct._MIO** %in, align 8
  %2 = load %struct._MIO*, %struct._MIO** %in, align 8
  %call2 = call %struct._EsObject* @es_read(%struct._MIO* %2)
  store %struct._EsObject* %call2, %struct._EsObject** %o, align 8
  %3 = load i8**, i8*** %saveptr.addr, align 8
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load %struct._MIO*, %struct._MIO** %in, align 8
  %call3 = call i64 @mio_tell(%struct._MIO* %5)
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %call3
  %6 = load i8**, i8*** %saveptr.addr, align 8
  store i8* %add.ptr, i8** %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._MIO*, %struct._MIO** %in, align 8
  %call4 = call i32 @mio_free(%struct._MIO* %7)
  %8 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  ret %struct._EsObject* %8
}

declare i64 @strlen(i8*) #1

declare i64 @mio_tell(%struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @es_autounref_pool_push() #0 {
entry:
  %r = alloca %struct._EsAutounrefPool*, align 8
  %call = call %struct._EsAutounrefPool* @es_autounref_pool_new()
  store %struct._EsAutounrefPool* %call, %struct._EsAutounrefPool** %r, align 8
  %0 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** @currrent_pool, align 8
  %1 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %r, align 8
  %parent_pool = getelementptr inbounds %struct._EsAutounrefPool, %struct._EsAutounrefPool* %1, i32 0, i32 0
  store %struct._EsAutounrefPool* %0, %struct._EsAutounrefPool** %parent_pool, align 8
  %2 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %r, align 8
  store %struct._EsAutounrefPool* %2, %struct._EsAutounrefPool** @currrent_pool, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsAutounrefPool* @es_autounref_pool_new() #0 {
entry:
  %r = alloca %struct._EsAutounrefPool*, align 8
  %call = call i8* @calloc(i64 1, i64 16) #7
  %0 = bitcast i8* %call to %struct._EsAutounrefPool*
  store %struct._EsAutounrefPool* %0, %struct._EsAutounrefPool** %r, align 8
  %1 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %r, align 8
  ret %struct._EsAutounrefPool* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @es_autounref_pool_pop() #0 {
entry:
  %tmp = alloca %struct._EsAutounrefPool*, align 8
  %0 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** @currrent_pool, align 8
  store %struct._EsAutounrefPool* %0, %struct._EsAutounrefPool** %tmp, align 8
  %1 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %tmp, align 8
  %parent_pool = getelementptr inbounds %struct._EsAutounrefPool, %struct._EsAutounrefPool* %1, i32 0, i32 0
  %2 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %parent_pool, align 8
  store %struct._EsAutounrefPool* %2, %struct._EsAutounrefPool** @currrent_pool, align 8
  %3 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %tmp, align 8
  call void @es_autounref_pool_free(%struct._EsAutounrefPool* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_autounref_pool_free(%struct._EsAutounrefPool* %pool) #0 {
entry:
  %pool.addr = alloca %struct._EsAutounrefPool*, align 8
  store %struct._EsAutounrefPool* %pool, %struct._EsAutounrefPool** %pool.addr, align 8
  %0 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %pool.addr, align 8
  %parent_pool = getelementptr inbounds %struct._EsAutounrefPool, %struct._EsAutounrefPool* %0, i32 0, i32 0
  store %struct._EsAutounrefPool* null, %struct._EsAutounrefPool** %parent_pool, align 8
  %1 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %pool.addr, align 8
  %chain = getelementptr inbounds %struct._EsAutounrefPool, %struct._EsAutounrefPool* %1, i32 0, i32 1
  %2 = load %struct._EsChain*, %struct._EsChain** %chain, align 8
  call void @es_chain_free(%struct._EsChain* %2)
  %3 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %pool.addr, align 8
  %chain1 = getelementptr inbounds %struct._EsAutounrefPool, %struct._EsAutounrefPool* %3, i32 0, i32 1
  store %struct._EsChain* null, %struct._EsChain** %chain1, align 8
  %4 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** %pool.addr, align 8
  %5 = bitcast %struct._EsAutounrefPool* %4 to i8*
  call void @free(i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_object_autounref(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsChain*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsChain* @es_chain_new(%struct._EsObject* %0)
  store %struct._EsChain* %call, %struct._EsChain** %r, align 8
  %1 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** @currrent_pool, align 8
  %chain = getelementptr inbounds %struct._EsAutounrefPool, %struct._EsAutounrefPool* %1, i32 0, i32 1
  %2 = load %struct._EsChain*, %struct._EsChain** %chain, align 8
  %3 = load %struct._EsChain*, %struct._EsChain** %r, align 8
  %next = getelementptr inbounds %struct._EsChain, %struct._EsChain* %3, i32 0, i32 1
  store %struct._EsChain* %2, %struct._EsChain** %next, align 8
  %4 = load %struct._EsChain*, %struct._EsChain** %r, align 8
  %5 = load %struct._EsAutounrefPool*, %struct._EsAutounrefPool** @currrent_pool, align 8
  %chain1 = getelementptr inbounds %struct._EsAutounrefPool, %struct._EsAutounrefPool* %5, i32 0, i32 1
  store %struct._EsChain* %4, %struct._EsChain** %chain1, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsChain* @es_chain_new(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsChain*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %call = call i8* @calloc(i64 1, i64 16) #7
  %0 = bitcast i8* %call to %struct._EsChain*
  store %struct._EsChain* %0, %struct._EsChain** %r, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = load %struct._EsChain*, %struct._EsChain** %r, align 8
  %object1 = getelementptr inbounds %struct._EsChain, %struct._EsChain* %2, i32 0, i32 0
  store %struct._EsObject* %1, %struct._EsObject** %object1, align 8
  %3 = load %struct._EsChain*, %struct._EsChain** %r, align 8
  ret %struct._EsChain* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_list(%struct._EsObject* %object, ...) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsObject*, align 8
  %ap = alloca i8*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsObject* @es_list_va(%struct._EsObject* %0, i8** %ap)
  store %struct._EsObject* %call, %struct._EsObject** %r, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %1 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %1
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_list_va(%struct._EsObject* %object, i8** %ap) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %ap.addr = alloca i8**, align 8
  %r = alloca %struct._EsObject*, align 8
  %p = alloca %struct._EsObject*, align 8
  %tmp = alloca %struct._EsObject*, align 8
  %varet = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store i8** %ap, i8*** %ap.addr, align 8
  store %struct._EsObject* null, %struct._EsObject** %r, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  store %struct._EsObject* %0, %struct._EsObject** %p, align 8
  call void @es_autounref_pool_push()
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %p, align 8
  %call = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %cmp = icmp eq %struct._EsObject* %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %2 = load %struct._EsObject*, %struct._EsObject** %p, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call1 = call %struct._EsObject* @es_object_autounref(%struct._EsObject* %3)
  %call2 = call %struct._EsObject* @es_cons(%struct._EsObject* %2, %struct._EsObject* %call1)
  store %struct._EsObject* %call2, %struct._EsObject** %r, align 8
  %4 = load i8**, i8*** %ap.addr, align 8
  %5 = va_arg i8** %4, %struct._EsObject*
  store %struct._EsObject* %5, %struct._EsObject** %varet, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** %varet, align 8
  store %struct._EsObject* %6, %struct._EsObject** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  call void @es_autounref_pool_pop()
  %7 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %7, %struct._EsObject** %tmp, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call3 = call %struct._EsObject* @es_cons_reverse(%struct._EsObject* %8)
  store %struct._EsObject* %call3, %struct._EsObject** %r, align 8
  %9 = load %struct._EsObject*, %struct._EsObject** %tmp, align 8
  call void @es_object_unref(%struct._EsObject* %9)
  %10 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %10
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_append(%struct._EsObject* %list, ...) #0 {
entry:
  %list.addr = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsObject*, align 8
  %tmp = alloca %struct._EsObject*, align 8
  %tail = alloca %struct._EsObject*, align 8
  %body = alloca %struct._EsObject*, align 8
  %ap = alloca i8*, align 8
  store %struct._EsObject* %list, %struct._EsObject** %list.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = load %struct._EsObject*, %struct._EsObject** %list.addr, align 8
  %call = call %struct._EsObject* @es_list_va(%struct._EsObject* %0, i8** %ap)
  store %struct._EsObject* %call, %struct._EsObject** %r, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %1 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %1, %struct._EsObject** %tmp, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call3 = call %struct._EsObject* @es_cons_reverse(%struct._EsObject* %2)
  store %struct._EsObject* %call3, %struct._EsObject** %r, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %tmp, align 8
  call void @es_object_unref(%struct._EsObject* %3)
  %4 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call4 = call %struct._EsObject* @es_car(%struct._EsObject* %4)
  store %struct._EsObject* %call4, %struct._EsObject** %tail, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  %call5 = call %struct._EsObject* @es_cdr(%struct._EsObject* %5)
  store %struct._EsObject* %call5, %struct._EsObject** %body, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %6, %struct._EsObject** %tmp, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %tail, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** %body, align 8
  %call6 = call %struct._EsObject* @es_append0(%struct._EsObject* %7, %struct._EsObject* %8)
  store %struct._EsObject* %call6, %struct._EsObject** %r, align 8
  %9 = load %struct._EsObject*, %struct._EsObject** %tmp, align 8
  call void @es_object_unref(%struct._EsObject* %9)
  %10 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  ret %struct._EsObject* %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_append0(%struct._EsObject* %tail, %struct._EsObject* %body) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %tail.addr = alloca %struct._EsObject*, align 8
  %body.addr = alloca %struct._EsObject*, align 8
  %car = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %tail, %struct._EsObject** %tail.addr, align 8
  store %struct._EsObject* %body, %struct._EsObject** %body.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %body.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %tail.addr, align 8
  store %struct._EsObject* %1, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %body.addr, align 8
  %call1 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  %call2 = call %struct._EsObject* @es_cons_reverse(%struct._EsObject* %call1)
  store %struct._EsObject* %call2, %struct._EsObject** %car, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %tail.addr, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %call3 = call %struct._EsObject* @es_append1(%struct._EsObject* %3, %struct._EsObject* %4)
  store %struct._EsObject* %call3, %struct._EsObject** %tail.addr, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  call void @es_object_unref(%struct._EsObject* %5)
  %6 = load %struct._EsObject*, %struct._EsObject** %body.addr, align 8
  %call4 = call %struct._EsObject* @es_cdr(%struct._EsObject* %6)
  store %struct._EsObject* %call4, %struct._EsObject** %body.addr, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %tail.addr, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** %body.addr, align 8
  %call5 = call %struct._EsObject* @es_append0(%struct._EsObject* %7, %struct._EsObject* %8)
  store %struct._EsObject* %call5, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_realize(%struct._EsObject* %fmt_object, ...) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %object = alloca %struct._EsObject*, align 8
  %ap = alloca i8*, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call = call i32 @es_error_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call1 = call %struct._EsObject* @es_object_ref(%struct._EsObject* %1)
  store %struct._EsObject* %call1, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)
  %2 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call3 = call %struct._EsObject* @es_vrealize(%struct._EsObject* %2, i8** %ap)
  store %struct._EsObject* %call3, %struct._EsObject** %object, align 8
  %ap4 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap4)
  %3 = load %struct._EsObject*, %struct._EsObject** %object, align 8
  store %struct._EsObject* %3, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_vrealize(%struct._EsObject* %fmt_object, i8** %ap) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %ap.addr = alloca i8**, align 8
  %car = alloca %struct._EsObject*, align 8
  %cdr = alloca %struct._EsObject*, align 8
  %kar = alloca %struct._EsObject*, align 8
  %kdr = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsObject*, align 8
  %varet = alloca %struct._EsObject*, align 8
  %fmt = alloca i8*, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  store i8** %ap, i8*** %ap.addr, align 8
  call void @pattern_init()
  %0 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call = call i32 @es_cons_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call1 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  store %struct._EsObject* %call1, %struct._EsObject** %car, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** @pattern_rest, align 8
  %cmp = icmp eq %struct._EsObject* %2, %3
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load i8**, i8*** %ap.addr, align 8
  %5 = va_arg i8** %4, %struct._EsObject*
  store %struct._EsObject* %5, %struct._EsObject** %varet, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** %varet, align 8
  %call3 = call %struct._EsObject* @es_object_ref(%struct._EsObject* %6)
  store %struct._EsObject* %call3, %struct._EsObject** %r, align 8
  br label %if.end23

if.else:                                          ; preds = %if.then
  %7 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call4 = call %struct._EsObject* @es_cdr(%struct._EsObject* %7)
  store %struct._EsObject* %call4, %struct._EsObject** %cdr, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %9 = load i8**, i8*** %ap.addr, align 8
  %call5 = call %struct._EsObject* @es_vrealize(%struct._EsObject* %8, i8** %9)
  store %struct._EsObject* %call5, %struct._EsObject** %kar, align 8
  %10 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %11 = load i8**, i8*** %ap.addr, align 8
  %call6 = call %struct._EsObject* @es_vrealize(%struct._EsObject* %10, i8** %11)
  store %struct._EsObject* %call6, %struct._EsObject** %kdr, align 8
  %12 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %13 = load %struct._EsObject*, %struct._EsObject** @pattern_splice, align 8
  %cmp7 = icmp eq %struct._EsObject* %12, %13
  br i1 %cmp7, label %if.then8, label %if.else20

if.then8:                                         ; preds = %if.else
  %14 = load %struct._EsObject*, %struct._EsObject** %kar, align 8
  %call9 = call i32 @es_cons_p(%struct._EsObject* %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.then8
  %15 = load %struct._EsObject*, %struct._EsObject** %kar, align 8
  %16 = load %struct._EsObject*, %struct._EsObject** %kdr, align 8
  %call12 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %call13 = call %struct._EsObject* (%struct._EsObject*, ...) @es_append(%struct._EsObject* %15, %struct._EsObject* %16, %struct._EsObject* %call12)
  store %struct._EsObject* %call13, %struct._EsObject** %r, align 8
  br label %if.end

if.else14:                                        ; preds = %if.then8
  %call15 = call %struct._MIO* @mio_stderr()
  %call16 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0))
  %17 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call17 = call i8* @es_print_to_string(%struct._EsObject* %17)
  store i8* %call17, i8** %fmt, align 8
  %call18 = call %struct._MIO* @mio_stderr()
  %18 = load i8*, i8** %fmt, align 8
  %call19 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* %18)
  %19 = load i8*, i8** %fmt, align 8
  call void @free(i8* %19)
  store %struct._EsObject* null, %struct._EsObject** %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then11
  br label %if.end22

if.else20:                                        ; preds = %if.else
  %20 = load %struct._EsObject*, %struct._EsObject** %kar, align 8
  %21 = load %struct._EsObject*, %struct._EsObject** %kdr, align 8
  %call21 = call %struct._EsObject* @es_cons(%struct._EsObject* %20, %struct._EsObject* %21)
  store %struct._EsObject* %call21, %struct._EsObject** %r, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.end
  %22 = load %struct._EsObject*, %struct._EsObject** %kar, align 8
  call void @es_object_unref(%struct._EsObject* %22)
  %23 = load %struct._EsObject*, %struct._EsObject** %kdr, align 8
  call void @es_object_unref(%struct._EsObject* %23)
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then2
  %24 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %24, %struct._EsObject** %retval, align 8
  br label %return

if.else24:                                        ; preds = %entry
  %25 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %26 = load i8**, i8*** %ap.addr, align 8
  %call25 = call %struct._EsObject* @es_vrealize_atom(%struct._EsObject* %25, i8** %26)
  store %struct._EsObject* %call25, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else24, %if.end23
  %27 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_srealize(i8* %fmt, ...) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %fmt.addr = alloca i8*, align 8
  %fmt_object = alloca %struct._EsObject*, align 8
  %object = alloca %struct._EsObject*, align 8
  %ap = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %call = call %struct._EsObject* @es_read_from_string(i8* %0, i8** null)
  store %struct._EsObject* %call, %struct._EsObject** %fmt_object, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %fmt_object, align 8
  %call1 = call i32 @es_error_p(%struct._EsObject* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %fmt_object, align 8
  store %struct._EsObject* %2, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)
  %3 = load %struct._EsObject*, %struct._EsObject** %fmt_object, align 8
  %call3 = call %struct._EsObject* @es_vrealize(%struct._EsObject* %3, i8** %ap)
  store %struct._EsObject* %call3, %struct._EsObject** %object, align 8
  %ap4 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap4)
  %4 = load %struct._EsObject*, %struct._EsObject** %fmt_object, align 8
  call void @es_object_unref(%struct._EsObject* %4)
  %5 = load %struct._EsObject*, %struct._EsObject** %object, align 8
  store %struct._EsObject* %5, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_match(%struct._EsObject* %input, %struct._EsObject* %fmt_object, ...) #0 {
entry:
  %input.addr = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %object = alloca %struct._EsObject*, align 8
  %ap = alloca i8*, align 8
  store %struct._EsObject* %input, %struct._EsObject** %input.addr, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %0 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call = call %struct._EsObject* @es_vmatch(%struct._EsObject* %0, %struct._EsObject* %1, i8** %ap)
  store %struct._EsObject* %call, %struct._EsObject** %object, align 8
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  %2 = load %struct._EsObject*, %struct._EsObject** %object, align 8
  %call3 = call i32 @es_error_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_vmatch(%struct._EsObject* %input, %struct._EsObject* %fmt_object, i8** %ap) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %input.addr = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %ap.addr = alloca i8**, align 8
  %fmt_car = alloca %struct._EsObject*, align 8
  %fmt_cdr = alloca %struct._EsObject*, align 8
  %i_car = alloca %struct._EsObject*, align 8
  %i_cdr = alloca %struct._EsObject*, align 8
  %r_car = alloca %struct._EsObject*, align 8
  %r_cdr = alloca %struct._EsObject*, align 8
  %aq = alloca i8*, align 8
  %varet = alloca %struct._EsObject**, align 8
  %varet35 = alloca %struct._EsObject**, align 8
  store %struct._EsObject* %input, %struct._EsObject** %input.addr, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  store i8** %ap, i8*** %ap.addr, align 8
  call void @pattern_init()
  %0 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call = call i32 @es_cons_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call1 = call i32 @es_cons_p(%struct._EsObject* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else24

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  store %struct._EsObject* %call3, %struct._EsObject** %fmt_car, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %fmt_car, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** @pattern_rest, align 8
  %cmp = icmp eq %struct._EsObject* %3, %4
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %5 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %6 = load i8**, i8*** %ap.addr, align 8
  %7 = va_arg i8** %6, %struct._EsObject**
  store %struct._EsObject** %7, %struct._EsObject*** %varet, align 8
  %8 = load %struct._EsObject**, %struct._EsObject*** %varet, align 8
  store %struct._EsObject* %5, %struct._EsObject** %8, align 8
  %9 = load %struct._EsObject*, %struct._EsObject** %fmt_car, align 8
  store %struct._EsObject* %9, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %10 = load %struct._EsObject*, %struct._EsObject** %fmt_car, align 8
  %11 = load %struct._EsObject*, %struct._EsObject** @pattern_i_rest, align 8
  %cmp5 = icmp eq %struct._EsObject* %10, %11
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %12 = load %struct._EsObject*, %struct._EsObject** %fmt_car, align 8
  store %struct._EsObject* %12, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %13 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call8 = call %struct._EsObject* @es_cdr(%struct._EsObject* %13)
  store %struct._EsObject* %call8, %struct._EsObject** %fmt_cdr, align 8
  %14 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call9 = call %struct._EsObject* @es_car(%struct._EsObject* %14)
  store %struct._EsObject* %call9, %struct._EsObject** %i_car, align 8
  %15 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call10 = call %struct._EsObject* @es_cdr(%struct._EsObject* %15)
  store %struct._EsObject* %call10, %struct._EsObject** %i_cdr, align 8
  %16 = load i8**, i8*** %ap.addr, align 8
  %17 = bitcast i8** %aq to i8*
  %18 = bitcast i8** %16 to i8*
  call void @llvm.va_copy(i8* %17, i8* %18)
  %19 = load %struct._EsObject*, %struct._EsObject** %i_car, align 8
  %20 = load %struct._EsObject*, %struct._EsObject** %fmt_car, align 8
  %21 = load i8**, i8*** %ap.addr, align 8
  %call11 = call %struct._EsObject* @es_vmatch(%struct._EsObject* %19, %struct._EsObject* %20, i8** %21)
  store %struct._EsObject* %call11, %struct._EsObject** %r_car, align 8
  %22 = load %struct._EsObject*, %struct._EsObject** %r_car, align 8
  %call12 = call i32 @es_error_p(%struct._EsObject* %22)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end7
  %aq15 = bitcast i8** %aq to i8*
  call void @llvm.va_end(i8* %aq15)
  %23 = load %struct._EsObject*, %struct._EsObject** %r_car, align 8
  store %struct._EsObject* %23, %struct._EsObject** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end7
  %24 = load %struct._EsObject*, %struct._EsObject** %i_cdr, align 8
  %25 = load %struct._EsObject*, %struct._EsObject** %fmt_cdr, align 8
  %26 = load i8**, i8*** %ap.addr, align 8
  %call17 = call %struct._EsObject* @es_vmatch(%struct._EsObject* %24, %struct._EsObject* %25, i8** %26)
  store %struct._EsObject* %call17, %struct._EsObject** %r_cdr, align 8
  %27 = load %struct._EsObject*, %struct._EsObject** %r_cdr, align 8
  %call18 = call i32 @es_error_p(%struct._EsObject* %27)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  %28 = load %struct._EsObject*, %struct._EsObject** %fmt_car, align 8
  call void @recover(%struct._EsObject* %28, i8** %aq)
  %aq21 = bitcast i8** %aq to i8*
  call void @llvm.va_end(i8* %aq21)
  %29 = load %struct._EsObject*, %struct._EsObject** %r_cdr, align 8
  store %struct._EsObject* %29, %struct._EsObject** %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.end16
  %aq23 = bitcast i8** %aq to i8*
  call void @llvm.va_end(i8* %aq23)
  %30 = load %struct._EsObject*, %struct._EsObject** %r_cdr, align 8
  store %struct._EsObject* %30, %struct._EsObject** %retval, align 8
  br label %return

if.else24:                                        ; preds = %land.lhs.true, %entry
  %31 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call25 = call i32 @es_cons_p(%struct._EsObject* %31)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  %32 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %33 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %34 = load i8**, i8*** %ap.addr, align 8
  %call28 = call %struct._EsObject* @es_vmatch_atom_input(%struct._EsObject* %32, %struct._EsObject* %33, i8** %34)
  store %struct._EsObject* %call28, %struct._EsObject** %retval, align 8
  br label %return

if.else29:                                        ; preds = %if.else24
  %35 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call30 = call i32 @es_cons_p(%struct._EsObject* %35)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else41

if.then32:                                        ; preds = %if.else29
  %36 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %37 = load %struct._EsObject*, %struct._EsObject** @pattern_rest, align 8
  %cmp33 = icmp eq %struct._EsObject* %36, %37
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.then32
  %38 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %39 = load i8**, i8*** %ap.addr, align 8
  %40 = va_arg i8** %39, %struct._EsObject**
  store %struct._EsObject** %40, %struct._EsObject*** %varet35, align 8
  %41 = load %struct._EsObject**, %struct._EsObject*** %varet35, align 8
  store %struct._EsObject* %38, %struct._EsObject** %41, align 8
  %42 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  store %struct._EsObject* %42, %struct._EsObject** %retval, align 8
  br label %return

if.else36:                                        ; preds = %if.then32
  %43 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %44 = load %struct._EsObject*, %struct._EsObject** @pattern_i_rest, align 8
  %cmp37 = icmp eq %struct._EsObject* %43, %44
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else36
  %45 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  store %struct._EsObject* %45, %struct._EsObject** %retval, align 8
  br label %return

if.else39:                                        ; preds = %if.else36
  %46 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %47 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %48 = load i8**, i8*** %ap.addr, align 8
  %call40 = call %struct._EsObject* @es_vmatch_atom_fmt(%struct._EsObject* %46, %struct._EsObject* %47, i8** %48)
  store %struct._EsObject* %call40, %struct._EsObject** %retval, align 8
  br label %return

if.else41:                                        ; preds = %if.else29
  %49 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %50 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %51 = load i8**, i8*** %ap.addr, align 8
  %call42 = call %struct._EsObject* @es_vmatch_atom(%struct._EsObject* %49, %struct._EsObject* %50, i8** %51)
  store %struct._EsObject* %call42, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else41, %if.else39, %if.then38, %if.then34, %if.then27, %if.end22, %if.then20, %if.then14, %if.then6, %if.then4
  %52 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %52
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @es_smatch(%struct._EsObject* %input, i8* %fmt, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca %struct._EsObject*, align 8
  %fmt.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  %object = alloca %struct._EsObject*, align 8
  %fmt_object = alloca %struct._EsObject*, align 8
  %ap = alloca i8*, align 8
  store %struct._EsObject* %input, %struct._EsObject** %input.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load i8*, i8** %fmt.addr, align 8
  %call = call %struct._EsObject* @es_read_from_string(i8* %0, i8** null)
  store %struct._EsObject* %call, %struct._EsObject** %fmt_object, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %fmt_object, align 8
  %call1 = call i32 @es_error_p(%struct._EsObject* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)
  %2 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %fmt_object, align 8
  %call3 = call %struct._EsObject* @es_vmatch(%struct._EsObject* %2, %struct._EsObject* %3, i8** %ap)
  store %struct._EsObject* %call3, %struct._EsObject** %object, align 8
  %ap4 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap4)
  %4 = load %struct._EsObject*, %struct._EsObject** %object, align 8
  %call5 = call i32 @es_error_p(%struct._EsObject* %4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %r, align 4
  %5 = load %struct._EsObject*, %struct._EsObject** %fmt_object, align 8
  call void @es_object_unref(%struct._EsObject* %5)
  %6 = load i32, i32* %r, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct._EsObject* @es_pget(%struct._EsObject* %plist, %struct._EsObject* %key, %struct._EsObject* %default_value) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %plist.addr = alloca %struct._EsObject*, align 8
  %key.addr = alloca %struct._EsObject*, align 8
  %default_value.addr = alloca %struct._EsObject*, align 8
  %car = alloca %struct._EsObject*, align 8
  %cdr = alloca %struct._EsObject*, align 8
  %cadr = alloca %struct._EsObject*, align 8
  %cddr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %plist, %struct._EsObject** %plist.addr, align 8
  store %struct._EsObject* %key, %struct._EsObject** %key.addr, align 8
  store %struct._EsObject* %default_value, %struct._EsObject** %default_value.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %plist.addr, align 8
  %call = call i32 @es_cons_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else14

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %plist.addr, align 8
  %call1 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  store %struct._EsObject* %call1, %struct._EsObject** %car, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %plist.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %2)
  store %struct._EsObject* %call2, %struct._EsObject** %cdr, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call3 = call i32 @es_cons_p(%struct._EsObject* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.then
  %4 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call6 = call %struct._EsObject* @es_car(%struct._EsObject* %4)
  store %struct._EsObject* %call6, %struct._EsObject** %cadr, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call7 = call %struct._EsObject* @es_cdr(%struct._EsObject* %5)
  store %struct._EsObject* %call7, %struct._EsObject** %cddr, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %key.addr, align 8
  %call8 = call i32 @es_object_equal(%struct._EsObject* %6, %struct._EsObject* %7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then5
  %8 = load %struct._EsObject*, %struct._EsObject** %cadr, align 8
  store %struct._EsObject* %8, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then5
  %9 = load %struct._EsObject*, %struct._EsObject** %cddr, align 8
  %10 = load %struct._EsObject*, %struct._EsObject** %key.addr, align 8
  %11 = load %struct._EsObject*, %struct._EsObject** %default_value.addr, align 8
  %call11 = call %struct._EsObject* @es_pget(%struct._EsObject* %9, %struct._EsObject* %10, %struct._EsObject* %11)
  store %struct._EsObject* %call11, %struct._EsObject** %retval, align 8
  br label %return

if.else12:                                        ; preds = %if.then
  %call13 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call13, %struct._EsObject** %retval, align 8
  br label %return

if.else14:                                        ; preds = %entry
  %12 = load %struct._EsObject*, %struct._EsObject** %default_value.addr, align 8
  store %struct._EsObject* %12, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else14, %if.else12, %if.else, %if.then10
  %13 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_nil_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_nil_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_nil_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call = call i32 @mio_puts(%struct._MIO* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_integer_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  call void @es_object_free(%struct._EsObject* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_integer_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call = call i32 @es_integer_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %call1 = call i32 @es_integer_get(%struct._EsObject* %1)
  %2 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call2 = call i32 @es_integer_get(%struct._EsObject* %2)
  %cmp = icmp eq i32 %call1, %call2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %4 = zext i1 %3 to i64
  %cond = select i1 %3, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_integer_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_integer_get(%struct._EsObject* %1)
  %call1 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 %call)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_real_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  call void @es_object_free(%struct._EsObject* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_real_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call = call i32 @es_real_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %call1 = call double @es_real_get(%struct._EsObject* %1)
  %2 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call2 = call double @es_real_get(%struct._EsObject* %2)
  %cmp = fcmp oeq double %call1, %call2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %4 = zext i1 %3 to i64
  %cond = select i1 %3, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_real_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call double @es_real_get(%struct._EsObject* %1)
  %call1 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), double %call)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_boolean_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_boolean_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %cmp = icmp eq %struct._EsObject* %0, %1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_boolean_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_boolean_get(%struct._EsObject* %1)
  %tobool = icmp ne i32 %call, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 116, i32 102
  %call1 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %cond)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_symbol_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_symbol_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %cmp = icmp eq %struct._EsObject* %0, %1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_symbol_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %string = alloca i8*, align 8
  %len = alloca i64, align 8
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  %mask = alloca i8, align 1
  %needs_bar = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i8* @es_symbol_get(%struct._EsObject* %0)
  store i8* %call, i8** %string, align 8
  %1 = load i8*, i8** %string, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end53

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %string, align 8
  %call1 = call i64 @strlen(i8* %2)
  store i64 %call1, i64* %len, align 8
  %3 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %needs_bar, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i8*, i8** %string, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %c, align 1
  %6 = load i8, i8* %c, align 1
  %conv = sext i8 %6 to i32
  %call4 = call zeroext i8 @get_char_class(i32 %conv)
  store i8 %call4, i8* %cc, align 1
  store i8 1, i8* %mask, align 1
  %7 = load i8, i8* %cc, align 1
  %conv5 = zext i8 %7 to i32
  %8 = load i8, i8* %mask, align 1
  %conv6 = zext i8 %8 to i32
  %and = and i32 %conv5, %conv6
  %tobool7 = icmp ne i32 %and, 0
  %9 = zext i1 %tobool7 to i64
  %cond = select i1 %tobool7, i32 1, i32 0
  store i32 %cond, i32* %needs_bar, align 4
  %10 = load i32, i32* %needs_bar, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.end24, label %if.then9

if.then9:                                         ; preds = %if.end3
  store i8 2, i8* %mask, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %11 = load i32, i32* %i, align 4
  %conv10 = sext i32 %11 to i64
  %12 = load i64, i64* %len, align 8
  %cmp11 = icmp ult i64 %conv10, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %string, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %15 = load i8, i8* %arrayidx13, align 1
  store i8 %15, i8* %c, align 1
  %16 = load i8, i8* %c, align 1
  %conv14 = sext i8 %16 to i32
  %call15 = call zeroext i8 @get_char_class(i32 %conv14)
  store i8 %call15, i8* %cc, align 1
  %17 = load i8, i8* %cc, align 1
  %conv16 = zext i8 %17 to i32
  %18 = load i8, i8* %mask, align 1
  %conv17 = zext i8 %18 to i32
  %and18 = and i32 %conv16, %conv17
  %tobool19 = icmp ne i32 %and18, 0
  %19 = zext i1 %tobool19 to i64
  %cond20 = select i1 %tobool19, i32 1, i32 0
  store i32 %cond20, i32* %needs_bar, align 4
  %20 = load i32, i32* %needs_bar, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  br label %for.end

if.end23:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then22, %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.end3
  %22 = load i32, i32* %needs_bar, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %23 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call27 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  store i32 0, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc47, %if.end28
  %24 = load i32, i32* %i, align 4
  %conv30 = sext i32 %24 to i64
  %25 = load i64, i64* %len, align 8
  %cmp31 = icmp ult i64 %conv30, %25
  br i1 %cmp31, label %for.body33, label %for.end49

for.body33:                                       ; preds = %for.cond29
  %26 = load i8*, i8** %string, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 %idxprom34
  %28 = load i8, i8* %arrayidx35, align 1
  store i8 %28, i8* %c, align 1
  %29 = load i8, i8* %c, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv36, 92
  br i1 %cmp37, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body33
  %30 = load i8, i8* %c, align 1
  %conv39 = sext i8 %30 to i32
  %cmp40 = icmp eq i32 %conv39, 124
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %lor.lhs.false, %for.body33
  %31 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call43 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %lor.lhs.false
  %32 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %33 = load i8, i8* %c, align 1
  %conv45 = sext i8 %33 to i32
  %call46 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i32 %conv45)
  br label %for.inc47

for.inc47:                                        ; preds = %if.end44
  %34 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %34, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond29

for.end49:                                        ; preds = %for.cond29
  %35 = load i32, i32* %needs_bar, align 4
  %tobool50 = icmp ne i32 %35, 0
  br i1 %tobool50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %for.end49
  %36 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call52 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %if.end53

if.end53:                                         ; preds = %if.then, %if.then51, %for.end49
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_string_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_string_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsString*
  %value = getelementptr inbounds %struct._EsString, %struct._EsString* %2, i32 0, i32 1
  %3 = load i8*, i8** %value, align 8
  call void @free(i8* %3)
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %5 = bitcast %struct._EsObject* %4 to %struct._EsString*
  %value1 = getelementptr inbounds %struct._EsString, %struct._EsString* %5, i32 0, i32 1
  store i8* null, i8** %value1, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  call void @es_object_free(%struct._EsObject* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call %struct._MIO* @mio_stderr()
  %call3 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  %call4 = call %struct._MIO* @mio_stderr()
  %call5 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0))
  %7 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call6 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %7, %struct._MIO* %call6)
  %call7 = call %struct._MIO* @mio_stderr()
  %call8 = call i32 @mio_putc(%struct._MIO* %call7, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_string_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call = call i32 @es_string_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %call1 = call i8* @es_string_get(%struct._EsObject* %1)
  %2 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call2 = call i8* @es_string_get(%struct._EsObject* %2)
  %call3 = call i32 @strcmp(i8* %call1, i8* %call2)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_string_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %string = alloca i8*, align 8
  %c = alloca i8, align 1
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %cc = alloca i8, align 1
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i8* @es_string_get(%struct._EsObject* %0)
  store i8* %call, i8** %string, align 8
  %1 = load i8*, i8** %string, align 8
  %call1 = call i64 @strlen(i8* %1)
  store i64 %call1, i64* %len, align 8
  %2 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call2 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %conv, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %string, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  store i8 %7, i8* %c, align 1
  %8 = load i8, i8* %c, align 1
  %conv4 = sext i8 %8 to i32
  switch i32 %conv4, label %sw.default [
    i32 10, label %sw.bb
    i32 9, label %sw.bb5
    i32 13, label %sw.bb6
    i32 12, label %sw.bb7
  ]

sw.bb:                                            ; preds = %for.body
  store i8 110, i8* %cc, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.body
  store i8 116, i8* %cc, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  store i8 114, i8* %cc, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  store i8 102, i8* %cc, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store i8 0, i8* %cc, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  %9 = load i8, i8* %cc, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %10 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call8 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %11 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %12 = load i8, i8* %cc, align 1
  %conv9 = sext i8 %12 to i32
  %call10 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i32 %conv9)
  br label %for.inc

if.end:                                           ; preds = %sw.epilog
  %13 = load i8, i8* %c, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 92
  br i1 %cmp12, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i8, i8* %c, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 34
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call18 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false
  %16 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %17 = load i8, i8* %c, align 1
  %conv20 = sext i8 %17 to i32
  %call21 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i32 %conv20)
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.then
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call22 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_cons_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %cons = alloca %struct._EsCons*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i32 @es_cons_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %2 = bitcast %struct._EsObject* %1 to %struct._EsCons*
  store %struct._EsCons* %2, %struct._EsCons** %cons, align 8
  %3 = load %struct._EsCons*, %struct._EsCons** %cons, align 8
  %car = getelementptr inbounds %struct._EsCons, %struct._EsCons* %3, i32 0, i32 1
  %4 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  call void @es_object_unref(%struct._EsObject* %4)
  %5 = load %struct._EsCons*, %struct._EsCons** %cons, align 8
  %car1 = getelementptr inbounds %struct._EsCons, %struct._EsCons* %5, i32 0, i32 1
  store %struct._EsObject* null, %struct._EsObject** %car1, align 8
  %6 = load %struct._EsCons*, %struct._EsCons** %cons, align 8
  %cdr = getelementptr inbounds %struct._EsCons, %struct._EsCons* %6, i32 0, i32 2
  %7 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  call void @es_object_unref(%struct._EsObject* %7)
  %8 = load %struct._EsCons*, %struct._EsCons** %cons, align 8
  %cdr2 = getelementptr inbounds %struct._EsCons, %struct._EsCons* %8, i32 0, i32 2
  store %struct._EsObject* null, %struct._EsObject** %cdr2, align 8
  %9 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  call void @es_object_free(%struct._EsObject* %9)
  br label %if.end14

if.else:                                          ; preds = %entry
  %10 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call i32 @es_null(%struct._EsObject* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  br label %if.end

if.else6:                                         ; preds = %if.else
  %call7 = call %struct._MIO* @mio_stderr()
  %call8 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  %call9 = call %struct._MIO* @mio_stderr()
  %call10 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0))
  %11 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call11 = call %struct._MIO* @mio_stderr()
  call void @es_print(%struct._EsObject* %11, %struct._MIO* %call11)
  %call12 = call %struct._MIO* @mio_stderr()
  %call13 = call i32 @mio_putc(%struct._MIO* %call12, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_cons_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call1 = call i32 @es_cons_p(%struct._EsObject* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false3, label %lor.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %call4 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  %3 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call5 = call %struct._EsObject* @es_car(%struct._EsObject* %3)
  %call6 = call i32 @es_object_equal(%struct._EsObject* %call4, %struct._EsObject* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false3
  %4 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %call8 = call %struct._EsObject* @es_cdr(%struct._EsObject* %4)
  %5 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %call9 = call %struct._EsObject* @es_cdr(%struct._EsObject* %5)
  %call10 = call i32 @es_object_equal(%struct._EsObject* %call8, %struct._EsObject* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %lnot, %lor.rhs ]
  %7 = zext i1 %6 to i64
  %cond = select i1 %6, i32 0, i32 1
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_cons_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %car = alloca %struct._EsObject*, align 8
  %cdr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call1 = call i32 @es_null(%struct._EsObject* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call2 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  store %struct._EsObject* %call2, %struct._EsObject** %car, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call3 = call %struct._EsObject* @es_cdr(%struct._EsObject* %3)
  store %struct._EsObject* %call3, %struct._EsObject** %cdr, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %5 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  call void @es_print(%struct._EsObject* %4, %struct._MIO* %5)
  %6 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call4 = call i32 @es_cons_p(%struct._EsObject* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call6 = call i32 @mio_putc(%struct._MIO* %7, i32 32)
  br label %if.end14

if.else:                                          ; preds = %while.body
  %8 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  %call7 = call i32 @es_null(%struct._EsObject* %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.else
  %call10 = call %struct._MIO* @mio_stderr()
  %call11 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0))
  %call12 = call %struct._MIO* @mio_stderr()
  %call13 = call i32 @mio_putc(%struct._MIO* %call12, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %9 = load %struct._EsObject*, %struct._EsObject** %cdr, align 8
  store %struct._EsObject* %9, %struct._EsObject** %object.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call15 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_error_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @es_error_equal(%struct._EsObject* %self, %struct._EsObject* %other) #0 {
entry:
  %self.addr = alloca %struct._EsObject*, align 8
  %other.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %self, %struct._EsObject** %self.addr, align 8
  store %struct._EsObject* %other, %struct._EsObject** %other.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %self.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %other.addr, align 8
  %cmp = icmp eq %struct._EsObject* %0, %1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_error_print(%struct._EsObject* %object, %struct._MIO* %fp) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %string = alloca i8*, align 8
  %e = alloca %struct._EsError*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %1 = bitcast %struct._EsObject* %0 to %struct._EsError*
  store %struct._EsError* %1, %struct._EsError** %e, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call i8* @es_error_name(%struct._EsObject* %2)
  store i8* %call, i8** %string, align 8
  %3 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %4 = load i8*, i8** %string, align 8
  %call1 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* %4)
  %5 = load %struct._EsError*, %struct._EsError** %e, align 8
  %object2 = getelementptr inbounds %struct._EsError, %struct._EsError* %5, i32 0, i32 1
  %6 = load %struct._EsObject*, %struct._EsObject** %object2, align 8
  %7 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  call void @es_print(%struct._EsObject* %6, %struct._MIO* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_object_free(%struct._EsObject* %object) #0 {
entry:
  %object.addr = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %object, %struct._EsObject** %object.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %1 = bitcast %struct._EsObject* %0 to i8*
  %2 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %call = call %struct._EsObjectClass* @class_of(%struct._EsObject* %2)
  %size = getelementptr inbounds %struct._EsObjectClass, %struct._EsObjectClass* %call, i32 0, i32 0
  %3 = load i64, i64* %size, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 %3, i1 false)
  %4 = load %struct._EsObject*, %struct._EsObject** %object.addr, align 8
  %5 = bitcast %struct._EsObject* %4 to i8*
  call void @free(i8* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i8 @get_char_class(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @symbol_special, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %conv, %cond.false ]
  %conv1 = trunc i32 %cond to i8
  ret i8 %conv1
}

declare i32 @strcmp(i8*, i8*) #1

declare %struct._MIO* @mio_new_fp(%struct.__sFILE*, i32 (%struct.__sFILE*)*) #1

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64, i64) #5

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @hash(i8* %keyarg) #0 {
entry:
  %keyarg.addr = alloca i8*, align 8
  store i8* %keyarg, i8** %keyarg.addr, align 8
  %0 = load i8*, i8** %keyarg.addr, align 8
  %call = call i64 @djb2(i8* %0)
  %conv = trunc i64 %call to i32
  %rem = urem i32 %conv, 83
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @djb2(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 5381, i64* %hash, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %hash, align 8
  %shl = shl i64 %2, 5
  %3 = load i64, i64* %hash, align 8
  %add = add i64 %shl, %3
  %4 = load i32, i32* %c, align 4
  %conv1 = sext i32 %4 to i64
  %add2 = add i64 %add, %conv1
  store i64 %add2, i64* %hash, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %hash, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_cons_reverse_rec(%struct._EsObject* %cdr, %struct._EsObject* %car, %struct._EsObject* %gathered) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %cdr.addr = alloca %struct._EsObject*, align 8
  %car.addr = alloca %struct._EsObject*, align 8
  %gathered.addr = alloca %struct._EsObject*, align 8
  %cons = alloca %struct._EsObject*, align 8
  %o = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %cdr, %struct._EsObject** %cdr.addr, align 8
  store %struct._EsObject* %car, %struct._EsObject** %car.addr, align 8
  store %struct._EsObject* %gathered, %struct._EsObject** %gathered.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %car.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** %gathered.addr, align 8
  store %struct._EsObject* %1, %struct._EsObject** %o, align 8
  %call = call %struct._EsObject* @es_cons(%struct._EsObject* %0, %struct._EsObject* %1)
  store %struct._EsObject* %call, %struct._EsObject** %cons, align 8
  %2 = load %struct._EsObject*, %struct._EsObject** %o, align 8
  call void @es_object_unref(%struct._EsObject* %2)
  %3 = load %struct._EsObject*, %struct._EsObject** %cdr.addr, align 8
  %call1 = call i32 @es_null(%struct._EsObject* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._EsObject*, %struct._EsObject** %cons, align 8
  store %struct._EsObject* %4, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._EsObject*, %struct._EsObject** %cdr.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %5)
  %6 = load %struct._EsObject*, %struct._EsObject** %cdr.addr, align 8
  %call3 = call %struct._EsObject* @es_car(%struct._EsObject* %6)
  %7 = load %struct._EsObject*, %struct._EsObject** %cons, align 8
  %call4 = call %struct._EsObject* @es_cons_reverse_rec(%struct._EsObject* %call2, %struct._EsObject* %call3, %struct._EsObject* %7)
  store %struct._EsObject* %call4, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %8
}

declare i32 @mio_getc(%struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_whitespace(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %conv)
  %tobool = icmp ne i8* %call, null
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_comment_start(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 59
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @skip_to_newline(%struct._MIO* %fp) #0 {
entry:
  %fp.addr = alloca %struct._MIO*, align 8
  %c = alloca i32, align 4
  %c0 = alloca i8, align 1
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end5
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call = call i32 @mio_getc(%struct._MIO* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* %c0, align 1
  %3 = load i8, i8* %c0, align 1
  %conv1 = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv1, 10
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.end

if.end5:                                          ; preds = %if.end
  br label %while.body

while.end:                                        ; preds = %if.then4, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_paren_open(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 40
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_paren_close(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 41
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_string_start(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 34
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._Token* @get_string(%struct._MIO* %fp, i8 signext %seed) #0 {
entry:
  %fp.addr = alloca %struct._MIO*, align 8
  %seed.addr = alloca i8, align 1
  %t = alloca %struct._Token*, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store i8 %seed, i8* %seed.addr, align 1
  %0 = load i8, i8* %seed.addr, align 1
  %call = call %struct._Token* @token_new(i8 signext %0)
  store %struct._Token* %call, %struct._Token** %t, align 8
  %1 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %2 = load %struct._Token*, %struct._Token** %t, align 8
  %call1 = call %struct._Token* @get_sequence(%struct._MIO* %1, %struct._Token* %2, i32 (i32)* @is_string_end, i32 1)
  ret %struct._Token* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_fence_start(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 124
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._Token* @get_escaped_symbol(%struct._MIO* %fp, i8 signext %seed) #0 {
entry:
  %fp.addr = alloca %struct._MIO*, align 8
  %seed.addr = alloca i8, align 1
  %t = alloca %struct._Token*, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store i8 %seed, i8* %seed.addr, align 1
  %0 = load i8, i8* %seed.addr, align 1
  %call = call %struct._Token* @token_new(i8 signext %0)
  store %struct._Token* %call, %struct._Token** %t, align 8
  %1 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %2 = load %struct._Token*, %struct._Token** %t, align 8
  %call1 = call %struct._Token* @get_sequence(%struct._MIO* %1, %struct._Token* %2, i32 (i32)* @is_fence_end, i32 1)
  ret %struct._Token* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._Token* @get_symbol(%struct._MIO* %fp, i8 signext %seed) #0 {
entry:
  %fp.addr = alloca %struct._MIO*, align 8
  %seed.addr = alloca i8, align 1
  %t = alloca %struct._Token*, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store i8 %seed, i8* %seed.addr, align 1
  %0 = load i8, i8* %seed.addr, align 1
  %call = call %struct._Token* @token_new(i8 signext %0)
  store %struct._Token* %call, %struct._Token** %t, align 8
  %1 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %2 = load %struct._Token*, %struct._Token** %t, align 8
  %call1 = call %struct._Token* @get_sequence(%struct._MIO* %1, %struct._Token* %2, i32 (i32)* @is_separator, i32 0)
  ret %struct._Token* %call1
}

declare i8* @strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._Token* @token_new(i8 signext %seed) #0 {
entry:
  %retval = alloca %struct._Token*, align 8
  %seed.addr = alloca i8, align 1
  %t = alloca %struct._Token*, align 8
  store i8 %seed, i8* %seed.addr, align 1
  %call = call i8* @malloc(i64 24) #8
  %0 = bitcast i8* %call to %struct._Token*
  store %struct._Token* %0, %struct._Token** %t, align 8
  %1 = load %struct._Token*, %struct._Token** %t, align 8
  %tobool = icmp ne %struct._Token* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._Token* null, %struct._Token** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @calloc(i64 1, i64 16) #7
  %2 = load %struct._Token*, %struct._Token** %t, align 8
  %buffer = getelementptr inbounds %struct._Token, %struct._Token* %2, i32 0, i32 0
  store i8* %call1, i8** %buffer, align 8
  %3 = load %struct._Token*, %struct._Token** %t, align 8
  %buffer2 = getelementptr inbounds %struct._Token, %struct._Token* %3, i32 0, i32 0
  %4 = load i8*, i8** %buffer2, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = load %struct._Token*, %struct._Token** %t, align 8
  %6 = bitcast %struct._Token* %5 to i8*
  call void @free(i8* %6)
  store %struct._Token* null, %struct._Token** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load %struct._Token*, %struct._Token** %t, align 8
  %filled = getelementptr inbounds %struct._Token, %struct._Token* %7, i32 0, i32 1
  store i64 0, i64* %filled, align 8
  %8 = load i8, i8* %seed.addr, align 1
  %9 = load %struct._Token*, %struct._Token** %t, align 8
  %buffer6 = getelementptr inbounds %struct._Token, %struct._Token* %9, i32 0, i32 0
  %10 = load i8*, i8** %buffer6, align 8
  %11 = load %struct._Token*, %struct._Token** %t, align 8
  %filled7 = getelementptr inbounds %struct._Token, %struct._Token* %11, i32 0, i32 1
  %12 = load i64, i64* %filled7, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %filled7, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 %8, i8* %arrayidx, align 1
  %13 = load %struct._Token*, %struct._Token** %t, align 8
  %buffer8 = getelementptr inbounds %struct._Token, %struct._Token* %13, i32 0, i32 0
  %14 = load i8*, i8** %buffer8, align 8
  %15 = load %struct._Token*, %struct._Token** %t, align 8
  %filled9 = getelementptr inbounds %struct._Token, %struct._Token* %15, i32 0, i32 1
  %16 = load i64, i64* %filled9, align 8
  %inc10 = add i64 %16, 1
  store i64 %inc10, i64* %filled9, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8 0, i8* %arrayidx11, align 1
  %17 = load %struct._Token*, %struct._Token** %t, align 8
  %allocated = getelementptr inbounds %struct._Token, %struct._Token* %17, i32 0, i32 2
  store i64 16, i64* %allocated, align 8
  %18 = load %struct._Token*, %struct._Token** %t, align 8
  store %struct._Token* %18, %struct._Token** %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %19 = load %struct._Token*, %struct._Token** %retval, align 8
  ret %struct._Token* %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._Token* @get_sequence(%struct._MIO* %fp, %struct._Token* %seed, i32 (i32)* %is_terminator, i32 %include_terminator) #0 {
entry:
  %retval = alloca %struct._Token*, align 8
  %fp.addr = alloca %struct._MIO*, align 8
  %seed.addr = alloca %struct._Token*, align 8
  %is_terminator.addr = alloca i32 (i32)*, align 8
  %include_terminator.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %in_escape = alloca i32, align 4
  %c0 = alloca i8, align 1
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  store %struct._Token* %seed, %struct._Token** %seed.addr, align 8
  store i32 (i32)* %is_terminator, i32 (i32)** %is_terminator.addr, align 8
  store i32 %include_terminator, i32* %include_terminator.addr, align 4
  store i32 0, i32* %in_escape, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog, %if.then25, %if.else39
  %0 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call = call i32 @mio_getc(%struct._MIO* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 -1, %1
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %in_escape, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._MIO* @mio_stderr()
  %call3 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i64 0, i64 0))
  %3 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  %call4 = call %struct._Token* @token_append(%struct._Token* %3, i8 signext 92)
  store %struct._Token* %call4, %struct._Token** %seed.addr, align 8
  %call5 = call %struct._MIO* @mio_stderr()
  %4 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  call void @dump_token(%struct._MIO* %call5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), %struct._Token* %4)
  %5 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  call void @token_free(%struct._Token* %5)
  store %struct._Token* null, %struct._Token** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load i32 (i32)*, i32 (i32)** %is_terminator.addr, align 8
  %7 = load i32, i32* %c, align 4
  %call6 = call i32 %6(i32 %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  br label %while.end

if.else9:                                         ; preds = %if.else
  %call10 = call %struct._MIO* @mio_stderr()
  %call11 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0))
  %call12 = call %struct._MIO* @mio_stderr()
  %8 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  call void @dump_token(%struct._MIO* %call12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), %struct._Token* %8)
  %9 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  call void @token_free(%struct._Token* %9)
  store %struct._Token* null, %struct._Token** %retval, align 8
  br label %return

if.else13:                                        ; preds = %while.body
  %10 = load i32, i32* %c, align 4
  %conv = trunc i32 %10 to i8
  store i8 %conv, i8* %c0, align 1
  %11 = load i32, i32* %in_escape, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %if.then15, label %if.else21

if.then15:                                        ; preds = %if.else13
  %12 = load i8, i8* %c0, align 1
  %conv16 = sext i8 %12 to i32
  switch i32 %conv16, label %sw.default [
    i32 110, label %sw.bb
    i32 116, label %sw.bb17
    i32 114, label %sw.bb18
    i32 102, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.then15
  store i8 10, i8* %c0, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then15
  store i8 9, i8* %c0, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then15
  store i8 13, i8* %c0, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then15
  store i8 12, i8* %c0, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then15
  %13 = load i8, i8* %c0, align 1
  store i8 %13, i8* %c0, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb
  %14 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  %15 = load i8, i8* %c0, align 1
  %call20 = call %struct._Token* @token_append(%struct._Token* %14, i8 signext %15)
  store %struct._Token* %call20, %struct._Token** %seed.addr, align 8
  store i32 0, i32* %in_escape, align 4
  br label %while.body

if.else21:                                        ; preds = %if.else13
  %16 = load i8, i8* %c0, align 1
  %conv22 = sext i8 %16 to i32
  %cmp23 = icmp eq i32 %conv22, 92
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else21
  store i32 1, i32* %in_escape, align 4
  br label %while.body

if.else26:                                        ; preds = %if.else21
  %17 = load i32 (i32)*, i32 (i32)** %is_terminator.addr, align 8
  %18 = load i32, i32* %c, align 4
  %call27 = call i32 %17(i32 %18)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.else39

if.then29:                                        ; preds = %if.else26
  %19 = load i32, i32* %include_terminator.addr, align 4
  %tobool30 = icmp ne i32 %19, 0
  br i1 %tobool30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then29
  %20 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  %21 = load i8, i8* %c0, align 1
  %call32 = call %struct._Token* @token_append(%struct._Token* %20, i8 signext %21)
  store %struct._Token* %call32, %struct._Token** %seed.addr, align 8
  br label %if.end38

if.else33:                                        ; preds = %if.then29
  %22 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %23 = load i32, i32* %c, align 4
  %call34 = call i32 @mio_ungetc(%struct._MIO* %22, i32 %23)
  %cmp35 = icmp eq i32 %call34, -1
  br i1 %cmp35, label %if.then37, label %if.end

if.then37:                                        ; preds = %if.else33
  %24 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  call void @token_free(%struct._Token* %24)
  store %struct._Token* null, %struct._Token** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else33
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then31
  br label %while.end

if.else39:                                        ; preds = %if.else26
  %25 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  %26 = load i8, i8* %c0, align 1
  %call40 = call %struct._Token* @token_append(%struct._Token* %25, i8 signext %26)
  store %struct._Token* %call40, %struct._Token** %seed.addr, align 8
  store i32 0, i32* %in_escape, align 4
  br label %while.body

while.end:                                        ; preds = %if.end38, %if.then8
  %27 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  store %struct._Token* %27, %struct._Token** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then37, %if.else9, %if.then1
  %28 = load %struct._Token*, %struct._Token** %retval, align 8
  ret %struct._Token* %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_string_end(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  %conv1 = sext i8 %conv to i32
  %cmp = icmp eq i32 %conv1, 34
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64) #6

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._Token* @token_append(%struct._Token* %t, i8 signext %c) #0 {
entry:
  %retval = alloca %struct._Token*, align 8
  %t.addr = alloca %struct._Token*, align 8
  %c.addr = alloca i8, align 1
  %d = alloca i64, align 8
  %tmp = alloca i8*, align 8
  store %struct._Token* %t, %struct._Token** %t.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %allocated = getelementptr inbounds %struct._Token, %struct._Token* %0, i32 0, i32 2
  %1 = load i64, i64* %allocated, align 8
  %2 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %filled = getelementptr inbounds %struct._Token, %struct._Token* %2, i32 0, i32 1
  %3 = load i64, i64* %filled, align 8
  %sub = sub i64 %1, %3
  store i64 %sub, i64* %d, align 8
  %4 = load i64, i64* %d, align 8
  %cmp = icmp ult i64 %4, 1
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %5 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %buffer = getelementptr inbounds %struct._Token, %struct._Token* %5, i32 0, i32 0
  %6 = load i8*, i8** %buffer, align 8
  store i8* %6, i8** %tmp, align 8
  %7 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %buffer1 = getelementptr inbounds %struct._Token, %struct._Token* %7, i32 0, i32 0
  %8 = load i8*, i8** %buffer1, align 8
  %9 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %allocated2 = getelementptr inbounds %struct._Token, %struct._Token* %9, i32 0, i32 2
  %10 = load i64, i64* %allocated2, align 8
  %mul = mul i64 %10, 2
  store i64 %mul, i64* %allocated2, align 8
  %call = call i8* @realloc(i8* %8, i64 %mul) #9
  %11 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %buffer3 = getelementptr inbounds %struct._Token, %struct._Token* %11, i32 0, i32 0
  store i8* %call, i8** %buffer3, align 8
  %12 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %buffer4 = getelementptr inbounds %struct._Token, %struct._Token* %12, i32 0, i32 0
  %13 = load i8*, i8** %buffer4, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %14 = load i8*, i8** %tmp, align 8
  %15 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %buffer6 = getelementptr inbounds %struct._Token, %struct._Token* %15, i32 0, i32 0
  store i8* %14, i8** %buffer6, align 8
  %16 = load %struct._Token*, %struct._Token** %t.addr, align 8
  call void @token_free(%struct._Token* %16)
  store %struct._Token* null, %struct._Token** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %17 = load i8, i8* %c.addr, align 1
  %18 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %buffer8 = getelementptr inbounds %struct._Token, %struct._Token* %18, i32 0, i32 0
  %19 = load i8*, i8** %buffer8, align 8
  %20 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %filled9 = getelementptr inbounds %struct._Token, %struct._Token* %20, i32 0, i32 1
  %21 = load i64, i64* %filled9, align 8
  %sub10 = sub i64 %21, 1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %sub10
  store i8 %17, i8* %arrayidx, align 1
  %22 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %buffer11 = getelementptr inbounds %struct._Token, %struct._Token* %22, i32 0, i32 0
  %23 = load i8*, i8** %buffer11, align 8
  %24 = load %struct._Token*, %struct._Token** %t.addr, align 8
  %filled12 = getelementptr inbounds %struct._Token, %struct._Token* %24, i32 0, i32 1
  %25 = load i64, i64* %filled12, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %filled12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %arrayidx13, align 1
  %26 = load %struct._Token*, %struct._Token** %t.addr, align 8
  store %struct._Token* %26, %struct._Token** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then5
  %27 = load %struct._Token*, %struct._Token** %retval, align 8
  ret %struct._Token* %27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @dump_token(%struct._MIO* %stream, i8* %prefix, %struct._Token* %seed) #0 {
entry:
  %stream.addr = alloca %struct._MIO*, align 8
  %prefix.addr = alloca i8*, align 8
  %seed.addr = alloca %struct._Token*, align 8
  %buf = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct._MIO* %stream, %struct._MIO** %stream.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store %struct._Token* %seed, %struct._Token** %seed.addr, align 8
  %0 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  %buffer = getelementptr inbounds %struct._Token, %struct._Token* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %buf, align 8
  %2 = load %struct._MIO*, %struct._MIO** %stream.addr, align 8
  %3 = load i8*, i8** %prefix.addr, align 8
  %call = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load %struct._Token*, %struct._Token** %seed.addr, align 8
  %filled = getelementptr inbounds %struct._Token, %struct._Token* %5, i32 0, i32 1
  %6 = load i64, i64* %filled, align 8
  %sub = sub i64 %6, 1
  %cmp = icmp ult i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %buf, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  store i8 %9, i8* %c, align 1
  %10 = load %struct._MIO*, %struct._MIO** %stream.addr, align 8
  %11 = load i8, i8* %c, align 1
  %conv2 = sext i8 %11 to i32
  %call3 = call i32 @mio_putc(%struct._MIO* %10, i32 %conv2)
  %12 = load i8*, i8** %buf, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  %14 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %14 to i32
  %cmp7 = icmp eq i32 %conv6, 10
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct._MIO*, %struct._MIO** %stream.addr, align 8
  %16 = load i8*, i8** %prefix.addr, align 8
  %call9 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call %struct._MIO* @mio_stderr()
  %call11 = call i32 @mio_putc(%struct._MIO* %call10, i32 10)
  ret void
}

declare i32 @mio_ungetc(%struct._MIO*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_fence_end(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  %conv1 = sext i8 %conv to i32
  %cmp = icmp eq i32 %conv1, 124
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_separator(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %c0 = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, i8* %c0, align 1
  %2 = load i8, i8* %c0, align 1
  %call = call i32 @is_whitespace(i8 signext %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i8, i8* %c0, align 1
  %call1 = call i32 @is_comment_start(i8 signext %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then15, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i8, i8* %c0, align 1
  %call4 = call i32 @is_paren_open(i8 signext %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then15, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %5 = load i8, i8* %c0, align 1
  %call7 = call i32 @is_paren_close(i8 signext %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %6 = load i8, i8* %c0, align 1
  %call10 = call i32 @is_string_start(i8 signext %6)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %7 = load i8, i8* %c0, align 1
  %call13 = call i32 @is_fence_start(i8 signext %7)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false12
  br label %if.end16

if.end16:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @make_string(i8* %t) #0 {
entry:
  %t.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %t, i8** %t.addr, align 8
  %0 = load i8*, i8** %t.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %len, align 8
  %1 = load i8*, i8** %t.addr, align 8
  %2 = load i64, i64* %len, align 8
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %3 = load i8*, i8** %t.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %call1 = call %struct._EsObject* @es_string_new(i8* %add.ptr)
  ret %struct._EsObject* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @make_symbol(i8* %t, i32 %is_wrapped) #0 {
entry:
  %t.addr = alloca i8*, align 8
  %is_wrapped.addr = alloca i32, align 4
  %len = alloca i64, align 8
  store i8* %t, i8** %t.addr, align 8
  store i32 %is_wrapped, i32* %is_wrapped.addr, align 4
  %0 = load i32, i32* %is_wrapped.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %t.addr, align 8
  %call = call i64 @strlen(i8* %1)
  store i64 %call, i64* %len, align 8
  %2 = load i8*, i8** %t.addr, align 8
  %3 = load i64, i64* %len, align 8
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %4 = load i8*, i8** %t.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %add.ptr, i8** %t.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %t.addr, align 8
  %call1 = call %struct._EsObject* @es_symbol_intern(i8* %5)
  ret %struct._EsObject* %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @make_boolean(i32 %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %call = call %struct._EsObject* @es_boolean_new(i32 %0)
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_integer(i8* %cstr, i32* %i) #0 {
entry:
  %retval = alloca i32, align 4
  %cstr.addr = alloca i8*, align 8
  %i.addr = alloca i32*, align 8
  %endptr = alloca i8*, align 8
  %r = alloca i64, align 8
  store i8* %cstr, i8** %cstr.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  store i8* null, i8** %endptr, align 8
  %call = call i32* @__error()
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %cstr.addr, align 8
  %call1 = call i64 @strtol(i8* %0, i8** %endptr, i32 10)
  store i64 %call1, i64* %r, align 8
  %call2 = call i32* @__error()
  %1 = load i32, i32* %call2, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %endptr, align 8
  %3 = load i8*, i8** %cstr.addr, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %endptr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  %6 = load i64, i64* %r, align 8
  %cmp7 = icmp sgt i64 %6, 2147483647
  br i1 %cmp7, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end6
  %7 = load i64, i64* %r, align 8
  %cmp10 = icmp slt i64 %7, -2147483648
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false9, %if.end6
  %call13 = call %struct._MIO* @mio_stderr()
  %8 = load i8*, i8** %cstr.addr, align 8
  %call14 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i64 0, i64 0), i8* %8)
  store i32 0, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false9
  %9 = load i64, i64* %r, align 8
  %conv16 = trunc i64 %9 to i32
  %10 = load i32*, i32** %i.addr, align 8
  store i32 %conv16, i32* %10, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then12, %if.then5, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @make_integer(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %call = call %struct._EsObject* @es_integer_new(i32 %0)
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @is_real(i8* %cstr, double* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %cstr.addr = alloca i8*, align 8
  %d.addr = alloca double*, align 8
  %endptr = alloca i8*, align 8
  store i8* %cstr, i8** %cstr.addr, align 8
  store double* %d, double** %d.addr, align 8
  store i8* null, i8** %endptr, align 8
  %call = call i32* @__error()
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %cstr.addr, align 8
  %call1 = call double @"\01_strtod"(i8* %0, i8** %endptr)
  %1 = load double*, double** %d.addr, align 8
  store double %call1, double* %1, align 8
  %call2 = call i32* @__error()
  %2 = load i32, i32* %call2, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %endptr, align 8
  %4 = load i8*, i8** %cstr.addr, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i8*, i8** %endptr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @make_real(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8
  %0 = load double, double* %d.addr, align 8
  %call = call %struct._EsObject* @es_real_new(double %0)
  ret %struct._EsObject* %call
}

declare i32* @__error() #1

declare i64 @strtol(i8*, i8**, i32) #1

declare double @"\01_strtod"(i8*, i8**) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @es_chain_free(%struct._EsChain* %chain) #0 {
entry:
  %chain.addr = alloca %struct._EsChain*, align 8
  %tmp = alloca %struct._EsChain*, align 8
  store %struct._EsChain* %chain, %struct._EsChain** %chain.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._EsChain*, %struct._EsChain** %chain.addr, align 8
  %tobool = icmp ne %struct._EsChain* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._EsChain*, %struct._EsChain** %chain.addr, align 8
  store %struct._EsChain* %1, %struct._EsChain** %tmp, align 8
  %2 = load %struct._EsChain*, %struct._EsChain** %chain.addr, align 8
  %next = getelementptr inbounds %struct._EsChain, %struct._EsChain* %2, i32 0, i32 1
  %3 = load %struct._EsChain*, %struct._EsChain** %next, align 8
  store %struct._EsChain* %3, %struct._EsChain** %chain.addr, align 8
  %4 = load %struct._EsChain*, %struct._EsChain** %tmp, align 8
  %object = getelementptr inbounds %struct._EsChain, %struct._EsChain* %4, i32 0, i32 0
  %5 = load %struct._EsObject*, %struct._EsObject** %object, align 8
  call void @es_object_unref(%struct._EsObject* %5)
  %6 = load %struct._EsChain*, %struct._EsChain** %tmp, align 8
  %object1 = getelementptr inbounds %struct._EsChain, %struct._EsChain* %6, i32 0, i32 0
  store %struct._EsObject* null, %struct._EsObject** %object1, align 8
  %7 = load %struct._EsChain*, %struct._EsChain** %tmp, align 8
  %next2 = getelementptr inbounds %struct._EsChain, %struct._EsChain* %7, i32 0, i32 1
  store %struct._EsChain* null, %struct._EsChain** %next2, align 8
  %8 = load %struct._EsChain*, %struct._EsChain** %tmp, align 8
  %9 = bitcast %struct._EsChain* %8 to i8*
  call void @free(i8* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_append1(%struct._EsObject* %tail, %struct._EsObject* %body0) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %tail.addr = alloca %struct._EsObject*, align 8
  %body0.addr = alloca %struct._EsObject*, align 8
  %car = alloca %struct._EsObject*, align 8
  %r = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %tail, %struct._EsObject** %tail.addr, align 8
  store %struct._EsObject* %body0, %struct._EsObject** %body0.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %body0.addr, align 8
  %call = call i32 @es_null(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %tail.addr, align 8
  %call1 = call %struct._EsObject* @es_object_ref(%struct._EsObject* %1)
  store %struct._EsObject* %call1, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %body0.addr, align 8
  %call2 = call %struct._EsObject* @es_car(%struct._EsObject* %2)
  store %struct._EsObject* %call2, %struct._EsObject** %car, align 8
  %3 = load %struct._EsObject*, %struct._EsObject** %car, align 8
  %4 = load %struct._EsObject*, %struct._EsObject** %tail.addr, align 8
  %call3 = call %struct._EsObject* @es_cons(%struct._EsObject* %3, %struct._EsObject* %4)
  store %struct._EsObject* %call3, %struct._EsObject** %tail.addr, align 8
  %5 = load %struct._EsObject*, %struct._EsObject** %tail.addr, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** %body0.addr, align 8
  %call4 = call %struct._EsObject* @es_cdr(%struct._EsObject* %6)
  %call5 = call %struct._EsObject* @es_append1(%struct._EsObject* %5, %struct._EsObject* %call4)
  store %struct._EsObject* %call5, %struct._EsObject** %r, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** %tail.addr, align 8
  call void @es_object_unref(%struct._EsObject* %7)
  %8 = load %struct._EsObject*, %struct._EsObject** %r, align 8
  store %struct._EsObject* %8, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pattern_init() #0 {
entry:
  %0 = load %struct._EsObject*, %struct._EsObject** @pattern_d, align 8
  %tobool = icmp ne %struct._EsObject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  store %struct._EsObject* %call, %struct._EsObject** @pattern_d, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._EsObject*, %struct._EsObject** @pattern_f, align 8
  %tobool1 = icmp ne %struct._EsObject* %1, null
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  store %struct._EsObject* %call3, %struct._EsObject** @pattern_f, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load %struct._EsObject*, %struct._EsObject** @pattern_F, align 8
  %tobool5 = icmp ne %struct._EsObject* %2, null
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0))
  store %struct._EsObject* %call7, %struct._EsObject** @pattern_F, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %3 = load %struct._EsObject*, %struct._EsObject** @pattern_s, align 8
  %tobool9 = icmp ne %struct._EsObject* %3, null
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  store %struct._EsObject* %call11, %struct._EsObject** @pattern_s, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %4 = load %struct._EsObject*, %struct._EsObject** @pattern_S, align 8
  %tobool13 = icmp ne %struct._EsObject* %4, null
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0))
  store %struct._EsObject* %call15, %struct._EsObject** @pattern_S, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %5 = load %struct._EsObject*, %struct._EsObject** @pattern_b, align 8
  %tobool17 = icmp ne %struct._EsObject* %5, null
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0))
  store %struct._EsObject* %call19, %struct._EsObject** @pattern_b, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %6 = load %struct._EsObject*, %struct._EsObject** @pattern_rest, align 8
  %tobool21 = icmp ne %struct._EsObject* %6, null
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call23 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0))
  store %struct._EsObject* %call23, %struct._EsObject** @pattern_rest, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %7 = load %struct._EsObject*, %struct._EsObject** @pattern_unquote, align 8
  %tobool25 = icmp ne %struct._EsObject* %7, null
  br i1 %tobool25, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end24
  %call27 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0))
  store %struct._EsObject* %call27, %struct._EsObject** @pattern_unquote, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  %8 = load %struct._EsObject*, %struct._EsObject** @pattern_splice, align 8
  %tobool29 = icmp ne %struct._EsObject* %8, null
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end28
  %call31 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0))
  store %struct._EsObject* %call31, %struct._EsObject** @pattern_splice, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  %9 = load %struct._EsObject*, %struct._EsObject** @pattern_i_d, align 8
  %tobool33 = icmp ne %struct._EsObject* %9, null
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end32
  %call35 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0))
  store %struct._EsObject* %call35, %struct._EsObject** @pattern_i_d, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32
  %10 = load %struct._EsObject*, %struct._EsObject** @pattern_i_f, align 8
  %tobool37 = icmp ne %struct._EsObject* %10, null
  br i1 %tobool37, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end36
  %call39 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0))
  store %struct._EsObject* %call39, %struct._EsObject** @pattern_i_f, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %11 = load %struct._EsObject*, %struct._EsObject** @pattern_i_F, align 8
  %tobool41 = icmp ne %struct._EsObject* %11, null
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end40
  %call43 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0))
  store %struct._EsObject* %call43, %struct._EsObject** @pattern_i_F, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %12 = load %struct._EsObject*, %struct._EsObject** @pattern_i_s, align 8
  %tobool45 = icmp ne %struct._EsObject* %12, null
  br i1 %tobool45, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end44
  %call47 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0))
  store %struct._EsObject* %call47, %struct._EsObject** @pattern_i_s, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  %13 = load %struct._EsObject*, %struct._EsObject** @pattern_i_S, align 8
  %tobool49 = icmp ne %struct._EsObject* %13, null
  br i1 %tobool49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end48
  %call51 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0))
  store %struct._EsObject* %call51, %struct._EsObject** @pattern_i_S, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48
  %14 = load %struct._EsObject*, %struct._EsObject** @pattern_i_b, align 8
  %tobool53 = icmp ne %struct._EsObject* %14, null
  br i1 %tobool53, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end52
  %call55 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0))
  store %struct._EsObject* %call55, %struct._EsObject** @pattern_i_b, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  %15 = load %struct._EsObject*, %struct._EsObject** @pattern_i_rest, align 8
  %tobool57 = icmp ne %struct._EsObject* %15, null
  br i1 %tobool57, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.end56
  %call59 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0))
  store %struct._EsObject* %call59, %struct._EsObject** @pattern_i_rest, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  %16 = load %struct._EsObject*, %struct._EsObject** @pattern_i_unquote, align 8
  %tobool61 = icmp ne %struct._EsObject* %16, null
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end60
  %call63 = call %struct._EsObject* @es_symbol_intern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0))
  store %struct._EsObject* %call63, %struct._EsObject** @pattern_i_unquote, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_vrealize_atom(%struct._EsObject* %fmt_object, i8** %ap) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %ap.addr = alloca i8**, align 8
  %varet = alloca i32, align 4
  %x = alloca double, align 8
  %varet3 = alloca double, align 8
  %varet10 = alloca i8*, align 8
  %varet15 = alloca i8*, align 8
  %varet20 = alloca i32, align 4
  %varet26 = alloca %struct._EsObject*, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  store i8** %ap, i8*** %ap.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** @pattern_d, align 8
  %cmp = icmp eq %struct._EsObject* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %ap.addr, align 8
  %3 = va_arg i8** %2, i32
  store i32 %3, i32* %varet, align 4
  %4 = load i32, i32* %varet, align 4
  %call = call %struct._EsObject* @es_integer_new(i32 %4)
  store %struct._EsObject* %call, %struct._EsObject** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** @pattern_f, align 8
  %cmp1 = icmp eq %struct._EsObject* %5, %6
  br i1 %cmp1, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.else
  %7 = load i8**, i8*** %ap.addr, align 8
  %8 = va_arg i8** %7, double
  store double %8, double* %varet3, align 8
  %9 = load double, double* %varet3, align 8
  store double %9, double* %x, align 8
  %call4 = call %struct._MIO* @mio_stderr()
  %10 = load double, double* %x, align 8
  %call5 = call i32 (%struct._MIO*, i8*, ...) @mio_printf(%struct._MIO* %call4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), double %10)
  %11 = load double, double* %x, align 8
  %call6 = call %struct._EsObject* @es_real_new(double %11)
  store %struct._EsObject* %call6, %struct._EsObject** %retval, align 8
  br label %return

if.else7:                                         ; preds = %if.else
  %12 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %13 = load %struct._EsObject*, %struct._EsObject** @pattern_s, align 8
  %cmp8 = icmp eq %struct._EsObject* %12, %13
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else7
  %14 = load i8**, i8*** %ap.addr, align 8
  %15 = va_arg i8** %14, i8*
  store i8* %15, i8** %varet10, align 8
  %16 = load i8*, i8** %varet10, align 8
  %call11 = call %struct._EsObject* @es_string_new(i8* %16)
  store %struct._EsObject* %call11, %struct._EsObject** %retval, align 8
  br label %return

if.else12:                                        ; preds = %if.else7
  %17 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %18 = load %struct._EsObject*, %struct._EsObject** @pattern_S, align 8
  %cmp13 = icmp eq %struct._EsObject* %17, %18
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else12
  %19 = load i8**, i8*** %ap.addr, align 8
  %20 = va_arg i8** %19, i8*
  store i8* %20, i8** %varet15, align 8
  %21 = load i8*, i8** %varet15, align 8
  %call16 = call %struct._EsObject* @es_symbol_intern(i8* %21)
  store %struct._EsObject* %call16, %struct._EsObject** %retval, align 8
  br label %return

if.else17:                                        ; preds = %if.else12
  %22 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %23 = load %struct._EsObject*, %struct._EsObject** @pattern_b, align 8
  %cmp18 = icmp eq %struct._EsObject* %22, %23
  br i1 %cmp18, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else17
  %24 = load i8**, i8*** %ap.addr, align 8
  %25 = va_arg i8** %24, i32
  store i32 %25, i32* %varet20, align 4
  %26 = load i32, i32* %varet20, align 4
  %call21 = call %struct._EsObject* @es_boolean_new(i32 %26)
  store %struct._EsObject* %call21, %struct._EsObject** %retval, align 8
  br label %return

if.else22:                                        ; preds = %if.else17
  %27 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %28 = load %struct._EsObject*, %struct._EsObject** @pattern_unquote, align 8
  %cmp23 = icmp eq %struct._EsObject* %27, %28
  br i1 %cmp23, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else22
  %29 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %30 = load %struct._EsObject*, %struct._EsObject** @pattern_splice, align 8
  %cmp24 = icmp eq %struct._EsObject* %29, %30
  br i1 %cmp24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %lor.lhs.false, %if.else22
  %31 = load i8**, i8*** %ap.addr, align 8
  %32 = va_arg i8** %31, %struct._EsObject*
  store %struct._EsObject* %32, %struct._EsObject** %varet26, align 8
  %33 = load %struct._EsObject*, %struct._EsObject** %varet26, align 8
  %call27 = call %struct._EsObject* @es_object_ref(%struct._EsObject* %33)
  store %struct._EsObject* %call27, %struct._EsObject** %retval, align 8
  br label %return

if.else28:                                        ; preds = %lor.lhs.false
  %34 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call29 = call %struct._EsObject* @es_object_ref(%struct._EsObject* %34)
  store %struct._EsObject* %call29, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.else28, %if.then25, %if.then19, %if.then14, %if.then9, %if.then2, %if.then
  %35 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %35
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @recover(%struct._EsObject* %fmt_object, i8** %aq) #0 {
entry:
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %aq.addr = alloca i8**, align 8
  %s = alloca i8**, align 8
  %varet = alloca i8**, align 8
  %o = alloca %struct._EsObject**, align 8
  %varet10 = alloca %struct._EsObject**, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  store i8** %aq, i8*** %aq.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call = call i32 @es_cons_p(%struct._EsObject* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call1 = call %struct._EsObject* @es_car(%struct._EsObject* %1)
  %2 = load i8**, i8*** %aq.addr, align 8
  call void @recover(%struct._EsObject* %call1, i8** %2)
  %3 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %call2 = call %struct._EsObject* @es_cdr(%struct._EsObject* %3)
  %4 = load i8**, i8*** %aq.addr, align 8
  call void @recover(%struct._EsObject* %call2, i8** %4)
  br label %if.end12

if.else:                                          ; preds = %entry
  %5 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %6 = load %struct._EsObject*, %struct._EsObject** @pattern_s, align 8
  %cmp = icmp eq %struct._EsObject* %5, %6
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** @pattern_S, align 8
  %cmp3 = icmp eq %struct._EsObject* %7, %8
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %9 = load i8**, i8*** %aq.addr, align 8
  %10 = va_arg i8** %9, i8**
  store i8** %10, i8*** %varet, align 8
  %11 = load i8**, i8*** %varet, align 8
  store i8** %11, i8*** %s, align 8
  %12 = load i8**, i8*** %s, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %s, align 8
  store i8* null, i8** %14, align 8
  br label %if.end11

if.else5:                                         ; preds = %lor.lhs.false
  %15 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %16 = load %struct._EsObject*, %struct._EsObject** @pattern_rest, align 8
  %cmp6 = icmp eq %struct._EsObject* %15, %16
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.else5
  %17 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %18 = load %struct._EsObject*, %struct._EsObject** @pattern_unquote, align 8
  %cmp8 = icmp eq %struct._EsObject* %17, %18
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false7, %if.else5
  %19 = load i8**, i8*** %aq.addr, align 8
  %20 = va_arg i8** %19, %struct._EsObject**
  store %struct._EsObject** %20, %struct._EsObject*** %varet10, align 8
  %21 = load %struct._EsObject**, %struct._EsObject*** %varet10, align 8
  store %struct._EsObject** %21, %struct._EsObject*** %o, align 8
  %22 = load %struct._EsObject**, %struct._EsObject*** %o, align 8
  %23 = load %struct._EsObject*, %struct._EsObject** %22, align 8
  %24 = load %struct._EsObject**, %struct._EsObject*** %o, align 8
  store %struct._EsObject* null, %struct._EsObject** %24, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %lor.lhs.false7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_vmatch_atom_input(%struct._EsObject* %input, %struct._EsObject* %fmt_object, i8** %ap) #0 {
entry:
  %input.addr = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %ap.addr = alloca i8**, align 8
  store %struct._EsObject* %input, %struct._EsObject** %input.addr, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  store i8** %ap, i8*** %ap.addr, align 8
  %call = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  ret %struct._EsObject* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_vmatch_atom_fmt(%struct._EsObject* %input, %struct._EsObject* %fmt_object, i8** %ap) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %input.addr = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %ap.addr = alloca i8**, align 8
  %varet = alloca %struct._EsObject**, align 8
  store %struct._EsObject* %input, %struct._EsObject** %input.addr, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  store i8** %ap, i8*** %ap.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** @pattern_unquote, align 8
  %cmp = icmp eq %struct._EsObject* %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %3 = load i8**, i8*** %ap.addr, align 8
  %4 = va_arg i8** %3, %struct._EsObject**
  store %struct._EsObject** %4, %struct._EsObject*** %varet, align 8
  %5 = load %struct._EsObject**, %struct._EsObject*** %varet, align 8
  store %struct._EsObject* %2, %struct._EsObject** %5, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %6 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %7 = load %struct._EsObject*, %struct._EsObject** @pattern_i_unquote, align 8
  %cmp1 = icmp eq %struct._EsObject* %6, %7
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br label %if.end

if.else3:                                         ; preds = %if.else
  %call = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %8 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  store %struct._EsObject* %8, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.else3
  %9 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct._EsObject* @es_vmatch_atom(%struct._EsObject* %input, %struct._EsObject* %fmt_object, i8** %ap) #0 {
entry:
  %retval = alloca %struct._EsObject*, align 8
  %input.addr = alloca %struct._EsObject*, align 8
  %fmt_object.addr = alloca %struct._EsObject*, align 8
  %ap.addr = alloca i8**, align 8
  %varet = alloca i32*, align 8
  %varet20 = alloca double*, align 8
  %i = alloca i32, align 4
  %varet40 = alloca double*, align 8
  %varet46 = alloca double*, align 8
  %varet71 = alloca i8**, align 8
  %varet93 = alloca i8**, align 8
  %varet115 = alloca i32*, align 8
  %varet133 = alloca %struct._EsObject**, align 8
  store %struct._EsObject* %input, %struct._EsObject** %input.addr, align 8
  store %struct._EsObject* %fmt_object, %struct._EsObject** %fmt_object.addr, align 8
  store i8** %ap, i8*** %ap.addr, align 8
  %0 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %1 = load %struct._EsObject*, %struct._EsObject** @pattern_d, align 8
  %cmp = icmp eq %struct._EsObject* %0, %1
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %2 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call = call i32 @es_integer_p(%struct._EsObject* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call2 = call i32 @es_integer_get(%struct._EsObject* %3)
  %4 = load i8**, i8*** %ap.addr, align 8
  %5 = va_arg i8** %4, i32*
  store i32* %5, i32** %varet, align 8
  %6 = load i32*, i32** %varet, align 8
  store i32 %call2, i32* %6, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %call3 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call3, %struct._EsObject** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then1
  br label %if.end158

if.else4:                                         ; preds = %entry
  %7 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %8 = load %struct._EsObject*, %struct._EsObject** @pattern_i_d, align 8
  %cmp5 = icmp eq %struct._EsObject* %7, %8
  br i1 %cmp5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.else4
  %9 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call7 = call i32 @es_integer_p(%struct._EsObject* %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.then6
  br label %if.end12

if.else10:                                        ; preds = %if.then6
  %call11 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call11, %struct._EsObject** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.then9
  br label %if.end157

if.else13:                                        ; preds = %if.else4
  %10 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %11 = load %struct._EsObject*, %struct._EsObject** @pattern_f, align 8
  %cmp14 = icmp eq %struct._EsObject* %10, %11
  br i1 %cmp14, label %if.then15, label %if.else24

if.then15:                                        ; preds = %if.else13
  %12 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call16 = call i32 @es_real_p(%struct._EsObject* %12)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.then15
  %13 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call19 = call double @es_real_get(%struct._EsObject* %13)
  %14 = load i8**, i8*** %ap.addr, align 8
  %15 = va_arg i8** %14, double*
  store double* %15, double** %varet20, align 8
  %16 = load double*, double** %varet20, align 8
  store double %call19, double* %16, align 8
  br label %if.end23

if.else21:                                        ; preds = %if.then15
  %call22 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call22, %struct._EsObject** %retval, align 8
  br label %return

if.end23:                                         ; preds = %if.then18
  br label %if.end156

if.else24:                                        ; preds = %if.else13
  %17 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %18 = load %struct._EsObject*, %struct._EsObject** @pattern_i_f, align 8
  %cmp25 = icmp eq %struct._EsObject* %17, %18
  br i1 %cmp25, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.else24
  %19 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call27 = call i32 @es_real_p(%struct._EsObject* %19)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then26
  br label %if.end32

if.else30:                                        ; preds = %if.then26
  %call31 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call31, %struct._EsObject** %retval, align 8
  br label %return

if.end32:                                         ; preds = %if.then29
  br label %if.end155

if.else33:                                        ; preds = %if.else24
  %20 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %21 = load %struct._EsObject*, %struct._EsObject** @pattern_F, align 8
  %cmp34 = icmp eq %struct._EsObject* %20, %21
  br i1 %cmp34, label %if.then35, label %if.else51

if.then35:                                        ; preds = %if.else33
  %22 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call36 = call i32 @es_integer_p(%struct._EsObject* %22)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then38, label %if.else41

if.then38:                                        ; preds = %if.then35
  %23 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call39 = call i32 @es_integer_get(%struct._EsObject* %23)
  store i32 %call39, i32* %i, align 4
  %24 = load i32, i32* %i, align 4
  %conv = sitofp i32 %24 to double
  %25 = load i8**, i8*** %ap.addr, align 8
  %26 = va_arg i8** %25, double*
  store double* %26, double** %varet40, align 8
  %27 = load double*, double** %varet40, align 8
  store double %conv, double* %27, align 8
  br label %if.end50

if.else41:                                        ; preds = %if.then35
  %28 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call42 = call i32 @es_real_p(%struct._EsObject* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.else47

if.then44:                                        ; preds = %if.else41
  %29 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call45 = call double @es_real_get(%struct._EsObject* %29)
  %30 = load i8**, i8*** %ap.addr, align 8
  %31 = va_arg i8** %30, double*
  store double* %31, double** %varet46, align 8
  %32 = load double*, double** %varet46, align 8
  store double %call45, double* %32, align 8
  br label %if.end49

if.else47:                                        ; preds = %if.else41
  %call48 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call48, %struct._EsObject** %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.then44
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then38
  br label %if.end154

if.else51:                                        ; preds = %if.else33
  %33 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %34 = load %struct._EsObject*, %struct._EsObject** @pattern_i_F, align 8
  %cmp52 = icmp eq %struct._EsObject* %33, %34
  br i1 %cmp52, label %if.then54, label %if.else63

if.then54:                                        ; preds = %if.else51
  %35 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call55 = call i32 @es_integer_p(%struct._EsObject* %35)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then54
  %36 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call57 = call i32 @es_real_p(%struct._EsObject* %36)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %lor.lhs.false, %if.then54
  br label %if.end62

if.else60:                                        ; preds = %lor.lhs.false
  %call61 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call61, %struct._EsObject** %retval, align 8
  br label %return

if.end62:                                         ; preds = %if.then59
  br label %if.end153

if.else63:                                        ; preds = %if.else51
  %37 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %38 = load %struct._EsObject*, %struct._EsObject** @pattern_s, align 8
  %cmp64 = icmp eq %struct._EsObject* %37, %38
  br i1 %cmp64, label %if.then66, label %if.else75

if.then66:                                        ; preds = %if.else63
  %39 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call67 = call i32 @es_string_p(%struct._EsObject* %39)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.else72

if.then69:                                        ; preds = %if.then66
  %40 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call70 = call i8* @es_string_get(%struct._EsObject* %40)
  %41 = load i8**, i8*** %ap.addr, align 8
  %42 = va_arg i8** %41, i8**
  store i8** %42, i8*** %varet71, align 8
  %43 = load i8**, i8*** %varet71, align 8
  store i8* %call70, i8** %43, align 8
  br label %if.end74

if.else72:                                        ; preds = %if.then66
  %call73 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call73, %struct._EsObject** %retval, align 8
  br label %return

if.end74:                                         ; preds = %if.then69
  br label %if.end152

if.else75:                                        ; preds = %if.else63
  %44 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %45 = load %struct._EsObject*, %struct._EsObject** @pattern_i_s, align 8
  %cmp76 = icmp eq %struct._EsObject* %44, %45
  br i1 %cmp76, label %if.then78, label %if.else85

if.then78:                                        ; preds = %if.else75
  %46 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call79 = call i32 @es_string_p(%struct._EsObject* %46)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.then78
  br label %if.end84

if.else82:                                        ; preds = %if.then78
  %call83 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call83, %struct._EsObject** %retval, align 8
  br label %return

if.end84:                                         ; preds = %if.then81
  br label %if.end151

if.else85:                                        ; preds = %if.else75
  %47 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %48 = load %struct._EsObject*, %struct._EsObject** @pattern_S, align 8
  %cmp86 = icmp eq %struct._EsObject* %47, %48
  br i1 %cmp86, label %if.then88, label %if.else97

if.then88:                                        ; preds = %if.else85
  %49 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call89 = call i32 @es_symbol_p(%struct._EsObject* %49)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then91, label %if.else94

if.then91:                                        ; preds = %if.then88
  %50 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call92 = call i8* @es_symbol_get(%struct._EsObject* %50)
  %51 = load i8**, i8*** %ap.addr, align 8
  %52 = va_arg i8** %51, i8**
  store i8** %52, i8*** %varet93, align 8
  %53 = load i8**, i8*** %varet93, align 8
  store i8* %call92, i8** %53, align 8
  br label %if.end96

if.else94:                                        ; preds = %if.then88
  %call95 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call95, %struct._EsObject** %retval, align 8
  br label %return

if.end96:                                         ; preds = %if.then91
  br label %if.end150

if.else97:                                        ; preds = %if.else85
  %54 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %55 = load %struct._EsObject*, %struct._EsObject** @pattern_i_S, align 8
  %cmp98 = icmp eq %struct._EsObject* %54, %55
  br i1 %cmp98, label %if.then100, label %if.else107

if.then100:                                       ; preds = %if.else97
  %56 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call101 = call i32 @es_symbol_p(%struct._EsObject* %56)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.else104

if.then103:                                       ; preds = %if.then100
  br label %if.end106

if.else104:                                       ; preds = %if.then100
  %call105 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call105, %struct._EsObject** %retval, align 8
  br label %return

if.end106:                                        ; preds = %if.then103
  br label %if.end149

if.else107:                                       ; preds = %if.else97
  %57 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %58 = load %struct._EsObject*, %struct._EsObject** @pattern_b, align 8
  %cmp108 = icmp eq %struct._EsObject* %57, %58
  br i1 %cmp108, label %if.then110, label %if.else119

if.then110:                                       ; preds = %if.else107
  %59 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call111 = call i32 @es_boolean_p(%struct._EsObject* %59)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then113, label %if.else116

if.then113:                                       ; preds = %if.then110
  %60 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call114 = call i32 @es_boolean_get(%struct._EsObject* %60)
  %61 = load i8**, i8*** %ap.addr, align 8
  %62 = va_arg i8** %61, i32*
  store i32* %62, i32** %varet115, align 8
  %63 = load i32*, i32** %varet115, align 8
  store i32 %call114, i32* %63, align 4
  br label %if.end118

if.else116:                                       ; preds = %if.then110
  %call117 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call117, %struct._EsObject** %retval, align 8
  br label %return

if.end118:                                        ; preds = %if.then113
  br label %if.end148

if.else119:                                       ; preds = %if.else107
  %64 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %65 = load %struct._EsObject*, %struct._EsObject** @pattern_i_b, align 8
  %cmp120 = icmp eq %struct._EsObject* %64, %65
  br i1 %cmp120, label %if.then122, label %if.else129

if.then122:                                       ; preds = %if.else119
  %66 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call123 = call i32 @es_boolean_p(%struct._EsObject* %66)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then125, label %if.else126

if.then125:                                       ; preds = %if.then122
  br label %if.end128

if.else126:                                       ; preds = %if.then122
  %call127 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call127, %struct._EsObject** %retval, align 8
  br label %return

if.end128:                                        ; preds = %if.then125
  br label %if.end147

if.else129:                                       ; preds = %if.else119
  %67 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %68 = load %struct._EsObject*, %struct._EsObject** @pattern_unquote, align 8
  %cmp130 = icmp eq %struct._EsObject* %67, %68
  br i1 %cmp130, label %if.then132, label %if.else134

if.then132:                                       ; preds = %if.else129
  %69 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %70 = load i8**, i8*** %ap.addr, align 8
  %71 = va_arg i8** %70, %struct._EsObject**
  store %struct._EsObject** %71, %struct._EsObject*** %varet133, align 8
  %72 = load %struct._EsObject**, %struct._EsObject*** %varet133, align 8
  store %struct._EsObject* %69, %struct._EsObject** %72, align 8
  br label %if.end146

if.else134:                                       ; preds = %if.else129
  %73 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %74 = load %struct._EsObject*, %struct._EsObject** @pattern_i_unquote, align 8
  %cmp135 = icmp eq %struct._EsObject* %73, %74
  br i1 %cmp135, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.else134
  br label %if.end145

if.else138:                                       ; preds = %if.else134
  %75 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  %76 = load %struct._EsObject*, %struct._EsObject** %input.addr, align 8
  %call139 = call i32 @es_object_equal(%struct._EsObject* %75, %struct._EsObject* %76)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then141, label %if.else142

if.then141:                                       ; preds = %if.else138
  br label %if.end144

if.else142:                                       ; preds = %if.else138
  %call143 = call %struct._EsObject* @es_error_intern(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store %struct._EsObject* %call143, %struct._EsObject** %retval, align 8
  br label %return

if.end144:                                        ; preds = %if.then141
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.then137
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.then132
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end128
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end118
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end106
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.end96
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.end84
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end74
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end62
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.end50
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end32
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.end23
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end12
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end
  %77 = load %struct._EsObject*, %struct._EsObject** %fmt_object.addr, align 8
  store %struct._EsObject* %77, %struct._EsObject** %retval, align 8
  br label %return

return:                                           ; preds = %if.end158, %if.else142, %if.else126, %if.else116, %if.else104, %if.else94, %if.else82, %if.else72, %if.else60, %if.else47, %if.else30, %if.else21, %if.else10, %if.else
  %78 = load %struct._EsObject*, %struct._EsObject** %retval, align 8
  ret %struct._EsObject* %78
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { allocsize(1) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { allocsize(0,1) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { allocsize(0,1) }
attributes #8 = { allocsize(0) }
attributes #9 = { allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
