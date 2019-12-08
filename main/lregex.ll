; ModuleID = 'lregex.c'
source_filename = "lregex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sTrashBox = type opaque
%struct.sFlagDefinition = type { i8, i8*, void (i8, i8*)*, void (i8*, i8*, i8*)*, i8*, i8* }
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.lregexControlBlock = type { i64, [2 x %struct.sPtrArray*], %struct.sPtrArray*, %struct.sPtrArray*, i32 }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct._MIO = type opaque
%struct.tagRegexTable = type { i8*, i8*, i8*, i8*, i8*, i8 }
%struct.keywordTable = type { i8*, i32 }
%struct.sTagXpathTableTable = type { %struct.sTagXpathTable*, i32 }
%struct.sTagXpathTable = type { i8*, i32, %union.anon, i8* }
%union.anon = type { %struct.sTagXpathMakeTagSpec }
%struct.sTagXpathMakeTagSpec = type { i32, i32, void (i8*, %struct.sTagXpathMakeTagSpec*, %struct.sTagEntryInfo*, i8*)* }
%struct.sTagEntryInfo = type { i8, i64, i8*, i32, %struct._MIOPos, i32, i8*, i8*, i32, [2 x i8], i8*, %struct.anon, i32, [5 x %struct.sTagField], %struct.sPtrArray*, i32, i8*, i64 }
%struct._MIOPos = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.anon = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, [2 x i8*], i32, i64 }
%struct.sTagField = type { i32, i8*, i8 }
%struct.sFieldDefinition = type { i8, i8*, i8*, i8, [5 x i8* (%struct.sTagEntryInfo*, i8*, %struct.sVString*, i8*)*], i1 (%struct.sTagEntryInfo*)*, i32, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.sParserDependency = type { i32, i8*, i8* }
%struct.sParameterHandlerTable = type { i8*, i8*, void (i32, i8*, i8*)* }
%struct.sXpathFileSpec = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.regexPattern = type { %struct.regex_t*, i32, i8, i8, %union.anon.1, i32, i8*, i32, %struct.mGroupSpec, %struct.mTableActionSpec, i32, %struct.sPtrArray*, i8*, %struct.anon.4, i32 }
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32, i8* }
%struct.mGroupSpec = type { i32, i32, i8 }
%struct.mTableActionSpec = type { i32, %struct.regexTable*, %struct.regexTable* }
%struct.regexTable = type { i8*, %struct.sPtrArray* }
%struct.anon.4 = type { i32, i32 }
%struct.regmatch_t = type { i64, i64 }
%struct.regexMatch = type { i64, i64 }
%struct.anon.3 = type { i1 (i8*, %struct.regexMatch*, i32, i8*)*, i8* }
%struct.colprintTable = type opaque
%struct.fieldPattern = type { i32, i8* }
%struct.extraFlagData = type { i32, i32 }
%struct.fieldFlagData = type { %struct.sPtrArray*, i32 }
%struct.mtableFlagData = type { %struct.lregexControlBlock*, %struct.mTableActionSpec* }

@apop_count = internal global i32 0, align 4
@field_trashbox = internal global %struct.sTrashBox* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unknown table name: %s\00", align 1
@regexAvailable = internal global i8 0, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot open regex file\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"open a regex file: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@regexFlagDefs = internal global [3 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), void (i8, i8*)* @regex_flag_basic_short, void (i8*, i8*, i8*)* @regex_flag_basic_long, i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0) }, %struct.sFlagDefinition { i8 101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), void (i8, i8*)* @regex_flag_extend_short, void (i8*, i8*, i8*)* @regex_flag_extend_long, i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.33, i32 0, i32 0) }, %struct.sFlagDefinition { i8 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), void (i8, i8*)* @regex_flag_icase_short, void (i8*, i8*, i8*)* @regex_flag_icase_long, i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0) }], align 8
@prePtrnFlagDef = internal global [1 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), void (i8, i8*)* @pre_ptrn_flag_exclusive_short, void (i8*, i8*, i8*)* @pre_ptrn_flag_exclusive_long, i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i32 0, i32 0) }], align 8
@scopePtrnFlagDef = internal global [2 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @scope_ptrn_flag_eval, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @placeholder_ptrn_flag_eval, i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0) }], align 8
@extraSpecFlagDef = internal global [1 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_extra_long, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.51, i32 0, i32 0) }], align 8
@fieldSpecFlagDef = internal global [1 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_field_long, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.56, i32 0, i32 0) }], align 8
@multilinePtrnFlagDef = internal global [2 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_mgroup_long, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.62, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_advanceTo_long, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.65, i32 0, i32 0) }], align 8
@multitablePtrnFlagDef = internal global [5 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_mtable_long, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.72, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_mtable_long, i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_mtable_long, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.77, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_mtable_long, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.79, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_ptrn_flag_mtable_long, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i32 0, i32 0) }], align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"`%c' in \22%s\22 is not acceptable as part of table name\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"regex table \22%s\22 is already defined\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"extend regex table  \22%s\22 with \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"no such regex table in %s: %s\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"MTABLE REGEX STATISTICS of %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"==============================================\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"-----------------------\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%10u/%-10u%-40s ref: %d\0A\00", align 1
@Option = external constant %struct.sOptionValues, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"input : \22%s\22 L%lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"%s:%lu: null expansion of name pattern \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"Kind letter '%c' used in regex definition \22%s\22 of %s language is reserved in ctags main\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: regexp missing name pattern\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"Don't reuse the kind letter `%c' in a language %s (old: \22%s\22, new: \22%s\22)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"regcomp %s: %s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"wrong mtable pattern specification: %s\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"unknown table name: %s (in %s)\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"empty regexp\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"%s: incomplete regexp\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"error in name pattern: \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"%s: regexp missing final separator\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"interpreted as a Posix basic regular expression.\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"interpreted as a Posix extended regular expression (default)\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"applied in a case-insensitive manner\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"skip testing the other patterns if a line is matched to this pattern\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"use scope stack: ACTION = ref|push|pop|clear|set\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"placeholder\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"don't put this tag to tags file.\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c"Unexpected value for scope flag in regex definition: scope=%s\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"_extra\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"EXTRA\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"record the tag only when the extra is enabled\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"no value is given for: %s\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"no such extra \22%s\22 in %s\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"_field\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"FIELD:VALUE\00", align 1
@.str.56 = private unnamed_addr constant [53 x i8] c"record the matched string(VALUE) to FIELD of the tag\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"no field name is given for: %s\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"no such field \22%s\22 in %s\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"duplicated field specification \22%s\22 in %s\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"mgroup\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"a group in pattern determining the line number of tag\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"_advanceTo\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"N[start|end]\00", align 1
@.str.65 = private unnamed_addr constant [58 x i8] c"a group in pattern from where the next scan starts [0end]\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"wrong %s specification: %s\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"out of range(0 ~ %d) %s specification: %s\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"tenter\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"TABLE[,CONT]\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"enter to given regext table (with specifying continuation)\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"tleave\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"leave from the current regext table\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"tjump\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.77 = private unnamed_addr constant [74 x i8] c"jump to another regext table(don't push the current table to state stack)\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"treset\00", align 1
@.str.79 = private unnamed_addr constant [52 x i8] c"clear the state stack and jump to given regex table\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"tquit\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"stop the parsing with this parser\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"no table is given for table action: %s\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"table is not defined: %s\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"no continuation table is given for: %s\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"table for continuation is not defined: %s\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"match : '%s' %15s[%2u] /\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"match :  '' %15s[%2u] /\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"match :'%s' %15s[%2u] / \00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"%s/\0A\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"action: NOP in {%s}, stack: /\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"action: [enter] to {%s}, cont: {%s}, stack: /\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"action: [enter] to {%s}, stack: /\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"action: [leave] from {%s}, stack: /\00", align 1
@.str.94 = private unnamed_addr constant [70 x i8] c"leave is specified as regex table action but the table stack is empty\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"action: [jump] from {%s} to {%s}, stack: /\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"action: [reset] to {%s}, stack: /\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"action: [quit], stack: /\00", align 1
@.str.98 = private unnamed_addr constant [40 x i8] c"stack: autopop<%d> from %s to %s @ %lu\0A\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"scope: \00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @init_apop_count() #0 {
entry:
  store i32 0, i32* @apop_count, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.lregexControlBlock* @allocLregexControlBlock(%struct.sParserDefinition* %parser) #0 {
entry:
  %parser.addr = alloca %struct.sParserDefinition*, align 8
  %lcb = alloca %struct.lregexControlBlock*, align 8
  store %struct.sParserDefinition* %parser, %struct.sParserDefinition** %parser.addr, align 8
  %call = call i8* @eCalloc(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.lregexControlBlock*
  store %struct.lregexControlBlock* %0, %struct.lregexControlBlock** %lcb, align 8
  %call1 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* @deletePattern)
  %1 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb, align 8
  %patterns = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns, i64 0, i64 0
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %arrayidx, align 8
  %call2 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* @deletePattern)
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb, align 8
  %patterns3 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %2, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns3, i64 0, i64 1
  store %struct.sPtrArray* %call2, %struct.sPtrArray** %arrayidx4, align 8
  %call5 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* @deleteTable)
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %3, i32 0, i32 2
  store %struct.sPtrArray* %call5, %struct.sPtrArray** %tables, align 8
  %call6 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* null)
  %4 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb, align 8
  %tstack = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %4, i32 0, i32 3
  store %struct.sPtrArray* %call6, %struct.sPtrArray** %tstack, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 33
  %6 = load i32, i32* %id, align 4
  %7 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb, align 8
  %owner = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %7, i32 0, i32 4
  store i32 %6, i32* %owner, align 8
  %8 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb, align 8
  ret %struct.lregexControlBlock* %8
}

declare i8* @eCalloc(i64, i64) #1

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deletePattern(i8* %ptrn) #0 {
entry:
  %ptrn.addr = alloca i8*, align 8
  %p = alloca %struct.regexPattern*, align 8
  store i8* %ptrn, i8** %ptrn.addr, align 8
  %0 = load i8*, i8** %ptrn.addr, align 8
  %1 = bitcast i8* %0 to %struct.regexPattern*
  store %struct.regexPattern* %1, %struct.regexPattern** %p, align 8
  %2 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %refcount = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %2, i32 0, i32 14
  %3 = load i32, i32* %refcount, align 8
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %refcount, align 8
  %4 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %refcount1 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %4, i32 0, i32 14
  %5 = load i32, i32* %refcount1, align 8
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %pattern = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %6, i32 0, i32 0
  %7 = load %struct.regex_t*, %struct.regex_t** %pattern, align 8
  call void @regfree(%struct.regex_t* %7)
  %8 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %pattern2 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %8, i32 0, i32 0
  %9 = load %struct.regex_t*, %struct.regex_t** %pattern2, align 8
  %10 = bitcast %struct.regex_t* %9 to i8*
  call void @eFree(i8* %10)
  %11 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %pattern3 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %11, i32 0, i32 0
  store %struct.regex_t* null, %struct.regex_t** %pattern3, align 8
  %12 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %type = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %12, i32 0, i32 1
  %13 = load i32, i32* %type, align 8
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %14 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %u = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %14, i32 0, i32 4
  %tag = bitcast %union.anon.1* %u to %struct.anon.2*
  %name_pattern = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag, i32 0, i32 1
  %15 = load i8*, i8** %name_pattern, align 8
  call void @eFree(i8* %15)
  %16 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %u6 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %16, i32 0, i32 4
  %tag7 = bitcast %union.anon.1* %u6 to %struct.anon.2*
  %name_pattern8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag7, i32 0, i32 1
  store i8* null, i8** %name_pattern8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %17 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %fieldPatterns = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %17, i32 0, i32 11
  %18 = load %struct.sPtrArray*, %struct.sPtrArray** %fieldPatterns, align 8
  %tobool = icmp ne %struct.sPtrArray* %18, null
  br i1 %tobool, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end9
  %19 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %fieldPatterns11 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %19, i32 0, i32 11
  %20 = load %struct.sPtrArray*, %struct.sPtrArray** %fieldPatterns11, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %20)
  %21 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %fieldPatterns12 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %21, i32 0, i32 11
  store %struct.sPtrArray* null, %struct.sPtrArray** %fieldPatterns12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end9
  %22 = load %struct.regexPattern*, %struct.regexPattern** %p, align 8
  %pattern_string = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %22, i32 0, i32 12
  %23 = load i8*, i8** %pattern_string, align 8
  call void @eFree(i8* %23)
  %24 = load i8*, i8** %ptrn.addr, align 8
  call void @eFree(i8* %24)
  br label %return

return:                                           ; preds = %if.end13, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @deleteTable(i8* %ptrn) #0 {
entry:
  %ptrn.addr = alloca i8*, align 8
  %t = alloca %struct.regexTable*, align 8
  store i8* %ptrn, i8** %ptrn.addr, align 8
  %0 = load i8*, i8** %ptrn.addr, align 8
  %1 = bitcast i8* %0 to %struct.regexTable*
  store %struct.regexTable* %1, %struct.regexTable** %t, align 8
  %2 = load %struct.regexTable*, %struct.regexTable** %t, align 8
  %patterns = getelementptr inbounds %struct.regexTable, %struct.regexTable* %2, i32 0, i32 1
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %3)
  %4 = load %struct.regexTable*, %struct.regexTable** %t, align 8
  %name = getelementptr inbounds %struct.regexTable, %struct.regexTable* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void @eFree(i8* %5)
  %6 = load %struct.regexTable*, %struct.regexTable** %t, align 8
  %7 = bitcast %struct.regexTable* %6 to i8*
  call void @eFree(i8* %7)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeLregexControlBlock(%struct.lregexControlBlock* %lcb) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  call void @clearPatternSet(%struct.lregexControlBlock* %0)
  %1 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns, i64 0, i64 0
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %2)
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns1, i64 0, i64 0
  store %struct.sPtrArray* null, %struct.sPtrArray** %arrayidx2, align 8
  %4 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns3 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns3, i64 0, i64 1
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx4, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %5)
  %6 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns5 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns5, i64 0, i64 1
  store %struct.sPtrArray* null, %struct.sPtrArray** %arrayidx6, align 8
  %7 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %7, i32 0, i32 2
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %8)
  %9 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables7 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %9, i32 0, i32 2
  store %struct.sPtrArray* null, %struct.sPtrArray** %tables7, align 8
  %10 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %10, i32 0, i32 3
  %11 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %11)
  %12 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack8 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %12, i32 0, i32 3
  store %struct.sPtrArray* null, %struct.sPtrArray** %tstack8, align 8
  %13 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %14 = bitcast %struct.lregexControlBlock* %13 to i8*
  call void @eFree(i8* %14)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @clearPatternSet(%struct.lregexControlBlock* %lcb) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns, i64 0, i64 0
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %1)
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns1, i64 0, i64 1
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx2, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %3)
  %4 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %4, i32 0, i32 2
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %5)
  ret void
}

declare void @ptrArrayDelete(%struct.sPtrArray*) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cleanFieldTrashbox() #0 {
entry:
  %0 = load %struct.sTrashBox*, %struct.sTrashBox** @field_trashbox, align 8
  %cmp = icmp ne %struct.sTrashBox* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.sTrashBox* null, %struct.sTrashBox** @field_trashbox, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @matchRegex(%struct.lregexControlBlock* %lcb, %struct.sVString* %line) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %line.addr = alloca %struct.sVString*, align 8
  %result = alloca i8, align 1
  %i = alloca i32, align 4
  %ptrn = alloca %struct.regexPattern*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.sVString* %line, %struct.sVString** %line.addr, align 8
  store i8 0, i8* %result, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns, i64 0, i64 0
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %2)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns1, i64 0, i64 0
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx2, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call i8* @ptrArrayItem(%struct.sPtrArray* %4, i32 %5)
  %6 = bitcast i8* %call3 to %struct.regexPattern*
  store %struct.regexPattern* %6, %struct.regexPattern** %ptrn, align 8
  %7 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %xtagType = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %7, i32 0, i32 10
  %8 = load i32, i32* %xtagType, align 8
  %cmp4 = icmp ne i32 %8, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %xtagType5 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %9, i32 0, i32 10
  %10 = load i32, i32* %xtagType5, align 8
  %call6 = call zeroext i1 @isXtagEnabled(i32 %10)
  br i1 %call6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %12 = load %struct.sVString*, %struct.sVString** %line.addr, align 8
  %13 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %call7 = call zeroext i1 @matchRegexPattern(%struct.lregexControlBlock* %11, %struct.sVString* %12, %struct.regexPattern* %13)
  br i1 %call7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  store i8 1, i8* %result, align 1
  %14 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %exclusive = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %14, i32 0, i32 2
  %15 = load i8, i8* %exclusive, align 4
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then8
  br label %for.end

if.end10:                                         ; preds = %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.then
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then9, %for.cond
  %17 = load i8, i8* %result, align 1
  %tobool12 = trunc i8 %17 to i1
  ret i1 %tobool12
}

declare i32 @ptrArrayCount(%struct.sPtrArray*) #1

declare i8* @ptrArrayItem(%struct.sPtrArray*, i32) #1

declare zeroext i1 @isXtagEnabled(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @matchRegexPattern(%struct.lregexControlBlock* %lcb, %struct.sVString* %line, %struct.regexPattern* %patbuf) #0 {
entry:
  %retval = alloca i1, align 1
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %line.addr = alloca %struct.sVString*, align 8
  %patbuf.addr = alloca %struct.regexPattern*, align 8
  %result = alloca i8, align 1
  %pmatch = alloca [10 x %struct.regmatch_t], align 8
  %match = alloca i32, align 4
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.sVString* %line, %struct.sVString** %line.addr, align 8
  store %struct.regexPattern* %patbuf, %struct.regexPattern** %patbuf.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %disabled = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %0, i32 0, i32 6
  %1 = load i8*, i8** %disabled, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %disabled1 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %2, i32 0, i32 6
  %3 = load i8*, i8** %disabled1, align 8
  %4 = load i8, i8* %3, align 1
  %tobool2 = trunc i8 %4 to i1
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %pattern = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %5, i32 0, i32 0
  %6 = load %struct.regex_t*, %struct.regex_t** %pattern, align 8
  %7 = load %struct.sVString*, %struct.sVString** %line.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %7, i32 0, i32 2
  %8 = load i8*, i8** %buffer, align 8
  %arraydecay = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %call = call i32 @regexec(%struct.regex_t* %6, i8* %8, i64 10, %struct.regmatch_t* %arraydecay, i32 0)
  store i32 %call, i32* %match, align 4
  %9 = load i32, i32* %match, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then3, label %if.else17

if.then3:                                         ; preds = %if.end
  store i8 1, i8* %result, align 1
  %10 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %statistics = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %10, i32 0, i32 13
  %match4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics, i32 0, i32 0
  %11 = load i32, i32* %match4, align 8
  %inc = add i32 %11, 1
  store i32 %inc, i32* %match4, align 8
  %12 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %type = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %12, i32 0, i32 1
  %13 = load i32, i32* %type, align 8
  %cmp5 = icmp eq i32 %13, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %14 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %15 = load %struct.sVString*, %struct.sVString** %line.addr, align 8
  %buffer7 = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer7, align 8
  %17 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %arraydecay8 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  call void @matchTagPattern(%struct.lregexControlBlock* %14, i8* %16, %struct.regexPattern* %17, %struct.regmatch_t* %arraydecay8, i64 0)
  br label %if.end16

if.else:                                          ; preds = %if.then3
  %18 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %type9 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %18, i32 0, i32 1
  %19 = load i32, i32* %type9, align 8
  %cmp10 = icmp eq i32 %19, 1
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  %20 = load %struct.sVString*, %struct.sVString** %line.addr, align 8
  %21 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %arraydecay12 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %call13 = call zeroext i1 @matchCallbackPattern(%struct.sVString* %20, %struct.regexPattern* %21, %struct.regmatch_t* %arraydecay12)
  %frombool = zext i1 %call13 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end15

if.else14:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else14
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 0, i8* %result, align 1
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  br label %if.end20

if.else17:                                        ; preds = %if.end
  %22 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %statistics18 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %22, i32 0, i32 13
  %unmatch = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics18, i32 0, i32 1
  %23 = load i32, i32* %unmatch, align 4
  %inc19 = add i32 %23, 1
  store i32 %inc19, i32* %unmatch, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.end16
  %24 = load i8, i8* %result, align 1
  %tobool21 = trunc i8 %24 to i1
  store i1 %tobool21, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end20, %if.then
  %25 = load i1, i1* %retval, align 1
  ret i1 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notifyRegexInputStart(%struct.lregexControlBlock* %lcb) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 0
  store i64 0, i64* %currentScope, align 8
  %1 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %1, i32 0, i32 3
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %2)
  ret void
}

declare void @ptrArrayClear(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notifyRegexInputEnd(%struct.lregexControlBlock* %lcb) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %endline = alloca i64, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  %call = call i64 @getInputLineNumber()
  store i64 %call, i64* %endline, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %1 = load i64, i64* %endline, align 8
  call void @fillEndLineFieldOfUpperScopes(%struct.lregexControlBlock* %0, i64 %1)
  ret void
}

declare i64 @getInputLineNumber() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fillEndLineFieldOfUpperScopes(%struct.lregexControlBlock* %lcb, i64 %endline) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %endline.addr = alloca i64, align 8
  %entry1 = alloca %struct.sTagEntryInfo*, align 8
  %n = alloca i32, align 4
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i64 %endline, i64* %endline.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 0
  %1 = load i64, i64* %currentScope, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %n, align 4
  %call = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %2)
  store %struct.sTagEntryInfo* %call, %struct.sTagEntryInfo** %entry1, align 8
  %tobool = icmp ne %struct.sTagEntryInfo* %call, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry1, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %3, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 11
  %4 = load i64, i64* %endLine, align 8
  %cmp = icmp eq i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, i64* %endline.addr, align 8
  %7 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry1, align 8
  %extensionFields3 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %7, i32 0, i32 11
  %endLine4 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields3, i32 0, i32 11
  store i64 %6, i64* %endLine4, align 8
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry1, align 8
  %extensionFields5 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %8, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields5, i32 0, i32 7
  %9 = load i32, i32* %scopeIndex, align 8
  store i32 %9, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @findRegexTagsMainloop(i32 ()* %driver) #0 {
entry:
  %driver.addr = alloca i32 ()*, align 8
  store i32 ()* %driver, i32 ()** %driver.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32 ()*, i32 ()** %driver.addr, align 8
  %call = call i32 %0()
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @findRegexTags() #0 {
entry:
  call void @findRegexTagsMainloop(i32 ()* @fileReadLineDriver)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @fileReadLineDriver() #0 {
