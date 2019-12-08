; ModuleID = 'selectors.c'
source_filename = "selectors.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct._MIO = type opaque

@TR_PERL5 = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), align 8
@selectByObjectiveCKeywords.objc = internal global i32 -2, align 4
@selectByObjectiveCKeywords.cpp = internal global i32 -2, align 4
@TR_OBJC = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), align 8
@TR_CPP = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), align 8
@selectByArrowOfR.R = internal global i32 -2, align 4
@selectByArrowOfR.Asm = internal global i32 -2, align 4
@TR_R = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), align 8
@TR_ASM = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), align 8
@selectByRexxCommentAndDosbatchLabelPrefix.rexx = internal global i32 -2, align 4
@selectByRexxCommentAndDosbatchLabelPrefix.dosbatch = internal global i32 -2, align 4
@TR_DOSBATCH = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), align 8
@TR_REXX = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), align 8
@TR_UNKNOWN = internal global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"=head1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"=head2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@TR_PERL6 = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"grammar\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"my class\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"need\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"require 5\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"use v6\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"use nqp\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"use warnings\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Perl6\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Perl\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"% \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%{\00", align 1
@TR_MATLAB = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"// \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"/* \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"#include\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"#import\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"#define \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"#ifdef \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"@interface \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"@implementation \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"@protocol \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"MatLab\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ObjectiveC\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"Asm\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"DosBatch\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"REXX\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"/*\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @selectByPickingPerlVersion(%struct._MIO* %input, i32* %candidates, i32 %nCandidates) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  %candidates.addr = alloca i32*, align 8
  %nCandidates.addr = alloca i32, align 4
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store i32* %candidates, i32** %candidates.addr, align 8
  store i32 %nCandidates, i32* %nCandidates.addr, align 4
  %0 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %1 = load i8*, i8** @TR_PERL5, align 8
  %call = call i8* @selectByLines(%struct._MIO* %0, i8* (i8*, i8*)* @tastePerlLine, i8* %1, i8* null)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @selectByLines(%struct._MIO* %input, i8* (i8*, i8*)* %lineTaster, i8* %defaultLang, i8* %userData) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca %struct._MIO*, align 8
  %lineTaster.addr = alloca i8* (i8*, i8*)*, align 8
  %defaultLang.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  %line = alloca [2048 x i8], align 1
  %lang = alloca i8*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store i8* (i8*, i8*)* %lineTaster, i8* (i8*, i8*)** %lineTaster.addr, align 8
  store i8* %defaultLang, i8** %defaultLang.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i64 0, i64 0
  %call = call i8* @mio_gets(%struct._MIO* %0, i8* %arraydecay, i64 2048)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %lineTaster.addr, align 8
  %arraydecay1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i64 0, i64 0
  %2 = load i8*, i8** %userData.addr, align 8
  %call2 = call i8* %1(i8* %arraydecay1, i8* %2)
  store i8* %call2, i8** %lang, align 8
  %3 = load i8*, i8** %lang, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %lang, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %defaultLang.addr, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @tastePerlLine(i8* %line, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %4 to i32
  switch i32 %conv1, label %sw.epilog [
    i32 35, label %sw.bb
    i32 0, label %sw.bb
    i32 61, label %sw.bb2
    i32 99, label %sw.bb20
    i32 103, label %sw.bb32
    i32 109, label %sw.bb44
    i32 110, label %sw.bb78
    i32 112, label %sw.bb90
    i32 114, label %sw.bb102
    i32 117, label %sw.bb125
  ]

sw.bb:                                            ; preds = %while.end, %while.end
  %5 = load i8*, i8** @TR_UNKNOWN, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %while.end
  %6 = load i8*, i8** %line.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %call3 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 1), i64 5)
  %cmp = icmp eq i32 0, %call3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb2
  %7 = load i8*, i8** %line.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 6
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %call7 = call i32 @isalnum(i32 %conv6) #3
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8*, i8** @TR_PERL5, align 8
  store i8* %9, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.bb2
  %10 = load i8*, i8** %line.addr, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %10, i64 1
  %call10 = call i32 @strncmp(i8* %add.ptr9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 1), i64 5)
  %cmp11 = icmp eq i32 0, %call10
  br i1 %cmp11, label %land.lhs.true13, label %if.end19

land.lhs.true13:                                  ; preds = %if.end
  %11 = load i8*, i8** %line.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 6
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %12 to i32
  %call16 = call i32 @isalnum(i32 %conv15) #3
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true13
  %13 = load i8*, i8** @TR_PERL5, align 8
  store i8* %13, i8** %retval, align 8
  br label %return

if.end19:                                         ; preds = %land.lhs.true13, %if.end
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.end
  %14 = load i8*, i8** %line.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %14, i64 1
  %call22 = call i32 @strncmp(i8* %add.ptr21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 1), i64 4)
  %cmp23 = icmp eq i32 0, %call22
  br i1 %cmp23, label %land.lhs.true25, label %if.end31

land.lhs.true25:                                  ; preds = %sw.bb20
  %15 = load i8*, i8** %line.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %16 to i32
  %call28 = call i32 @isalnum(i32 %conv27) #3
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %land.lhs.true25
  %17 = load i8*, i8** @TR_PERL6, align 8
  store i8* %17, i8** %retval, align 8
  br label %return

if.end31:                                         ; preds = %land.lhs.true25, %sw.bb20
  br label %sw.epilog

sw.bb32:                                          ; preds = %while.end
  %18 = load i8*, i8** %line.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %18, i64 1
  %call34 = call i32 @strncmp(i8* %add.ptr33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 1), i64 6)
  %cmp35 = icmp eq i32 0, %call34
  br i1 %cmp35, label %land.lhs.true37, label %if.end43

land.lhs.true37:                                  ; preds = %sw.bb32
  %19 = load i8*, i8** %line.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %20 to i32
  %call40 = call i32 @isalnum(i32 %conv39) #3
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %land.lhs.true37
  %21 = load i8*, i8** @TR_PERL6, align 8
  store i8* %21, i8** %retval, align 8
  br label %return

if.end43:                                         ; preds = %land.lhs.true37, %sw.bb32
  br label %sw.epilog

sw.bb44:                                          ; preds = %while.end
  %22 = load i8*, i8** %line.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %22, i64 1
  %call46 = call i32 @strncmp(i8* %add.ptr45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 1), i64 7)
  %cmp47 = icmp eq i32 0, %call46
  br i1 %cmp47, label %land.lhs.true49, label %if.end55

land.lhs.true49:                                  ; preds = %sw.bb44
  %23 = load i8*, i8** %line.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %23, i64 8
  %24 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %24 to i32
  %call52 = call i32 @isalnum(i32 %conv51) #3
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %land.lhs.true49
  %25 = load i8*, i8** @TR_PERL6, align 8
  store i8* %25, i8** %retval, align 8
  br label %return

if.end55:                                         ; preds = %land.lhs.true49, %sw.bb44
  %26 = load i8*, i8** %line.addr, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %26, i64 1
  %call57 = call i32 @strncmp(i8* %add.ptr56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 1), i64 5)
  %cmp58 = icmp eq i32 0, %call57
  br i1 %cmp58, label %land.lhs.true60, label %if.end66

land.lhs.true60:                                  ; preds = %if.end55
  %27 = load i8*, i8** %line.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %27, i64 6
  %28 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %28 to i32
  %call63 = call i32 @isalnum(i32 %conv62) #3
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %land.lhs.true60
  %29 = load i8*, i8** @TR_PERL6, align 8
  store i8* %29, i8** %retval, align 8
  br label %return

if.end66:                                         ; preds = %land.lhs.true60, %if.end55
  %30 = load i8*, i8** %line.addr, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %30, i64 1
  %call68 = call i32 @strncmp(i8* %add.ptr67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 1), i64 4)
  %cmp69 = icmp eq i32 0, %call68
  br i1 %cmp69, label %land.lhs.true71, label %if.end77

land.lhs.true71:                                  ; preds = %if.end66
  %31 = load i8*, i8** %line.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %31, i64 5
  %32 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %32 to i32
  %call74 = call i32 @isalnum(i32 %conv73) #3
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %land.lhs.true71
  %33 = load i8*, i8** @TR_PERL6, align 8
  store i8* %33, i8** %retval, align 8
  br label %return

if.end77:                                         ; preds = %land.lhs.true71, %if.end66
  br label %sw.epilog

sw.bb78:                                          ; preds = %while.end
  %34 = load i8*, i8** %line.addr, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %34, i64 1
  %call80 = call i32 @strncmp(i8* %add.ptr79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 1), i64 3)
  %cmp81 = icmp eq i32 0, %call80
  br i1 %cmp81, label %land.lhs.true83, label %if.end89

land.lhs.true83:                                  ; preds = %sw.bb78
  %35 = load i8*, i8** %line.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %35, i64 4
  %36 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %36 to i32
  %call86 = call i32 @isalnum(i32 %conv85) #3
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end89, label %if.then88

if.then88:                                        ; preds = %land.lhs.true83
  %37 = load i8*, i8** @TR_PERL6, align 8
  store i8* %37, i8** %retval, align 8
  br label %return

if.end89:                                         ; preds = %land.lhs.true83, %sw.bb78
  br label %sw.epilog

sw.bb90:                                          ; preds = %while.end
  %38 = load i8*, i8** %line.addr, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %38, i64 1
  %call92 = call i32 @strncmp(i8* %add.ptr91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 1), i64 6)
  %cmp93 = icmp eq i32 0, %call92
  br i1 %cmp93, label %land.lhs.true95, label %if.end101

land.lhs.true95:                                  ; preds = %sw.bb90
  %39 = load i8*, i8** %line.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %39, i64 7
  %40 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %40 to i32
  %call98 = call i32 @isalnum(i32 %conv97) #3
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %land.lhs.true95
  %41 = load i8*, i8** @TR_PERL5, align 8
  store i8* %41, i8** %retval, align 8
  br label %return

if.end101:                                        ; preds = %land.lhs.true95, %sw.bb90
  br label %sw.epilog

sw.bb102:                                         ; preds = %while.end
  %42 = load i8*, i8** %line.addr, align 8
  %add.ptr103 = getelementptr inbounds i8, i8* %42, i64 1
  %call104 = call i32 @strncmp(i8* %add.ptr103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 1), i64 3)
  %cmp105 = icmp eq i32 0, %call104
  br i1 %cmp105, label %land.lhs.true107, label %if.end113

land.lhs.true107:                                 ; preds = %sw.bb102
  %43 = load i8*, i8** %line.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %43, i64 4
  %44 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %44 to i32
  %call110 = call i32 @isalnum(i32 %conv109) #3
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %land.lhs.true107
  %45 = load i8*, i8** @TR_PERL6, align 8
  store i8* %45, i8** %retval, align 8
  br label %return

if.end113:                                        ; preds = %land.lhs.true107, %sw.bb102
  %46 = load i8*, i8** %line.addr, align 8
  %add.ptr114 = getelementptr inbounds i8, i8* %46, i64 1
  %call115 = call i32 @strncmp(i8* %add.ptr114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 1), i64 8)
  %cmp116 = icmp eq i32 0, %call115
  br i1 %cmp116, label %land.lhs.true118, label %if.end124

land.lhs.true118:                                 ; preds = %if.end113
  %47 = load i8*, i8** %line.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %47, i64 9
  %48 = load i8, i8* %arrayidx119, align 1
  %conv120 = sext i8 %48 to i32
  %call121 = call i32 @isalnum(i32 %conv120) #3
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %land.lhs.true118
  %49 = load i8*, i8** @TR_PERL5, align 8
  store i8* %49, i8** %retval, align 8
  br label %return

if.end124:                                        ; preds = %land.lhs.true118, %if.end113
  br label %sw.epilog

sw.bb125:                                         ; preds = %while.end
  %50 = load i8*, i8** %line.addr, align 8
  %add.ptr126 = getelementptr inbounds i8, i8* %50, i64 1
  %call127 = call i32 @strncmp(i8* %add.ptr126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 1), i64 3)
  %cmp128 = icmp eq i32 0, %call127
  br i1 %cmp128, label %land.lhs.true130, label %if.end136

land.lhs.true130:                                 ; preds = %sw.bb125
  %51 = load i8*, i8** %line.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %51, i64 4
  %52 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %52 to i32
  %call133 = call i32 @isalnum(i32 %conv132) #3
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end136, label %if.then135

if.then135:                                       ; preds = %land.lhs.true130
  %53 = load i8*, i8** @TR_PERL6, align 8
  store i8* %53, i8** %retval, align 8
  br label %return

if.end136:                                        ; preds = %land.lhs.true130, %sw.bb125
  %54 = load i8*, i8** %line.addr, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %54, i64 1
  %call138 = call i32 @strncmp(i8* %add.ptr137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 1), i64 5)
  %cmp139 = icmp eq i32 0, %call138
  br i1 %cmp139, label %land.lhs.true141, label %if.end147

land.lhs.true141:                                 ; preds = %if.end136
  %55 = load i8*, i8** %line.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %55, i64 6
  %56 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %56 to i32
  %call144 = call i32 @isalnum(i32 %conv143) #3
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.end147, label %if.then146

if.then146:                                       ; preds = %land.lhs.true141
  %57 = load i8*, i8** @TR_PERL6, align 8
  store i8* %57, i8** %retval, align 8
  br label %return

if.end147:                                        ; preds = %land.lhs.true141, %if.end136
  %58 = load i8*, i8** %line.addr, align 8
  %add.ptr148 = getelementptr inbounds i8, i8* %58, i64 1
  %call149 = call i32 @strncmp(i8* %add.ptr148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 1), i64 6)
  %cmp150 = icmp eq i32 0, %call149
  br i1 %cmp150, label %land.lhs.true152, label %if.end158

land.lhs.true152:                                 ; preds = %if.end147
  %59 = load i8*, i8** %line.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %59, i64 7
  %60 = load i8, i8* %arrayidx153, align 1
  %conv154 = sext i8 %60 to i32
  %call155 = call i32 @isalnum(i32 %conv154) #3
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end158, label %if.then157

if.then157:                                       ; preds = %land.lhs.true152
  %61 = load i8*, i8** @TR_PERL5, align 8
  store i8* %61, i8** %retval, align 8
  br label %return

if.end158:                                        ; preds = %land.lhs.true152, %if.end147
  %62 = load i8*, i8** %line.addr, align 8
  %add.ptr159 = getelementptr inbounds i8, i8* %62, i64 1
  %call160 = call i32 @strncmp(i8* %add.ptr159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 1), i64 11)
  %cmp161 = icmp eq i32 0, %call160
  br i1 %cmp161, label %land.lhs.true163, label %if.end169

land.lhs.true163:                                 ; preds = %if.end158
  %63 = load i8*, i8** %line.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %63, i64 12
  %64 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %64 to i32
  %call166 = call i32 @isalnum(i32 %conv165) #3
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %land.lhs.true163
  %65 = load i8*, i8** @TR_PERL5, align 8
  store i8* %65, i8** %retval, align 8
  br label %return

if.end169:                                        ; preds = %land.lhs.true163, %if.end158
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %if.end169, %if.end124, %if.end101, %if.end89, %if.end77, %if.end43, %if.end31, %if.end19
  %66 = load i8*, i8** @TR_UNKNOWN, align 8
  store i8* %66, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %if.then168, %if.then157, %if.then146, %if.then135, %if.then123, %if.then112, %if.then100, %if.then88, %if.then76, %if.then65, %if.then54, %if.then42, %if.then30, %if.then18, %if.then, %sw.bb
  %67 = load i8*, i8** %retval, align 8
  ret i8* %67
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @selectByObjectiveCAndMatLabKeywords(%struct._MIO* %input, i32* %candidates, i32 %nCandidates) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  %candidates.addr = alloca i32*, align 8
  %nCandidates.addr = alloca i32, align 4
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store i32* %candidates, i32** %candidates.addr, align 8
  store i32 %nCandidates, i32* %nCandidates.addr, align 4
  %0 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call = call i8* @selectByLines(%struct._MIO* %0, i8* (i8*, i8*)* @tasteObjectiveCOrMatLabLines, i8* null, i8* null)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @tasteObjectiveCOrMatLabLines(i8* %line, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  br i1 false, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %1 = load i8*, i8** %line.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i64 2)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %lor.lhs.false
  br i1 true, label %if.then, label %if.else

cond.false4:                                      ; preds = %lor.lhs.false
  br i1 false, label %if.then, label %if.else

if.then:                                          ; preds = %cond.false4, %cond.true3, %cond.false, %cond.true
  %2 = load i8*, i8** @TR_MATLAB, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %cond.false4, %cond.true3
  %3 = load i8*, i8** %line.addr, align 8
  %call5 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 3)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %if.else
  br i1 true, label %if.then14, label %lor.lhs.false9

cond.false8:                                      ; preds = %if.else
  br i1 false, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %cond.false8, %cond.true7
  %4 = load i8*, i8** %line.addr, align 8
  %call10 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i64 3)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %lor.lhs.false9
  br i1 true, label %if.then14, label %if.else15

cond.false13:                                     ; preds = %lor.lhs.false9
  br i1 false, label %if.then14, label %if.else15

if.then14:                                        ; preds = %cond.false13, %cond.true12, %cond.false8, %cond.true7
  %5 = load i8*, i8** @TR_OBJC, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

if.else15:                                        ; preds = %cond.false13, %cond.true12
  %6 = load i8*, i8** %line.addr, align 8
  %call16 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i64 8)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.else15
  br i1 true, label %if.then35, label %lor.lhs.false20

cond.false19:                                     ; preds = %if.else15
  br i1 false, label %if.then35, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %cond.false19, %cond.true18
  %7 = load i8*, i8** %line.addr, align 8
  %call21 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 7)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %lor.lhs.false20
  br i1 true, label %if.then35, label %lor.lhs.false25

cond.false24:                                     ; preds = %lor.lhs.false20
  br i1 false, label %if.then35, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %cond.false24, %cond.true23
  %8 = load i8*, i8** %line.addr, align 8
  %call26 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i64 8)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %lor.lhs.false25
  br i1 true, label %if.then35, label %lor.lhs.false30

cond.false29:                                     ; preds = %lor.lhs.false25
  br i1 false, label %if.then35, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %cond.false29, %cond.true28
  %9 = load i8*, i8** %line.addr, align 8
  %call31 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 7)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %lor.lhs.false30
  br i1 true, label %if.then35, label %if.else36

cond.false34:                                     ; preds = %lor.lhs.false30
  br i1 false, label %if.then35, label %if.else36

if.then35:                                        ; preds = %cond.false34, %cond.true33, %cond.false29, %cond.true28, %cond.false24, %cond.true23, %cond.false19, %cond.true18
  %10 = load i8*, i8** @TR_OBJC, align 8
  store i8* %10, i8** %retval, align 8
  br label %return

if.else36:                                        ; preds = %cond.false34, %cond.true33
  %11 = load i8*, i8** %line.addr, align 8
  %call37 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %if.else36
  br i1 true, label %if.then51, label %lor.lhs.false41

cond.false40:                                     ; preds = %if.else36
  br i1 false, label %if.then51, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %cond.false40, %cond.true39
  %12 = load i8*, i8** %line.addr, align 8
  %call42 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i64 16)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %lor.lhs.false41
  br i1 true, label %if.then51, label %lor.lhs.false46

cond.false45:                                     ; preds = %lor.lhs.false41
  br i1 false, label %if.then51, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %cond.false45, %cond.true44
  %13 = load i8*, i8** %line.addr, align 8
  %call47 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i64 10)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %lor.lhs.false46
  br i1 true, label %if.then51, label %if.else52

cond.false50:                                     ; preds = %lor.lhs.false46
  br i1 false, label %if.then51, label %if.else52

if.then51:                                        ; preds = %cond.false50, %cond.true49, %cond.false45, %cond.true44, %cond.false40, %cond.true39
  %14 = load i8*, i8** @TR_OBJC, align 8
  store i8* %14, i8** %retval, align 8
  br label %return

if.else52:                                        ; preds = %cond.false50, %cond.true49
  %15 = load i8*, i8** %line.addr, align 8
  %call53 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 7)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %if.else52
  br i1 true, label %if.then67, label %lor.lhs.false57

cond.false56:                                     ; preds = %if.else52
  br i1 false, label %if.then67, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %cond.false56, %cond.true55
  %16 = load i8*, i8** %line.addr, align 8
  %call58 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i64 6)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %lor.lhs.false57
  br i1 true, label %if.then67, label %lor.lhs.false62

cond.false61:                                     ; preds = %lor.lhs.false57
  br i1 false, label %if.then67, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %cond.false61, %cond.true60
  %17 = load i8*, i8** %line.addr, align 8
  %call63 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i64 8)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %lor.lhs.false62
  br i1 true, label %if.then67, label %if.else68

cond.false66:                                     ; preds = %lor.lhs.false62
  br i1 false, label %if.then67, label %if.else68

if.then67:                                        ; preds = %cond.false66, %cond.true65, %cond.false61, %cond.true60, %cond.false56, %cond.true55
  %18 = load i8*, i8** @TR_OBJC, align 8
  store i8* %18, i8** %retval, align 8
  br label %return

if.else68:                                        ; preds = %cond.false66, %cond.true65
  %19 = load i8*, i8** %line.addr, align 8
  %call69 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 9)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %if.else68
  br i1 true, label %if.then73, label %if.end82

cond.false72:                                     ; preds = %if.else68
  br i1 false, label %if.then73, label %if.end82

if.then73:                                        ; preds = %cond.false72, %cond.true71
  %20 = load i8*, i8** %line.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 9
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then73
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv = sext i8 %22 to i32
  %call74 = call i32 @isspace(i32 %conv) #3
  %tobool = icmp ne i32 %call74, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv75 = sext i8 %25 to i32
  %cmp76 = icmp ne i32 %conv75, 0
  br i1 %cmp76, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv78 = sext i8 %27 to i32
  %cmp79 = icmp ne i32 %conv78, 40
  br i1 %cmp79, label %if.then81, label %if.end

if.then81:                                        ; preds = %land.lhs.true
  %28 = load i8*, i8** @TR_MATLAB, align 8
  store i8* %28, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.end
  br label %if.end82

if.end82:                                         ; preds = %if.end, %cond.false72, %cond.true71
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  br label %if.end84

if.end84:                                         ; preds = %if.end83
  br label %if.end85

if.end85:                                         ; preds = %if.end84
  br label %if.end86

if.end86:                                         ; preds = %if.end85
  br label %if.end87

if.end87:                                         ; preds = %if.end86
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end87, %if.then81, %if.then67, %if.then51, %if.then35, %if.then14, %if.then
  %29 = load i8*, i8** %retval, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @selectByObjectiveCKeywords(%struct._MIO* %input, i32* %candidates, i32 %nCandidates) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca %struct._MIO*, align 8
  %candidates.addr = alloca i32*, align 8
  %nCandidates.addr = alloca i32, align 4
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store i32* %candidates, i32** %candidates.addr, align 8
  store i32 %nCandidates, i32* %nCandidates.addr, align 4
  %0 = load i32, i32* @selectByObjectiveCKeywords.objc, align 4
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @TR_OBJC, align 8
  %call = call i32 @getNamedLanguage(i8* %1, i64 0)
  store i32 %call, i32* @selectByObjectiveCKeywords.objc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @selectByObjectiveCKeywords.cpp, align 4
  %cmp1 = icmp eq i32 %2, -2
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** @TR_CPP, align 8
  %call3 = call i32 @getNamedLanguage(i8* %3, i64 0)
  store i32 %call3, i32* @selectByObjectiveCKeywords.cpp, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %do.end
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %4 = load i32, i32* @selectByObjectiveCKeywords.objc, align 4
  %call7 = call zeroext i1 @isLanguageEnabled(i32 %4)
  br i1 %call7, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end6
  %5 = load i8*, i8** @TR_CPP, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %do.end6
  %6 = load i32, i32* @selectByObjectiveCKeywords.cpp, align 4
  %call9 = call zeroext i1 @isLanguageEnabled(i32 %6)
  br i1 %call9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.else
  %7 = load i8*, i8** @TR_OBJC, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %8 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %9 = load i8*, i8** @TR_CPP, align 8
  %call13 = call i8* @selectByLines(%struct._MIO* %8, i8* (i8*, i8*)* @tasteObjectiveC, i8* %9, i8* null)
  store i8* %call13, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then8
  %10 = load i8*, i8** %retval, align 8
  ret i8* %10
}

declare i32 @getNamedLanguage(i8*, i64) #1

declare zeroext i1 @isLanguageEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @tasteObjectiveC(i8* %line, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 7)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  br i1 false, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %1 = load i8*, i8** %line.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %lor.lhs.false
  br i1 true, label %if.then, label %lor.lhs.false5

cond.false4:                                      ; preds = %lor.lhs.false
  br i1 false, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %cond.false4, %cond.true3
  %2 = load i8*, i8** %line.addr, align 8
  %call6 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i64 16)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %lor.lhs.false5
  br i1 true, label %if.then, label %lor.lhs.false10

cond.false9:                                      ; preds = %lor.lhs.false5
  br i1 false, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %cond.false9, %cond.true8
  %3 = load i8*, i8** %line.addr, align 8
  %call11 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i64 10)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %lor.lhs.false10
  br i1 true, label %if.then, label %if.end

cond.false14:                                     ; preds = %lor.lhs.false10
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false14, %cond.true13, %cond.false9, %cond.true8, %cond.false4, %cond.true3, %cond.false, %cond.true
  %4 = load i8*, i8** @TR_OBJC, align 8
  store i8* %4, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.false14, %cond.true13
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @selectByArrowOfR(%struct._MIO* %input, i32* %candidates, i32 %nCandidates) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca %struct._MIO*, align 8
  %candidates.addr = alloca i32*, align 8
  %nCandidates.addr = alloca i32, align 4
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store i32* %candidates, i32** %candidates.addr, align 8
  store i32 %nCandidates, i32* %nCandidates.addr, align 4
  %0 = load i32, i32* @selectByArrowOfR.R, align 4
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @TR_R, align 8
  %call = call i32 @getNamedLanguage(i8* %1, i64 0)
  store i32 %call, i32* @selectByArrowOfR.R, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @selectByArrowOfR.Asm, align 4
  %cmp1 = icmp eq i32 %2, -2
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** @TR_ASM, align 8
  %call3 = call i32 @getNamedLanguage(i8* %3, i64 0)
  store i32 %call3, i32* @selectByArrowOfR.Asm, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %do.end
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %4 = load i32, i32* @selectByArrowOfR.R, align 4
  %call7 = call zeroext i1 @isLanguageEnabled(i32 %4)
  br i1 %call7, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end6
  %5 = load i8*, i8** @TR_ASM, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %do.end6
  %6 = load i32, i32* @selectByArrowOfR.Asm, align 4
  %call9 = call zeroext i1 @isLanguageEnabled(i32 %6)
  br i1 %call9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.else
  %7 = load i8*, i8** @TR_R, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %8 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call13 = call i8* @selectByLines(%struct._MIO* %8, i8* (i8*, i8*)* @tasteR, i8* null, i8* null)
  store i8* %call13, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then8
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @tasteR(i8* %line, i8* %data) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @TR_R, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @selectByRexxCommentAndDosbatchLabelPrefix(%struct._MIO* %input, i32* %candidates, i32 %nCandidates) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca %struct._MIO*, align 8
  %candidates.addr = alloca i32*, align 8
  %nCandidates.addr = alloca i32, align 4
  %in_rexx_comment = alloca i8, align 1
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store i32* %candidates, i32** %candidates.addr, align 8
  store i32 %nCandidates, i32* %nCandidates.addr, align 4
  store i8 0, i8* %in_rexx_comment, align 1
  %0 = load i32, i32* @selectByRexxCommentAndDosbatchLabelPrefix.rexx, align 4
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @TR_R, align 8
  %call = call i32 @getNamedLanguage(i8* %1, i64 0)
  store i32 %call, i32* @selectByRexxCommentAndDosbatchLabelPrefix.rexx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @selectByRexxCommentAndDosbatchLabelPrefix.dosbatch, align 4
  %cmp1 = icmp eq i32 %2, -2
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** @TR_DOSBATCH, align 8
  %call3 = call i32 @getNamedLanguage(i8* %3, i64 0)
  store i32 %call3, i32* @selectByRexxCommentAndDosbatchLabelPrefix.dosbatch, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %do.end
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %4 = load i32, i32* @selectByRexxCommentAndDosbatchLabelPrefix.rexx, align 4
  %call7 = call zeroext i1 @isLanguageEnabled(i32 %4)
  br i1 %call7, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end6
  %5 = load i8*, i8** @TR_DOSBATCH, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %do.end6
  %6 = load i32, i32* @selectByRexxCommentAndDosbatchLabelPrefix.dosbatch, align 4
  %call9 = call zeroext i1 @isLanguageEnabled(i32 %6)
  br i1 %call9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.else
  %7 = load i8*, i8** @TR_REXX, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %8 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call13 = call i8* @selectByLines(%struct._MIO* %8, i8* (i8*, i8*)* @tasteREXXOrDosBatch, i8* null, i8* %in_rexx_comment)
  store i8* %call13, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then8
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @tasteREXXOrDosBatch(i8* %line, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %in_rexx_comment = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %in_rexx_comment, align 8
  %1 = load i8*, i8** %line.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.else

cond.false:                                       ; preds = %entry
  br i1 false, label %if.then, label %if.else

if.then:                                          ; preds = %cond.false, %cond.true
  %2 = load i8*, i8** @TR_DOSBATCH, align 8
  store i8* %2, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %cond.false, %cond.true
  %3 = load i8*, i8** %in_rexx_comment, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else4

land.lhs.true:                                    ; preds = %if.else
  %5 = load i8*, i8** %line.addr, align 8
  %call1 = call i8* @strstr(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i8*, i8** @TR_REXX, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

if.else4:                                         ; preds = %land.lhs.true, %if.else
  %7 = load i8*, i8** %line.addr, align 8
  %call5 = call i8* @strstr(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0))
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  %8 = load i8*, i8** %in_rexx_comment, align 8
  store i8 1, i8* %8, align 1
  store i8* null, i8** %retval, align 8
  br label %return

if.else8:                                         ; preds = %if.else4
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else8, %if.then7, %if.then3, %if.then
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

declare i8* @mio_gets(%struct._MIO*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