entry:
  %call = call i8* @readLineFromInputFile()
  %cmp = icmp eq i8* %call, null
  %0 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 -1, i32 1
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hasScopeActionInRegex(%struct.lregexControlBlock* %lcb) #0 {
entry:
  %retval = alloca i1, align 1
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %patterns = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  %table = alloca %struct.regexTable*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns1, i64 0, i64 0
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx, align 8
  store %struct.sPtrArray* %1, %struct.sPtrArray** %patterns, align 8
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns, align 8
  %call = call zeroext i1 @hasScopeActionInRegex0(%struct.sPtrArray* %2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %4, i32 0, i32 2
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %call2 = call i32 @ptrArrayCount(%struct.sPtrArray* %5)
  %cmp = icmp ult i32 %3, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables3 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %6, i32 0, i32 2
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %tables3, align 8
  %8 = load i32, i32* %i, align 4
  %call4 = call i8* @ptrArrayItem(%struct.sPtrArray* %7, i32 %8)
  %9 = bitcast i8* %call4 to %struct.regexTable*
  store %struct.regexTable* %9, %struct.regexTable** %table, align 8
  %10 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %patterns5 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %10, i32 0, i32 1
  %11 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns5, align 8
  %call6 = call zeroext i1 @hasScopeActionInRegex0(%struct.sPtrArray* %11)
  br i1 %call6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %13 = load i1, i1* %retval, align 1
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @hasScopeActionInRegex0(%struct.sPtrArray* %patterns) #0 {
entry:
  %retval = alloca i1, align 1
  %patterns.addr = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  %ptrn = alloca %struct.regexPattern*, align 8
  store %struct.sPtrArray* %patterns, %struct.sPtrArray** %patterns.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %1)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call1 = call i8* @ptrArrayItem(%struct.sPtrArray* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct.regexPattern*
  store %struct.regexPattern* %4, %struct.regexPattern** %ptrn, align 8
  %5 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %scopeActions = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %5, i32 0, i32 5
  %6 = load i32, i32* %scopeActions, align 8
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addTagRegex(%struct.lregexControlBlock* %lcb, i8* %regex, i8* %name, i8* %kinds, i8* %flags, i8* %disabled) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %regex.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %kinds.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %disabled.addr = alloca i8*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %regex, i8** %regex.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %kinds, i8** %kinds.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %1 = load i8*, i8** %regex.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %kinds.addr, align 8
  %4 = load i8*, i8** %flags.addr, align 8
  %5 = load i8*, i8** %disabled.addr, align 8
  %call = call %struct.regexPattern* @addTagRegexInternal(%struct.lregexControlBlock* %0, i32 -1, i32 0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regexPattern* @addTagRegexInternal(%struct.lregexControlBlock* %lcb, i32 %table_index, i32 %regptype, i8* %regex, i8* %name, i8* %kinds, i8* %flags, i8* %disabled) #0 {
entry:
  %retval = alloca %struct.regexPattern*, align 8
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %table_index.addr = alloca i32, align 4
  %regptype.addr = alloca i32, align 4
  %regex.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %kinds.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %disabled.addr = alloca i8*, align 8
  %rptr = alloca %struct.regexPattern*, align 8
  %cp = alloca %struct.regex_t*, align 8
  %kind = alloca i8, align 1
  %kindName = alloca i8*, align 8
  %description = alloca i8*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i32 %table_index, i32* %table_index.addr, align 4
  store i32 %regptype, i32* %regptype.addr, align 4
  store i8* %regex, i8** %regex.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %kinds, i8** %kinds.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  store %struct.regexPattern* null, %struct.regexPattern** %rptr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8, i8* @regexAvailable, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end2
  store %struct.regexPattern* null, %struct.regexPattern** %retval, align 8
  br label %return

if.end:                                           ; preds = %do.end2
  %1 = load i32, i32* %regptype.addr, align 4
  %2 = load i8*, i8** %regex.addr, align 8
  %3 = load i8*, i8** %flags.addr, align 8
  %call = call %struct.regex_t* @compileRegex(i32 %1, i8* %2, i8* %3)
  store %struct.regex_t* %call, %struct.regex_t** %cp, align 8
  %4 = load %struct.regex_t*, %struct.regex_t** %cp, align 8
  %cmp = icmp ne %struct.regex_t* %4, null
  br i1 %cmp, label %if.then3, label %if.end34

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %kinds.addr, align 8
  call void @parseKinds(i8* %5, i8* %kind, i8** %kindName, i8** %description)
  %6 = load i8, i8* %kind, align 1
  %conv = sext i8 %6 to i32
  %7 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %7, i32 0, i32 4
  %8 = load i32, i32* %owner, align 8
  %call4 = call %struct.sKindDefinition* @getLanguageKind(i32 %8, i32 -2)
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %call4, i32 0, i32 1
  %9 = load i8, i8* %letter, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then3
  %10 = load i8, i8* %kind, align 1
  %conv9 = sext i8 %10 to i32
  %11 = load i8*, i8** %regex.addr, align 8
  %12 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner10 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %12, i32 0, i32 4
  %13 = load i32, i32* %owner10, align 8
  %call11 = call i8* @getLanguageName(i32 %13)
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.16, i64 0, i64 0), i32 %conv9, i8* %11, i8* %call11)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then3
  %14 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %15 = load i32, i32* %table_index.addr, align 4
  %16 = load i32, i32* %regptype.addr, align 4
  %17 = load %struct.regex_t*, %struct.regex_t** %cp, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load i8, i8* %kind, align 1
  %20 = load i8*, i8** %kindName, align 8
  %21 = load i8*, i8** %description, align 8
  %22 = load i8*, i8** %flags.addr, align 8
  %23 = load i8*, i8** %disabled.addr, align 8
  %call13 = call %struct.regexPattern* @addCompiledTagPattern(%struct.lregexControlBlock* %14, i32 %15, i32 %16, %struct.regex_t* %17, i8* %18, i8 signext %19, i8* %20, i8* %21, i8* %22, i8* %23)
  store %struct.regexPattern* %call13, %struct.regexPattern** %rptr, align 8
  %24 = load i8*, i8** %regex.addr, align 8
  %call14 = call i8* @escapeRegexPattern(i8* %24)
  %25 = load %struct.regexPattern*, %struct.regexPattern** %rptr, align 8
  %pattern_string = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %25, i32 0, i32 12
  store i8* %call14, i8** %pattern_string, align 8
  %26 = load i8*, i8** %kindName, align 8
  %tobool15 = icmp ne i8* %26, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %27 = load i8*, i8** %kindName, align 8
  call void @eFree(i8* %27)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12
  %28 = load i8*, i8** %description, align 8
  %tobool18 = icmp ne i8* %28, null
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %29 = load i8*, i8** %description, align 8
  call void @eFree(i8* %29)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  %30 = load i8*, i8** %name.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv21 = sext i8 %31 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.end20
  %32 = load %struct.regexPattern*, %struct.regexPattern** %rptr, align 8
  %exclusive = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %32, i32 0, i32 2
  %33 = load i8, i8* %exclusive, align 4
  %tobool25 = trunc i8 %33 to i1
  br i1 %tobool25, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then24
  %34 = load %struct.regexPattern*, %struct.regexPattern** %rptr, align 8
  %scopeActions = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %34, i32 0, i32 5
  %35 = load i32, i32* %scopeActions, align 8
  %and = and i32 %35, 16
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %36 = load i32, i32* %regptype.addr, align 4
  %cmp29 = icmp eq i32 %36, 2
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %lor.lhs.false28, %lor.lhs.false, %if.then24
  %37 = load %struct.regexPattern*, %struct.regexPattern** %rptr, align 8
  %accept_empty_name = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %37, i32 0, i32 3
  store i8 1, i8* %accept_empty_name, align 1
  br label %if.end32

if.else:                                          ; preds = %lor.lhs.false28
  %38 = load i8*, i8** %regex.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %38)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then31
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end20
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end
  %39 = load %struct.regexPattern*, %struct.regexPattern** %rptr, align 8
  store %struct.regexPattern* %39, %struct.regexPattern** %retval, align 8
  br label %return

return:                                           ; preds = %if.end34, %if.then
  %40 = load %struct.regexPattern*, %struct.regexPattern** %retval, align 8
  ret %struct.regexPattern* %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addTagMultiLineRegex(%struct.lregexControlBlock* %lcb, i8* %regex, i8* %name, i8* %kinds, i8* %flags, i8* %disabled) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %regex.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %kinds.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %disabled.addr = alloca i8*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %regex, i8** %regex.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %kinds, i8** %kinds.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %1 = load i8*, i8** %regex.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %kinds.addr, align 8
  %4 = load i8*, i8** %flags.addr, align 8
  %5 = load i8*, i8** %disabled.addr, align 8
  %call = call %struct.regexPattern* @addTagRegexInternal(%struct.lregexControlBlock* %0, i32 -1, i32 1, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addTagMultiTableRegex(%struct.lregexControlBlock* %lcb, i8* %table_name, i8* %regex, i8* %name, i8* %kinds, i8* %flags, i8* %disabled) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %table_name.addr = alloca i8*, align 8
  %regex.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %kinds.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %disabled.addr = alloca i8*, align 8
  %table_index = alloca i32, align 4
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %table_name, i8** %table_name.addr, align 8
  store i8* %regex, i8** %regex.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %kinds, i8** %kinds.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %1 = load i8*, i8** %table_name.addr, align 8
  %call = call i32 @getTableIndexForName(%struct.lregexControlBlock* %0, i8* %1)
  store i32 %call, i32* %table_index, align 4
  %2 = load i32, i32* %table_index, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %table_name.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %5 = load i32, i32* %table_index, align 4
  %6 = load i8*, i8** %regex.addr, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i8*, i8** %kinds.addr, align 8
  %9 = load i8*, i8** %flags.addr, align 8
  %10 = load i8*, i8** %disabled.addr, align 8
  %call1 = call %struct.regexPattern* @addTagRegexInternal(%struct.lregexControlBlock* %4, i32 %5, i32 2, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getTableIndexForName(%struct.lregexControlBlock* %lcb, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %table = alloca %struct.regexTable*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %1, i32 0, i32 2
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %2)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %3, i32 0, i32 2
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %tables1, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call i8* @ptrArrayItem(%struct.sPtrArray* %4, i32 %5)
  %6 = bitcast i8* %call2 to %struct.regexTable*
  store %struct.regexTable* %6, %struct.regexTable** %table, align 8
  %7 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %name3 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %7, i32 0, i32 0
  %8 = load i8*, i8** %name3, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %8, i8* %9)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare void @error(i32, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addCallbackRegex(%struct.lregexControlBlock* %lcb, i8* %regex, i8* %flags, i1 (i8*, %struct.regexMatch*, i32, i8*)* %callback, i8* %disabled, i8* %userData) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %regex.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %callback.addr = alloca i1 (i8*, %struct.regexMatch*, i32, i8*)*, align 8
  %disabled.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  %cp = alloca %struct.regex_t*, align 8
  %rptr = alloca %struct.regexPattern*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %regex, i8** %regex.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i1 (i8*, %struct.regexMatch*, i32, i8*)* %callback, i1 (i8*, %struct.regexMatch*, i32, i8*)** %callback.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8, i8* @regexAvailable, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %if.end4

if.end:                                           ; preds = %do.end
  %1 = load i8*, i8** %regex.addr, align 8
  %2 = load i8*, i8** %flags.addr, align 8
  %call = call %struct.regex_t* @compileRegex(i32 0, i8* %1, i8* %2)
  store %struct.regex_t* %call, %struct.regex_t** %cp, align 8
  %3 = load %struct.regex_t*, %struct.regex_t** %cp, align 8
  %cmp = icmp ne %struct.regex_t* %3, null
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %4 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %5 = load %struct.regex_t*, %struct.regex_t** %cp, align 8
  %6 = load i1 (i8*, %struct.regexMatch*, i32, i8*)*, i1 (i8*, %struct.regexMatch*, i32, i8*)** %callback.addr, align 8
  %7 = load i8*, i8** %flags.addr, align 8
  %8 = load i8*, i8** %disabled.addr, align 8
  %9 = load i8*, i8** %userData.addr, align 8
  %call2 = call %struct.regexPattern* @addCompiledCallbackPattern(%struct.lregexControlBlock* %4, %struct.regex_t* %5, i1 (i8*, %struct.regexMatch*, i32, i8*)* %6, i8* %7, i8* %8, i8* %9)
  store %struct.regexPattern* %call2, %struct.regexPattern** %rptr, align 8
  %10 = load i8*, i8** %regex.addr, align 8
  %call3 = call i8* @escapeRegexPattern(i8* %10)
  %11 = load %struct.regexPattern*, %struct.regexPattern** %rptr, align 8
  %pattern_string = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %11, i32 0, i32 12
  store i8* %call3, i8** %pattern_string, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then1, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regex_t* @compileRegex(i32 %regptype, i8* %regexp, i8* %flags) #0 {
entry:
  %regptype.addr = alloca i32, align 4
  %regexp.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %cflags = alloca i32, align 4
  %result = alloca %struct.regex_t*, align 8
  %errcode = alloca i32, align 4
  %errmsg = alloca [256 x i8], align 1
  store i32 %regptype, i32* %regptype.addr, align 4
  store i8* %regexp, i8** %regexp.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i32 9, i32* %cflags, align 4
  %0 = load i32, i32* %regptype.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %cflags, align 4
  %and = and i32 %1, -9
  store i32 %and, i32* %cflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %flags.addr, align 8
  %3 = bitcast i32* %cflags to i8*
  call void @flagsEval(i8* %2, %struct.sFlagDefinition* getelementptr inbounds ([3 x %struct.sFlagDefinition], [3 x %struct.sFlagDefinition]* @regexFlagDefs, i64 0, i64 0), i32 3, i8* %3)
  %call = call i8* @eMalloc(i64 32)
  %4 = bitcast i8* %call to %struct.regex_t*
  store %struct.regex_t* %4, %struct.regex_t** %result, align 8
  %5 = load %struct.regex_t*, %struct.regex_t** %result, align 8
  %6 = load i8*, i8** %regexp.addr, align 8
  %7 = load i32, i32* %cflags, align 4
  %call1 = call i32 @"\01_regcomp"(%struct.regex_t* %5, i8* %6, i32 %7)
  store i32 %call1, i32* %errcode, align 4
  %8 = load i32, i32* %errcode, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %errcode, align 4
  %10 = load %struct.regex_t*, %struct.regex_t** %result, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %errmsg, i64 0, i64 0
  %call4 = call i64 @regerror(i32 %9, %struct.regex_t* %10, i8* %arraydecay, i64 256) #5
  %11 = load i8*, i8** %regexp.addr, align 8
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %errmsg, i64 0, i64 0
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %11, i8* %arraydecay5)
  %12 = load %struct.regex_t*, %struct.regex_t** %result, align 8
  call void @regfree(%struct.regex_t* %12)
  %13 = load %struct.regex_t*, %struct.regex_t** %result, align 8
  %14 = bitcast %struct.regex_t* %13 to i8*
  call void @eFree(i8* %14)
  store %struct.regex_t* null, %struct.regex_t** %result, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %15 = load %struct.regex_t*, %struct.regex_t** %result, align 8
  ret %struct.regex_t* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regexPattern* @addCompiledCallbackPattern(%struct.lregexControlBlock* %lcb, %struct.regex_t* %pattern, i1 (i8*, %struct.regexMatch*, i32, i8*)* %callback, i8* %flags, i8* %disabled, i8* %userData) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %pattern.addr = alloca %struct.regex_t*, align 8
  %callback.addr = alloca i1 (i8*, %struct.regexMatch*, i32, i8*)*, align 8
  %flags.addr = alloca i8*, align 8
  %disabled.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  %ptrn = alloca %struct.regexPattern*, align 8
  %exclusive = alloca i8, align 1
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.regex_t* %pattern, %struct.regex_t** %pattern.addr, align 8
  store i1 (i8*, %struct.regexMatch*, i32, i8*)* %callback, i1 (i8*, %struct.regexMatch*, i32, i8*)** %callback.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8 0, i8* %exclusive, align 1
  %0 = load i8*, i8** %flags.addr, align 8
  call void @flagsEval(i8* %0, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @prePtrnFlagDef, i64 0, i64 0), i32 1, i8* %exclusive)
  %1 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %2 = load %struct.regex_t*, %struct.regex_t** %pattern.addr, align 8
  %call = call %struct.regexPattern* @addCompiledTagCommon(%struct.lregexControlBlock* %1, i32 -1, %struct.regex_t* %2, i32 0)
  store %struct.regexPattern* %call, %struct.regexPattern** %ptrn, align 8
  %3 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %type = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %3, i32 0, i32 1
  store i32 1, i32* %type, align 8
  %4 = load i1 (i8*, %struct.regexMatch*, i32, i8*)*, i1 (i8*, %struct.regexMatch*, i32, i8*)** %callback.addr, align 8
  %5 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %u = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %5, i32 0, i32 4
  %callback1 = bitcast %union.anon.1* %u to %struct.anon.3*
  %function = getelementptr inbounds %struct.anon.3, %struct.anon.3* %callback1, i32 0, i32 0
  store i1 (i8*, %struct.regexMatch*, i32, i8*)* %4, i1 (i8*, %struct.regexMatch*, i32, i8*)** %function, align 8
  %6 = load i8*, i8** %userData.addr, align 8
  %7 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %u2 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %7, i32 0, i32 4
  %callback3 = bitcast %union.anon.1* %u2 to %struct.anon.3*
  %userData4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %callback3, i32 0, i32 1
  store i8* %6, i8** %userData4, align 8
  %8 = load i8, i8* %exclusive, align 1
  %tobool = trunc i8 %8 to i1
  %9 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %exclusive5 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %9, i32 0, i32 2
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %exclusive5, align 4
  %10 = load i8*, i8** %disabled.addr, align 8
  %11 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %disabled6 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %11, i32 0, i32 6
  store i8* %10, i8** %disabled6, align 8
  %12 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  ret %struct.regexPattern* %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @escapeRegexPattern(i8* %pattern) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %p = alloca %struct.sVString*, align 8
  %c = alloca i8, align 1
  store i8* %pattern, i8** %pattern.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %0 = load i8*, i8** %pattern.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %pattern.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 10
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.sVString*, %struct.sVString** %p, align 8
  call void @vStringCatS(%struct.sVString* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end17

if.else:                                          ; preds = %while.body
  %6 = load i8, i8* %c, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 9
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %7 = load %struct.sVString*, %struct.sVString** %p, align 8
  call void @vStringCatS(%struct.sVString* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end16

if.else9:                                         ; preds = %if.else
  %8 = load i8, i8* %c, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 92
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else9
  %9 = load %struct.sVString*, %struct.sVString** %p, align 8
  call void @vStringCatS(%struct.sVString* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %if.end

if.else14:                                        ; preds = %if.else9
  %10 = load %struct.sVString*, %struct.sVString** %p, align 8
  %11 = load i8, i8* %c, align 1
  %conv15 = sext i8 %11 to i32
  call void @vStringPut(%struct.sVString* %10, i32 %conv15)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %12 = load i8*, i8** %pattern.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %pattern.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.sVString*, %struct.sVString** %p, align 8
  %call18 = call i8* @vStringDeleteUnwrap(%struct.sVString* %13)
  ret i8* %call18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @processTagRegexOption(%struct.lregexControlBlock* %lcb, i32 %regptype, i8* %parameter) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %regptype.addr = alloca i32, align 4
  %parameter.addr = alloca i8*, align 8
  %regexfile = alloca i8*, align 8
  %mio = alloca %struct._MIO*, align 8
  %regex = alloca %struct.sVString*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i32 %regptype, i32* %regptype.addr, align 4
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  call void @clearPatternSet(%struct.lregexControlBlock* %3)
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %parameter.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 64
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %6 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %7 = load i32, i32* %regptype.addr, align 4
  %8 = load i8*, i8** %parameter.addr, align 8
  call void @addTagRegexOption(%struct.lregexControlBlock* %6, i32 %7, i8* %8)
  br label %if.end30

if.else8:                                         ; preds = %if.else
  %9 = load i8*, i8** %parameter.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %call = call zeroext i1 @doesFileExist(i8* %add.ptr)
  br i1 %call, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.else8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end29

if.else10:                                        ; preds = %if.else8
  %10 = load i8*, i8** %parameter.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %add.ptr11, i8** %regexfile, align 8
  %11 = load i8*, i8** %regexfile, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %12 = load i8*, i8** %regexfile, align 8
  %call12 = call %struct._MIO* @mio_new_file(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._MIO* %call12, %struct._MIO** %mio, align 8
  %13 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %cmp13 = icmp eq %struct._MIO* %13, null
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else10
  %14 = load i8*, i8** %regexfile, align 8
  call void (i32, i8*, ...) @error(i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  br label %if.end28

if.else16:                                        ; preds = %if.else10
  %call17 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call17, %struct.sVString** %regex, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else16
  %15 = load %struct.sVString*, %struct.sVString** %regex, align 8
  %16 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call18 = call i8* @readLineRaw(%struct.sVString* %15, %struct._MIO* %16)
  %tobool = icmp ne i8* %call18, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.sVString*, %struct.sVString** %regex, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 0
  %18 = load i64, i64* %length, align 8
  %cmp19 = icmp ugt i64 %18, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %19 = load %struct.sVString*, %struct.sVString** %regex, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %21 to i32
  %cmp23 = icmp ne i32 %conv22, 10
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %land.lhs.true
  %22 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %23 = load i32, i32* %regptype.addr, align 4
  %24 = load %struct.sVString*, %struct.sVString** %regex, align 8
  %buffer26 = getelementptr inbounds %struct.sVString, %struct.sVString* %24, i32 0, i32 2
  %25 = load i8*, i8** %buffer26, align 8
  call void @addTagRegexOption(%struct.lregexControlBlock* %22, i32 %23, i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.then25, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call27 = call i32 @mio_free(%struct._MIO* %26)
  %27 = load %struct.sVString*, %struct.sVString** %regex, align 8
  call void @vStringDelete(%struct.sVString* %27)
  br label %if.end28

if.end28:                                         ; preds = %while.end, %if.then15
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then9
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then7
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addTagRegexOption(%struct.lregexControlBlock* %lcb, i32 %regptype, i8* %pattern) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %regptype.addr = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %table_index = alloca i32, align 4
  %regex_pat = alloca i8*, align 8
  %name = alloca i8*, align 8
  %kinds = alloca i8*, align 8
  %flags = alloca i8*, align 8
  %c = alloca i8*, align 8
  %tmp = alloca %struct.sVString*, align 8
  %table_name = alloca i8*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i32 %regptype, i32* %regptype.addr, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  %0 = load i8, i8* @regexAvailable, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 -1, i32* %table_index, align 4
  store i8* null, i8** %regex_pat, align 8
  %1 = load i32, i32* %regptype.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then1, label %if.else35

if.then1:                                         ; preds = %if.end
  %2 = load i8*, i8** %pattern.addr, align 8
  store i8* %2, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %3 = load i8*, i8** %c, align 8
  %4 = load i8, i8* %3, align 1
  %tobool2 = icmp ne i8 %4, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %c, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @isalnum(i32 %conv) #6
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8*, i8** %c, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 95
  br i1 %cmp5, label %if.end20, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false
  %9 = load i8*, i8** %c, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then7
  %11 = load i8*, i8** %c, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %add.ptr, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp ne i32 %conv10, 94
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %land.lhs.true
  %call14 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call14, %struct.sVString** %tmp, align 8
  %13 = load %struct.sVString*, %struct.sVString** %tmp, align 8
  %14 = load i8*, i8** %c, align 8
  %15 = load i8, i8* %14, align 1
  %conv15 = sext i8 %15 to i32
  call void @vStringPut(%struct.sVString* %13, i32 %conv15)
  %16 = load %struct.sVString*, %struct.sVString** %tmp, align 8
  call void @vStringPut(%struct.sVString* %16, i32 94)
  %17 = load %struct.sVString*, %struct.sVString** %tmp, align 8
  %18 = load i8*, i8** %c, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %18, i64 1
  call void @vStringCatS(%struct.sVString* %17, i8* %add.ptr16)
  %19 = load %struct.sVString*, %struct.sVString** %tmp, align 8
  %call17 = call i8* @vStringDeleteUnwrap(%struct.sVString* %19)
  store i8* %call17, i8** %regex_pat, align 8
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %if.then7
  %20 = load i8*, i8** %c, align 8
  %call18 = call i8* @eStrdup(i8* %20)
  store i8* %call18, i8** %regex_pat, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  br label %for.end

if.end20:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %21 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end19, %for.cond
  %22 = load i8*, i8** %regex_pat, align 8
  %cmp21 = icmp eq i8* %22, null
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %for.end
  %23 = load i8*, i8** %regex_pat, align 8
  %24 = load i8, i8* %23, align 1
  %conv24 = sext i8 %24 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false23, %for.end
  %25 = load i8*, i8** %pattern.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %25)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %lor.lhs.false23
  %26 = load i8*, i8** %pattern.addr, align 8
  %27 = load i8*, i8** %c, align 8
  %28 = load i8*, i8** %pattern.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call29 = call i8* @eStrndup(i8* %26, i64 %sub.ptr.sub)
  store i8* %call29, i8** %table_name, align 8
  %29 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %30 = load i8*, i8** %table_name, align 8
  %call30 = call i32 @getTableIndexForName(%struct.lregexControlBlock* %29, i8* %30)
  store i32 %call30, i32* %table_index, align 4
  %31 = load i32, i32* %table_index, align 4
  %cmp31 = icmp slt i32 %31, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  %32 = load i8*, i8** %table_name, align 8
  %33 = load i8*, i8** %pattern.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i8* %32, i8* %33)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end28
  %34 = load i8*, i8** %table_name, align 8
  call void @eFree(i8* %34)
  br label %if.end37

if.else35:                                        ; preds = %if.end
  %35 = load i8*, i8** %pattern.addr, align 8
  %call36 = call i8* @eStrdup(i8* %35)
  store i8* %call36, i8** %regex_pat, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.end34
  %36 = load i32, i32* %regptype.addr, align 4
  %37 = load i8*, i8** %regex_pat, align 8
  %call38 = call zeroext i1 @parseTagRegex(i32 %36, i8* %37, i8** %name, i8** %kinds, i8** %flags)
  br i1 %call38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  %38 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %39 = load i32, i32* %table_index, align 4
  %40 = load i32, i32* %regptype.addr, align 4
  %41 = load i8*, i8** %regex_pat, align 8
  %42 = load i8*, i8** %name, align 8
  %43 = load i8*, i8** %kinds, align 8
  %44 = load i8*, i8** %flags, align 8
  %call40 = call %struct.regexPattern* @addTagRegexInternal(%struct.lregexControlBlock* %38, i32 %39, i32 %40, i8* %41, i8* %42, i8* %43, i8* %44, i8* null)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  %45 = load i8*, i8** %regex_pat, align 8
  call void @eFree(i8* %45)
  br label %return

return:                                           ; preds = %if.end41, %if.then
  ret void
}

declare zeroext i1 @doesFileExist(i8*) #1

declare void @verbose(i8*, ...) #1

declare %struct._MIO* @mio_new_file(i8*, i8*) #1

declare %struct.sVString* @vStringNew() #1

declare i8* @readLineRaw(%struct.sVString*, %struct._MIO*) #1

declare i32 @mio_free(%struct._MIO*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printRegexFlags(i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.colprintTable* @flagsColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %0, %struct.sFlagDefinition* getelementptr inbounds ([3 x %struct.sFlagDefinition], [3 x %struct.sFlagDefinition]* @regexFlagDefs, i64 0, i64 0), i32 3)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %1, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @prePtrnFlagDef, i64 0, i64 0), i32 1)
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %2, %struct.sFlagDefinition* getelementptr inbounds ([2 x %struct.sFlagDefinition], [2 x %struct.sFlagDefinition]* @scopePtrnFlagDef, i64 0, i64 0), i32 2)
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %3, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @extraSpecFlagDef, i64 0, i64 0), i32 1)
  %4 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %4, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @fieldSpecFlagDef, i64 0, i64 0), i32 1)
  %5 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %6 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %6 to i1
  %7 = load i8, i8* %machinable.addr, align 1
  %tobool2 = trunc i8 %7 to i1
  %8 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @flagsColprintTablePrint(%struct.colprintTable* %5, i1 zeroext %tobool, i1 zeroext %tobool2, %struct.__sFILE* %8)
  %9 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %9)
  ret void
}

declare %struct.colprintTable* @flagsColprintTableNew() #1

declare void @flagsColprintAddDefinitions(%struct.colprintTable*, %struct.sFlagDefinition*, i32) #1

declare void @flagsColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

declare void @colprintTableDelete(%struct.colprintTable*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printMultilineRegexFlags(i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.colprintTable* @flagsColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %0, %struct.sFlagDefinition* getelementptr inbounds ([3 x %struct.sFlagDefinition], [3 x %struct.sFlagDefinition]* @regexFlagDefs, i64 0, i64 0), i32 3)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %1, %struct.sFlagDefinition* getelementptr inbounds ([2 x %struct.sFlagDefinition], [2 x %struct.sFlagDefinition]* @multilinePtrnFlagDef, i64 0, i64 0), i32 2)
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %2, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @extraSpecFlagDef, i64 0, i64 0), i32 1)
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %3, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @fieldSpecFlagDef, i64 0, i64 0), i32 1)
  %4 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %5 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %5 to i1
  %6 = load i8, i8* %machinable.addr, align 1
  %tobool2 = trunc i8 %6 to i1
  %7 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @flagsColprintTablePrint(%struct.colprintTable* %4, i1 zeroext %tobool, i1 zeroext %tobool2, %struct.__sFILE* %7)
  %8 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printMultitableRegexFlags(i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.colprintTable* @flagsColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %0, %struct.sFlagDefinition* getelementptr inbounds ([3 x %struct.sFlagDefinition], [3 x %struct.sFlagDefinition]* @regexFlagDefs, i64 0, i64 0), i32 3)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %1, %struct.sFlagDefinition* getelementptr inbounds ([2 x %struct.sFlagDefinition], [2 x %struct.sFlagDefinition]* @multilinePtrnFlagDef, i64 0, i64 0), i32 2)
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %2, %struct.sFlagDefinition* getelementptr inbounds ([5 x %struct.sFlagDefinition], [5 x %struct.sFlagDefinition]* @multitablePtrnFlagDef, i64 0, i64 0), i32 5)
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %3, %struct.sFlagDefinition* getelementptr inbounds ([2 x %struct.sFlagDefinition], [2 x %struct.sFlagDefinition]* @scopePtrnFlagDef, i64 0, i64 0), i32 2)
  %4 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %4, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @extraSpecFlagDef, i64 0, i64 0), i32 1)
  %5 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %5, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @fieldSpecFlagDef, i64 0, i64 0), i32 1)
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %7 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %7 to i1
  %8 = load i8, i8* %machinable.addr, align 1
  %tobool2 = trunc i8 %8 to i1
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @flagsColprintTablePrint(%struct.colprintTable* %6, i1 zeroext %tobool, i1 zeroext %tobool2, %struct.__sFILE* %9)
  %10 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeRegexResources() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @regexNeedsMultilineBuffer(%struct.lregexControlBlock* %lcb) #0 {
entry:
  %retval = alloca i1, align 1
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns, i64 0, i64 1
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %1)
  %cmp = icmp ugt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %2, i32 0, i32 2
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %call1 = call i32 @ptrArrayCount(%struct.sPtrArray* %3)
  %cmp2 = icmp ugt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i1 true, i1* %retval, align 1
  br label %return

if.else4:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @matchMultilineRegex(%struct.lregexControlBlock* %lcb, %struct.sVString* %allLines) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %allLines.addr = alloca %struct.sVString*, align 8
  %result = alloca i8, align 1
  %i = alloca i32, align 4
  %ptrn = alloca %struct.regexPattern*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.sVString* %allLines, %struct.sVString** %allLines.addr, align 8
  store i8 0, i8* %result, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns, i64 0, i64 1
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %2)
  %cmp = icmp ult i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns1, i64 0, i64 1
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx2, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call i8* @ptrArrayItem(%struct.sPtrArray* %4, i32 %5)
  %6 = bitcast i8* %call3 to %struct.regexPattern*
  store %struct.regexPattern* %6, %struct.regexPattern** %ptrn, align 8
  %7 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %xtagType = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %7, i32 0, i32 10
  %8 = load i32, i32* %xtagType, align 8
  %cmp4 = icmp ne i32 %8, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %xtagType5 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %9, i32 0, i32 10
  %10 = load i32, i32* %xtagType5, align 8
  %call6 = call zeroext i1 @isXtagEnabled(i32 %10)
  br i1 %call6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %12 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  %13 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %call7 = call zeroext i1 @matchMultilineRegexPattern(%struct.lregexControlBlock* %11, %struct.sVString* %12, %struct.regexPattern* %13)
  br i1 %call7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %14 = load i8, i8* %result, align 1
  %tobool = trunc i8 %14 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %15 = phi i1 [ true, %if.end ], [ %tobool, %lor.rhs ]
  %frombool = zext i1 %15 to i8
  store i8 %frombool, i8* %result, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end, %if.then
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8, i8* %result, align 1
  %tobool8 = trunc i8 %17 to i1
  ret i1 %tobool8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @matchMultilineRegexPattern(%struct.lregexControlBlock* %lcb, %struct.sVString* %allLines, %struct.regexPattern* %patbuf) #0 {
entry:
  %retval = alloca i1, align 1
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %allLines.addr = alloca %struct.sVString*, align 8
  %patbuf.addr = alloca %struct.regexPattern*, align 8
  %start = alloca i8*, align 8
  %current = alloca i8*, align 8
  %result = alloca i8, align 1
  %pmatch = alloca [10 x %struct.regmatch_t], align 8
  %match = alloca i32, align 4
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.sVString* %allLines, %struct.sVString** %allLines.addr, align 8
  store %struct.regexPattern* %patbuf, %struct.regexPattern** %patbuf.addr, align 8
  store i8 0, i8* %result, align 1
  store i32 0, i32* %match, align 4
  %0 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %disabled = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %0, i32 0, i32 6
  %1 = load i8*, i8** %disabled, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %disabled1 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %2, i32 0, i32 6
  %3 = load i8*, i8** %disabled1, align 8
  %4 = load i8, i8* %3, align 1
  %tobool2 = trunc i8 %4 to i1
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  store i8* %6, i8** %start, align 8
  %7 = load i8*, i8** %start, align 8
  store i8* %7, i8** %current, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %8 = load i32, i32* %match, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i8*, i8** %current, align 8
  %10 = load i8*, i8** %start, align 8
  %11 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %11, i32 0, i32 0
  %12 = load i64, i64* %length, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %12
  %cmp3 = icmp ult i8* %9, %add.ptr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %pattern = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %14, i32 0, i32 0
  %15 = load %struct.regex_t*, %struct.regex_t** %pattern, align 8
  %16 = load i8*, i8** %current, align 8
  %arraydecay = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %call = call i32 @regexec(%struct.regex_t* %15, i8* %16, i64 10, %struct.regmatch_t* %arraydecay, i32 0)
  store i32 %call, i32* %match, align 4
  %17 = load i32, i32* %match, align 4
  %cmp4 = icmp eq i32 %17, 0
  br i1 %cmp4, label %if.then5, label %if.else17

if.then5:                                         ; preds = %for.body
  %18 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %statistics = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %18, i32 0, i32 13
  %match6 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics, i32 0, i32 0
  %19 = load i32, i32* %match6, align 8
  %inc = add i32 %19, 1
  store i32 %inc, i32* %match6, align 8
  %20 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %type = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %20, i32 0, i32 1
  %21 = load i32, i32* %type, align 8
  %cmp7 = icmp eq i32 %21, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %22 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %23 = load i8*, i8** %current, align 8
  %24 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %arraydecay9 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %25 = load i8*, i8** %current, align 8
  %26 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %mgroup = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %26, i32 0, i32 8
  %forLineNumberDetermination = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup, i32 0, i32 0
  %27 = load i32, i32* %forLineNumberDetermination, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 %idxprom
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx, i32 0, i32 0
  %28 = load i64, i64* %rm_so, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %25, i64 %28
  %29 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @matchTagPattern(%struct.lregexControlBlock* %22, i8* %23, %struct.regexPattern* %24, %struct.regmatch_t* %arraydecay9, i64 %sub.ptr.sub)
  store i8 1, i8* %result, align 1
  br label %if.end16

if.else:                                          ; preds = %if.then5
  %30 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %type11 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %30, i32 0, i32 1
  %31 = load i32, i32* %type11, align 8
  %cmp12 = icmp eq i32 %31, 1
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  br label %if.end15

if.else14:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else14
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 0, i8* %result, align 1
  br label %for.end

if.end15:                                         ; preds = %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then8
  br label %if.end20

if.else17:                                        ; preds = %for.body
  %32 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %statistics18 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %32, i32 0, i32 13
  %unmatch = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics18, i32 0, i32 1
  %33 = load i32, i32* %unmatch, align 4
  %inc19 = add i32 %33, 1
  store i32 %inc19, i32* %unmatch, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.end16
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %34 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %mgroup21 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %34, i32 0, i32 8
  %nextFromStart = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup21, i32 0, i32 2
  %35 = load i8, i8* %nextFromStart, align 4
  %tobool22 = trunc i8 %35 to i1
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %36 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %mgroup23 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %36, i32 0, i32 8
  %forNextScanning = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup23, i32 0, i32 1
  %37 = load i32, i32* %forNextScanning, align 4
  %idxprom24 = sext i32 %37 to i64
  %arrayidx25 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 %idxprom24
  %rm_so26 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx25, i32 0, i32 0
  %38 = load i64, i64* %rm_so26, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  %39 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %mgroup27 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %39, i32 0, i32 8
  %forNextScanning28 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup27, i32 0, i32 1
  %40 = load i32, i32* %forNextScanning28, align 4
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 %idxprom29
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx30, i32 0, i32 1
  %41 = load i64, i64* %rm_eo, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %38, %cond.true ], [ %41, %cond.false ]
  %42 = load i8*, i8** %current, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %42, i64 %cond
  store i8* %add.ptr31, i8** %current, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end, %land.end
  %43 = load i8, i8* %result, align 1
  %tobool32 = trunc i8 %43 to i1
  store i1 %tobool32, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %44 = load i1, i1* %retval, align 1
  ret i1 %44
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addRegexTable(%struct.lregexControlBlock* %lcb, i8* %name) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %name.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %table = alloca %struct.regexTable*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %c, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %c, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 @isalnum(i32 %conv) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %c, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv2, 95
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %7 = load i8*, i8** %c, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %9 = load i8*, i8** %name.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %conv4, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @getTableIndexForName(%struct.lregexControlBlock* %11, i8* %12)
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  %13 = load i8*, i8** %name.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %13)
  br label %return

if.end9:                                          ; preds = %for.end
  %call10 = call i8* @eCalloc(i64 1, i64 16)
  %14 = bitcast i8* %call10 to %struct.regexTable*
  store %struct.regexTable* %14, %struct.regexTable** %table, align 8
  %15 = load i8*, i8** %name.addr, align 8
  %call11 = call i8* @eStrdup(i8* %15)
  %16 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %name12 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %16, i32 0, i32 0
  store i8* %call11, i8** %name12, align 8
  %call13 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* @deletePattern)
  %17 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %patterns = getelementptr inbounds %struct.regexTable, %struct.regexTable* %17, i32 0, i32 1
  store %struct.sPtrArray* %call13, %struct.sPtrArray** %patterns, align 8
  %18 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %18, i32 0, i32 2
  %19 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %20 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %21 = bitcast %struct.regexTable* %20 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %19, i8* %21)
  br label %return

return:                                           ; preds = %if.end9, %if.then8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #2

declare i8* @eStrdup(i8*) #1

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @extendRegexTable(%struct.lregexControlBlock* %lcb, i8* %src, i8* %dist) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %src.addr = alloca i8*, align 8
  %dist.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %src_table = alloca %struct.regexTable*, align 8
  %dist_table = alloca %struct.regexTable*, align 8
  %ptrn = alloca %struct.regexPattern*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dist, i8** %dist.addr, align 8
  %0 = load i8*, i8** %dist.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %0, i8* %1)
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %call = call i32 @getTableIndexForName(%struct.lregexControlBlock* %2, i8* %3)
  store i32 %call, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %5, i32 0, i32 4
  %6 = load i32, i32* %owner, align 8
  %call1 = call i8* @getLanguageName(i32 %6)
  %7 = load i8*, i8** %src.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %call1, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %8, i32 0, i32 2
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %10 = load i32, i32* %i, align 4
  %call2 = call i8* @ptrArrayItem(%struct.sPtrArray* %9, i32 %10)
  %11 = bitcast i8* %call2 to %struct.regexTable*
  store %struct.regexTable* %11, %struct.regexTable** %src_table, align 8
  %12 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %13 = load i8*, i8** %dist.addr, align 8
  %call3 = call i32 @getTableIndexForName(%struct.lregexControlBlock* %12, i8* %13)
  store i32 %call3, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %15 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner6 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %15, i32 0, i32 4
  %16 = load i32, i32* %owner6, align 8
  %call7 = call i8* @getLanguageName(i32 %16)
  %17 = load i8*, i8** %dist.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %call7, i8* %17)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %18 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables9 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %18, i32 0, i32 2
  %19 = load %struct.sPtrArray*, %struct.sPtrArray** %tables9, align 8
  %20 = load i32, i32* %i, align 4
  %call10 = call i8* @ptrArrayItem(%struct.sPtrArray* %19, i32 %20)
  %21 = bitcast i8* %call10 to %struct.regexTable*
  store %struct.regexTable* %21, %struct.regexTable** %dist_table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.regexTable*, %struct.regexTable** %src_table, align 8
  %patterns = getelementptr inbounds %struct.regexTable, %struct.regexTable* %23, i32 0, i32 1
  %24 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns, align 8
  %call11 = call i32 @ptrArrayCount(%struct.sPtrArray* %24)
  %cmp12 = icmp ult i32 %22, %call11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.regexTable*, %struct.regexTable** %src_table, align 8
  %patterns13 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %25, i32 0, i32 1
  %26 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns13, align 8
  %27 = load i32, i32* %i, align 4
  %call14 = call i8* @ptrArrayItem(%struct.sPtrArray* %26, i32 %27)
  %28 = bitcast i8* %call14 to %struct.regexPattern*
  store %struct.regexPattern* %28, %struct.regexPattern** %ptrn, align 8
  %29 = load %struct.regexTable*, %struct.regexTable** %dist_table, align 8
  %patterns15 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %29, i32 0, i32 1
  %30 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns15, align 8
  %31 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %call16 = call %struct.regexPattern* @refPattern(%struct.regexPattern* %31)
  %32 = bitcast %struct.regexPattern* %call16 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %30, i8* %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @getLanguageName(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regexPattern* @refPattern(%struct.regexPattern* %ptrn) #0 {
entry:
  %ptrn.addr = alloca %struct.regexPattern*, align 8
  store %struct.regexPattern* %ptrn, %struct.regexPattern** %ptrn.addr, align 8
  %0 = load %struct.regexPattern*, %struct.regexPattern** %ptrn.addr, align 8
  %refcount = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %0, i32 0, i32 14
  %1 = load i32, i32* %refcount, align 8
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %refcount, align 8
  %2 = load %struct.regexPattern*, %struct.regexPattern** %ptrn.addr, align 8
  ret %struct.regexPattern* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printMultitableStatistics(%struct.lregexControlBlock* %lcb, %struct.__sFILE* %vfp) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %vfp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.regexTable*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ptrn = alloca %struct.regexPattern*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.__sFILE* %vfp, %struct.__sFILE** %vfp.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 2
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %call = call i8* @ptrArrayItem(%struct.sPtrArray* %1, i32 0)
  %2 = bitcast i8* %call to %struct.regexTable*
  store %struct.regexTable* %2, %struct.regexTable** %table, align 8
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %3, i32 0, i32 2
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %tables1, align 8
  %call2 = call i32 @ptrArrayCount(%struct.sPtrArray* %4)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end26

if.end:                                           ; preds = %entry
  %5 = load %struct.__sFILE*, %struct.__sFILE** %vfp.addr, align 8
  %6 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %6, i32 0, i32 4
  %7 = load i32, i32* %owner, align 8
  %call3 = call i8* @getLanguageName(i32 %7)
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %call3)
  %8 = load %struct.__sFILE*, %struct.__sFILE** %vfp.addr, align 8
  %call5 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), %struct.__sFILE* %8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables6 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %10, i32 0, i32 2
  %11 = load %struct.sPtrArray*, %struct.sPtrArray** %tables6, align 8
  %call7 = call i32 @ptrArrayCount(%struct.sPtrArray* %11)
  %cmp8 = icmp ult i32 %9, %call7
  br i1 %cmp8, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %12 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables9 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %12, i32 0, i32 2
  %13 = load %struct.sPtrArray*, %struct.sPtrArray** %tables9, align 8
  %14 = load i32, i32* %i, align 4
  %call10 = call i8* @ptrArrayItem(%struct.sPtrArray* %13, i32 %14)
  %15 = bitcast i8* %call10 to %struct.regexTable*
  store %struct.regexTable* %15, %struct.regexTable** %table, align 8
  %16 = load %struct.__sFILE*, %struct.__sFILE** %vfp.addr, align 8
  %17 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %name = getelementptr inbounds %struct.regexTable, %struct.regexTable* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call11 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %18)
  %19 = load %struct.__sFILE*, %struct.__sFILE** %vfp.addr, align 8
  %call12 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), %struct.__sFILE* %19)
  store i32 0, i32* %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4
  %21 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %patterns = getelementptr inbounds %struct.regexTable, %struct.regexTable* %21, i32 0, i32 1
  %22 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns, align 8
  %call14 = call i32 @ptrArrayCount(%struct.sPtrArray* %22)
  %cmp15 = icmp ult i32 %20, %call14
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond13
  %23 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %patterns17 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %23, i32 0, i32 1
  %24 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns17, align 8
  %25 = load i32, i32* %j, align 4
  %call18 = call i8* @ptrArrayItem(%struct.sPtrArray* %24, i32 %25)
  %26 = bitcast i8* %call18 to %struct.regexPattern*
  store %struct.regexPattern* %26, %struct.regexPattern** %ptrn, align 8
  %27 = load %struct.__sFILE*, %struct.__sFILE** %vfp.addr, align 8
  %28 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %statistics = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %28, i32 0, i32 13
  %match = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics, i32 0, i32 0
  %29 = load i32, i32* %match, align 8
  %30 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %statistics19 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %30, i32 0, i32 13
  %unmatch = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics19, i32 0, i32 1
  %31 = load i32, i32* %unmatch, align 4
  %32 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %statistics20 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %32, i32 0, i32 13
  %match21 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics20, i32 0, i32 0
  %33 = load i32, i32* %match21, align 8
  %add = add i32 %31, %33
  %34 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %pattern_string = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %34, i32 0, i32 12
  %35 = load i8*, i8** %pattern_string, align 8
  %36 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %refcount = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %36, i32 0, i32 14
  %37 = load i32, i32* %refcount, align 8
  %call22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %29, i32 %add, i8* %35, i32 %37)
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %38 = load i32, i32* %j, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  %39 = load %struct.__sFILE*, %struct.__sFILE** %vfp.addr, align 8
  %call23 = call i32 @fputc(i32 10, %struct.__sFILE* %39)
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %40 = load i32, i32* %i, align 4
  %inc25 = add i32 %40, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end26:                                        ; preds = %if.then, %for.cond
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

declare i32 @fputc(i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @matchMultitableRegex(%struct.lregexControlBlock* %lcb, %struct.sVString* %allLines) #0 {
entry:
  %retval = alloca i1, align 1
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %allLines.addr = alloca %struct.sVString*, align 8
  %table = alloca %struct.regexTable*, align 8
  %offset = alloca i32, align 4
  %vfp = alloca %struct.__sFILE*, align 8
  %v = alloca %struct.sVString*, align 8
  %c = alloca i8*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.sVString* %allLines, %struct.sVString** %allLines.addr, align 8
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 2
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %2, i32 0, i32 2
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %tables1, align 8
  %call2 = call i8* @ptrArrayItem(%struct.sPtrArray* %3, i32 0)
  %4 = bitcast i8* %call2 to %struct.regexTable*
  store %struct.regexTable* %4, %struct.regexTable** %table, align 8
  store i32 0, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %5 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %tobool = icmp ne %struct.regexTable* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %6 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool3 = trunc i8 %6 to i1
  br i1 %tobool3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %do.body
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %7, %struct.__sFILE** %vfp, align 8
  %call5 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call5, %struct.sVString** %v, align 8
  %8 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8
  %10 = load i32, i32* %offset, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %11 = load i8*, i8** %c, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i8*, i8** %c, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = sext i8 %14 to i32
  %cmp8 = icmp ne i32 %conv7, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load %struct.sVString*, %struct.sVString** %v, align 8
  %17 = load i8*, i8** %c, align 8
  %18 = load i8, i8* %17, align 1
  %conv10 = sext i8 %18 to i32
  call void @vStringPut(%struct.sVString* %16, i32 %conv10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %21 = load %struct.sVString*, %struct.sVString** %v, align 8
  %buffer11 = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer11, align 8
  %23 = load i32, i32* %offset, align 4
  %conv12 = zext i32 %23 to i64
  %call13 = call i64 @getInputLineNumberForFileOffset(i64 %conv12)
  %call14 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %22, i64 %call13)
  %24 = load %struct.sVString*, %struct.sVString** %v, align 8
  call void @vStringDelete(%struct.sVString* %24)
  br label %if.end15

if.end15:                                         ; preds = %for.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end15
  %25 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %26 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %27 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  %call16 = call %struct.regexTable* @matchMultitableRegexTable(%struct.lregexControlBlock* %25, %struct.regexTable* %26, %struct.sVString* %27, i32* %offset)
  store %struct.regexTable* %call16, %struct.regexTable** %table, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %28 = load i1, i1* %retval, align 1
  ret i1 %28
}

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

declare i64 @getInputLineNumberForFileOffset(i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regexTable* @matchMultitableRegexTable(%struct.lregexControlBlock* %lcb, %struct.regexTable* %table, %struct.sVString* %start, i32* %offset) #0 {
entry:
  %retval = alloca %struct.regexTable*, align 8
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %table.addr = alloca %struct.regexTable*, align 8
  %start.addr = alloca %struct.sVString*, align 8
  %offset.addr = alloca i32*, align 8
  %next = alloca %struct.regexTable*, align 8
  %current = alloca i8*, align 8
  %pmatch = alloca [10 x %struct.regmatch_t], align 8
  %cstart = alloca i8*, align 8
  %i = alloca i32, align 4
  %ptrn = alloca %struct.regexPattern*, align 8
  %vfp = alloca %struct.__sFILE*, align 8
  %s = alloca [3 x i8], align 1
  %match = alloca i32, align 4
  %taction = alloca %struct.mTableActionSpec*, align 8
  %vfp72 = alloca %struct.__sFILE*, align 8
  %vfp91 = alloca %struct.__sFILE*, align 8
  %vfp108 = alloca %struct.__sFILE*, align 8
  %vfp127 = alloca %struct.__sFILE*, align 8
  %vfp147 = alloca %struct.__sFILE*, align 8
  %vfp159 = alloca %struct.__sFILE*, align 8
  %vfp169 = alloca %struct.__sFILE*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.regexTable* %table, %struct.regexTable** %table.addr, align 8
  store %struct.sVString* %start, %struct.sVString** %start.addr, align 8
  store i32* %offset, i32** %offset.addr, align 8
  store %struct.regexTable* null, %struct.regexTable** %next, align 8
  %0 = load %struct.sVString*, %struct.sVString** %start.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %cstart, align 8
  br label %restart

restart:                                          ; preds = %if.end186, %entry
  %2 = load i8*, i8** %cstart, align 8
  %3 = load i32*, i32** %offset.addr, align 8
  %4 = load i32, i32* %3, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %current, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %restart
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %patterns = getelementptr inbounds %struct.regexTable, %struct.regexTable* %6, i32 0, i32 1
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %7)
  %cmp = icmp ult i32 %5, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %patterns1 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %8, i32 0, i32 1
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns1, align 8
  %10 = load i32, i32* %i, align 4
  %call2 = call i8* @ptrArrayItem(%struct.sPtrArray* %9, i32 %10)
  %11 = bitcast i8* %call2 to %struct.regexPattern*
  store %struct.regexPattern* %11, %struct.regexPattern** %ptrn, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %12 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then, label %if.end49

if.then:                                          ; preds = %do.body
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %13, %struct.__sFILE** %vfp, align 8
  %14 = load i8*, i8** %current, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp3 = icmp eq i32 %conv, 10
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 0
  store i8 92, i8* %arrayidx, align 1
  %arrayidx6 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 1
  store i8 110, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 2
  store i8 0, i8* %arrayidx7, align 1
  br label %if.end27

if.else:                                          ; preds = %if.then
  %16 = load i8*, i8** %current, align 8
  %17 = load i8, i8* %16, align 1
  %conv8 = sext i8 %17 to i32
  %cmp9 = icmp eq i32 %conv8, 9
  br i1 %cmp9, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else
  %arrayidx12 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 0
  store i8 92, i8* %arrayidx12, align 1
  %arrayidx13 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 1
  store i8 116, i8* %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 2
  store i8 0, i8* %arrayidx14, align 1
  br label %if.end26

if.else15:                                        ; preds = %if.else
  %18 = load i8*, i8** %current, align 8
  %19 = load i8, i8* %18, align 1
  %conv16 = sext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 92
  br i1 %cmp17, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.else15
  %arrayidx20 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 0
  store i8 92, i8* %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 1
  store i8 92, i8* %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 2
  store i8 0, i8* %arrayidx22, align 1
  br label %if.end

if.else23:                                        ; preds = %if.else15
  %20 = load i8*, i8** %current, align 8
  %21 = load i8, i8* %20, align 1
  %arrayidx24 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 0
  store i8 %21, i8* %arrayidx24, align 1
  %arrayidx25 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 1
  store i8 0, i8* %arrayidx25, align 1
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then19
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then11
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then5
  %arrayidx28 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 1
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %22 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end27
  %23 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 0
  %24 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %name = getelementptr inbounds %struct.regexTable, %struct.regexTable* %24, i32 0, i32 0
  %25 = load i8*, i8** %name, align 8
  %26 = load i32, i32* %i, align 4
  %call33 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.86, i64 0, i64 0), i8* %arraydecay, i8* %25, i32 %26)
  br label %if.end47

if.else34:                                        ; preds = %if.end27
  %arrayidx35 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 0
  %27 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %27 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.else34
  %28 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %29 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %name40 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %29, i32 0, i32 0
  %30 = load i8*, i8** %name40, align 8
  %31 = load i32, i32* %i, align 4
  %call41 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i64 0, i64 0), i8* %30, i32 %31)
  br label %if.end46

if.else42:                                        ; preds = %if.else34
  %32 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %arraydecay43 = getelementptr inbounds [3 x i8], [3 x i8]* %s, i64 0, i64 0
  %33 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %name44 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %33, i32 0, i32 0
  %34 = load i8*, i8** %name44, align 8
  %35 = load i32, i32* %i, align 4
  %call45 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.88, i64 0, i64 0), i8* %arraydecay43, i8* %34, i32 %35)
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %if.then39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then32
  %36 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %37 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %pattern_string = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %37, i32 0, i32 12
  %38 = load i8*, i8** %pattern_string, align 8
  %call48 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), i8* %38)
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end49
  store i32 0, i32* %match, align 4
  %39 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %disabled = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %39, i32 0, i32 6
  %40 = load i8*, i8** %disabled, align 8
  %tobool50 = icmp ne i8* %40, null
  br i1 %tobool50, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %do.end
  %41 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %disabled51 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %41, i32 0, i32 6
  %42 = load i8*, i8** %disabled51, align 8
  %43 = load i8, i8* %42, align 1
  %tobool52 = trunc i8 %43 to i1
  br i1 %tobool52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %land.lhs.true
  br label %for.inc

if.end55:                                         ; preds = %land.lhs.true, %do.end
  %44 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %pattern = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %44, i32 0, i32 0
  %45 = load %struct.regex_t*, %struct.regex_t** %pattern, align 8
  %46 = load i8*, i8** %current, align 8
  %arraydecay56 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %call57 = call i32 @regexec(%struct.regex_t* %45, i8* %46, i64 10, %struct.regmatch_t* %arraydecay56, i32 0)
  store i32 %call57, i32* %match, align 4
  %47 = load i32, i32* %match, align 4
  %cmp58 = icmp eq i32 %47, 0
  br i1 %cmp58, label %if.then60, label %if.else187

if.then60:                                        ; preds = %if.end55
  %48 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %statistics = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %48, i32 0, i32 13
  %match61 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics, i32 0, i32 0
  %49 = load i32, i32* %match61, align 8
  %inc = add i32 %49, 1
  store i32 %inc, i32* %match61, align 8
  %50 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %type = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %50, i32 0, i32 1
  %51 = load i32, i32* %type, align 8
  %cmp62 = icmp eq i32 %51, 0
  br i1 %cmp62, label %if.then64, label %if.else177

if.then64:                                        ; preds = %if.then60
  %52 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %taction65 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %52, i32 0, i32 9
  store %struct.mTableActionSpec* %taction65, %struct.mTableActionSpec** %taction, align 8
  %53 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %54 = load i8*, i8** %current, align 8
  %55 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %arraydecay66 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %56 = load i8*, i8** %current, align 8
  %57 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %mgroup = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %57, i32 0, i32 8
  %forLineNumberDetermination = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup, i32 0, i32 0
  %58 = load i32, i32* %forLineNumberDetermination, align 4
  %idxprom = sext i32 %58 to i64
  %arrayidx67 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 %idxprom
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx67, i32 0, i32 0
  %59 = load i64, i64* %rm_so, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %56, i64 %59
  %60 = load i8*, i8** %cstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr68 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @matchTagPattern(%struct.lregexControlBlock* %53, i8* %54, %struct.regexPattern* %55, %struct.regmatch_t* %arraydecay66, i64 %sub.ptr.sub)
  br label %do.body69

do.body69:                                        ; preds = %if.then64
  %61 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool70 = trunc i8 %61 to i1
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %do.body69
  %62 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %62, %struct.__sFILE** %vfp72, align 8
  %63 = load %struct.__sFILE*, %struct.__sFILE** %vfp72, align 8
  %64 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %64, i32 0, i32 0
  %65 = load i64, i64* %currentScope, align 8
  call void @dumpSstack(%struct.__sFILE* %63, i64 %65)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %do.body69
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  %66 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %mgroup75 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %66, i32 0, i32 8
  %nextFromStart = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup75, i32 0, i32 2
  %67 = load i8, i8* %nextFromStart, align 4
  %tobool76 = trunc i8 %67 to i1
  br i1 %tobool76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end74
  %68 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %mgroup78 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %68, i32 0, i32 8
  %forNextScanning = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup78, i32 0, i32 1
  %69 = load i32, i32* %forNextScanning, align 4
  %idxprom79 = sext i32 %69 to i64
  %arrayidx80 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 %idxprom79
  %rm_so81 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx80, i32 0, i32 0
  %70 = load i64, i64* %rm_so81, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end74
  %71 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %mgroup82 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %71, i32 0, i32 8
  %forNextScanning83 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %mgroup82, i32 0, i32 1
  %72 = load i32, i32* %forNextScanning83, align 4
  %idxprom84 = sext i32 %72 to i64
  %arrayidx85 = getelementptr inbounds [10 x %struct.regmatch_t], [10 x %struct.regmatch_t]* %pmatch, i64 0, i64 %idxprom84
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx85, i32 0, i32 1
  %73 = load i64, i64* %rm_eo, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %70, %cond.true ], [ %73, %cond.false ]
  %74 = load i32*, i32** %offset.addr, align 8
  %75 = load i32, i32* %74, align 4
  %conv86 = zext i32 %75 to i64
  %add = add nsw i64 %conv86, %cond
  %conv87 = trunc i64 %add to i32
  store i32 %conv87, i32* %74, align 4
  %76 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %action = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %76, i32 0, i32 0
  %77 = load i32, i32* %action, align 8
  switch i32 %77, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb96
    i32 2, label %sw.bb123
    i32 3, label %sw.bb142
    i32 4, label %sw.bb154
    i32 5, label %sw.bb165
  ]

sw.bb:                                            ; preds = %cond.end
  br label %do.body88

do.body88:                                        ; preds = %sw.bb
  %78 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool89 = trunc i8 %78 to i1
  br i1 %tobool89, label %if.then90, label %if.end94

if.then90:                                        ; preds = %do.body88
  %79 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %79, %struct.__sFILE** %vfp91, align 8
  %80 = load %struct.__sFILE*, %struct.__sFILE** %vfp91, align 8
  %81 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %name92 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %81, i32 0, i32 0
  %82 = load i8*, i8** %name92, align 8
  %call93 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i64 0, i64 0), i8* %82)
  %83 = load %struct.__sFILE*, %struct.__sFILE** %vfp91, align 8
  %84 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %84, i32 0, i32 3
  %85 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack, align 8
  call void @dumpTstack(%struct.__sFILE* %83, %struct.sPtrArray* %85)
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %do.body88
  br label %do.end95

do.end95:                                         ; preds = %if.end94
  br label %sw.epilog

sw.bb96:                                          ; preds = %cond.end
  %86 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack97 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %86, i32 0, i32 3
  %87 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack97, align 8
  %88 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %continuation_table = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %88, i32 0, i32 2
  %89 = load %struct.regexTable*, %struct.regexTable** %continuation_table, align 8
  %tobool98 = icmp ne %struct.regexTable* %89, null
  br i1 %tobool98, label %cond.true99, label %cond.false101

cond.true99:                                      ; preds = %sw.bb96
  %90 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %continuation_table100 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %90, i32 0, i32 2
  %91 = load %struct.regexTable*, %struct.regexTable** %continuation_table100, align 8
  br label %cond.end102

cond.false101:                                    ; preds = %sw.bb96
  %92 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false101, %cond.true99
  %cond103 = phi %struct.regexTable* [ %91, %cond.true99 ], [ %92, %cond.false101 ]
  %93 = bitcast %struct.regexTable* %cond103 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %87, i8* %93)
  %94 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %table104 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %94, i32 0, i32 1
  %95 = load %struct.regexTable*, %struct.regexTable** %table104, align 8
  store %struct.regexTable* %95, %struct.regexTable** %next, align 8
  br label %do.body105

do.body105:                                       ; preds = %cond.end102
  %96 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool106 = trunc i8 %96 to i1
  br i1 %tobool106, label %if.then107, label %if.end121

if.then107:                                       ; preds = %do.body105
  %97 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %97, %struct.__sFILE** %vfp108, align 8
  %98 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %continuation_table109 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %98, i32 0, i32 2
  %99 = load %struct.regexTable*, %struct.regexTable** %continuation_table109, align 8
  %tobool110 = icmp ne %struct.regexTable* %99, null
  br i1 %tobool110, label %if.then111, label %if.else116

if.then111:                                       ; preds = %if.then107
  %100 = load %struct.__sFILE*, %struct.__sFILE** %vfp108, align 8
  %101 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  %name112 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %101, i32 0, i32 0
  %102 = load i8*, i8** %name112, align 8
  %103 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %continuation_table113 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %103, i32 0, i32 2
  %104 = load %struct.regexTable*, %struct.regexTable** %continuation_table113, align 8
  %name114 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %104, i32 0, i32 0
  %105 = load i8*, i8** %name114, align 8
  %call115 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.91, i64 0, i64 0), i8* %102, i8* %105)
  br label %if.end119

if.else116:                                       ; preds = %if.then107
  %106 = load %struct.__sFILE*, %struct.__sFILE** %vfp108, align 8
  %107 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  %name117 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %107, i32 0, i32 0
  %108 = load i8*, i8** %name117, align 8
  %call118 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.92, i64 0, i64 0), i8* %108)
  br label %if.end119

if.end119:                                        ; preds = %if.else116, %if.then111
  %109 = load %struct.__sFILE*, %struct.__sFILE** %vfp108, align 8
  %110 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack120 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %110, i32 0, i32 3
  %111 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack120, align 8
  call void @dumpTstack(%struct.__sFILE* %109, %struct.sPtrArray* %111)
  br label %if.end121

if.end121:                                        ; preds = %if.end119, %do.body105
  br label %do.end122

do.end122:                                        ; preds = %if.end121
  br label %sw.epilog

sw.bb123:                                         ; preds = %cond.end
  br label %do.body124

do.body124:                                       ; preds = %sw.bb123
  %112 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool125 = trunc i8 %112 to i1
  br i1 %tobool125, label %if.then126, label %if.end131

if.then126:                                       ; preds = %do.body124
  %113 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %113, %struct.__sFILE** %vfp127, align 8
  %114 = load %struct.__sFILE*, %struct.__sFILE** %vfp127, align 8
  %115 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %name128 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %115, i32 0, i32 0
  %116 = load i8*, i8** %name128, align 8
  %call129 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.93, i64 0, i64 0), i8* %116)
  %117 = load %struct.__sFILE*, %struct.__sFILE** %vfp127, align 8
  %118 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack130 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %118, i32 0, i32 3
  %119 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack130, align 8
  call void @dumpTstack(%struct.__sFILE* %117, %struct.sPtrArray* %119)
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %do.body124
  br label %do.end132

do.end132:                                        ; preds = %if.end131
  %120 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack133 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %120, i32 0, i32 3
  %121 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack133, align 8
  %call134 = call i32 @ptrArrayCount(%struct.sPtrArray* %121)
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %do.end132
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.94, i64 0, i64 0))
  store %struct.regexTable* null, %struct.regexTable** %retval, align 8
  br label %return

if.end138:                                        ; preds = %do.end132
  %122 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack139 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %122, i32 0, i32 3
  %123 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack139, align 8
  %call140 = call i8* @ptrArrayLast(%struct.sPtrArray* %123)
  %124 = bitcast i8* %call140 to %struct.regexTable*
  store %struct.regexTable* %124, %struct.regexTable** %next, align 8
  %125 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack141 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %125, i32 0, i32 3
  %126 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack141, align 8
  call void @ptrArrayRemoveLast(%struct.sPtrArray* %126)
  br label %sw.epilog

sw.bb142:                                         ; preds = %cond.end
  %127 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %table143 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %127, i32 0, i32 1
  %128 = load %struct.regexTable*, %struct.regexTable** %table143, align 8
  store %struct.regexTable* %128, %struct.regexTable** %next, align 8
  br label %do.body144

do.body144:                                       ; preds = %sw.bb142
  %129 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool145 = trunc i8 %129 to i1
  br i1 %tobool145, label %if.then146, label %if.end152

if.then146:                                       ; preds = %do.body144
  %130 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %130, %struct.__sFILE** %vfp147, align 8
  %131 = load %struct.__sFILE*, %struct.__sFILE** %vfp147, align 8
  %132 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %name148 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %132, i32 0, i32 0
  %133 = load i8*, i8** %name148, align 8
  %134 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  %name149 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %134, i32 0, i32 0
  %135 = load i8*, i8** %name149, align 8
  %call150 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %131, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %133, i8* %135)
  %136 = load %struct.__sFILE*, %struct.__sFILE** %vfp147, align 8
  %137 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack151 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %137, i32 0, i32 3
  %138 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack151, align 8
  call void @dumpTstack(%struct.__sFILE* %136, %struct.sPtrArray* %138)
  br label %if.end152

if.end152:                                        ; preds = %if.then146, %do.body144
  br label %do.end153

do.end153:                                        ; preds = %if.end152
  br label %sw.epilog

sw.bb154:                                         ; preds = %cond.end
  %139 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %table155 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %139, i32 0, i32 1
  %140 = load %struct.regexTable*, %struct.regexTable** %table155, align 8
  store %struct.regexTable* %140, %struct.regexTable** %next, align 8
  br label %do.body156

do.body156:                                       ; preds = %sw.bb154
  %141 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool157 = trunc i8 %141 to i1
  br i1 %tobool157, label %if.then158, label %if.end162

if.then158:                                       ; preds = %do.body156
  %142 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %142, %struct.__sFILE** %vfp159, align 8
  %143 = load %struct.__sFILE*, %struct.__sFILE** %vfp159, align 8
  %144 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  %name160 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %144, i32 0, i32 0
  %145 = load i8*, i8** %name160, align 8
  %call161 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0), i8* %145)
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %do.body156
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  %146 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack164 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %146, i32 0, i32 3
  %147 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack164, align 8
  call void @ptrArrayClear(%struct.sPtrArray* %147)
  br label %sw.epilog

sw.bb165:                                         ; preds = %cond.end
  br label %do.body166

do.body166:                                       ; preds = %sw.bb165
  %148 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool167 = trunc i8 %148 to i1
  br i1 %tobool167, label %if.then168, label %if.end172

if.then168:                                       ; preds = %do.body166
  %149 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %149, %struct.__sFILE** %vfp169, align 8
  %150 = load %struct.__sFILE*, %struct.__sFILE** %vfp169, align 8
  %call170 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.97, i64 0, i64 0))
  %151 = load %struct.__sFILE*, %struct.__sFILE** %vfp169, align 8
  %152 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack171 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %152, i32 0, i32 3
  %153 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack171, align 8
  call void @dumpTstack(%struct.__sFILE* %151, %struct.sPtrArray* %153)
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %do.body166
  br label %do.end173

do.end173:                                        ; preds = %if.end172
  store %struct.regexTable* null, %struct.regexTable** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %cond.end, %do.end163, %do.end153, %if.end138, %do.end122, %do.end95
  %154 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  %tobool174 = icmp ne %struct.regexTable* %154, null
  br i1 %tobool174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %sw.epilog
  br label %for.end

if.end176:                                        ; preds = %sw.epilog
  br label %if.end186

if.else177:                                       ; preds = %if.then60
  %155 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %type178 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %155, i32 0, i32 1
  %156 = load i32, i32* %type178, align 8
  %cmp179 = icmp eq i32 %156, 1
  br i1 %cmp179, label %if.then181, label %if.else182

if.then181:                                       ; preds = %if.else177
  br label %if.end185

if.else182:                                       ; preds = %if.else177
  br label %do.body183

do.body183:                                       ; preds = %if.else182
  br label %do.end184

do.end184:                                        ; preds = %do.body183
  br label %for.end

if.end185:                                        ; preds = %if.then181
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end176
  br label %restart

if.else187:                                       ; preds = %if.end55
  %157 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %statistics188 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %157, i32 0, i32 13
  %unmatch = getelementptr inbounds %struct.anon.4, %struct.anon.4* %statistics188, i32 0, i32 1
  %158 = load i32, i32* %unmatch, align 4
  %inc189 = add i32 %158, 1
  store i32 %inc189, i32* %unmatch, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.else187
  br label %for.inc

for.inc:                                          ; preds = %if.end190, %if.then54
  %159 = load i32, i32* %i, align 4
  %inc191 = add i32 %159, 1
  store i32 %inc191, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %do.end184, %if.then175, %for.cond
  %160 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  %cmp192 = icmp eq %struct.regexTable* %160, null
  br i1 %cmp192, label %land.lhs.true194, label %if.end208

land.lhs.true194:                                 ; preds = %for.end
  %161 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack195 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %161, i32 0, i32 3
  %162 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack195, align 8
  %call196 = call i32 @ptrArrayCount(%struct.sPtrArray* %162)
  %cmp197 = icmp ugt i32 %call196, 0
  br i1 %cmp197, label %if.then199, label %if.end208

if.then199:                                       ; preds = %land.lhs.true194
  %163 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack200 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %163, i32 0, i32 3
  %164 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack200, align 8
  %call201 = call i8* @ptrArrayLast(%struct.sPtrArray* %164)
  %165 = bitcast i8* %call201 to %struct.regexTable*
  store %struct.regexTable* %165, %struct.regexTable** %next, align 8
  %166 = load i32, i32* @apop_count, align 4
  %inc202 = add nsw i32 %166, 1
  store i32 %inc202, i32* @apop_count, align 4
  %167 = load %struct.regexTable*, %struct.regexTable** %table.addr, align 8
  %name203 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %167, i32 0, i32 0
  %168 = load i8*, i8** %name203, align 8
  %169 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  %name204 = getelementptr inbounds %struct.regexTable, %struct.regexTable* %169, i32 0, i32 0
  %170 = load i8*, i8** %name204, align 8
  %171 = load i32*, i32** %offset.addr, align 8
  %172 = load i32, i32* %171, align 4
  %conv205 = zext i32 %172 to i64
  %call206 = call i64 @getInputLineNumberForFileOffset(i64 %conv205)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.98, i64 0, i64 0), i32 %166, i8* %168, i8* %170, i64 %call206)
  %173 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tstack207 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %173, i32 0, i32 3
  %174 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack207, align 8
  call void @ptrArrayRemoveLast(%struct.sPtrArray* %174)
  br label %if.end208

if.end208:                                        ; preds = %if.then199, %land.lhs.true194, %for.end
  %175 = load %struct.regexTable*, %struct.regexTable** %next, align 8
  store %struct.regexTable* %175, %struct.regexTable** %retval, align 8
  br label %return

return:                                           ; preds = %if.end208, %do.end173, %if.then137
  %176 = load %struct.regexTable*, %struct.regexTable** %retval, align 8
  ret %struct.regexTable* %176
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @checkRegex() #0 {
entry:
  store i8 1, i8* @regexAvailable, align 1
  %0 = load i8, i8* @regexAvailable, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

declare void @regfree(%struct.regex_t*) #1

declare i32 @regexec(%struct.regex_t*, i8*, i64, %struct.regmatch_t*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @matchTagPattern(%struct.lregexControlBlock* %lcb, i8* %line, %struct.regexPattern* %patbuf, %struct.regmatch_t* %pmatch, i64 %offset) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %line.addr = alloca i8*, align 8
  %patbuf.addr = alloca %struct.regexPattern*, align 8
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %offset.addr = alloca i64, align 8
  %name = alloca %struct.sVString*, align 8
  %placeholder = alloca i8, align 1
  %scope = alloca i64, align 8
  %n = alloca i32, align 4
  %entry4 = alloca %struct.sTagEntryInfo*, align 8
  %endline = alloca i64, align 8
  %entry20 = alloca %struct.sTagEntryInfo*, align 8
  %ln = alloca i64, align 8
  %pos = alloca %struct._MIOPos, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %kind = alloca i32, align 4
  %tmp = alloca %struct._MIOPos, align 8
  %i = alloca i32, align 4
  %fp = alloca %struct.fieldPattern*, align 8
  %value = alloca %struct.sVString*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.regexPattern* %patbuf, %struct.regexPattern** %patbuf.addr, align 8
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %1 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %u = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %1, i32 0, i32 4
  %tag = bitcast %union.anon.1* %u to %struct.anon.2*
  %name_pattern = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag, i32 0, i32 1
  %2 = load i8*, i8** %name_pattern, align 8
  %3 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %call = call %struct.sVString* @substitute(i8* %0, i8* %2, i32 10, %struct.regmatch_t* %3)
  store %struct.sVString* %call, %struct.sVString** %name, align 8
  %4 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %scopeActions = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %4, i32 0, i32 5
  %5 = load i32, i32* %scopeActions, align 8
  %and = and i32 %5, 16
  %cmp = icmp eq i32 %and, 16
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %frombool = zext i1 %lnot1 to i8
  store i8 %frombool, i8* %placeholder, align 1
  store i64 0, i64* %scope, align 8
  %6 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringStripLeading(%struct.sVString* %6)
  %7 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringStripTrailing(%struct.sVString* %7)
  %8 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %scopeActions2 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %8, i32 0, i32 5
  %9 = load i32, i32* %scopeActions2, align 8
  %and3 = and i32 %9, 1
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %10, i32 0, i32 0
  %11 = load i64, i64* %currentScope, align 8
  store i64 %11, i64* %scope, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %12 = load i64, i64* %scope, align 8
  %conv = trunc i64 %12 to i32
  %call5 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %conv)
  store %struct.sTagEntryInfo* %call5, %struct.sTagEntryInfo** %entry4, align 8
  %tobool6 = icmp ne %struct.sTagEntryInfo* %call5, null
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry4, align 8
  %14 = bitcast %struct.sTagEntryInfo* %13 to i8*
  %bf.load = load i8, i8* %14, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool7 = icmp ne i32 %bf.cast, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry4, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %16, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  %17 = load i32, i32* %scopeIndex, align 8
  %conv8 = sext i32 %17 to i64
  store i64 %conv8, i64* %scope, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %18 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %scopeActions9 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %18, i32 0, i32 5
  %19 = load i32, i32* %scopeActions9, align 8
  %and10 = and i32 %19, 8
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %20 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %regptype = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %20, i32 0, i32 7
  %21 = load i32, i32* %regptype, align 8
  %22 = load i64, i64* %offset.addr, align 8
  %call13 = call i64 @getInputLineNumberInRegPType(i32 %21, i64 %22)
  store i64 %call13, i64* %endline, align 8
  %23 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %24 = load i64, i64* %endline, align 8
  call void @fillEndLineFieldOfUpperScopes(%struct.lregexControlBlock* %23, i64 %24)
  %25 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope14 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %25, i32 0, i32 0
  store i64 0, i64* %currentScope14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %26 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %scopeActions16 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %26, i32 0, i32 5
  %27 = load i32, i32* %scopeActions16, align 8
  %and17 = and i32 %27, 2
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end39

if.then19:                                        ; preds = %if.end15
  %28 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope21 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %28, i32 0, i32 0
  %29 = load i64, i64* %currentScope21, align 8
  %conv22 = trunc i64 %29 to i32
  %call23 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %conv22)
  store %struct.sTagEntryInfo* %call23, %struct.sTagEntryInfo** %entry20, align 8
  %30 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry20, align 8
  %tobool24 = icmp ne %struct.sTagEntryInfo* %30, null
  br i1 %tobool24, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then19
  %31 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry20, align 8
  %extensionFields25 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %31, i32 0, i32 11
  %endLine = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields25, i32 0, i32 11
  %32 = load i64, i64* %endLine, align 8
  %cmp26 = icmp eq i64 %32, 0
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %land.lhs.true
  %33 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %regptype29 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %33, i32 0, i32 7
  %34 = load i32, i32* %regptype29, align 8
  %35 = load i64, i64* %offset.addr, align 8
  %call30 = call i64 @getInputLineNumberInRegPType(i32 %34, i64 %35)
  %36 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry20, align 8
  %extensionFields31 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %36, i32 0, i32 11
  %endLine32 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields31, i32 0, i32 11
  store i64 %call30, i64* %endLine32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %land.lhs.true, %if.then19
  %37 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry20, align 8
  %tobool34 = icmp ne %struct.sTagEntryInfo* %37, null
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end33
  %38 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry20, align 8
  %extensionFields35 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %38, i32 0, i32 11
  %scopeIndex36 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields35, i32 0, i32 7
  %39 = load i32, i32* %scopeIndex36, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ 0, %cond.false ]
  %conv37 = sext i32 %cond to i64
  %40 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope38 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %40, i32 0, i32 0
  store i64 %conv37, i64* %currentScope38, align 8
  br label %if.end39

if.end39:                                         ; preds = %cond.end, %if.end15
  %41 = load %struct.sVString*, %struct.sVString** %name, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %41, i32 0, i32 0
  %42 = load i64, i64* %length, align 8
  %cmp40 = icmp eq i64 %42, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.else

land.lhs.true42:                                  ; preds = %if.end39
  %43 = load i8, i8* %placeholder, align 1
  %tobool43 = trunc i8 %43 to i1
  %conv44 = zext i1 %tobool43 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true42
  %44 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %accept_empty_name = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %44, i32 0, i32 3
  %45 = load i8, i8* %accept_empty_name, align 1
  %tobool48 = trunc i8 %45 to i1
  %conv49 = zext i1 %tobool48 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.then52, label %if.end59

if.then52:                                        ; preds = %if.then47
  %call53 = call i8* @getInputFileName()
  %46 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %regptype54 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %46, i32 0, i32 7
  %47 = load i32, i32* %regptype54, align 8
  %48 = load i64, i64* %offset.addr, align 8
  %call55 = call i64 @getInputLineNumberInRegPType(i32 %47, i64 %48)
  %49 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %u56 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %49, i32 0, i32 4
  %tag57 = bitcast %union.anon.1* %u56 to %struct.anon.2*
  %name_pattern58 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag57, i32 0, i32 1
  %50 = load i8*, i8** %name_pattern58, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i8* %call53, i64 %call55, i8* %50)
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %if.then47
  store i32 0, i32* %n, align 4
  br label %if.end107

if.else:                                          ; preds = %land.lhs.true42, %if.end39
  store i64 0, i64* %ln, align 8
  %51 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %regptype60 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %51, i32 0, i32 7
  %52 = load i32, i32* %regptype60, align 8
  %cmp61 = icmp eq i32 %52, 1
  br i1 %cmp61, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %53 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %regptype63 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %53, i32 0, i32 7
  %54 = load i32, i32* %regptype63, align 8
  %cmp64 = icmp eq i32 %54, 2
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %lor.lhs.false, %if.else
  %55 = load i64, i64* %offset.addr, align 8
  %call67 = call i64 @getInputLineNumberForFileOffset(i64 %55)
  store i64 %call67, i64* %ln, align 8
  %56 = load i64, i64* %ln, align 8
  %conv68 = trunc i64 %56 to i32
  %call69 = call [2 x i64] @getInputFilePositionForLine(i32 %conv68)
  %57 = bitcast %struct._MIOPos* %tmp to [2 x i64]*
  store [2 x i64] %call69, [2 x i64]* %57, align 8
  %58 = bitcast %struct._MIOPos* %pos to i8*
  %59 = bitcast %struct._MIOPos* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %lor.lhs.false
  store i32 0, i32* %n, align 4
  %60 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %u71 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %60, i32 0, i32 4
  %tag72 = bitcast %union.anon.1* %u71 to %struct.anon.2*
  %kindIndex = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag72, i32 0, i32 0
  %61 = load i32, i32* %kindIndex, align 8
  store i32 %61, i32* %kind, align 4
  %62 = load %struct.sVString*, %struct.sVString** %name, align 8
  %63 = load i32, i32* %kind, align 4
  %64 = load i64, i64* %scope, align 8
  %conv73 = trunc i64 %64 to i32
  %65 = load i8, i8* %placeholder, align 1
  %tobool74 = trunc i8 %65 to i1
  %conv75 = zext i1 %tobool74 to i32
  %66 = load i64, i64* %ln, align 8
  %67 = load i64, i64* %ln, align 8
  %cmp76 = icmp eq i64 %67, 0
  br i1 %cmp76, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %if.end70
  br label %cond.end80

cond.false79:                                     ; preds = %if.end70
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true78
  %cond81 = phi %struct._MIOPos* [ null, %cond.true78 ], [ %pos, %cond.false79 ]
  %68 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %xtagType = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %68, i32 0, i32 10
  %69 = load i32, i32* %xtagType, align 8
  %call82 = call zeroext i1 @initRegexTag(%struct.sTagEntryInfo* %e, %struct.sVString* %62, i32 %63, i32 %conv73, i32 %conv75, i64 %66, %struct._MIOPos* %cond81, i32 %69)
  br i1 %call82, label %if.then83, label %if.end106

if.then83:                                        ; preds = %cond.end80
  %70 = load %struct.sTrashBox*, %struct.sTrashBox** @field_trashbox, align 8
  %cmp84 = icmp eq %struct.sTrashBox* %70, null
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.then83
  %call87 = call %struct.sTrashBox* @trashBoxNew()
  store %struct.sTrashBox* %call87, %struct.sTrashBox** @field_trashbox, align 8
  %71 = load %struct.sTrashBox*, %struct.sTrashBox** @field_trashbox, align 8
  %72 = bitcast %struct.sTrashBox* %71 to i8*
  %call88 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %72, void (i8*)* bitcast (void (%struct.sTrashBox*)* @trashBoxDelete to void (i8*)*))
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.then83
  %73 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %fieldPatterns = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %73, i32 0, i32 11
  %74 = load %struct.sPtrArray*, %struct.sPtrArray** %fieldPatterns, align 8
  %tobool90 = icmp ne %struct.sPtrArray* %74, null
  br i1 %tobool90, label %if.then91, label %if.end104

if.then91:                                        ; preds = %if.end89
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then91
  %75 = load i32, i32* %i, align 4
  %76 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %fieldPatterns92 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %76, i32 0, i32 11
  %77 = load %struct.sPtrArray*, %struct.sPtrArray** %fieldPatterns92, align 8
  %call93 = call i32 @ptrArrayCount(%struct.sPtrArray* %77)
  %cmp94 = icmp ult i32 %75, %call93
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %fieldPatterns96 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %78, i32 0, i32 11
  %79 = load %struct.sPtrArray*, %struct.sPtrArray** %fieldPatterns96, align 8
  %80 = load i32, i32* %i, align 4
  %call97 = call i8* @ptrArrayItem(%struct.sPtrArray* %79, i32 %80)
  %81 = bitcast i8* %call97 to %struct.fieldPattern*
  store %struct.fieldPattern* %81, %struct.fieldPattern** %fp, align 8
  %82 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  %ftype = getelementptr inbounds %struct.fieldPattern, %struct.fieldPattern* %82, i32 0, i32 0
  %83 = load i32, i32* %ftype, align 8
  %call98 = call zeroext i1 @isFieldEnabled(i32 %83)
  br i1 %call98, label %if.then99, label %if.end103

if.then99:                                        ; preds = %for.body
  %84 = load i8*, i8** %line.addr, align 8
  %85 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  %template = getelementptr inbounds %struct.fieldPattern, %struct.fieldPattern* %85, i32 0, i32 1
  %86 = load i8*, i8** %template, align 8
  %87 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %call100 = call %struct.sVString* @substitute(i8* %84, i8* %86, i32 10, %struct.regmatch_t* %87)
  store %struct.sVString* %call100, %struct.sVString** %value, align 8
  %88 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  %ftype101 = getelementptr inbounds %struct.fieldPattern, %struct.fieldPattern* %88, i32 0, i32 0
  %89 = load i32, i32* %ftype101, align 8
  %90 = load %struct.sVString*, %struct.sVString** %value, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %90, i32 0, i32 2
  %91 = load i8*, i8** %buffer, align 8
  call void @attachParserField(%struct.sTagEntryInfo* %e, i32 %89, i8* %91)
  %92 = load %struct.sTrashBox*, %struct.sTrashBox** @field_trashbox, align 8
  %93 = load %struct.sVString*, %struct.sVString** %value, align 8
  %94 = bitcast %struct.sVString* %93 to i8*
  %call102 = call i8* @trashBoxPut(%struct.sTrashBox* %92, i8* %94, void (i8*)* bitcast (void (%struct.sVString*)* @vStringDelete to void (i8*)*))
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end103
  %95 = load i32, i32* %i, align 4
  %inc = add i32 %95, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end104

if.end104:                                        ; preds = %for.end, %if.end89
  %call105 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call105, i32* %n, align 4
  %96 = load %struct.sTrashBox*, %struct.sTrashBox** @field_trashbox, align 8
  call void @trashBoxMakeEmpty(%struct.sTrashBox* %96)
  br label %if.end106

if.end106:                                        ; preds = %if.end104, %cond.end80
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end59
  %97 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %scopeActions108 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %97, i32 0, i32 5
  %98 = load i32, i32* %scopeActions108, align 8
  %and109 = and i32 %98, 4
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.end114

if.then111:                                       ; preds = %if.end107
  %99 = load i32, i32* %n, align 4
  %conv112 = sext i32 %99 to i64
  %100 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %currentScope113 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %100, i32 0, i32 0
  store i64 %conv112, i64* %currentScope113, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end107
  %101 = load %struct.sVString*, %struct.sVString** %name, align 8
  call void @vStringDelete(%struct.sVString* %101)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @matchCallbackPattern(%struct.sVString* %line, %struct.regexPattern* %patbuf, %struct.regmatch_t* %pmatch) #0 {
entry:
  %line.addr = alloca %struct.sVString*, align 8
  %patbuf.addr = alloca %struct.regexPattern*, align 8
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %matches = alloca [10 x %struct.regexMatch], align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.sVString* %line, %struct.sVString** %line.addr, align 8
  store %struct.regexPattern* %patbuf, %struct.regexPattern** %patbuf.addr, align 8
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %1, i64 %idxprom
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx, i32 0, i32 0
  %3 = load i64, i64* %rm_so, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [10 x %struct.regexMatch], [10 x %struct.regexMatch]* %matches, i64 0, i64 %idxprom1
  %start = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx2, i32 0, i32 0
  store i64 %3, i64* %start, align 8
  %5 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %5, i64 %idxprom3
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx4, i32 0, i32 1
  %7 = load i64, i64* %rm_eo, align 8
  %8 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %8, i64 %idxprom5
  %rm_so7 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx6, i32 0, i32 0
  %10 = load i64, i64* %rm_so7, align 8
  %sub = sub nsw i64 %7, %10
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [10 x %struct.regexMatch], [10 x %struct.regexMatch]* %matches, i64 0, i64 %idxprom8
  %length = getelementptr inbounds %struct.regexMatch, %struct.regexMatch* %arrayidx9, i32 0, i32 1
  store i64 %sub, i64* %length, align 8
  %12 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %12, i64 %idxprom10
  %rm_so12 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx11, i32 0, i32 0
  %14 = load i64, i64* %rm_so12, align 8
  %cmp13 = icmp ne i64 %14, -1
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  store i32 %add, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %u = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %17, i32 0, i32 4
  %callback = bitcast %union.anon.1* %u to %struct.anon.3*
  %function = getelementptr inbounds %struct.anon.3, %struct.anon.3* %callback, i32 0, i32 0
  %18 = load i1 (i8*, %struct.regexMatch*, i32, i8*)*, i1 (i8*, %struct.regexMatch*, i32, i8*)** %function, align 8
  %19 = load %struct.sVString*, %struct.sVString** %line.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %19, i32 0, i32 2
  %20 = load i8*, i8** %buffer, align 8
  %arraydecay = getelementptr inbounds [10 x %struct.regexMatch], [10 x %struct.regexMatch]* %matches, i64 0, i64 0
  %21 = load i32, i32* %count, align 4
  %22 = load %struct.regexPattern*, %struct.regexPattern** %patbuf.addr, align 8
  %u14 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %22, i32 0, i32 4
  %callback15 = bitcast %union.anon.1* %u14 to %struct.anon.3*
  %userData = getelementptr inbounds %struct.anon.3, %struct.anon.3* %callback15, i32 0, i32 1
  %23 = load i8*, i8** %userData, align 8
  %call = call zeroext i1 %18(i8* %20, %struct.regexMatch* %arraydecay, i32 %21, i8* %23)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @substitute(i8* %in, i8* %out, i32 %nmatch, %struct.regmatch_t* %pmatch) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %nmatch.addr = alloca i32, align 4
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %result = alloca %struct.sVString*, align 8
  %p = alloca i8*, align 8
  %dig = alloca i32, align 4
  %diglen = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %nmatch, i32* %nmatch.addr, align 4
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %result, align 8
  %0 = load i8*, i8** %out.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %6 = load i8, i8* %incdec.ptr, align 1
  %conv5 = sext i8 %6 to i32
  %call6 = call i32 @isdigit(i32 %conv5) #6
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv7, 48
  store i32 %sub, i32* %dig, align 4
  %9 = load i32, i32* %dig, align 4
  %cmp8 = icmp slt i32 0, %9
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %if.then
  %10 = load i32, i32* %dig, align 4
  %11 = load i32, i32* %nmatch.addr, align 4
  %cmp11 = icmp slt i32 %10, %11
  br i1 %cmp11, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %12 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %13 = load i32, i32* %dig, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %12, i64 %idxprom
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx, i32 0, i32 0
  %14 = load i64, i64* %rm_so, align 8
  %cmp14 = icmp ne i64 %14, -1
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %land.lhs.true13
  %15 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %16 = load i32, i32* %dig, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %15, i64 %idxprom17
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx18, i32 0, i32 1
  %17 = load i64, i64* %rm_eo, align 8
  %18 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %19 = load i32, i32* %dig, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %18, i64 %idxprom19
  %rm_so21 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx20, i32 0, i32 0
  %20 = load i64, i64* %rm_so21, align 8
  %sub22 = sub nsw i64 %17, %20
  %conv23 = trunc i64 %sub22 to i32
  store i32 %conv23, i32* %diglen, align 4
  %21 = load %struct.sVString*, %struct.sVString** %result, align 8
  %22 = load i8*, i8** %in.addr, align 8
  %23 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %24 = load i32, i32* %dig, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %23, i64 %idxprom24
  %rm_so26 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx25, i32 0, i32 0
  %25 = load i64, i64* %rm_so26, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %25
  %26 = load i32, i32* %diglen, align 4
  %conv27 = sext i32 %26 to i64
  call void @vStringNCatS(%struct.sVString* %21, i8* %add.ptr, i64 %conv27)
  br label %if.end

if.end:                                           ; preds = %if.then16, %land.lhs.true13, %land.lhs.true10, %if.then
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true, %for.body
  %27 = load i8*, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv28 = sext i8 %28 to i32
  %cmp29 = icmp ne i32 %conv28, 10
  br i1 %cmp29, label %land.lhs.true31, label %if.end37

land.lhs.true31:                                  ; preds = %if.else
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv32 = sext i8 %30 to i32
  %cmp33 = icmp ne i32 %conv32, 13
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %land.lhs.true31
  %31 = load %struct.sVString*, %struct.sVString** %result, align 8
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv36 = sext i8 %33 to i32
  call void @vStringPut(%struct.sVString* %31, i32 %conv36)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true31, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.sVString*, %struct.sVString** %result, align 8
  ret %struct.sVString* %35
}

declare void @vStringStripLeading(%struct.sVString*) #1

declare void @vStringStripTrailing(%struct.sVString*) #1

declare %struct.sTagEntryInfo* @getEntryInCorkQueue(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i64 @getInputLineNumberInRegPType(i32 %regptype, i64 %offset) #0 {
entry:
  %regptype.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  store i32 %regptype, i32* %regptype.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i32, i32* %regptype.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %regptype.addr, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %offset.addr, align 8
  %call = call i64 @getInputLineNumberForFileOffset(i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %call2 = call i64 @getInputLineNumber()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call2, %cond.false ]
  ret i64 %cond
}

declare i8* @getInputFileName() #1

declare [2 x i64] @getInputFilePositionForLine(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @initRegexTag(%struct.sTagEntryInfo* %e, %struct.sVString* %name, i32 %kindIndex, i32 %scopeIndex, i32 %placeholder, i64 %line, %struct._MIOPos* %pos, i32 %xtag_type) #0 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca %struct.sTagEntryInfo*, align 8
  %name.addr = alloca %struct.sVString*, align 8
  %kindIndex.addr = alloca i32, align 4
  %scopeIndex.addr = alloca i32, align 4
  %placeholder.addr = alloca i32, align 4
  %line.addr = alloca i64, align 8
  %pos.addr = alloca %struct._MIOPos*, align 8
  %xtag_type.addr = alloca i32, align 4
  store %struct.sTagEntryInfo* %e, %struct.sTagEntryInfo** %e.addr, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %scopeIndex, i32* %scopeIndex.addr, align 4
  store i32 %placeholder, i32* %placeholder.addr, align 4
  store i64 %line, i64* %line.addr, align 8
  store %struct._MIOPos* %pos, %struct._MIOPos** %pos.addr, align 8
  store i32 %xtag_type, i32* %xtag_type.addr, align 4
  %0 = load i32, i32* %kindIndex.addr, align 4
  %call = call zeroext i1 @isInputLanguageKindEnabled(i32 %0)
  br i1 %call, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer, align 8
  %4 = load i32, i32* %kindIndex.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %1, i8* %3, i32 %4)
  %5 = load i32, i32* %scopeIndex.addr, align 4
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 11
  %scopeIndex1 = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  store i32 %5, i32* %scopeIndex1, align 8
  %7 = load i32, i32* %placeholder.addr, align 4
  %tobool = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %8 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %9 = bitcast %struct.sTagEntryInfo* %8 to i8*
  %10 = trunc i32 %lnot.ext to i8
  %bf.load = load i8, i8* %9, align 8
  %bf.value = and i8 %10, 1
  %bf.shl = shl i8 %bf.value, 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %9, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %11 = load i64, i64* %line.addr, align 8
  %tobool3 = icmp ne i64 %11, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.end
  %12 = load i64, i64* %line.addr, align 8
  %13 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %lineNumber = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %13, i32 0, i32 1
  store i64 %12, i64* %lineNumber, align 8
  %14 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %filePosition = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %14, i32 0, i32 4
  %15 = load %struct._MIOPos*, %struct._MIOPos** %pos.addr, align 8
  %16 = bitcast %struct._MIOPos* %filePosition to i8*
  %17 = bitcast %struct._MIOPos* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then4, %do.end
  %18 = load i32, i32* %xtag_type.addr, align 4
  %cmp = icmp ne i32 %18, -1
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %19 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %e.addr, align 8
  %20 = load i32, i32* %xtag_type.addr, align 4
  call void @markTagExtraBit(%struct.sTagEntryInfo* %19, i32 %20)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  store i1 true, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end7, %if.end6
  %21 = load i1, i1* %retval, align 1
  ret i1 %21
}

declare %struct.sTrashBox* @trashBoxNew() #1

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #1

declare void @trashBoxDelete(%struct.sTrashBox*) #1

declare zeroext i1 @isFieldEnabled(i32) #1

declare void @attachParserField(%struct.sTagEntryInfo*, i32, i8*) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

declare void @trashBoxMakeEmpty(%struct.sTrashBox*) #1

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #2

declare void @vStringNCatS(%struct.sVString*, i8*, i64) #1

declare zeroext i1 @isInputLanguageKindEnabled(i32) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare void @markTagExtraBit(%struct.sTagEntryInfo*, i32) #1

declare i8* @readLineFromInputFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseKinds(i8* %kinds, i8* %kind, i8** %kindName, i8** %description) #0 {
entry:
  %kinds.addr = alloca i8*, align 8
  %kind.addr = alloca i8*, align 8
  %kindName.addr = alloca i8**, align 8
  %description.addr = alloca i8**, align 8
  %k = alloca i8*, align 8
  %comma = alloca i8*, align 8
  store i8* %kinds, i8** %kinds.addr, align 8
  store i8* %kind, i8** %kind.addr, align 8
  store i8** %kindName, i8*** %kindName.addr, align 8
  store i8** %description, i8*** %description.addr, align 8
  %0 = load i8*, i8** %kind.addr, align 8
  store i8 0, i8* %0, align 1
  %1 = load i8**, i8*** %kindName.addr, align 8
  store i8* null, i8** %1, align 8
  %2 = load i8**, i8*** %description.addr, align 8
  store i8* null, i8** %2, align 8
  %3 = load i8*, i8** %kinds.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %kinds.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** %kind.addr, align 8
  store i8 114, i8* %6, align 1
  %call = call i8* @eStrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %7 = load i8**, i8*** %kindName.addr, align 8
  store i8* %call, i8** %7, align 8
  br label %if.end61

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i8*, i8** %kinds.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end60

if.then7:                                         ; preds = %if.else
  %10 = load i8*, i8** %kinds.addr, align 8
  store i8* %10, i8** %k, align 8
  %11 = load i8*, i8** %k, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 44
  br i1 %cmp10, label %land.lhs.true, label %if.else22

land.lhs.true:                                    ; preds = %if.then7
  %13 = load i8*, i8** %k, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 44
  br i1 %cmp14, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %land.lhs.true
  %15 = load i8*, i8** %k, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %lor.lhs.false16, %land.lhs.true
  %17 = load i8*, i8** %k, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %k, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %kind.addr, align 8
  store i8 %18, i8* %19, align 1
  br label %if.end

if.else22:                                        ; preds = %lor.lhs.false16, %if.then7
  %20 = load i8*, i8** %kind.addr, align 8
  store i8 114, i8* %20, align 1
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then21
  %21 = load i8*, i8** %k, align 8
  %22 = load i8, i8* %21, align 1
  %conv23 = sext i8 %22 to i32
  %cmp24 = icmp eq i32 %conv23, 44
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %23 = load i8*, i8** %k, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr27, i8** %k, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %24 = load i8*, i8** %k, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %25 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.end28
  %call34 = call i8* @eStrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %26 = load i8**, i8*** %kindName.addr, align 8
  store i8* %call34, i8** %26, align 8
  br label %if.end59

if.else35:                                        ; preds = %if.end28
  %27 = load i8*, i8** %k, align 8
  %call36 = call i8* @strchr(i8* %27, i32 44)
  store i8* %call36, i8** %comma, align 8
  %28 = load i8*, i8** %comma, align 8
  %cmp37 = icmp eq i8* %28, null
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else35
  %29 = load i8*, i8** %k, align 8
  %call40 = call i8* @eStrdup(i8* %29)
  %30 = load i8**, i8*** %kindName.addr, align 8
  store i8* %call40, i8** %30, align 8
  br label %if.end58

if.else41:                                        ; preds = %if.else35
  %31 = load i8*, i8** %comma, align 8
  %32 = load i8*, i8** %k, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call42 = call i8* @eMalloc(i64 %add)
  %33 = load i8**, i8*** %kindName.addr, align 8
  store i8* %call42, i8** %33, align 8
  %34 = load i8**, i8*** %kindName.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %k, align 8
  %37 = load i8*, i8** %comma, align 8
  %38 = load i8*, i8** %k, align 8
  %sub.ptr.lhs.cast43 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast44 = ptrtoint i8* %38 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %call46 = call i8* @strncpy(i8* %35, i8* %36, i64 %sub.ptr.sub45)
  %39 = load i8**, i8*** %kindName.addr, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %comma, align 8
  %42 = load i8*, i8** %k, align 8
  %sub.ptr.lhs.cast47 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast48 = ptrtoint i8* %42 to i64
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %arrayidx50 = getelementptr inbounds i8, i8* %40, i64 %sub.ptr.sub49
  store i8 0, i8* %arrayidx50, align 1
  %43 = load i8*, i8** %comma, align 8
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %add.ptr, i8** %k, align 8
  %44 = load i8*, i8** %k, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %45 to i32
  %cmp53 = icmp ne i32 %conv52, 0
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.else41
  %46 = load i8*, i8** %k, align 8
  %call56 = call i8* @eStrdup(i8* %46)
  %47 = load i8**, i8*** %description.addr, align 8
  store i8* %call56, i8** %47, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.else41
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then39
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.else
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then
  ret void
}

declare %struct.sKindDefinition* @getLanguageKind(i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regexPattern* @addCompiledTagPattern(%struct.lregexControlBlock* %lcb, i32 %table_index, i32 %regptype, %struct.regex_t* %pattern, i8* %name, i8 signext %kindLetter, i8* %kindName, i8* %description, i8* %flags, i8* %disabled) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %table_index.addr = alloca i32, align 4
  %regptype.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.regex_t*, align 8
  %name.addr = alloca i8*, align 8
  %kindLetter.addr = alloca i8, align 1
  %kindName.addr = alloca i8*, align 8
  %description.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %disabled.addr = alloca i8*, align 8
  %ptrn = alloca %struct.regexPattern*, align 8
  %exclusive = alloca i8, align 1
  %scopeActions = alloca i64, align 8
  %extraFlagData = alloca %struct.extraFlagData, align 4
  %fieldFlagData = alloca %struct.fieldFlagData, align 8
  %mtableFlagData = alloca %struct.mtableFlagData, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i32 %table_index, i32* %table_index.addr, align 4
  store i32 %regptype, i32* %regptype.addr, align 4
  store %struct.regex_t* %pattern, %struct.regex_t** %pattern.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8 %kindLetter, i8* %kindLetter.addr, align 1
  store i8* %kindName, i8** %kindName.addr, align 8
  store i8* %description, i8** %description.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  store i8 0, i8* %exclusive, align 1
  store i64 0, i64* %scopeActions, align 8
  %xtype = getelementptr inbounds %struct.extraFlagData, %struct.extraFlagData* %extraFlagData, i32 0, i32 0
  store i32 -1, i32* %xtype, align 4
  %owner = getelementptr inbounds %struct.extraFlagData, %struct.extraFlagData* %extraFlagData, i32 0, i32 1
  %0 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner1 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %0, i32 0, i32 4
  %1 = load i32, i32* %owner1, align 8
  store i32 %1, i32* %owner, align 4
  %spec = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %fieldFlagData, i32 0, i32 0
  store %struct.sPtrArray* null, %struct.sPtrArray** %spec, align 8
  %owner2 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %fieldFlagData, i32 0, i32 1
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner3 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %2, i32 0, i32 4
  %3 = load i32, i32* %owner3, align 8
  store i32 %3, i32* %owner2, align 8
  %lcb4 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %mtableFlagData, i32 0, i32 0
  %4 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  store %struct.lregexControlBlock* %4, %struct.lregexControlBlock** %lcb4, align 8
  %taction = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %mtableFlagData, i32 0, i32 1
  store %struct.mTableActionSpec* null, %struct.mTableActionSpec** %taction, align 8
  %5 = load i32, i32* %regptype.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %flags.addr, align 8
  call void @flagsEval(i8* %6, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @prePtrnFlagDef, i64 0, i64 0), i32 1, i8* %exclusive)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %regptype.addr, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* %regptype.addr, align 4
  %cmp6 = icmp eq i32 %8, 2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load i8*, i8** %flags.addr, align 8
  %10 = bitcast i64* %scopeActions to i8*
  call void @flagsEval(i8* %9, %struct.sFlagDefinition* getelementptr inbounds ([2 x %struct.sFlagDefinition], [2 x %struct.sFlagDefinition]* @scopePtrnFlagDef, i64 0, i64 0), i32 2, i8* %10)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false
  %11 = load i8*, i8** %flags.addr, align 8
  %12 = bitcast %struct.extraFlagData* %extraFlagData to i8*
  call void @flagsEval(i8* %11, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @extraSpecFlagDef, i64 0, i64 0), i32 1, i8* %12)
  %13 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %14 = load i32, i32* %table_index.addr, align 4
  %15 = load %struct.regex_t*, %struct.regex_t** %pattern.addr, align 8
  %16 = load i32, i32* %regptype.addr, align 4
  %call = call %struct.regexPattern* @addCompiledTagCommon(%struct.lregexControlBlock* %13, i32 %14, %struct.regex_t* %15, i32 %16)
  store %struct.regexPattern* %call, %struct.regexPattern** %ptrn, align 8
  %17 = load i32, i32* %regptype.addr, align 4
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end8
  %18 = load i32, i32* %regptype.addr, align 4
  %cmp11 = icmp eq i32 %18, 2
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false10, %if.end8
  %19 = load i8*, i8** %flags.addr, align 8
  %20 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %mgroup = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %20, i32 0, i32 8
  %21 = bitcast %struct.mGroupSpec* %mgroup to i8*
  call void @flagsEval(i8* %19, %struct.sFlagDefinition* getelementptr inbounds ([2 x %struct.sFlagDefinition], [2 x %struct.sFlagDefinition]* @multilinePtrnFlagDef, i64 0, i64 0), i32 2, i8* %21)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false10
  %22 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %taction14 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %22, i32 0, i32 9
  %taction15 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %mtableFlagData, i32 0, i32 1
  store %struct.mTableActionSpec* %taction14, %struct.mTableActionSpec** %taction15, align 8
  %23 = load i32, i32* %regptype.addr, align 4
  %cmp16 = icmp eq i32 %23, 2
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  %24 = load i8*, i8** %flags.addr, align 8
  %25 = bitcast %struct.mtableFlagData* %mtableFlagData to i8*
  call void @flagsEval(i8* %24, %struct.sFlagDefinition* getelementptr inbounds ([5 x %struct.sFlagDefinition], [5 x %struct.sFlagDefinition]* @multitablePtrnFlagDef, i64 0, i64 0), i32 5, i8* %25)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13
  %26 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %type = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %26, i32 0, i32 1
  store i32 0, i32* %type, align 8
  %27 = load i8*, i8** %name.addr, align 8
  %call19 = call i8* @eStrdup(i8* %27)
  %28 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %u = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %28, i32 0, i32 4
  %tag = bitcast %union.anon.1* %u to %struct.anon.2*
  %name_pattern = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag, i32 0, i32 1
  store i8* %call19, i8** %name_pattern, align 8
  %29 = load i8, i8* %exclusive, align 1
  %tobool = trunc i8 %29 to i1
  %30 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %exclusive20 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %30, i32 0, i32 2
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %exclusive20, align 4
  %31 = load i64, i64* %scopeActions, align 8
  %conv = trunc i64 %31 to i32
  %32 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %scopeActions21 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %32, i32 0, i32 5
  store i32 %conv, i32* %scopeActions21, align 8
  %33 = load i8*, i8** %disabled.addr, align 8
  %34 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %disabled22 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %34, i32 0, i32 6
  store i8* %33, i8** %disabled22, align 8
  %xtype23 = getelementptr inbounds %struct.extraFlagData, %struct.extraFlagData* %extraFlagData, i32 0, i32 0
  %35 = load i32, i32* %xtype23, align 4
  %36 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %xtagType = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %36, i32 0, i32 10
  store i32 %35, i32* %xtagType, align 8
  %37 = load i8*, i8** %flags.addr, align 8
  %38 = bitcast %struct.fieldFlagData* %fieldFlagData to i8*
  call void @flagsEval(i8* %37, %struct.sFlagDefinition* getelementptr inbounds ([1 x %struct.sFlagDefinition], [1 x %struct.sFlagDefinition]* @fieldSpecFlagDef, i64 0, i64 0), i32 1, i8* %38)
  %spec24 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %fieldFlagData, i32 0, i32 0
  %39 = load %struct.sPtrArray*, %struct.sPtrArray** %spec24, align 8
  %40 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %fieldPatterns = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %40, i32 0, i32 11
  store %struct.sPtrArray* %39, %struct.sPtrArray** %fieldPatterns, align 8
  %41 = load i8*, i8** %name.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv25 = sext i8 %42 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end18
  %43 = load i8, i8* %exclusive, align 1
  %tobool28 = trunc i8 %43 to i1
  br i1 %tobool28, label %land.lhs.true30, label %if.else

land.lhs.true30:                                  ; preds = %land.lhs.true
  %44 = load i8, i8* %kindLetter.addr, align 1
  %conv31 = sext i8 %44 to i32
  %cmp32 = icmp eq i32 %conv31, 114
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %land.lhs.true30
  %45 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %u35 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %45, i32 0, i32 4
  %tag36 = bitcast %union.anon.1* %u35 to %struct.anon.2*
  %kindIndex = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag36, i32 0, i32 0
  store i32 -1, i32* %kindIndex, align 8
  br label %if.end63

if.else:                                          ; preds = %land.lhs.true30, %land.lhs.true, %if.end18
  %46 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner37 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %46, i32 0, i32 4
  %47 = load i32, i32* %owner37, align 8
  %48 = load i8, i8* %kindLetter.addr, align 1
  %call38 = call %struct.sKindDefinition* @getLanguageKindForLetter(i32 %47, i8 signext %48)
  store %struct.sKindDefinition* %call38, %struct.sKindDefinition** %kdef, align 8
  %49 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %tobool39 = icmp ne %struct.sKindDefinition* %49, null
  br i1 %tobool39, label %if.then40, label %if.else55

if.then40:                                        ; preds = %if.else
  %50 = load i8*, i8** %kindName.addr, align 8
  %tobool41 = icmp ne i8* %50, null
  br i1 %tobool41, label %land.lhs.true42, label %if.end54

land.lhs.true42:                                  ; preds = %if.then40
  %51 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name43 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %51, i32 0, i32 2
  %52 = load i8*, i8** %name43, align 8
  %53 = load i8*, i8** %kindName.addr, align 8
  %call44 = call i32 @strcmp(i8* %52, i8* %53)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true46, label %if.end54

land.lhs.true46:                                  ; preds = %land.lhs.true42
  %54 = load i8*, i8** %kindName.addr, align 8
  %call47 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %land.lhs.true46
  %55 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %55, i32 0, i32 1
  %56 = load i8, i8* %letter, align 1
  %conv50 = sext i8 %56 to i32
  %57 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner51 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %57, i32 0, i32 4
  %58 = load i32, i32* %owner51, align 8
  %call52 = call i8* @getLanguageName(i32 %58)
  %59 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name53 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %59, i32 0, i32 2
  %60 = load i8*, i8** %name53, align 8
  %61 = load i8*, i8** %kindName.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.19, i64 0, i64 0), i32 %conv50, i8* %call52, i8* %60, i8* %61)
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %land.lhs.true46, %land.lhs.true42, %if.then40
  br label %if.end59

if.else55:                                        ; preds = %if.else
  %62 = load i8, i8* %kindLetter.addr, align 1
  %63 = load i8*, i8** %kindName.addr, align 8
  %64 = load i8*, i8** %description.addr, align 8
  %call56 = call %struct.sKindDefinition* @kindNew(i8 signext %62, i8* %63, i8* %64)
  store %struct.sKindDefinition* %call56, %struct.sKindDefinition** %kdef, align 8
  %65 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner57 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %65, i32 0, i32 4
  %66 = load i32, i32* %owner57, align 8
  %67 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %call58 = call i32 @defineLanguageKind(i32 %66, %struct.sKindDefinition* %67, void (%struct.sKindDefinition*)* @kindFree)
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %if.end54
  %68 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %id = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %68, i32 0, i32 9
  %69 = load i32, i32* %id, align 4
  %70 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %u60 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %70, i32 0, i32 4
  %tag61 = bitcast %union.anon.1* %u60 to %struct.anon.2*
  %kindIndex62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %tag61, i32 0, i32 0
  store i32 %69, i32* %kindIndex62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end59, %if.then34
  %71 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  ret %struct.regexPattern* %71
}

declare i8* @strchr(i8*, i32) #1

declare i8* @eMalloc(i64) #1

declare i8* @strncpy(i8*, i8*, i64) #1

declare void @flagsEval(i8*, %struct.sFlagDefinition*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regexPattern* @addCompiledTagCommon(%struct.lregexControlBlock* %lcb, i32 %table_index, %struct.regex_t* %pattern, i32 %regptype) #0 {
entry:
  %lcb.addr = alloca %struct.lregexControlBlock*, align 8
  %table_index.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.regex_t*, align 8
  %regptype.addr = alloca i32, align 4
  %ptrn = alloca %struct.regexPattern*, align 8
  %table = alloca %struct.regexTable*, align 8
  store %struct.lregexControlBlock* %lcb, %struct.lregexControlBlock** %lcb.addr, align 8
  store i32 %table_index, i32* %table_index.addr, align 4
  store %struct.regex_t* %pattern, %struct.regex_t** %pattern.addr, align 8
  store i32 %regptype, i32* %regptype.addr, align 4
  %0 = load %struct.regex_t*, %struct.regex_t** %pattern.addr, align 8
  %1 = load i32, i32* %regptype.addr, align 4
  %call = call %struct.regexPattern* @newPattern(%struct.regex_t* %0, i32 %1)
  store %struct.regexPattern* %call, %struct.regexPattern** %ptrn, align 8
  %2 = load i32, i32* %regptype.addr, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %3, i32 0, i32 2
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %5 = load i32, i32* %table_index.addr, align 4
  %call1 = call i8* @ptrArrayItem(%struct.sPtrArray* %4, i32 %5)
  %6 = bitcast i8* %call1 to %struct.regexTable*
  store %struct.regexTable* %6, %struct.regexTable** %table, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  %7 = load %struct.regexTable*, %struct.regexTable** %table, align 8
  %patterns = getelementptr inbounds %struct.regexTable, %struct.regexTable* %7, i32 0, i32 1
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %patterns, align 8
  %9 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %10 = bitcast %struct.regexPattern* %9 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %8, i8* %10)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %patterns2 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %11, i32 0, i32 1
  %12 = load i32, i32* %regptype.addr, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.sPtrArray*], [2 x %struct.sPtrArray*]* %patterns2, i64 0, i64 %idxprom
  %13 = load %struct.sPtrArray*, %struct.sPtrArray** %arrayidx, align 8
  %14 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %15 = bitcast %struct.regexPattern* %14 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %13, i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %16 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb.addr, align 8
  %owner = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %16, i32 0, i32 4
  %17 = load i32, i32* %owner, align 8
  call void @useRegexMethod(i32 %17)
  %18 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  ret %struct.regexPattern* %18
}

declare %struct.sKindDefinition* @getLanguageKindForLetter(i32, i8 signext) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sKindDefinition* @kindNew(i8 signext %letter, i8* %name, i8* %description) #0 {
entry:
  %letter.addr = alloca i8, align 1
  %name.addr = alloca i8*, align 8
  %description.addr = alloca i8*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  store i8 %letter, i8* %letter.addr, align 1
  store i8* %name, i8** %name.addr, align 8
  store i8* %description, i8** %description.addr, align 8
  %call = call i8* @eCalloc(i64 1, i64 80)
  %0 = bitcast i8* %call to %struct.sKindDefinition*
  store %struct.sKindDefinition* %0, %struct.sKindDefinition** %kdef, align 8
  %1 = load i8, i8* %letter.addr, align 1
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter1 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %2, i32 0, i32 1
  store i8 %1, i8* %letter1, align 1
  %3 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), %cond.false ]
  %call2 = call i8* @eStrdup(i8* %cond)
  %5 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name3 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %5, i32 0, i32 2
  store i8* %call2, i8** %name3, align 8
  %6 = load i8*, i8** %description.addr, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  %7 = load i8*, i8** %description.addr, align 8
  br label %cond.end8

cond.false6:                                      ; preds = %cond.end
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name7 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %8, i32 0, i32 2
  %9 = load i8*, i8** %name7, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.true5
  %cond9 = phi i8* [ %7, %cond.true5 ], [ %9, %cond.false6 ]
  %call10 = call i8* @eStrdup(i8* %cond9)
  %10 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %description11 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %10, i32 0, i32 3
  store i8* %call10, i8** %description11, align 8
  %11 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %11, i32 0, i32 0
  store i8 1, i8* %enabled, align 8
  %12 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  ret %struct.sKindDefinition* %12
}

declare i32 @defineLanguageKind(i32, %struct.sKindDefinition*, void (%struct.sKindDefinition*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @kindFree(%struct.sKindDefinition* %kind) #0 {
entry:
  %kind.addr = alloca %struct.sKindDefinition*, align 8
  store %struct.sKindDefinition* %kind, %struct.sKindDefinition** %kind.addr, align 8
  %0 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %0, i32 0, i32 1
  store i8 0, i8* %letter, align 1
  %1 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %1, i32 0, i32 2
  %2 = load i8*, i8** %name, align 8
  call void @eFree(i8* %2)
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %name1 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 2
  store i8* null, i8** %name1, align 8
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %description = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %4, i32 0, i32 3
  %5 = load i8*, i8** %description, align 8
  call void @eFree(i8* %5)
  %6 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %description2 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %6, i32 0, i32 3
  store i8* null, i8** %description2, align 8
  %7 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %8 = bitcast %struct.sKindDefinition* %7 to i8*
  call void @eFree(i8* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.regexPattern* @newPattern(%struct.regex_t* %pattern, i32 %regptype) #0 {
entry:
  %pattern.addr = alloca %struct.regex_t*, align 8
  %regptype.addr = alloca i32, align 4
  %ptrn = alloca %struct.regexPattern*, align 8
  store %struct.regex_t* %pattern, %struct.regex_t** %pattern.addr, align 8
  store i32 %regptype, i32* %regptype.addr, align 4
  %call = call i8* @eCalloc(i64 1, i64 128)
  %0 = bitcast i8* %call to %struct.regexPattern*
  store %struct.regexPattern* %0, %struct.regexPattern** %ptrn, align 8
  %1 = load %struct.regex_t*, %struct.regex_t** %pattern.addr, align 8
  %2 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %pattern1 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %2, i32 0, i32 0
  store %struct.regex_t* %1, %struct.regex_t** %pattern1, align 8
  %3 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %exclusive = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %3, i32 0, i32 2
  store i8 0, i8* %exclusive, align 4
  %4 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %accept_empty_name = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %4, i32 0, i32 3
  store i8 0, i8* %accept_empty_name, align 1
  %5 = load i32, i32* %regptype.addr, align 4
  %6 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %regptype2 = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %6, i32 0, i32 7
  store i32 %5, i32* %regptype2, align 8
  %7 = load i32, i32* %regptype.addr, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %mgroup = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %8, i32 0, i32 8
  call void @initMgroup(%struct.mGroupSpec* %mgroup)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %regptype.addr, align 4
  %cmp3 = icmp eq i32 %9, 2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %taction = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %10, i32 0, i32 9
  call void @initTaction(%struct.mTableActionSpec* %taction)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %11 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  %refcount = getelementptr inbounds %struct.regexPattern, %struct.regexPattern* %11, i32 0, i32 14
  store i32 1, i32* %refcount, align 8
  %12 = load %struct.regexPattern*, %struct.regexPattern** %ptrn, align 8
  ret %struct.regexPattern* %12
}

declare void @useRegexMethod(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initMgroup(%struct.mGroupSpec* %mgroup) #0 {
entry:
  %mgroup.addr = alloca %struct.mGroupSpec*, align 8
  store %struct.mGroupSpec* %mgroup, %struct.mGroupSpec** %mgroup.addr, align 8
  %0 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup.addr, align 8
  %forLineNumberDetermination = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %0, i32 0, i32 0
  store i32 -1, i32* %forLineNumberDetermination, align 4
  %1 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup.addr, align 8
  %forNextScanning = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %1, i32 0, i32 1
  store i32 -1, i32* %forNextScanning, align 4
  %2 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup.addr, align 8
  %nextFromStart = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %2, i32 0, i32 2
  store i8 0, i8* %nextFromStart, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initTaction(%struct.mTableActionSpec* %taction) #0 {
entry:
  %taction.addr = alloca %struct.mTableActionSpec*, align 8
  store %struct.mTableActionSpec* %taction, %struct.mTableActionSpec** %taction.addr, align 8
  %0 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction.addr, align 8
  %action = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %0, i32 0, i32 0
  store i32 0, i32* %action, align 8
  %1 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction.addr, align 8
  %table = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %1, i32 0, i32 1
  store %struct.regexTable* null, %struct.regexTable** %table, align 8
  ret void
}

declare i32 @"\01_regcomp"(%struct.regex_t*, i8*, i32) #1

; Function Attrs: cold
declare i64 @regerror(i32, %struct.regex_t*, i8*, i64) #4

declare void @vStringCatS(%struct.sVString*, i8*) #1

declare i8* @vStringDeleteUnwrap(%struct.sVString*) #1

declare i8* @eStrndup(i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseTagRegex(i32 %regptype, i8* %regexp, i8** %name, i8** %kinds, i8** %flags) #0 {
entry:
  %regptype.addr = alloca i32, align 4
  %regexp.addr = alloca i8*, align 8
  %name.addr = alloca i8**, align 8
  %kinds.addr = alloca i8**, align 8
  %flags.addr = alloca i8**, align 8
  %result = alloca i8, align 1
  %separator = alloca i32, align 4
  %third = alloca i8*, align 8
  %fourth = alloca i8*, align 8
  store i32 %regptype, i32* %regptype.addr, align 4
  store i8* %regexp, i8** %regexp.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i8** %kinds, i8*** %kinds.addr, align 8
  store i8** %flags, i8*** %flags.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i8*, i8** %regexp.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %separator, align 4
  %2 = load i8*, i8** %regexp.addr, align 8
  %3 = load i32, i32* %regptype.addr, align 4
  %call = call i8* @scanSeparators(i8* %2, i32 %3)
  %4 = load i8**, i8*** %name.addr, align 8
  store i8* %call, i8** %4, align 8
  %5 = load i8*, i8** %regexp.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv1 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  br label %if.end33

if.else:                                          ; preds = %entry
  %7 = load i8**, i8*** %name.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %10 = load i32, i32* %separator, align 4
  %cmp4 = icmp ne i32 %conv3, %10
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %11 = load i8*, i8** %regexp.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* %11)
  br label %if.end32

if.else7:                                         ; preds = %if.else
  %12 = load i8**, i8*** %name.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call8 = call i8* @scanSeparators(i8* %13, i32 0)
  store i8* %call8, i8** %third, align 8
  %14 = load i8**, i8*** %name.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %conv9 = sext i8 %16 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else7
  %17 = load i8**, i8*** %name.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %name.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %call12 = call i64 @strlen(i8* %20)
  %sub = sub i64 %call12, 1
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 %sub
  %21 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %21 to i32
  %cmp15 = icmp eq i32 %conv14, 92
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %land.lhs.true
  %22 = load i8**, i8*** %name.addr, align 8
  %23 = load i8*, i8** %22, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then17, %land.lhs.true, %if.else7
  %24 = load i8*, i8** %third, align 8
  %25 = load i8, i8* %24, align 1
  %conv18 = sext i8 %25 to i32
  %26 = load i32, i32* %separator, align 4
  %cmp19 = icmp ne i32 %conv18, %26
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end
  %27 = load i8*, i8** %regexp.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* %27)
  br label %if.end31

if.else22:                                        ; preds = %if.end
  %28 = load i8*, i8** %third, align 8
  %call23 = call i8* @scanSeparators(i8* %28, i32 0)
  store i8* %call23, i8** %fourth, align 8
  %29 = load i8*, i8** %fourth, align 8
  %30 = load i8, i8* %29, align 1
  %conv24 = sext i8 %30 to i32
  %31 = load i32, i32* %separator, align 4
  %cmp25 = icmp eq i32 %conv24, %31
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else22
  %32 = load i8*, i8** %third, align 8
  %33 = load i8**, i8*** %kinds.addr, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %fourth, align 8
  %call28 = call i8* @scanSeparators(i8* %34, i32 0)
  %35 = load i8*, i8** %fourth, align 8
  %36 = load i8**, i8*** %flags.addr, align 8
  store i8* %35, i8** %36, align 8
  br label %if.end30

if.else29:                                        ; preds = %if.else22
  %37 = load i8*, i8** %third, align 8
  %38 = load i8**, i8*** %flags.addr, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %kinds.addr, align 8
  store i8* null, i8** %39, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then27
  store i8 1, i8* %result, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then21
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then6
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then
  %40 = load i8, i8* %result, align 1
  %tobool = trunc i8 %40 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @scanSeparators(i8* %name, i32 %regptype) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %regptype.addr = alloca i32, align 4
  %sep = alloca i8, align 1
  %copyto = alloca i8*, align 8
  %quoted = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  store i32 %regptype, i32* %regptype.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %sep, align 1
  %2 = load i8*, i8** %name.addr, align 8
  store i8* %2, i8** %copyto, align 8
  store i8 0, i8* %quoted, align 1
  %3 = load i8*, i8** %name.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %name.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8, i8* %quoted, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %if.else28

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %9 = load i8, i8* %sep, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %10 = load i8, i8* %sep, align 1
  %11 = load i8*, i8** %copyto, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr7, i8** %copyto, align 8
  store i8 %10, i8* %11, align 1
  br label %if.end27

if.else:                                          ; preds = %if.then
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 116
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  %14 = load i8*, i8** %copyto, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr12, i8** %copyto, align 8
  store i8 9, i8* %14, align 1
  br label %if.end26

if.else13:                                        ; preds = %if.else
  %15 = load i32, i32* %regptype.addr, align 4
  %cmp14 = icmp eq i32 %15, 1
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else13
  %16 = load i32, i32* %regptype.addr, align 4
  %cmp16 = icmp eq i32 %16, 2
  br i1 %cmp16, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else13
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv18 = sext i8 %18 to i32
  %cmp19 = icmp eq i32 %conv18, 110
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %land.lhs.true
  %19 = load i8*, i8** %copyto, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr22, i8** %copyto, align 8
  store i8 10, i8* %19, align 1
  br label %if.end

if.else23:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %20 = load i8*, i8** %copyto, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr24, i8** %copyto, align 8
  store i8 92, i8* %20, align 1
  %21 = load i8*, i8** %name.addr, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %copyto, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr25, i8** %copyto, align 8
  store i8 %22, i8* %23, align 1
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then21
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then11
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then6
  store i8 0, i8* %quoted, align 1
  br label %if.end43

if.else28:                                        ; preds = %for.body
  %24 = load i8*, i8** %name.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv29 = sext i8 %25 to i32
  %cmp30 = icmp eq i32 %conv29, 92
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else28
  store i8 1, i8* %quoted, align 1
  br label %if.end42

if.else33:                                        ; preds = %if.else28
  %26 = load i8*, i8** %name.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv34 = sext i8 %27 to i32
  %28 = load i8, i8* %sep, align 1
  %conv35 = sext i8 %28 to i32
  %cmp36 = icmp eq i32 %conv34, %conv35
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else33
  br label %for.end

if.else39:                                        ; preds = %if.else33
  %29 = load i8*, i8** %name.addr, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %copyto, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr40, i8** %copyto, align 8
  store i8 %30, i8* %31, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then32
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %32 = load i8*, i8** %name.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr44, i8** %name.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then38, %for.cond
  %33 = load i8*, i8** %copyto, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %name.addr, align 8
  ret i8* %34
}

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @regex_flag_basic_short(i8 signext %c, i8* %data) #0 {
entry:
  %c.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %cflags = alloca i32*, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %cflags, align 8
  %2 = load i32*, i32** %cflags, align 8
  %3 = load i32, i32* %2, align 4
  %and = and i32 %3, -2
  store i32 %and, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @regex_flag_basic_long(i8* %s, i8* %unused, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %unused.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  call void @regex_flag_basic_short(i8 signext 98, i8* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @regex_flag_extend_short(i8 signext %c, i8* %data) #0 {
entry:
  %c.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %cflags = alloca i32*, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %cflags, align 8
  %2 = load i32*, i32** %cflags, align 8
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, 1
  store i32 %or, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @regex_flag_extend_long(i8* %c, i8* %unused, i8* %data) #0 {
entry:
  %c.addr = alloca i8*, align 8
  %unused.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %c, i8** %c.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  call void @regex_flag_extend_short(i8 signext 101, i8* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @regex_flag_icase_short(i8 signext %c, i8* %data) #0 {
entry:
  %c.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %cflags = alloca i32*, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %cflags, align 8
  %2 = load i32*, i32** %cflags, align 8
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @regex_flag_icase_long(i8* %s, i8* %unused, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %unused.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  call void @regex_flag_icase_short(i8 signext 105, i8* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_ptrn_flag_exclusive_short(i8 signext %c, i8* %data) #0 {
entry:
  %c.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %exclusive = alloca i8*, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %exclusive, align 8
  %1 = load i8*, i8** %exclusive, align 8
  store i8 1, i8* %1, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_ptrn_flag_exclusive_long(i8* %s, i8* %unused, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %unused.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  call void @pre_ptrn_flag_exclusive_short(i8 signext 120, i8* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scope_ptrn_flag_eval(i8* %f, i8* %v, i8* %data) #0 {
entry:
  %f.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %bfields = alloca i64*, align 8
  store i8* %f, i8** %f.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %bfields, align 8
  %2 = load i8*, i8** %v.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %bfields, align 8
  %4 = load i64, i64* %3, align 8
  %or = or i64 %4, 1
  store i64 %or, i64* %3, align 8
  br label %if.end24

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %v.addr, align 8
  %call1 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %6 = load i64*, i64** %bfields, align 8
  %7 = load i64, i64* %6, align 8
  %or4 = or i64 %7, 5
  store i64 %or4, i64* %6, align 8
  br label %if.end23

if.else5:                                         ; preds = %if.else
  %8 = load i8*, i8** %v.addr, align 8
  %call6 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %9 = load i64*, i64** %bfields, align 8
  %10 = load i64, i64* %9, align 8
  %or9 = or i64 %10, 2
  store i64 %or9, i64* %9, align 8
  br label %if.end22

if.else10:                                        ; preds = %if.else5
  %11 = load i8*, i8** %v.addr, align 8
  %call11 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0))
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %12 = load i64*, i64** %bfields, align 8
  %13 = load i64, i64* %12, align 8
  %or14 = or i64 %13, 8
  store i64 %or14, i64* %12, align 8
  br label %if.end21

if.else15:                                        ; preds = %if.else10
  %14 = load i8*, i8** %v.addr, align 8
  %call16 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0))
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %15 = load i64*, i64** %bfields, align 8
  %16 = load i64, i64* %15, align 8
  %or19 = or i64 %16, 12
  store i64 %or19, i64* %15, align 8
  br label %if.end

if.else20:                                        ; preds = %if.else15
  %17 = load i8*, i8** %v.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.48, i64 0, i64 0), i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then8
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then3
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @placeholder_ptrn_flag_eval(i8* %f, i8* %v, i8* %data) #0 {
entry:
  %f.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %bfields = alloca i64*, align 8
  store i8* %f, i8** %f.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %bfields, align 8
  %2 = load i64*, i64** %bfields, align 8
  %3 = load i64, i64* %2, align 8
  %or = or i64 %3, 16
  store i64 %or, i64* %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_ptrn_flag_extra_long(i8* %s, i8* %v, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %xdata = alloca %struct.extraFlagData*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.extraFlagData*
  store %struct.extraFlagData* %1, %struct.extraFlagData** %xdata, align 8
  %2 = load i8*, i8** %v.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i8* %3)
  br label %if.end5

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %v.addr, align 8
  %5 = load %struct.extraFlagData*, %struct.extraFlagData** %xdata, align 8
  %owner = getelementptr inbounds %struct.extraFlagData, %struct.extraFlagData* %5, i32 0, i32 1
  %6 = load i32, i32* %owner, align 4
  %call = call i32 @getXtagTypeForNameAndLanguage(i8* %4, i32 %6)
  %7 = load %struct.extraFlagData*, %struct.extraFlagData** %xdata, align 8
  %xtype = getelementptr inbounds %struct.extraFlagData, %struct.extraFlagData* %7, i32 0, i32 0
  store i32 %call, i32* %xtype, align 4
  %8 = load %struct.extraFlagData*, %struct.extraFlagData** %xdata, align 8
  %xtype1 = getelementptr inbounds %struct.extraFlagData, %struct.extraFlagData* %8, i32 0, i32 0
  %9 = load i32, i32* %xtype1, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %10 = load i8*, i8** %v.addr, align 8
  %11 = load %struct.extraFlagData*, %struct.extraFlagData** %xdata, align 8
  %owner3 = getelementptr inbounds %struct.extraFlagData, %struct.extraFlagData* %11, i32 0, i32 1
  %12 = load i32, i32* %owner3, align 4
  %call4 = call i8* @getLanguageName(i32 %12)
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i64 0, i64 0), i8* %10, i8* %call4)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then2, %if.end
  ret void
}

declare i32 @getXtagTypeForNameAndLanguage(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_ptrn_flag_field_long(i8* %s, i8* %v, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %fdata = alloca %struct.fieldFlagData*, align 8
  %fp = alloca %struct.fieldPattern*, align 8
  %ftype = alloca i32, align 4
  %fname = alloca i8*, align 8
  %template = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.fieldFlagData*
  store %struct.fieldFlagData* %1, %struct.fieldFlagData** %fdata, align 8
  %2 = load i8*, i8** %v.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i8* %3)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %v.addr, align 8
  %call = call i8* @strchr(i8* %4, i32 58)
  store i8* %call, i8** %tmp, align 8
  %5 = load i8*, i8** %tmp, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i8*, i8** %tmp, align 8
  %7 = load i8*, i8** %v.addr, align 8
  %cmp1 = icmp eq i8* %6, %7
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load i8*, i8** %s.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i64 0, i64 0), i8* %8)
  br label %return

if.end3:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %v.addr, align 8
  %10 = load i8*, i8** %tmp, align 8
  %11 = load i8*, i8** %v.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call i8* @eStrndup(i8* %9, i64 %sub.ptr.sub)
  store i8* %call4, i8** %fname, align 8
  %12 = load i8*, i8** %fname, align 8
  %13 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %owner = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %13, i32 0, i32 1
  %14 = load i32, i32* %owner, align 8
  %call5 = call i32 @getFieldTypeForNameAndLanguage(i8* %12, i32 %14)
  store i32 %call5, i32* %ftype, align 4
  %15 = load i32, i32* %ftype, align 4
  %cmp6 = icmp eq i32 %15, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  %16 = load i8*, i8** %fname, align 8
  %17 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %owner8 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %17, i32 0, i32 1
  %18 = load i32, i32* %owner8, align 8
  %call9 = call i8* @getLanguageName(i32 %18)
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* %16, i8* %call9)
  %19 = load i8*, i8** %fname, align 8
  call void @eFree(i8* %19)
  br label %return

if.end10:                                         ; preds = %if.end3
  %20 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %spec = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %20, i32 0, i32 0
  %21 = load %struct.sPtrArray*, %struct.sPtrArray** %spec, align 8
  %tobool11 = icmp ne %struct.sPtrArray* %21, null
  br i1 %tobool11, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.end10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %spec13 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %23, i32 0, i32 0
  %24 = load %struct.sPtrArray*, %struct.sPtrArray** %spec13, align 8
  %call14 = call i32 @ptrArrayCount(%struct.sPtrArray* %24)
  %cmp15 = icmp ult i32 %22, %call14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %spec16 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %25, i32 0, i32 0
  %26 = load %struct.sPtrArray*, %struct.sPtrArray** %spec16, align 8
  %27 = load i32, i32* %i, align 4
  %call17 = call i8* @ptrArrayItem(%struct.sPtrArray* %26, i32 %27)
  %28 = bitcast i8* %call17 to %struct.fieldPattern*
  store %struct.fieldPattern* %28, %struct.fieldPattern** %fp, align 8
  %29 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  %ftype18 = getelementptr inbounds %struct.fieldPattern, %struct.fieldPattern* %29, i32 0, i32 0
  %30 = load i32, i32* %ftype18, align 8
  %31 = load i32, i32* %ftype, align 4
  %cmp19 = icmp eq i32 %30, %31
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %for.body
  %32 = load i8*, i8** %fname, align 8
  %33 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %owner21 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %33, i32 0, i32 1
  %34 = load i32, i32* %owner21, align 8
  %call22 = call i8* @getLanguageName(i32 %34)
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i64 0, i64 0), i8* %32, i8* %call22)
  %35 = load i8*, i8** %fname, align 8
  call void @eFree(i8* %35)
  br label %return

if.end23:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %36 = load i32, i32* %i, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.end10
  %37 = load i8*, i8** %fname, align 8
  call void @eFree(i8* %37)
  %38 = load i8*, i8** %tmp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %add.ptr, i8** %template, align 8
  %39 = load i32, i32* %ftype, align 4
  %40 = load i8*, i8** %template, align 8
  %call25 = call %struct.fieldPattern* @fieldPatternNew(i32 %39, i8* %40)
  store %struct.fieldPattern* %call25, %struct.fieldPattern** %fp, align 8
  %41 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %spec26 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %41, i32 0, i32 0
  %42 = load %struct.sPtrArray*, %struct.sPtrArray** %spec26, align 8
  %cmp27 = icmp eq %struct.sPtrArray* %42, null
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  %call29 = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* bitcast (void (%struct.fieldPattern*)* @fieldPatternDelete to void (i8*)*))
  %43 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %spec30 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %43, i32 0, i32 0
  store %struct.sPtrArray* %call29, %struct.sPtrArray** %spec30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end24
  %44 = load %struct.fieldFlagData*, %struct.fieldFlagData** %fdata, align 8
  %spec32 = getelementptr inbounds %struct.fieldFlagData, %struct.fieldFlagData* %44, i32 0, i32 0
  %45 = load %struct.sPtrArray*, %struct.sPtrArray** %spec32, align 8
  %46 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  %47 = bitcast %struct.fieldPattern* %46 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %45, i8* %47)
  br label %return

return:                                           ; preds = %if.end31, %if.then20, %if.then7, %if.then2, %if.then
  ret void
}

declare i32 @getFieldTypeForNameAndLanguage(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.fieldPattern* @fieldPatternNew(i32 %ftype, i8* %template) #0 {
entry:
  %ftype.addr = alloca i32, align 4
  %template.addr = alloca i8*, align 8
  %fp = alloca %struct.fieldPattern*, align 8
  store i32 %ftype, i32* %ftype.addr, align 4
  store i8* %template, i8** %template.addr, align 8
  %call = call i8* @eMalloc(i64 16)
  %0 = bitcast i8* %call to %struct.fieldPattern*
  store %struct.fieldPattern* %0, %struct.fieldPattern** %fp, align 8
  %1 = load i32, i32* %ftype.addr, align 4
  %2 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  %ftype1 = getelementptr inbounds %struct.fieldPattern, %struct.fieldPattern* %2, i32 0, i32 0
  store i32 %1, i32* %ftype1, align 8
  %3 = load i8*, i8** %template.addr, align 8
  %call2 = call i8* @eStrdup(i8* %3)
  %4 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  %template3 = getelementptr inbounds %struct.fieldPattern, %struct.fieldPattern* %4, i32 0, i32 1
  store i8* %call2, i8** %template3, align 8
  %5 = load %struct.fieldPattern*, %struct.fieldPattern** %fp, align 8
  ret %struct.fieldPattern* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fieldPatternDelete(%struct.fieldPattern* %fp) #0 {
entry:
  %fp.addr = alloca %struct.fieldPattern*, align 8
  store %struct.fieldPattern* %fp, %struct.fieldPattern** %fp.addr, align 8
  %0 = load %struct.fieldPattern*, %struct.fieldPattern** %fp.addr, align 8
  %template = getelementptr inbounds %struct.fieldPattern, %struct.fieldPattern* %0, i32 0, i32 1
  %1 = load i8*, i8** %template, align 8
  call void @eFree(i8* %1)
  %2 = load %struct.fieldPattern*, %struct.fieldPattern** %fp.addr, align 8
  %3 = bitcast %struct.fieldPattern* %2 to i8*
  call void @eFree(i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_ptrn_flag_mgroup_long(i8* %s, i8* %v, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %mgroup = alloca %struct.mGroupSpec*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mGroupSpec*
  store %struct.mGroupSpec* %1, %struct.mGroupSpec** %mgroup, align 8
  %2 = load i8*, i8** %v.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i8* %3)
  br label %if.end15

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %v.addr, align 8
  %5 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forLineNumberDetermination = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %5, i32 0, i32 0
  %call = call zeroext i1 @strToInt(i8* %4, i32 10, i32* %forLineNumberDetermination)
  br i1 %call, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8*, i8** %v.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0), i8* %6, i8* %7)
  %8 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forLineNumberDetermination2 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %8, i32 0, i32 0
  store i32 -1, i32* %forLineNumberDetermination2, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %9 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forLineNumberDetermination3 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %9, i32 0, i32 0
  %10 = load i32, i32* %forLineNumberDetermination3, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %11 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forLineNumberDetermination4 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %11, i32 0, i32 0
  %12 = load i32, i32* %forLineNumberDetermination4, align 4
  %cmp5 = icmp sge i32 %12, 10
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.else
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8*, i8** %v.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i64 0, i64 0), i32 9, i8* %13, i8* %14)
  %15 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forLineNumberDetermination7 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %15, i32 0, i32 0
  store i32 -1, i32* %forLineNumberDetermination7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %lor.lhs.false
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then1
  %16 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forLineNumberDetermination10 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %16, i32 0, i32 0
  %17 = load i32, i32* %forLineNumberDetermination10, align 4
  %cmp11 = icmp ne i32 %17, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end9
  %18 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forNextScanning = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %18, i32 0, i32 1
  %19 = load i32, i32* %forNextScanning, align 4
  %cmp12 = icmp eq i32 %19, -1
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  %20 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forNextScanning14 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %20, i32 0, i32 1
  store i32 0, i32* %forNextScanning14, align 4
  %21 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %nextFromStart = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %21, i32 0, i32 2
  store i8 0, i8* %nextFromStart, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then13, %land.lhs.true, %if.end9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_ptrn_flag_advanceTo_long(i8* %s, i8* %v, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %mgroup = alloca %struct.mGroupSpec*, align 8
  %vdup = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mGroupSpec*
  store %struct.mGroupSpec* %1, %struct.mGroupSpec** %mgroup, align 8
  %2 = load i8*, i8** %v.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %s.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i8* %3)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %v.addr, align 8
  %call = call i8* @eStrdup(i8* %4)
  store i8* %call, i8** %vdup, align 8
  %5 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %nextFromStart = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %5, i32 0, i32 2
  store i8 0, i8* %nextFromStart, align 4
  %6 = load i8*, i8** %vdup, align 8
  %call1 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0))
  store i8* %call1, i8** %tmp, align 8
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %nextFromStart4 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %7, i32 0, i32 2
  store i8 1, i8* %nextFromStart4, align 4
  %8 = load i8*, i8** %tmp, align 8
  store i8 0, i8* %8, align 1
  br label %if.end9

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %vdup, align 8
  %call5 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0))
  store i8* %call5, i8** %tmp, align 8
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %10 = load i8*, i8** %tmp, align 8
  store i8 0, i8* %10, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then3
  %11 = load i8*, i8** %vdup, align 8
  %12 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forNextScanning = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %12, i32 0, i32 1
  %call10 = call zeroext i1 @strToInt(i8* %11, i32 10, i32* %forNextScanning)
  br i1 %call10, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8*, i8** %vdup, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0), i8* %13, i8* %14)
  %15 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %nextFromStart12 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %15, i32 0, i32 2
  store i8 0, i8* %nextFromStart12, align 4
  br label %if.end20

if.else13:                                        ; preds = %if.end9
  %16 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forNextScanning14 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %16, i32 0, i32 1
  %17 = load i32, i32* %forNextScanning14, align 4
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else13
  %18 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %forNextScanning15 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %18, i32 0, i32 1
  %19 = load i32, i32* %forNextScanning15, align 4
  %cmp16 = icmp sge i32 %19, 10
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false, %if.else13
  %20 = load i8*, i8** %s.addr, align 8
  %21 = load i8*, i8** %vdup, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i64 0, i64 0), i32 9, i8* %20, i8* %21)
  %22 = load %struct.mGroupSpec*, %struct.mGroupSpec** %mgroup, align 8
  %nextFromStart18 = getelementptr inbounds %struct.mGroupSpec, %struct.mGroupSpec* %22, i32 0, i32 2
  store i8 0, i8* %nextFromStart18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then11
  %23 = load i8*, i8** %vdup, align 8
  call void @eFree(i8* %23)
  br label %return

return:                                           ; preds = %if.end20, %if.then
  ret void
}

declare zeroext i1 @strToInt(i8*, i32, i32*) #1

declare i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_ptrn_flag_mtable_long(i8* %s, i8* %v, i8* %data) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %mdata = alloca %struct.mtableFlagData*, align 8
  %taction = alloca %struct.mTableActionSpec*, align 8
  %taking_table = alloca i8, align 1
  %t = alloca i32, align 4
  %continuation = alloca i8*, align 8
  %tableEnterTo = alloca i8*, align 8
  %t_cont = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mtableFlagData*
  store %struct.mtableFlagData* %1, %struct.mtableFlagData** %mdata, align 8
  %2 = load %struct.mtableFlagData*, %struct.mtableFlagData** %mdata, align 8
  %taction1 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %2, i32 0, i32 1
  %3 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction1, align 8
  store %struct.mTableActionSpec* %3, %struct.mTableActionSpec** %taction, align 8
  store i8 1, i8* %taking_table, align 1
  %4 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %action = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %5, i32 0, i32 0
  store i32 1, i32* %action, align 8
  br label %if.end24

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %s.addr, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %7 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %action5 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %7, i32 0, i32 0
  store i32 2, i32* %action5, align 8
  store i8 0, i8* %taking_table, align 1
  br label %if.end23

if.else6:                                         ; preds = %if.else
  %8 = load i8*, i8** %s.addr, align 8
  %call7 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else6
  %9 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %action10 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %9, i32 0, i32 0
  store i32 3, i32* %action10, align 8
  br label %if.end22

if.else11:                                        ; preds = %if.else6
  %10 = load i8*, i8** %s.addr, align 8
  %call12 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0))
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else11
  %11 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %action15 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %11, i32 0, i32 0
  store i32 4, i32* %action15, align 8
  br label %if.end21

if.else16:                                        ; preds = %if.else11
  %12 = load i8*, i8** %s.addr, align 8
  %call17 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0))
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else16
  %13 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %action20 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %13, i32 0, i32 0
  store i32 5, i32* %action20, align 8
  store i8 0, i8* %taking_table, align 1
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else16
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then4
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %14 = load i8, i8* %taking_table, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then25, label %if.end67

if.then25:                                        ; preds = %if.end24
  store i8* null, i8** %continuation, align 8
  %15 = load i8*, i8** %v.addr, align 8
  %tobool26 = icmp ne i8* %15, null
  br i1 %tobool26, label %lor.lhs.false, label %if.then28

lor.lhs.false:                                    ; preds = %if.then25
  %16 = load i8*, i8** %v.addr, align 8
  %17 = load i8, i8* %16, align 1
  %tobool27 = icmp ne i8 %17, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false, %if.then25
  %18 = load i8*, i8** %s.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.82, i64 0, i64 0), i8* %18)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %lor.lhs.false
  %19 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %action30 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %19, i32 0, i32 0
  %20 = load i32, i32* %action30, align 8
  %cmp31 = icmp eq i32 %20, 1
  br i1 %cmp31, label %land.lhs.true, label %if.else55

land.lhs.true:                                    ; preds = %if.end29
  %21 = load i8*, i8** %v.addr, align 8
  %call32 = call i8* @strchr(i8* %21, i32 44)
  store i8* %call32, i8** %continuation, align 8
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %if.then34, label %if.else55

if.then34:                                        ; preds = %land.lhs.true
  %22 = load i8*, i8** %v.addr, align 8
  %23 = load i8*, i8** %continuation, align 8
  %24 = load i8*, i8** %v.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call35 = call i8* @eStrndup(i8* %22, i64 %sub.ptr.sub)
  store i8* %call35, i8** %tableEnterTo, align 8
  %25 = load %struct.mtableFlagData*, %struct.mtableFlagData** %mdata, align 8
  %lcb = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %25, i32 0, i32 0
  %26 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb, align 8
  %27 = load i8*, i8** %tableEnterTo, align 8
  %call36 = call i32 @getTableIndexForName(%struct.lregexControlBlock* %26, i8* %27)
  store i32 %call36, i32* %t, align 4
  %28 = load i32, i32* %t, align 4
  %cmp37 = icmp slt i32 %28, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then34
  %29 = load i8*, i8** %tableEnterTo, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i64 0, i64 0), i8* %29)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then34
  %30 = load %struct.mtableFlagData*, %struct.mtableFlagData** %mdata, align 8
  %lcb40 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %30, i32 0, i32 0
  %31 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb40, align 8
  %tables = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %31, i32 0, i32 2
  %32 = load %struct.sPtrArray*, %struct.sPtrArray** %tables, align 8
  %33 = load i32, i32* %t, align 4
  %call41 = call i8* @ptrArrayItem(%struct.sPtrArray* %32, i32 %33)
  %34 = bitcast i8* %call41 to %struct.regexTable*
  %35 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %table = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %35, i32 0, i32 1
  store %struct.regexTable* %34, %struct.regexTable** %table, align 8
  %36 = load i8*, i8** %tableEnterTo, align 8
  call void @eFree(i8* %36)
  %37 = load i8*, i8** %continuation, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %add.ptr, align 1
  %tobool42 = icmp ne i8 %38, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end39
  %39 = load i8*, i8** %v.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.84, i64 0, i64 0), i8* %39)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end39
  %40 = load %struct.mtableFlagData*, %struct.mtableFlagData** %mdata, align 8
  %lcb45 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %40, i32 0, i32 0
  %41 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb45, align 8
  %42 = load i8*, i8** %continuation, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %42, i64 1
  %call47 = call i32 @getTableIndexForName(%struct.lregexControlBlock* %41, i8* %add.ptr46)
  store i32 %call47, i32* %t_cont, align 4
  %43 = load i32, i32* %t_cont, align 4
  %cmp48 = icmp slt i32 %43, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end44
  %44 = load i8*, i8** %continuation, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %44, i64 1
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i64 0, i64 0), i8* %add.ptr50)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end44
  %45 = load %struct.mtableFlagData*, %struct.mtableFlagData** %mdata, align 8
  %lcb52 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %45, i32 0, i32 0
  %46 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb52, align 8
  %tables53 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %46, i32 0, i32 2
  %47 = load %struct.sPtrArray*, %struct.sPtrArray** %tables53, align 8
  %48 = load i32, i32* %t_cont, align 4
  %call54 = call i8* @ptrArrayItem(%struct.sPtrArray* %47, i32 %48)
  %49 = bitcast i8* %call54 to %struct.regexTable*
  %50 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %continuation_table = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %50, i32 0, i32 2
  store %struct.regexTable* %49, %struct.regexTable** %continuation_table, align 8
  br label %if.end66

if.else55:                                        ; preds = %land.lhs.true, %if.end29
  %51 = load %struct.mtableFlagData*, %struct.mtableFlagData** %mdata, align 8
  %lcb56 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %51, i32 0, i32 0
  %52 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb56, align 8
  %53 = load i8*, i8** %v.addr, align 8
  %call57 = call i32 @getTableIndexForName(%struct.lregexControlBlock* %52, i8* %53)
  store i32 %call57, i32* %t, align 4
  %54 = load i32, i32* %t, align 4
  %cmp58 = icmp slt i32 %54, 0
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.else55
  %55 = load i8*, i8** %v.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i64 0, i64 0), i8* %55)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.else55
  %56 = load %struct.mtableFlagData*, %struct.mtableFlagData** %mdata, align 8
  %lcb61 = getelementptr inbounds %struct.mtableFlagData, %struct.mtableFlagData* %56, i32 0, i32 0
  %57 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lcb61, align 8
  %tables62 = getelementptr inbounds %struct.lregexControlBlock, %struct.lregexControlBlock* %57, i32 0, i32 2
  %58 = load %struct.sPtrArray*, %struct.sPtrArray** %tables62, align 8
  %59 = load i32, i32* %t, align 4
  %call63 = call i8* @ptrArrayItem(%struct.sPtrArray* %58, i32 %59)
  %60 = bitcast i8* %call63 to %struct.regexTable*
  %61 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %table64 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %61, i32 0, i32 1
  store %struct.regexTable* %60, %struct.regexTable** %table64, align 8
  %62 = load %struct.mTableActionSpec*, %struct.mTableActionSpec** %taction, align 8
  %continuation_table65 = getelementptr inbounds %struct.mTableActionSpec, %struct.mTableActionSpec* %62, i32 0, i32 2
  store %struct.regexTable* null, %struct.regexTable** %continuation_table65, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end60, %if.end51
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end24
  ret void
}

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @dumpSstack(%struct.__sFILE* %fp, i64 %scope) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %scope.addr = alloca i64, align 8
  %entry1 = alloca %struct.sTagEntryInfo*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i64 %scope, i64* %scope.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %scope.addr, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %scope.addr, align 8
  %conv = trunc i64 %2 to i32
  %call2 = call %struct.sTagEntryInfo* @getEntryInCorkQueue(i32 %conv)
  store %struct.sTagEntryInfo* %call2, %struct.sTagEntryInfo** %entry1, align 8
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %4 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry1, align 8
  %name = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %4, i32 0, i32 7
  %5 = load i8*, i8** %name, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %5)
  %6 = load %struct.sTagEntryInfo*, %struct.sTagEntryInfo** %entry1, align 8
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %6, i32 0, i32 11
  %scopeIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 7
  %7 = load i32, i32* %scopeIndex, align 8
  %conv4 = sext i32 %7 to i64
  store i64 %conv4, i64* %scope.addr, align 8
  %8 = load i64, i64* %scope.addr, align 8
  %cmp5 = icmp ne i64 %8, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), i32 47)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @dumpTstack(%struct.__sFILE* %fp, %struct.sPtrArray* %tstack) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %tstack.addr = alloca %struct.sPtrArray*, align 8
  %i = alloca i32, align 4
  %tmp = alloca [2 x i8], align 1
  %t = alloca %struct.regexTable*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store %struct.sPtrArray* %tstack, %struct.sPtrArray** %tstack.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack.addr, align 8
  %call = call i32 @ptrArrayCount(%struct.sPtrArray* %0)
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %tstack.addr, align 8
  %3 = load i32, i32* %i, align 4
  %sub = sub i32 %3, 1
  %call1 = call i8* @ptrArrayItem(%struct.sPtrArray* %2, i32 %sub)
  %4 = bitcast i8* %call1 to %struct.regexTable*
  store %struct.regexTable* %4, %struct.regexTable** %t, align 8
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 0
  store i8 47, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 1
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %7 = load %struct.regexTable*, %struct.regexTable** %t, align 8
  %name = getelementptr inbounds %struct.regexTable, %struct.regexTable* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 0
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0), i8* %8, i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0))
  ret void
}

declare i8* @ptrArrayLast(%struct.sPtrArray*) #1

declare void @ptrArrayRemoveLast(%struct.sPtrArray*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
