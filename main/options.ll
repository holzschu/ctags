; ModuleID = 'options.c'
source_filename = "options.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.sPtrArray = type opaque
%struct.localOptionValues = type { i8, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sVString = type { i64, i64, i8* }
%struct.sBooleanOption = type { i8*, i8*, i8, i64, i8* (%struct.sBooleanOption*)* }
%struct.anon = type { i8*, void (i8*, i8*)*, i8, i64 }
%struct.sOptionDescription = type { i32, i8* }
%struct.Feature = type { i8*, i8* }
%struct.preloadPathElt = type { i8*, i8, i8* (i8*, i8*)*, i8*, i32 }
%struct.sCookedArgs = type { %struct.sArgs*, i8*, [2 x i8], i8, i8, i8*, i8* }
%struct.sArgs = type { i32, %union.anon, i8*, i8 }
%union.anon = type { %struct.sArgvArgs }
%struct.sArgvArgs = type { i8**, i8** }
%struct.sXtagDefinition = type { i8, i8, i8*, i8*, i1 (%struct.sXtagDefinition*)*, i1 (%struct.sXtagDefinition*)*, i32 }
%struct.colprintTable = type opaque
%struct.colprintLine = type opaque
%struct.fileStatus = type { i8*, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.dirent = type { i64, i64, i16, i16, i8, [1024 x i8] }

@Option = global %struct.sOptionValues { i8 0, i8 0, i8 0, i32 0, i8 0, i32 1, i8 0, i8 0, %struct.sFmtElement* null, i8* null, i8* null, %struct.sPtrArray* null, %struct.sPtrArray* null, i32 2, i8* null, i8* null, i32 -1, i8 1, i8 0, i8* null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 96, i8 0, i32 -1, i32 0 }, align 8
@localOption = global %struct.localOptionValues { i8 0, i8 1 }, align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s: Notice: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@FilesRequired = internal global i8 1, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"xref output\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s disables file name tags\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"append mode is not compatible with\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s tags to stdout\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"filter mode\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s disables totals\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s ignores output tag file name\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Unknown language \22%s\22 in \22%s\22 option\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"etags\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Running in etags mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Invalid value for \22%s\22 %s\00", align 1
@Excluded = internal global %struct.sPtrArray* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"map-\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"no parameter is given for %s\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"    Setting %s language map:\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"    %s %s %s %s language map:\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Removing\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"param-\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"no separator(:) is given for %s=%s\00", align 1
@Stage = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [42 x i8] c"Entering configuration stage: loading %s\0A\00", align 1
@StageDescription = internal constant [10 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0)], align 8
@.str.25 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"No options will be read from files or environment\00", align 1
@SkipConfiguration = internal global i8 0, align 1
@OptionFiles = internal global %struct.sPtrArray* null, align 8
@OptlibPathList = internal global %struct.sPtrArray* null, align 8
@.str.31 = private unnamed_addr constant [25 x i8] c"Setting option defaults\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"  Installing default language mappings:\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"  Installing default language aliases:\0A\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"  Installing default exclude patterns:\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"{arch}\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c".arch-ids\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c".arch-inventory\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"autom4te.cache\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"BitKeeper\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".bzr\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c".bzrignore\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"CVS\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c".cvsignore\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"_darcs\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c".deps\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"EIFGEN\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c".gitattributes\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c".hg\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c".hgignore\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"PENDING\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"RCS\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"RESYNC\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"SCCS\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c".svn\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"*~\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c".*.swp\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"*.o\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"*.a\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"*.so\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"*.obj\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"*.lib\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"*.dll\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"*.exe\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"*.gcno\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"*.gcda\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"*.class\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"*.pyc\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"*.pyo\00", align 1
@NonOptionEncountered = internal global i8 0, align 1
@longNameTags = internal global %struct.sVString* null, align 8
@longNameFields = internal global %struct.sVString* null, align 8
@longNameSpecificFields = internal global %struct.sVString* null, align 8
@longNameSpecificExtra = internal global %struct.sVString* null, align 8
@.str.71 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.72 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"fohiILpdDb\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"Badly formed language map for %s language\00", align 1
@.str.85 = private unnamed_addr constant [47 x i8] c"Unterminated file name pattern for %s language\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"not initialized\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"custom file\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"DOS .cnf file\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"file under /etc (e.g. ctags.conf)\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"file under /usr/local/etc (e.g. ctags.conf)\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"file(s) under HOME\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"file(s) under the current directory\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"optlib preload files\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"environment variable\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"command line\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"  Option: --%s\0A\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"  Option: --%s=%s\0A\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"Unknown option: --%s\00", align 1
@BooleanOptions = internal constant [16 x %struct.sBooleanOption] [%struct.sBooleanOption { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i8 1, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i8* null, i8 0, i64 -1, i8* (%struct.sBooleanOption*)* @redirectToXtag }, %struct.sBooleanOption { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i8* inttoptr (i64 1 to i8*), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* @redirectToXtag }, %struct.sBooleanOption { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 93), i8 1, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 111), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 109), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 92), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), i8 1, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 120), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 110), i8 1, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 112), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 8), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 108), i8 1, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 16), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), i64 1), i8 1, i64 -1, i8* (%struct.sBooleanOption*)* null }, %struct.sBooleanOption { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), i64 113), i8 0, i64 -1, i8* (%struct.sBooleanOption*)* null }], align 8
@.str.99 = private unnamed_addr constant [29 x i8] c"Cannot use --%s option in %s\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"file-scope\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"file-tags\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"guess-language-eagerly\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"line-directives\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"links\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"machinable\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"put-field-prefix\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"print-language\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"recurse\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"totals\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"with-list-header\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"_fatal-warnings\00", align 1
@.str.114 = private unnamed_addr constant [40 x i8] c"-%s%s option may not follow a file name\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"fields-\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"No language given in \22%s\22 option\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"Unknown language: %s (ignoring \22--%s\22)\00", align 1
@.str.120 = private unnamed_addr constant [43 x i8] c"Wrong per language field specification: %s\00", align 1
@.str.121 = private unnamed_addr constant [50 x i8] c"unexpected character in field specification: '%c'\00", align 1
@.str.122 = private unnamed_addr constant [60 x i8] c"only long name can be used in per language field spec: '%c'\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"no such field: '%s'\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"extras-\00", align 1
@.str.125 = private unnamed_addr constant [43 x i8] c"Wrong per language extra specification: %s\00", align 1
@.str.126 = private unnamed_addr constant [50 x i8] c"unexpected character in extra specification: '%c'\00", align 1
@.str.127 = private unnamed_addr constant [60 x i8] c"only long name can be used in per language extra spec: '%c'\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"no such extra: '%s'\00", align 1
@ParametricOptions = internal constant [54 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.129, i32 0, i32 0), void (i8*, i8*)* @processEtagsInclude, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), void (i8*, i8*)* @processExcludeOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0), void (i8*, i8*)* @processExcmdOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), void (i8*, i8*)* @processExtraTagsOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), void (i8*, i8*)* @processExtraTagsOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), void (i8*, i8*)* @processFieldsOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.135, i32 0, i32 0), void (i8*, i8*)* @processFilterTerminatorOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), void (i8*, i8*)* @processFormatOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), void (i8*, i8*)* @processHelpOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), void (i8*, i8*)* @processIf0Option, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), void (i8*, i8*)* @processInputEncodingOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), void (i8*, i8*)* @processOutputEncodingOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), void (i8*, i8*)* @processLanguageForceOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0), void (i8*, i8*)* @processLanguageForceOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), void (i8*, i8*)* @processLanguageForceOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), void (i8*, i8*)* @processLanguagesOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), void (i8*, i8*)* @processLanguageDefineOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), void (i8*, i8*)* @processLanguageMapOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), void (i8*, i8*)* @processLicenseOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), void (i8*, i8*)* @processListAliasesOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0), void (i8*, i8*)* @processListExtrasOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), void (i8*, i8*)* @processListFeaturesOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), void (i8*, i8*)* @processListFieldsOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), void (i8*, i8*)* @processListKindsOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i32 0, i32 0), void (i8*, i8*)* @processListKindsOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.154, i32 0, i32 0), void (i8*, i8*)* @processListLangdefFlagsOptions, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.155, i32 0, i32 0), void (i8*, i8*)* @processListLanguagesOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), void (i8*, i8*)* @processListMapsOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.157, i32 0, i32 0), void (i8*, i8*)* @processListMapExtensionsOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.158, i32 0, i32 0), void (i8*, i8*)* @processListMapPatternsOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.159, i32 0, i32 0), void (i8*, i8*)* @processListMultilineRegexFlagsOptions, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), void (i8*, i8*)* @processListParametersOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i32 0, i32 0), void (i8*, i8*)* @processListPseudoTagsOptions, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.162, i32 0, i32 0), void (i8*, i8*)* @processListRegexFlagsOptions, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i32 0, i32 0), void (i8*, i8*)* @processListRolesOptions, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.164, i32 0, i32 0), void (i8*, i8*)* @processListSubparsersOptions, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), void (i8*, i8*)* @processMaxRecursionDepthOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0), void (i8*, i8*)* @processOptlibDir, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*)* @processOptionFile, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.167, i32 0, i32 0), void (i8*, i8*)* @processOptionFileMaybe, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.168, i32 0, i32 0), void (i8*, i8*)* @processOutputFormat, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.169, i32 0, i32 0), void (i8*, i8*)* @processPatternLengthLimit, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i32 0, i32 0), void (i8*, i8*)* @processPseudoTags, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0), void (i8*, i8*)* @processSortOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.172, i32 0, i32 0), void (i8*, i8*)* @processTagRelative, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i32 0, i32 0), void (i8*, i8*)* @processVersionOption, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i32 0, i32 0), void (i8*, i8*)* @processAnonHashOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i32 0, i32 0), void (i8*, i8*)* @processDumpKeywordsOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.176, i32 0, i32 0), void (i8*, i8*)* @processDumpOptionsOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), void (i8*, i8*)* @processEchoOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.178, i32 0, i32 0), void (i8*, i8*)* @processForceInitOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.179, i32 0, i32 0), void (i8*, i8*)* @processForceQuitOption, i8 0, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.180, i32 0, i32 0), void (i8*, i8*)* @processListMultitableRegexFlagsOptions, i8 1, i64 -1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), void (i8*, i8*)* @processXformatOption, i8 0, i64 -1 }], align 8
@.str.129 = private unnamed_addr constant [14 x i8] c"etags-include\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"excmd\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"extras\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"filter-terminator\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"if0\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"input-encoding\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"output-encoding\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"language-force\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"languages\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"langdef\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"langmap\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"list-aliases\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"list-extras\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"list-features\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"list-fields\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"list-kinds\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"list-kinds-full\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"list-langdef-flags\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"list-languages\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"list-maps\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"list-map-extensions\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"list-map-patterns\00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"list-mline-regex-flags\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"list-params\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"list-pseudo-tags\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"list-regex-flags\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"list-roles\00", align 1
@.str.164 = private unnamed_addr constant [16 x i8] c"list-subparsers\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"maxdepth\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"optlib-dir\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"options-maybe\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"output-format\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"pattern-length-limit\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"pseudo-tags\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"tag-relative\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"_anonhash\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"_dump-keywords\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"_dump-options\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"_echo\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"_force-initializing\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"_force-quit\00", align 1
@.str.180 = private unnamed_addr constant [25 x i8] c"_list-mtable-regex-flags\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"_xformat\00", align 1
@.str.182 = private unnamed_addr constant [41 x i8] c"Etags must be enabled to use \22%s\22 option\00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"Invalid value for \22%s\22 option\00", align 1
@.str.184 = private unnamed_addr constant [49 x i8] c"--extra option is obsolete; use --extras instead\00", align 1
@.str.185 = private unnamed_addr constant [45 x i8] c"Unsupported parameter '{%s}' for \22%s\22 option\00", align 1
@.str.186 = private unnamed_addr constant [43 x i8] c"Unsupported parameter '%c' for \22%s\22 option\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.188 = private unnamed_addr constant [34 x i8] c"Unsupported value for \22%s\22 option\00", align 1
@thread_stdout = external thread_local global %struct.__sFILE*, align 8
@LongOptionDescription = internal global [226 x %struct.sOptionDescription] [%struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.216, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.217, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.218, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.219, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.220, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.221, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.222, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.223, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.224, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.225, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.226, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.227, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.228, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.229, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.230, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.231, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.232, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.233, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.234, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.235, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.236, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.237, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.238, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.239, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.240, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.241, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.242, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.243, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.244, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.245, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.246, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.247, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.248, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.249, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.250, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.251, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.252, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.253, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.254, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.255, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.256, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.257, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.258, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.259, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.260, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.261, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.262, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.263, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.264, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.265, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.266, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.267, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.268, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.269, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.270, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.271, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.272, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.273, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.274, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.275, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.276, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.277, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.278, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.279, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.280, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.281, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.282, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.283, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.284, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.285, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.286, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.287, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.288, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.289, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.290, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.291, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.292, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.293, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.294, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.295, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.296, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.297, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.298, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.299, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.300, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.301, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.302, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.303, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.304, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.305, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.306, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.307, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.308, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.309, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.310, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.311, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.312, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.313, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.314, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.315, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.316, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.317, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.318, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.319, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.320, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.321, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.322, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.323, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.324, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.325, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.326, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.327, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.328, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.329, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.330, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.331, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.332, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.333, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.334, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.335, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.336, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.338, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.339, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.340, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.341, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.342, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.343, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.344, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.345, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.346, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.347, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.348, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.349, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.350, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.351, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.352, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.353, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.354, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.355, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.356, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.357, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.358, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.359, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.360, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.361, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.362, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.363, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.364, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.365, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.366, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.367, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.368, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.369, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.370, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.371, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.372, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.373, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.374, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.375, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.376, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.377, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.378, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.379, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.380, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.381, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.382, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.383, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.384, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.385, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.386, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.387, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.388, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.389, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.390, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.391, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.392, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.393, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.394, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.395, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.396, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.397, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.398, i32 0, i32 0) }, %struct.sOptionDescription { i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.399, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.400, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.401, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.402, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.403, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.404, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.405, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.406, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.407, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.351, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.352, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.408, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.409, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.410, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.411, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.412, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.413, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.414, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.415, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.416, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.417, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.418, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.419, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.420, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.421, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.422, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.423, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.424, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.425, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.417, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.426, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.427, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.428, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.429, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.430, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.431, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.432, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.433, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.434, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.435, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.436, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.437, i32 0, i32 0) }, %struct.sOptionDescription { i32 1, i8* null }], align 8
@ctags_repoinfo = external global i8*, align 8
@.str.189 = private unnamed_addr constant [6 x i8] c"0.0.0\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.190 = private unnamed_addr constant [14 x i8] c"%s %s, %s %s\0A\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"Universal Ctags\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"Copyright (C) 2015\00", align 1
@.str.193 = private unnamed_addr constant [21 x i8] c"Universal Ctags Team\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"%s %s(%s), %s %s\0A\00", align 1
@.str.195 = private unnamed_addr constant [50 x i8] c"Universal Ctags is derived from Exuberant Ctags.\0A\00", align 1
@.str.196 = private unnamed_addr constant [61 x i8] c"Exuberant Ctags 5.8, Copyright (C) 1996-2009 Darren Hiebert\0A\00", align 1
@.str.197 = private unnamed_addr constant [20 x i8] c"  Compiled: %s, %s\0A\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"Dec  2 2019\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"23:16:44\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"  URL: %s\0A\00", align 1
@.str.201 = private unnamed_addr constant [18 x i8] c"https://ctags.io/\00", align 1
@Features = internal global [7 x %struct.Feature] [%struct.Feature { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.207, i32 0, i32 0) }, %struct.Feature { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.208, i32 0, i32 0) }, %struct.Feature { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.210, i32 0, i32 0) }, %struct.Feature { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.212, i32 0, i32 0) }, %struct.Feature { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.212, i32 0, i32 0) }, %struct.Feature { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.212, i32 0, i32 0) }, %struct.Feature zeroinitializer], align 8
@.str.202 = private unnamed_addr constant [31 x i8] c"  Optional compiled features: \00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"%s+%s\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"wildcards\00", align 1
@.str.207 = private unnamed_addr constant [22 x i8] c"can use glob matching\00", align 1
@.str.208 = private unnamed_addr constant [50 x i8] c"can use regular expression based pattern matching\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"internal-sort\00", align 1
@.str.210 = private unnamed_addr constant [60 x i8] c"uses internal sort routine instead of invoking sort command\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"multibyte\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"TO BE WRITTEN\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"option-directory\00", align 1
@.str.214 = private unnamed_addr constant [27 x i8] c"case-insensitive-filenames\00", align 1
@.str.215 = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [file(s)]\0A\00", align 1
@.str.216 = private unnamed_addr constant [48 x i8] c"  -a   Append the tags to an existing tag file.\00", align 1
@.str.217 = private unnamed_addr constant [48 x i8] c"  -B   Use backward searching patterns (?...?).\00", align 1
@.str.218 = private unnamed_addr constant [26 x i8] c"  -D <macro>=<definition>\00", align 1
@.str.219 = private unnamed_addr constant [50 x i8] c"       (CPreProcessor) Give definition for macro.\00", align 1
@.str.220 = private unnamed_addr constant [43 x i8] c"  -e   Output tag file for use with Emacs.\00", align 1
@.str.221 = private unnamed_addr constant [12 x i8] c"  -f <name>\00", align 1
@.str.222 = private unnamed_addr constant [72 x i8] c"       Write tags to specified file. Value of \22-\22 writes tags to stdout\00", align 1
@.str.223 = private unnamed_addr constant [45 x i8] c"       [\22tags\22; or \22TAGS\22 when -e supplied].\00", align 1
@.str.224 = private unnamed_addr constant [56 x i8] c"  -F   Use forward searching patterns (/.../; default).\00", align 1
@.str.225 = private unnamed_addr constant [47 x i8] c"  -G   Equivalent to --guess-language-eagerly.\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"  -h <list>\00", align 1
@.str.227 = private unnamed_addr constant [70 x i8] c"       Specify list of file extensions to be treated as include files\00", align 1
@.str.228 = private unnamed_addr constant [40 x i8] c"       [\22.h.H.hh.hpp.hxx.h++.inc.def\22].\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"  -I <list|@file>\00", align 1
@.str.230 = private unnamed_addr constant [72 x i8] c"       A list of tokens to be specially handled is read from either the\00", align 1
@.str.231 = private unnamed_addr constant [43 x i8] c"       command line or the specified file.\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"  -L <file>\00", align 1
@.str.233 = private unnamed_addr constant [67 x i8] c"       A list of input file names is read from the specified file.\00", align 1
@.str.234 = private unnamed_addr constant [57 x i8] c"       If specified as \22-\22, then standard input is read.\00", align 1
@.str.235 = private unnamed_addr constant [37 x i8] c"  -n   Equivalent to --excmd=number.\00", align 1
@.str.236 = private unnamed_addr constant [38 x i8] c"  -N   Equivalent to --excmd=pattern.\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"  -o   Alternative for -f.\00", align 1
@.str.238 = private unnamed_addr constant [32 x i8] c"  -R   Equivalent to --recurse.\00", align 1
@.str.239 = private unnamed_addr constant [32 x i8] c"  -u   Equivalent to --sort=no.\00", align 1
@.str.240 = private unnamed_addr constant [32 x i8] c"  -V   Equivalent to --verbose.\00", align 1
@.str.241 = private unnamed_addr constant [64 x i8] c"  -x   Print a tabular cross reference file to standard output.\00", align 1
@.str.242 = private unnamed_addr constant [35 x i8] c"  --alias-<LANG>=[+|-]aliasPattern\00", align 1
@.str.243 = private unnamed_addr constant [73 x i8] c"      Add a pattern detecting a name, can be used as an alternative name\00", align 1
@.str.244 = private unnamed_addr constant [16 x i8] c"      for LANG.\00", align 1
@.str.245 = private unnamed_addr constant [20 x i8] c"  --append=[yes|no]\00", align 1
@.str.246 = private unnamed_addr constant [65 x i8] c"       Should tags should be appended to existing tag file [no]?\00", align 1
@.str.247 = private unnamed_addr constant [23 x i8] c"  --etags-include=file\00", align 1
@.str.248 = private unnamed_addr constant [73 x i8] c"      Include reference to 'file' in Emacs-style tag file (requires -e).\00", align 1
@.str.249 = private unnamed_addr constant [20 x i8] c"  --exclude=pattern\00", align 1
@.str.250 = private unnamed_addr constant [56 x i8] c"      Exclude files and directories matching 'pattern'.\00", align 1
@.str.251 = private unnamed_addr constant [29 x i8] c"  --excmd=number|pattern|mix\00", align 1
@.str.252 = private unnamed_addr constant [67 x i8] c"       Uses the specified type of EX command to locate tags [mix].\00", align 1
@.str.253 = private unnamed_addr constant [30 x i8] c"  --extradef-<LANG>=name,desc\00", align 1
@.str.254 = private unnamed_addr constant [73 x i8] c"       Define new extra for <LANG>. \22--extra-<LANG>=+{name}\22 enables it.\00", align 1
@.str.255 = private unnamed_addr constant [22 x i8] c"  --extras=[+|-]flags\00", align 1
@.str.256 = private unnamed_addr constant [78 x i8] c"      Include extra tag entries for selected information (flags: \22Ffq.\22) [F].\00", align 1
@.str.257 = private unnamed_addr constant [31 x i8] c"  --extras-<LANG|*>=[+|-]flags\00", align 1
@.str.258 = private unnamed_addr constant [68 x i8] c"      Include <LANG> own extra tag entries for selected information\00", align 1
@.str.259 = private unnamed_addr constant [37 x i8] c"      (flags: --list-extras=<LANG>).\00", align 1
@.str.260 = private unnamed_addr constant [22 x i8] c"  --fields=[+|-]flags\00", align 1
@.str.261 = private unnamed_addr constant [72 x i8] c"      Include selected extension fields (flags: \22afmikKlnsStzZ\22) [fks].\00", align 1
@.str.262 = private unnamed_addr constant [31 x i8] c"  --fields-<LANG|*>=[+|-]flags\00", align 1
@.str.263 = private unnamed_addr constant [51 x i8] c"      Include selected <LANG> own extension fields\00", align 1
@.str.264 = private unnamed_addr constant [37 x i8] c"      (flags: --list-fields=<LANG>).\00", align 1
@.str.265 = private unnamed_addr constant [24 x i8] c"  --file-scope=[yes|no]\00", align 1
@.str.266 = private unnamed_addr constant [70 x i8] c"       Should tags scoped only for a single file (e.g. \22static\22 tags)\00", align 1
@.str.267 = private unnamed_addr constant [40 x i8] c"       be included in the output [yes]?\00", align 1
@.str.268 = private unnamed_addr constant [20 x i8] c"  --filter=[yes|no]\00", align 1
@.str.269 = private unnamed_addr constant [70 x i8] c"       Behave as a filter, reading file names from standard input and\00", align 1
@.str.270 = private unnamed_addr constant [45 x i8] c"       writing tags to standard output [no].\00", align 1
@.str.271 = private unnamed_addr constant [29 x i8] c"  --filter-terminator=string\00", align 1
@.str.272 = private unnamed_addr constant [74 x i8] c"       Specify string to print to stdout following the tags for each file\00", align 1
@.str.273 = private unnamed_addr constant [40 x i8] c"       parsed when --filter is enabled.\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"  --format=level\00", align 1
@.str.275 = private unnamed_addr constant [54 x i8] c"       Force output of specified tag file format [2].\00", align 1
@.str.276 = private unnamed_addr constant [27 x i8] c"  --guess-language-eagerly\00", align 1
@.str.277 = private unnamed_addr constant [53 x i8] c"       Guess the language of input file more eagerly\00", align 1
@.str.278 = private unnamed_addr constant [46 x i8] c"       (but taking longer time for guessing):\00", align 1
@.str.279 = private unnamed_addr constant [60 x i8] c"       o shebang, even if the input file is not executable,\00", align 1
@.str.280 = private unnamed_addr constant [78 x i8] c"       o emacs mode specification at the beginning and end of input file, and\00", align 1
@.str.281 = private unnamed_addr constant [60 x i8] c"       o vim syntax specification at the end of input file.\00", align 1
@.str.282 = private unnamed_addr constant [9 x i8] c"  --help\00", align 1
@.str.283 = private unnamed_addr constant [34 x i8] c"       Print this option summary.\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"  --if0=[yes|no]\00", align 1
@.str.285 = private unnamed_addr constant [69 x i8] c"       Should code within #if 0 conditional branches be parsed [no]?\00", align 1
@.str.286 = private unnamed_addr constant [28 x i8] c"  --input-encoding=encoding\00", align 1
@.str.287 = private unnamed_addr constant [43 x i8] c"      Specify encoding of all input files.\00", align 1
@.str.288 = private unnamed_addr constant [35 x i8] c"  --input-encoding-<LANG>=encoding\00", align 1
@.str.289 = private unnamed_addr constant [48 x i8] c"      Specify encoding of the LANG input files.\00", align 1
@.str.290 = private unnamed_addr constant [36 x i8] c"  --kinddef-<LANG>=letter,name,desc\00", align 1
@.str.291 = private unnamed_addr constant [35 x i8] c"       Define new kind for <LANG>.\00", align 1
@.str.292 = private unnamed_addr constant [32 x i8] c"  --kinds-<LANG>=[+|-]kinds, or\00", align 1
@.str.293 = private unnamed_addr constant [28 x i8] c"  --<LANG>-kinds=[+|-]kinds\00", align 1
@.str.294 = private unnamed_addr constant [53 x i8] c"       Enable/disable tag kinds for language <LANG>.\00", align 1
@.str.295 = private unnamed_addr constant [17 x i8] c"  --langdef=name\00", align 1
@.str.296 = private unnamed_addr constant [68 x i8] c"       Define a new language to be parsed with regular expressions.\00", align 1
@.str.297 = private unnamed_addr constant [19 x i8] c"  --langmap=map(s)\00", align 1
@.str.298 = private unnamed_addr constant [69 x i8] c"       Override default mapping of language to input file extension.\00", align 1
@.str.299 = private unnamed_addr constant [28 x i8] c"  --language-force=language\00", align 1
@.str.300 = private unnamed_addr constant [67 x i8] c"       Force all files to be interpreted using specified language.\00", align 1
@.str.301 = private unnamed_addr constant [24 x i8] c"  --languages=[+|-]list\00", align 1
@.str.302 = private unnamed_addr constant [68 x i8] c"       Restrict files scanned for tags to those mapped to languages\00", align 1
@.str.303 = private unnamed_addr constant [73 x i8] c"       specified in the comma-separated 'list'. The list can contain any\00", align 1
@.str.304 = private unnamed_addr constant [48 x i8] c"       built-in or user-defined language [all].\00", align 1
@.str.305 = private unnamed_addr constant [12 x i8] c"  --license\00", align 1
@.str.306 = private unnamed_addr constant [42 x i8] c"       Print details of software license.\00", align 1
@.str.307 = private unnamed_addr constant [29 x i8] c"  --line-directives=[yes|no]\00", align 1
@.str.308 = private unnamed_addr constant [50 x i8] c"       Should #line directives be processed [no]?\00", align 1
@.str.309 = private unnamed_addr constant [19 x i8] c"  --links=[yes|no]\00", align 1
@.str.310 = private unnamed_addr constant [65 x i8] c"       Indicate whether symbolic links should be followed [yes].\00", align 1
@.str.311 = private unnamed_addr constant [32 x i8] c"  --list-aliases=[language|all]\00", align 1
@.str.312 = private unnamed_addr constant [38 x i8] c"       Output list of alias patterns.\00", align 1
@.str.313 = private unnamed_addr constant [31 x i8] c"  --list-extras=[language|all]\00", align 1
@.str.314 = private unnamed_addr constant [39 x i8] c"       Output list of extra tag flags.\00", align 1
@.str.315 = private unnamed_addr constant [18 x i8] c"  --list-features\00", align 1
@.str.316 = private unnamed_addr constant [41 x i8] c"       Output list of compiled features.\00", align 1
@.str.317 = private unnamed_addr constant [31 x i8] c"  --list-fields=[language|all]\00", align 1
@.str.318 = private unnamed_addr constant [30 x i8] c"       Output list of fields.\00", align 1
@.str.319 = private unnamed_addr constant [30 x i8] c"  --list-kinds=[language|all]\00", align 1
@.str.320 = private unnamed_addr constant [69 x i8] c"       Output a list of all tag kinds for specified language or all.\00", align 1
@.str.321 = private unnamed_addr constant [35 x i8] c"  --list-kinds-full=[language|all]\00", align 1
@.str.322 = private unnamed_addr constant [71 x i8] c"       List the details of all tag kinds for specified language or all\00", align 1
@.str.323 = private unnamed_addr constant [72 x i8] c"       For each line, associated language name is printed when \22all\22 is\00", align 1
@.str.324 = private unnamed_addr constant [30 x i8] c"       specified as language.\00", align 1
@.str.325 = private unnamed_addr constant [23 x i8] c"  --list-langdef-flags\00", align 1
@.str.326 = private unnamed_addr constant [69 x i8] c"       Output list of flags which can be used with --langdef option.\00", align 1
@.str.327 = private unnamed_addr constant [19 x i8] c"  --list-languages\00", align 1
@.str.328 = private unnamed_addr constant [43 x i8] c"       Output list of supported languages.\00", align 1
@.str.329 = private unnamed_addr constant [39 x i8] c"  --list-map-extensions=[language|all]\00", align 1
@.str.330 = private unnamed_addr constant [54 x i8] c"       Output list of language extensions in mapping.\00", align 1
@.str.331 = private unnamed_addr constant [37 x i8] c"  --list-map-patterns=[language|all]\00", align 1
@.str.332 = private unnamed_addr constant [52 x i8] c"       Output list of language patterns in mapping.\00", align 1
@.str.333 = private unnamed_addr constant [29 x i8] c"  --list-maps=[language|all]\00", align 1
@.str.334 = private unnamed_addr constant [71 x i8] c"       Output list of language mappings(both extensions and patterns).\00", align 1
@.str.335 = private unnamed_addr constant [27 x i8] c"  --list-mline-regex-flags\00", align 1
@.str.336 = private unnamed_addr constant [86 x i8] c"       Output list of flags which can be used in a multiline regex parser definition.\00", align 1
@.str.337 = private unnamed_addr constant [31 x i8] c"  --list-params=[language|all]\00", align 1
@.str.338 = private unnamed_addr constant [73 x i8] c"       Output list of language parameters. This works with --machinable.\00", align 1
@.str.339 = private unnamed_addr constant [21 x i8] c"  --list-pseudo-tags\00", align 1
@.str.340 = private unnamed_addr constant [35 x i8] c"       Output list of pseudo tags.\00", align 1
@.str.341 = private unnamed_addr constant [21 x i8] c"  --list-regex-flags\00", align 1
@.str.342 = private unnamed_addr constant [76 x i8] c"       Output list of flags which can be used in a regex parser definition.\00", align 1
@.str.343 = private unnamed_addr constant [46 x i8] c"  --list-roles=[[language|all].[kindspecs|*]]\00", align 1
@.str.344 = private unnamed_addr constant [74 x i8] c"       Output list of all roles of tag kind(s) specified for language(s).\00", align 1
@.str.345 = private unnamed_addr constant [56 x i8] c"       Both letters and names can be used in kindspecs.\00", align 1
@.str.346 = private unnamed_addr constant [37 x i8] c"       e.g. --list-roles=C.{header}d\00", align 1
@.str.347 = private unnamed_addr constant [35 x i8] c"  --list-subparsers=[baselang|all]\00", align 1
@.str.348 = private unnamed_addr constant [56 x i8] c"       Output list of subparsers for the base language.\00", align 1
@.str.349 = private unnamed_addr constant [24 x i8] c"  --machinable=[yes|no]\00", align 1
@.str.350 = private unnamed_addr constant [71 x i8] c"       Use tab separated representation in --list- option output. [no]\00", align 1
@.str.351 = private unnamed_addr constant [78 x i8] c"       --list-{aliases,extras,features,fields,kind-full,langdef-flags,params,\00", align 1
@.str.352 = private unnamed_addr constant [70 x i8] c"       pseudo-tags,regex-flags,roles,subparsers} support this option.\00", align 1
@.str.353 = private unnamed_addr constant [63 x i8] c"       Suitable for scripting. Specify before --list-* option.\00", align 1
@.str.354 = private unnamed_addr constant [38 x i8] c"  --map-<LANG>=[+|-]extension|pattern\00", align 1
@.str.355 = private unnamed_addr constant [52 x i8] c"       Set, add(+) or remove(-) the map for <LANG>.\00", align 1
@.str.356 = private unnamed_addr constant [78 x i8] c"       Unlike --langmap, this doesn't take a list; only one file name pattern\00", align 1
@.str.357 = private unnamed_addr constant [55 x i8] c"       or one file extension can be specified at once.\00", align 1
@.str.358 = private unnamed_addr constant [84 x i8] c"       Unlike --langmap the change with this option affects mapping of <LANG> only.\00", align 1
@.str.359 = private unnamed_addr constant [15 x i8] c"  --maxdepth=N\00", align 1
@.str.360 = private unnamed_addr constant [40 x i8] c"       Specify maximum recursion depth.\00", align 1
@.str.361 = private unnamed_addr constant [58 x i8] c"  --mline-regex-<LANG>=/line_pattern/name_pattern/[flags]\00", align 1
@.str.362 = private unnamed_addr constant [83 x i8] c"       Define multiline regular expression for locating tags in specific language.\00", align 1
@.str.363 = private unnamed_addr constant [17 x i8] c"  --options=path\00", align 1
@.str.364 = private unnamed_addr constant [82 x i8] c"       Specify file(or directory) from which command line options should be read.\00", align 1
@.str.365 = private unnamed_addr constant [23 x i8] c"  --options-maybe=path\00", align 1
@.str.366 = private unnamed_addr constant [86 x i8] c"       Do the same as --options but this doesn't make an error for non-existing file.\00", align 1
@.str.367 = private unnamed_addr constant [22 x i8] c"  --optlib-dir=[+]DIR\00", align 1
@.str.368 = private unnamed_addr constant [44 x i8] c"      Add or set DIR to optlib search path.\00", align 1
@.str.369 = private unnamed_addr constant [29 x i8] c"  --output-encoding=encoding\00", align 1
@.str.370 = private unnamed_addr constant [83 x i8] c"      The encoding to write the tag file in. Defaults to UTF-8 if --input-encoding\00", align 1
@.str.371 = private unnamed_addr constant [58 x i8] c"      is specified, otherwise no conversion is performed.\00", align 1
@.str.372 = private unnamed_addr constant [45 x i8] c"  --output-format=u-ctags|e-ctags|etags|xref\00", align 1
@.str.373 = private unnamed_addr constant [43 x i8] c"      Specify the output format. [u-ctags]\00", align 1
@.str.374 = private unnamed_addr constant [31 x i8] c"  --param-<LANG>:name=argument\00", align 1
@.str.375 = private unnamed_addr constant [93 x i8] c"       Set <LANG> specific parameter. Available parameters can be listed with --list-params.\00", align 1
@.str.376 = private unnamed_addr constant [27 x i8] c"  --pattern-length-limit=N\00", align 1
@.str.377 = private unnamed_addr constant [87 x i8] c"      Cutoff patterns of tag entries after N characters. Disable by setting to 0. [96]\00", align 1
@.str.378 = private unnamed_addr constant [19 x i8] c"  --print-language\00", align 1
@.str.379 = private unnamed_addr constant [73 x i8] c"       Don't make tags file but just print the guessed language name for\00", align 1
@.str.380 = private unnamed_addr constant [19 x i8] c"       input file.\00", align 1
@.str.381 = private unnamed_addr constant [26 x i8] c"  --pseudo-tags=[+|-]ptag\00", align 1
@.str.382 = private unnamed_addr constant [18 x i8] c"  --pseudo-tags=*\00", align 1
@.str.383 = private unnamed_addr constant [54 x i8] c"       Enable/disable emitting pseudo tag named ptag.\00", align 1
@.str.384 = private unnamed_addr constant [55 x i8] c"       if * is given, enable emitting all pseudo tags.\00", align 1
@.str.385 = private unnamed_addr constant [21 x i8] c"  --put-field-prefix\00", align 1
@.str.386 = private unnamed_addr constant [73 x i8] c"       Put \22UCTAGS\22 as prefix for the name of fields newly introduced in\00", align 1
@.str.387 = private unnamed_addr constant [24 x i8] c"       universal-ctags.\00", align 1
@.str.388 = private unnamed_addr constant [19 x i8] c"  --quiet=[yes|no]\00", align 1
@.str.389 = private unnamed_addr constant [47 x i8] c"       Don't print NOTICE class messages [no].\00", align 1
@.str.390 = private unnamed_addr constant [21 x i8] c"  --recurse=[yes|no]\00", align 1
@.str.391 = private unnamed_addr constant [63 x i8] c"       Recurse into directories supplied on command line [no].\00", align 1
@.str.392 = private unnamed_addr constant [52 x i8] c"  --regex-<LANG>=/line_pattern/name_pattern/[flags]\00", align 1
@.str.393 = private unnamed_addr constant [73 x i8] c"       Define regular expression for locating tags in specific language.\00", align 1
@.str.394 = private unnamed_addr constant [27 x i8] c"  --sort=[yes|no|foldcase]\00", align 1
@.str.395 = private unnamed_addr constant [63 x i8] c"       Should tags be sorted (optionally ignoring case) [yes]?\00", align 1
@.str.396 = private unnamed_addr constant [39 x i8] c"  --tag-relative=[yes|no|always|never]\00", align 1
@.str.397 = private unnamed_addr constant [75 x i8] c"       Should paths be relative to location of tag file [no; yes when -e]?\00", align 1
@.str.398 = private unnamed_addr constant [81 x i8] c"       always: be relative even if input files are passed in with absolute paths\00", align 1
@.str.399 = private unnamed_addr constant [81 x i8] c"       never:  be absolute even if input files are passed in with relative paths\00", align 1
@.str.400 = private unnamed_addr constant [20 x i8] c"  --totals=[yes|no]\00", align 1
@.str.401 = private unnamed_addr constant [56 x i8] c"       Print statistics about input and tag files [no].\00", align 1
@.str.402 = private unnamed_addr constant [21 x i8] c"  --verbose=[yes|no]\00", align 1
@.str.403 = private unnamed_addr constant [70 x i8] c"       Enable verbose messages describing actions on each input file.\00", align 1
@.str.404 = private unnamed_addr constant [12 x i8] c"  --version\00", align 1
@.str.405 = private unnamed_addr constant [52 x i8] c"       Print version identifier to standard output.\00", align 1
@.str.406 = private unnamed_addr constant [30 x i8] c"  --with-list-header=[yes|no]\00", align 1
@.str.407 = private unnamed_addr constant [64 x i8] c"       Prepend the column descriptions in --list- output. [yes]\00", align 1
@.str.408 = private unnamed_addr constant [39 x i8] c"       Specify before --list-* option.\00", align 1
@.str.409 = private unnamed_addr constant [20 x i8] c"  --_anonhash=fname\00", align 1
@.str.410 = private unnamed_addr constant [36 x i8] c"       Used in u-ctags test harness\00", align 1
@.str.411 = private unnamed_addr constant [19 x i8] c"  --_dump-keywords\00", align 1
@.str.412 = private unnamed_addr constant [47 x i8] c"       Dump keywords of initialized parser(s).\00", align 1
@.str.413 = private unnamed_addr constant [18 x i8] c"  --_dump-options\00", align 1
@.str.414 = private unnamed_addr constant [21 x i8] c"       Dump options.\00", align 1
@.str.415 = private unnamed_addr constant [14 x i8] c"  --_echo=msg\00", align 1
@.str.416 = private unnamed_addr constant [61 x i8] c"       Echo MSG to standard error. Useful to debug the chain\00", align 1
@.str.417 = private unnamed_addr constant [32 x i8] c"       of loading option files.\00", align 1
@.str.418 = private unnamed_addr constant [20 x i8] c"  --_fatal-warnings\00", align 1
@.str.419 = private unnamed_addr constant [32 x i8] c"       Make all warnings fatal.\00", align 1
@.str.420 = private unnamed_addr constant [38 x i8] c"  --_fielddef-<LANG>=name,description\00", align 1
@.str.421 = private unnamed_addr constant [50 x i8] c"       EXPERIMENTAL, Define new field for <LANG>.\00", align 1
@.str.422 = private unnamed_addr constant [24 x i8] c"  --_force-initializing\00", align 1
@.str.423 = private unnamed_addr constant [45 x i8] c"       Initialize all parsers in early stage\00", align 1
@.str.424 = private unnamed_addr constant [22 x i8] c"  --_force-quit=[num]\00", align 1
@.str.425 = private unnamed_addr constant [68 x i8] c"       Quit when the option is processed. Useful to debug the chain\00", align 1
@.str.426 = private unnamed_addr constant [29 x i8] c"  --_list-mtable-regex-flags\00", align 1
@.str.427 = private unnamed_addr constant [87 x i8] c"       Output list of flags which can be used in a multitable regex parser definition.\00", align 1
@.str.428 = private unnamed_addr constant [46 x i8] c"  --_mtable-extend-<LANG>=disttable+srctable.\00", align 1
@.str.429 = private unnamed_addr constant [62 x i8] c"       Copy patterns of a regex table to another regex table.\00", align 1
@.str.430 = private unnamed_addr constant [65 x i8] c"  --_mtable-regex-<LANG>=table/line_pattern/name_pattern/[flags]\00", align 1
@.str.431 = private unnamed_addr constant [84 x i8] c"       Define multitable regular expression for locating tags in specific language.\00", align 1
@.str.432 = private unnamed_addr constant [26 x i8] c"  --_tabledef-<LANG>=name\00", align 1
@.str.433 = private unnamed_addr constant [42 x i8] c"       Define new regex table for <LANG>.\00", align 1
@.str.434 = private unnamed_addr constant [26 x i8] c"  --_xformat=field_format\00", align 1
@.str.435 = private unnamed_addr constant [63 x i8] c"       Specify custom format for tabular cross reference (-x).\00", align 1
@.str.436 = private unnamed_addr constant [68 x i8] c"       Fields can be specified with letter listed in --list-fields.\00", align 1
@.str.437 = private unnamed_addr constant [50 x i8] c"       e.g. --_xformat=%10N %10l:%K @ %-20F:%-20n\00", align 1
@.str.438 = private unnamed_addr constant [14 x i8] c"CPreProcessor\00", align 1
@.str.439 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.440 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.441 = private unnamed_addr constant [58 x i8] c"\22--%s\22 option is obsolete; use \22--language-force\22 instead\00", align 1
@.str.442 = private unnamed_addr constant [24 x i8] c"    Enabled languages: \00", align 1
@.str.443 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str.444 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.445 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.446 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.447 = private unnamed_addr constant [38 x i8] c"    Restoring default language maps:\0A\00", align 1
@.str.448 = private unnamed_addr constant [40 x i8] c"    Restoring default %s language map: \00", align 1
@.str.449 = private unnamed_addr constant [31 x i8] c"    Adding to %s language map:\00", align 1
@.str.450 = private unnamed_addr constant [241 x i8] c"This program is free software; you can redistribute it and/or\0Amodify it under the terms of the GNU General Public License\0Aas published by the Free Software Foundation; either version 2of the License, or (at your option) any later version.\0A\0A\00", align 1
@.str.451 = private unnamed_addr constant [438 x i8] c"This program is distributed in the hope that it will be useful,\0Abut WITHOUT ANY WARRANTY; without even the implied warranty of\0AMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0AGNU General Public License for more details.\0A\0AYou should have received a copy of the GNU General Public License\0Aalong with this program; if not, write to the Free Software\0AFoundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.\0A\00", align 1
@.str.452 = private unnamed_addr constant [7 x i8] c"L:NAME\00", align 1
@.str.453 = private unnamed_addr constant [14 x i8] c"L:DESCRIPTION\00", align 1
@.str.454 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.455 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.456 = private unnamed_addr constant [5 x i8] c"all.\00", align 1
@.str.457 = private unnamed_addr constant [3 x i8] c"*.\00", align 1
@.str.458 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.459 = private unnamed_addr constant [30 x i8] c"Unknown language \22%s\22 in \22%s\22\00", align 1
@.str.460 = private unnamed_addr constant [40 x i8] c"A parameter is needed after \22%s\22 option\00", align 1
@.str.461 = private unnamed_addr constant [37 x i8] c"-%s: Invalid maximum recursion depth\00", align 1
@.str.462 = private unnamed_addr constant [22 x i8] c"Reset OptlibPathList\0A\00", align 1
@.str.463 = private unnamed_addr constant [18 x i8] c"Prepend %s to %s\0A\00", align 1
@.str.464 = private unnamed_addr constant [15 x i8] c"OptlibPathList\00", align 1
@.str.465 = private unnamed_addr constant [33 x i8] c"no option file supplied for \22%s\22\00", align 1
@.str.466 = private unnamed_addr constant [17 x i8] c"cannot stat \22%s\22\00", align 1
@.str.467 = private unnamed_addr constant [34 x i8] c"cannot open option directory \22%s\22\00", align 1
@.str.468 = private unnamed_addr constant [29 x i8] c"cannot open option file \22%s\22\00", align 1
@.str.469 = private unnamed_addr constant [7 x i8] c".ctags\00", align 1
@.str.470 = private unnamed_addr constant [32 x i8] c"Considering option file %s: %s\0A\00", align 1
@.str.471 = private unnamed_addr constant [19 x i8] c"already considered\00", align 1
@.str.472 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.473 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.474 = private unnamed_addr constant [11 x i8] c"reading...\00", align 1
@.str.475 = private unnamed_addr constant [27 x i8] c"Ignoring non-option in %s\0A\00", align 1
@.str.476 = private unnamed_addr constant [40 x i8] c"no output format name supplied for \22%s\22\00", align 1
@.str.477 = private unnamed_addr constant [8 x i8] c"u-ctags\00", align 1
@.str.478 = private unnamed_addr constant [8 x i8] c"e-ctags\00", align 1
@.str.479 = private unnamed_addr constant [5 x i8] c"xref\00", align 1
@.str.480 = private unnamed_addr constant [48 x i8] c"unknown output format name supplied for \22%s=%s\22\00", align 1
@.str.481 = private unnamed_addr constant [34 x i8] c"-%s: Invalid pattern length limit\00", align 1
@.str.482 = private unnamed_addr constant [28 x i8] c"Unknown pseudo tag name: %s\00", align 1
@.str.483 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.484 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
@.str.485 = private unnamed_addr constant [9 x i8] c"foldcase\00", align 1
@.str.486 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.487 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.488 = private unnamed_addr constant [43 x i8] c"Something string is needed for \22%s\22 option\00", align 1
@.str.489 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.490 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.491 = private unnamed_addr constant [18 x i8] c"ParametricOptions\00", align 1
@.str.492 = private unnamed_addr constant [15 x i8] c"BooleanOptions\00", align 1
@.str.493 = private unnamed_addr constant [44 x i8] c"Something message is needed for \22%s\22 option\00", align 1
@.str.494 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.495 = private unnamed_addr constant [41 x i8] c"force initializing all built-in parsers\0A\00", align 1
@.str.496 = private unnamed_addr constant [7 x i8] c"regex-\00", align 1
@.str.497 = private unnamed_addr constant [13 x i8] c"mline-regex-\00", align 1
@.str.498 = private unnamed_addr constant [15 x i8] c"_mtable-regex-\00", align 1
@.str.499 = private unnamed_addr constant [16 x i8] c"_mtable-extend-\00", align 1
@.str.500 = private unnamed_addr constant [15 x i8] c"  Option: -%s\0A\00", align 1
@.str.501 = private unnamed_addr constant [18 x i8] c"  Option: -%s %s\0A\00", align 1
@.str.502 = private unnamed_addr constant [34 x i8] c"Missing parameter for \22%s\22 option\00", align 1
@.str.503 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.504 = private unnamed_addr constant [53 x i8] c"-%s option specified more than once, last value used\00", align 1
@.str.505 = private unnamed_addr constant [42 x i8] c"output file name may not begin with a '-'\00", align 1
@.str.506 = private unnamed_addr constant [20 x i8] c"Unknown option: -%s\00", align 1
@.str.507 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.508 = private unnamed_addr constant [5 x i8] c"@./\\\00", align 1
@.str.509 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.510 = private unnamed_addr constant [17 x i8] c"cannot open \22%s\22\00", align 1
@.str.511 = private unnamed_addr constant [5 x i8] c", \09\0A\00", align 1
@.str.512 = private unnamed_addr constant [18 x i8] c"-%c: Invalid list\00", align 1
@.str.513 = private unnamed_addr constant [24 x i8] c"    Header Extensions:\0A\00", align 1
@.str.514 = private unnamed_addr constant [16 x i8] c"      clearing\0A\00", align 1
@.str.515 = private unnamed_addr constant [15 x i8] c"      adding: \00", align 1
@.str.516 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.517 = private unnamed_addr constant [7 x i8] c"(NONE)\00", align 1
@thread_stderr = external thread_local global %struct.__sFILE*, align 8
@.str.518 = private unnamed_addr constant [13 x i8] c"\0A      now: \00", align 1
@preload_path_list = internal global [4 x %struct.preloadPathElt] [%struct.preloadPathElt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.519, i32 0, i32 0), i8 1, i8* (i8*, i8*)* @prependEnvvar, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.520, i32 0, i32 0), i32 5 }, %struct.preloadPathElt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.519, i32 0, i32 0), i8 1, i8* (i8*, i8*)* null, i8* null, i32 6 }, %struct.preloadPathElt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.521, i32 0, i32 0), i8 1, i8* (i8*, i8*)* null, i8* null, i32 6 }, %struct.preloadPathElt zeroinitializer], align 8
@.str.519 = private unnamed_addr constant [9 x i8] c".ctags.d\00", align 1
@.str.520 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.521 = private unnamed_addr constant [8 x i8] c"ctags.d\00", align 1
@.str.522 = private unnamed_addr constant [6 x i8] c"ETAGS\00", align 1
@.str.523 = private unnamed_addr constant [6 x i8] c"CTAGS\00", align 1
@.str.524 = private unnamed_addr constant [29 x i8] c"Reading options from $CTAGS\0A\00", align 1
@.str.525 = private unnamed_addr constant [35 x i8] c"Ignoring non-option in %s variable\00", align 1
@HeaderExtensions = internal constant [9 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.527, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.528, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.529, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.530, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.531, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.532, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.533, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.534, i32 0, i32 0), i8* null], align 8
@.str.526 = private unnamed_addr constant [40 x i8] c"    Setting default header extensions: \00", align 1
@.str.527 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.528 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.529 = private unnamed_addr constant [3 x i8] c"hh\00", align 1
@.str.530 = private unnamed_addr constant [4 x i8] c"hpp\00", align 1
@.str.531 = private unnamed_addr constant [4 x i8] c"hxx\00", align 1
@.str.532 = private unnamed_addr constant [4 x i8] c"h++\00", align 1
@.str.533 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.534 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.535 = private unnamed_addr constant [37 x i8] c"    adding exclude patterns from %s\0A\00", align 1
@.str.536 = private unnamed_addr constant [32 x i8] c"    adding exclude pattern: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @verbose(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap = alloca i8*, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ap1 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap1)
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load i8*, i8** %ap, align 8
  %call = call i32 @vfprintf(%struct.__sFILE* %1, i8* %2, i8* %3)
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare i32 @vfprintf(%struct.__sFILE*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notice(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %ap = alloca i8*, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 25), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call = call i8* @getExecutableName()
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %call)
  %ap2 = bitcast i8** %ap to i8*
  call void @llvm.va_start(i8* %ap2)
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load i8*, i8** %ap, align 8
  %call3 = call i32 @vfprintf(%struct.__sFILE* %2, i8* %3, i8* %4)
  %ap4 = bitcast i8** %ap to i8*
  call void @llvm.va_end(i8* %ap4)
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call5 = call i32 @ios_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.__sFILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

declare i8* @getExecutableName() #2

declare i32 @ios_fputs(i8*, %struct.__sFILE*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeList(%struct.sPtrArray** %pList) #0 {
entry:
  %pList.addr = alloca %struct.sPtrArray**, align 8
  store %struct.sPtrArray** %pList, %struct.sPtrArray*** %pList.addr, align 8
  %0 = load %struct.sPtrArray**, %struct.sPtrArray*** %pList.addr, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %0, align 8
  %cmp = icmp ne %struct.sPtrArray* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sPtrArray**, %struct.sPtrArray*** %pList.addr, align 8
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %2, align 8
  call void @stringListDelete(%struct.sPtrArray* %3)
  %4 = load %struct.sPtrArray**, %struct.sPtrArray*** %pList.addr, align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @stringListDelete(%struct.sPtrArray*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @setDefaultTagFileName() #0 {
entry:
  %tmp = alloca i8*, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 30), align 8
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end7

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = call i8* @outputDefaultFileName()
  store i8* %call, i8** %tmp, align 8
  %3 = load i8*, i8** %tmp, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %tmp, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  %4 = load i8*, i8** %tmp, align 8
  %call6 = call i8* @stringCopy(i8* %4)
  store i8* %call6, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.end5, %if.end
  ret void
}

declare i8* @outputDefaultFileName() #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @stringCopy(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %result = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i8* null, i8** %result, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i8* @eStrdup(i8* %1)
  store i8* %call, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %result, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @filesRequired() #0 {
entry:
  %result = alloca i8, align 1
  %0 = load i8, i8* @FilesRequired, align 1
  %tobool = trunc i8 %0 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %result, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 4), align 8
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %result, align 1
  %tobool2 = trunc i8 %2 to i1
  ret i1 %tobool2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @checkOptions() #0 {
entry:
  %notice = alloca i8*, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 7), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sFmtElement*, %struct.sFmtElement** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 8), align 8
  %cmp = icmp eq %struct.sFmtElement* %1, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %notice, align 8
  %call = call zeroext i1 @isXtagEnabled(i32 1)
  br i1 %call, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load i8*, i8** %notice, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %2)
  %call2 = call zeroext i1 @enableXtag(i32 1, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %land.lhs.true, %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), align 8
  %tobool4 = trunc i8 %3 to i1
  br i1 %tobool4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end3
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8** %notice, align 8
  %call6 = call zeroext i1 @isDestinationStdout()
  br i1 %call6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %4 = load i8*, i8** %notice, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %4)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end3
  %5 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool10 = trunc i8 %5 to i1
  br i1 %tobool10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %notice, align 8
  %6 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  %tobool12 = trunc i8 %6 to i1
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  %7 = load i8*, i8** %notice, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %7)
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then11
  %8 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %cmp15 = icmp ne i8* %8, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %9 = load i8*, i8** %notice, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %9)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end9
  ret void
}

declare zeroext i1 @isXtagEnabled(i32) #2

declare void @error(i32, i8*, ...) #2

declare zeroext i1 @enableXtag(i32, i1 zeroext) #2

declare zeroext i1 @isDestinationStdout() #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getLanguageComponentInOption(i8* %option, i8* %prefix) #0 {
entry:
  %retval = alloca i32, align 4
  %option.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %prefix_len = alloca i64, align 8
  %language = alloca i32, align 4
  %lang = alloca i8*, align 8
  %colon = alloca i8*, align 8
  %lang_len = alloca i64, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8* null, i8** %colon, align 8
  store i64 0, i64* %lang_len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %prefix.addr, align 8
  %call = call i64 @strlen(i8* %0)
  store i64 %call, i64* %prefix_len, align 8
  %1 = load i8*, i8** %option.addr, align 8
  %2 = load i8*, i8** %prefix.addr, align 8
  %3 = load i64, i64* %prefix_len, align 8
  %call3 = call i32 @strncmp(i8* %1, i8* %2, i64 %3)
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  store i32 -2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.end2
  %4 = load i8*, i8** %option.addr, align 8
  %5 = load i64, i64* %prefix_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %lang, align 8
  %6 = load i8*, i8** %lang, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %8 = load i8*, i8** %lang, align 8
  %call8 = call i8* @strchr(i8* %8, i32 58)
  store i8* %call8, i8** %colon, align 8
  %9 = load i8*, i8** %colon, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %10 = load i8*, i8** %colon, align 8
  %11 = load i8*, i8** %lang, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %lang_len, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %12 = load i8*, i8** %lang, align 8
  %13 = load i64, i64* %lang_len, align 8
  %call11 = call i32 @getNamedLanguage(i8* %12, i64 %13)
  store i32 %call11, i32* %language, align 4
  %14 = load i32, i32* %language, align 4
  %cmp12 = icmp eq i32 %14, -2
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %15 = load i8*, i8** %lang, align 8
  %16 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %15, i8* %16)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  %17 = load i32, i32* %language, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then6, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare i64 @strlen(i8*) #2

declare i32 @strncmp(i8*, i8*, i64) #2

declare i8* @strchr(i8*, i32) #2

declare i32 @getNamedLanguage(i8*, i64) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @testEtagsInvocation() #0 {
entry:
  %execName = alloca i8*, align 8
  %etags = alloca i8*, align 8
  %call = call i8* @getExecutableName()
  %call1 = call i8* @eStrdup(i8* %call)
  store i8* %call1, i8** %execName, align 8
  %call2 = call i8* @eStrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i8* %call2, i8** %etags, align 8
  %0 = load i8*, i8** %execName, align 8
  call void @toLowerString(i8* %0)
  %1 = load i8*, i8** %etags, align 8
  call void @toLowerString(i8* %1)
  %2 = load i8*, i8** %execName, align 8
  %3 = load i8*, i8** %etags, align 8
  %call3 = call i8* @strstr(i8* %2, i8* %3)
  %cmp = icmp ne i8* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  call void @setEtagsMode()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %execName, align 8
  call void @eFree(i8* %4)
  %5 = load i8*, i8** %etags, align 8
  call void @eFree(i8* %5)
  ret void
}

declare i8* @eStrdup(i8*) #2

declare void @toLowerString(i8*) #2

declare i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setEtagsMode() #0 {
entry:
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  store i32 1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  call void @setTagWriter(i32 2)
  ret void
}

declare void @eFree(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sCookedArgs* @cArgNewFromString(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %result = alloca %struct.sCookedArgs*, align 8
  store i8* %string, i8** %string.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sCookedArgs*
  store %struct.sCookedArgs* %0, %struct.sCookedArgs** %result, align 8
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %2 = bitcast %struct.sCookedArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load i8*, i8** %string.addr, align 8
  %call1 = call %struct.sArgs* @argNewFromString(i8* %3)
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 0
  store %struct.sArgs* %call1, %struct.sArgs** %args, align 8
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  call void @cArgRead(%struct.sCookedArgs* %5)
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  ret %struct.sCookedArgs* %6
}

declare i8* @eMalloc(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare %struct.sArgs* @argNewFromString(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @cArgRead(%struct.sCookedArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sCookedArgs*, align 8
  %item = alloca i8*, align 8
  store %struct.sCookedArgs* %current, %struct.sCookedArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 0
  %1 = load %struct.sArgs*, %struct.sArgs** %args, align 8
  %call = call zeroext i1 @argOff(%struct.sArgs* %1)
  br i1 %call, label %if.end24, label %if.then

if.then:                                          ; preds = %do.end
  %2 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %args1 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %2, i32 0, i32 0
  %3 = load %struct.sArgs*, %struct.sArgs** %args1, align 8
  %call2 = call i8* @argItem(%struct.sArgs* %3)
  store i8* %call2, i8** %item, align 8
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %shortOptions = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 1
  store i8* null, i8** %shortOptions, align 8
  br label %do.body3

do.body3:                                         ; preds = %if.then
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  %5 = load i8*, i8** %item, align 8
  %call5 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end4
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %isOption = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %6, i32 0, i32 3
  store i8 1, i8* %isOption, align 2
  %7 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %longOption = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %7, i32 0, i32 4
  store i8 1, i8* %longOption, align 1
  %8 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %9 = load i8*, i8** %item, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 2
  call void @parseLongOption(%struct.sCookedArgs* %8, i8* %add.ptr)
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  br label %if.end23

if.else:                                          ; preds = %do.end4
  %10 = load i8*, i8** %item, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv, 45
  br i1 %cmp11, label %if.then13, label %if.else18

if.then13:                                        ; preds = %if.else
  %12 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %isOption14 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %12, i32 0, i32 3
  store i8 1, i8* %isOption14, align 2
  %13 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %longOption15 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %13, i32 0, i32 4
  store i8 0, i8* %longOption15, align 1
  %14 = load i8*, i8** %item, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %shortOptions17 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %15, i32 0, i32 1
  store i8* %add.ptr16, i8** %shortOptions17, align 8
  %16 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  call void @parseShortOption(%struct.sCookedArgs* %16)
  br label %if.end

if.else18:                                        ; preds = %if.else
  %17 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %isOption19 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %17, i32 0, i32 3
  store i8 0, i8* %isOption19, align 2
  %18 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %longOption20 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %18, i32 0, i32 4
  store i8 0, i8* %longOption20, align 1
  %19 = load i8*, i8** %item, align 8
  %call21 = call i8* @eStrdup(i8* %19)
  %20 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %item22 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %20, i32 0, i32 6
  store i8* %call21, i8** %item22, align 8
  %21 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %parameter = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %21, i32 0, i32 5
  store i8* null, i8** %parameter, align 8
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then13
  br label %if.end23

if.end23:                                         ; preds = %if.end, %do.end10
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sCookedArgs* @cArgNewFromArgv(i8** %argv) #0 {
entry:
  %argv.addr = alloca i8**, align 8
  %result = alloca %struct.sCookedArgs*, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sCookedArgs*
  store %struct.sCookedArgs* %0, %struct.sCookedArgs** %result, align 8
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %2 = bitcast %struct.sCookedArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load i8**, i8*** %argv.addr, align 8
  %call1 = call %struct.sArgs* @argNewFromArgv(i8** %3)
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 0
  store %struct.sArgs* %call1, %struct.sArgs** %args, align 8
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  call void @cArgRead(%struct.sCookedArgs* %5)
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  ret %struct.sCookedArgs* %6
}

declare %struct.sArgs* @argNewFromArgv(i8**) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sCookedArgs* @cArgNewFromFile(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca %struct.sCookedArgs*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sCookedArgs*
  store %struct.sCookedArgs* %0, %struct.sCookedArgs** %result, align 8
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %2 = bitcast %struct.sCookedArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call1 = call %struct.sArgs* @argNewFromFile(%struct.__sFILE* %3)
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 0
  store %struct.sArgs* %call1, %struct.sArgs** %args, align 8
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  call void @cArgRead(%struct.sCookedArgs* %5)
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  ret %struct.sCookedArgs* %6
}

declare %struct.sArgs* @argNewFromFile(%struct.__sFILE*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sCookedArgs* @cArgNewFromLineFile(%struct.__sFILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %result = alloca %struct.sCookedArgs*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call i8* @eMalloc(i64 40)
  %0 = bitcast i8* %call to %struct.sCookedArgs*
  store %struct.sCookedArgs* %0, %struct.sCookedArgs** %result, align 8
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %2 = bitcast %struct.sCookedArgs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 40, i1 false)
  %3 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %call1 = call %struct.sArgs* @argNewFromLineFile(%struct.__sFILE* %3)
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 0
  store %struct.sArgs* %call1, %struct.sArgs** %args, align 8
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  call void @cArgRead(%struct.sCookedArgs* %5)
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %result, align 8
  ret %struct.sCookedArgs* %6
}

declare %struct.sArgs* @argNewFromLineFile(%struct.__sFILE*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cArgDelete(%struct.sCookedArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %current, %struct.sCookedArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 0
  %1 = load %struct.sArgs*, %struct.sArgs** %args, align 8
  call void @argDelete(%struct.sArgs* %1)
  %2 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %item = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %2, i32 0, i32 6
  %3 = load i8*, i8** %item, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %item1 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 6
  %5 = load i8*, i8** %item1, align 8
  call void @eFree(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %7 = bitcast %struct.sCookedArgs* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %9 = bitcast %struct.sCookedArgs* %8 to i8*
  call void @eFree(i8* %9)
  ret void
}

declare void @argDelete(%struct.sArgs*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cArgOff(%struct.sCookedArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %current, %struct.sCookedArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 0
  %1 = load %struct.sArgs*, %struct.sArgs** %args, align 8
  %call = call zeroext i1 @argOff(%struct.sArgs* %1)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end
  %2 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %call1 = call zeroext i1 @cArgOptionPending(%struct.sCookedArgs* %2)
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %3 = phi i1 [ false, %do.end ], [ %lnot, %land.rhs ]
  ret i1 %3
}

declare zeroext i1 @argOff(%struct.sArgs*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @cArgOptionPending(%struct.sCookedArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sCookedArgs*, align 8
  %result = alloca i8, align 1
  store %struct.sCookedArgs* %current, %struct.sCookedArgs** %current.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %shortOptions = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 1
  %1 = load i8*, i8** %shortOptions, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %shortOptions1 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %2, i32 0, i32 1
  %3 = load i8*, i8** %shortOptions1, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %5 = load i8, i8* %result, align 1
  %tobool = trunc i8 %5 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @cArgIsOption(%struct.sCookedArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %current, %struct.sCookedArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %isOption = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 3
  %1 = load i8, i8* %isOption, align 2
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @cArgItem(%struct.sCookedArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %current, %struct.sCookedArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %item = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 6
  %1 = load i8*, i8** %item, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @cArgForth(%struct.sCookedArgs* %current) #0 {
entry:
  %current.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %current, %struct.sCookedArgs** %current.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %item = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 6
  %1 = load i8*, i8** %item, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %2 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %item3 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %2, i32 0, i32 6
  %3 = load i8*, i8** %item3, align 8
  call void @eFree(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end2
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %call = call zeroext i1 @cArgOptionPending(%struct.sCookedArgs* %4)
  br i1 %call, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  call void @parseShortOption(%struct.sCookedArgs* %5)
  br label %if.end13

if.else:                                          ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %if.else
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %args = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %6, i32 0, i32 0
  %7 = load %struct.sArgs*, %struct.sArgs** %args, align 8
  call void @argForth(%struct.sArgs* %7)
  %8 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %args7 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %8, i32 0, i32 0
  %9 = load %struct.sArgs*, %struct.sArgs** %args7, align 8
  %call8 = call zeroext i1 @argOff(%struct.sArgs* %9)
  br i1 %call8, label %if.else10, label %if.then9

if.then9:                                         ; preds = %do.end6
  %10 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  call void @cArgRead(%struct.sCookedArgs* %10)
  br label %if.end12

if.else10:                                        ; preds = %do.end6
  %11 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %isOption = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %11, i32 0, i32 3
  store i8 0, i8* %isOption, align 2
  %12 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %longOption = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %12, i32 0, i32 4
  store i8 0, i8* %longOption, align 1
  %13 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %shortOptions = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %13, i32 0, i32 1
  store i8* null, i8** %shortOptions, align 8
  %14 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %item11 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %14, i32 0, i32 6
  store i8* null, i8** %item11, align 8
  %15 = load %struct.sCookedArgs*, %struct.sCookedArgs** %current.addr, align 8
  %parameter = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %15, i32 0, i32 5
  store i8* null, i8** %parameter, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseShortOption(%struct.sCookedArgs* %args) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %shortOptions = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 1
  %1 = load i8*, i8** %shortOptions, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %shortOptions, align 8
  %2 = load i8, i8* %1, align 1
  %3 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %simple = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %3, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %simple, i64 0, i64 0
  store i8 %2, i8* %arrayidx, align 8
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %simple1 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %simple1, i64 0, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %simple3 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %simple3, i64 0, i64 0
  %call = call i8* @eStrdup(i8* %arraydecay)
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %6, i32 0, i32 6
  store i8* %call, i8** %item, align 8
  %7 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %simple4 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %7, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [2 x i8], [2 x i8]* %simple4, i64 0, i64 0
  %8 = load i8, i8* %arraydecay5, align 8
  %conv = sext i8 %8 to i32
  %call6 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0), i32 %conv)
  %cmp = icmp ne i8* %call6, null
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %9, i32 0, i32 5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0), i8** %parameter, align 8
  br label %if.end28

if.else:                                          ; preds = %entry
  %10 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %shortOptions8 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %10, i32 0, i32 1
  %11 = load i8*, i8** %shortOptions8, align 8
  %12 = load i8, i8* %11, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.else23

if.then12:                                        ; preds = %if.else
  %13 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %args13 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %13, i32 0, i32 0
  %14 = load %struct.sArgs*, %struct.sArgs** %args13, align 8
  call void @argForth(%struct.sArgs* %14)
  %15 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %args14 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %15, i32 0, i32 0
  %16 = load %struct.sArgs*, %struct.sArgs** %args14, align 8
  %call15 = call zeroext i1 @argOff(%struct.sArgs* %16)
  br i1 %call15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.then12
  %17 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter17 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %17, i32 0, i32 5
  store i8* null, i8** %parameter17, align 8
  br label %if.end

if.else18:                                        ; preds = %if.then12
  %18 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %args19 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %18, i32 0, i32 0
  %19 = load %struct.sArgs*, %struct.sArgs** %args19, align 8
  %call20 = call i8* @argItem(%struct.sArgs* %19)
  %20 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter21 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %20, i32 0, i32 5
  store i8* %call20, i8** %parameter21, align 8
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then16
  %21 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %shortOptions22 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %21, i32 0, i32 1
  store i8* null, i8** %shortOptions22, align 8
  br label %if.end27

if.else23:                                        ; preds = %if.else
  %22 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %shortOptions24 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %22, i32 0, i32 1
  %23 = load i8*, i8** %shortOptions24, align 8
  %24 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter25 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %24, i32 0, i32 5
  store i8* %23, i8** %parameter25, align 8
  %25 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %shortOptions26 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %25, i32 0, i32 1
  store i8* null, i8** %shortOptions26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  ret void
}

declare void @argForth(%struct.sArgs*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @paramParserBool(i8* %value, i1 zeroext %fallback, i8* %errWhat, i8* %errCategory) #0 {
entry:
  %value.addr = alloca i8*, align 8
  %fallback.addr = alloca i8, align 1
  %errWhat.addr = alloca i8*, align 8
  %errCategory.addr = alloca i8*, align 8
  %r = alloca i8, align 1
  store i8* %value, i8** %value.addr, align 8
  %frombool = zext i1 %fallback to i8
  store i8 %frombool, i8* %fallback.addr, align 1
  store i8* %errWhat, i8** %errWhat.addr, align 8
  store i8* %errCategory, i8** %errCategory.addr, align 8
  %0 = load i8, i8* %fallback.addr, align 1
  %tobool = trunc i8 %0 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* %r, align 1
  %1 = load i8*, i8** %value.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %r, align 1
  br label %if.end9

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %value.addr, align 8
  %call = call zeroext i1 @isFalse(i8* %3)
  br i1 %call, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i8 0, i8* %r, align 1
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %4 = load i8*, i8** %value.addr, align 8
  %call5 = call zeroext i1 @isTrue(i8* %4)
  br i1 %call5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  store i8 1, i8* %r, align 1
  br label %if.end

if.else7:                                         ; preds = %if.else4
  %5 = load i8*, i8** %errWhat.addr, align 8
  %6 = load i8*, i8** %errCategory.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %7 = load i8, i8* %r, align 1
  %tobool10 = trunc i8 %7 to i1
  ret i1 %tobool10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isFalse(i8* %parameter) #0 {
entry:
  %parameter.addr = alloca i8*, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %parameter.addr, align 8
  %call1 = call i32 @strcasecmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %parameter.addr, align 8
  %call4 = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i8*, i8** %parameter.addr, align 8
  %call7 = call i32 @strcasecmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false6
  %4 = load i8*, i8** %parameter.addr, align 8
  %call9 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0))
  %cmp10 = icmp eq i32 %call9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isTrue(i8* %parameter) #0 {
entry:
  %parameter.addr = alloca i8*, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %parameter.addr, align 8
  %call1 = call i32 @strcasecmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %parameter.addr, align 8
  %call4 = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i8*, i8** %parameter.addr, align 8
  %call7 = call i32 @strcasecmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false6
  %4 = load i8*, i8** %parameter.addr, align 8
  %call9 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0))
  %cmp10 = icmp eq i32 %call9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isIncludeFile(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %extension = alloca i8*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call i8* @fileExtension(i8* %0)
  store i8* %call, i8** %extension, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  %cmp = icmp ne %struct.sPtrArray* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  %3 = load i8*, i8** %extension, align 8
  %call1 = call zeroext i1 @stringListExtensionMatched(%struct.sPtrArray* %2, i8* %3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  ret i1 %tobool
}

declare i8* @fileExtension(i8*) #2

declare zeroext i1 @stringListExtensionMatched(%struct.sPtrArray*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isExcludedFile(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  %result = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i8* @baseFilename(i8* %0)
  store i8* %call, i8** %base, align 8
  store i8 0, i8* %result, align 1
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** @Excluded, align 8
  %cmp = icmp ne %struct.sPtrArray* %1, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** @Excluded, align 8
  %3 = load i8*, i8** %base, align 8
  %call1 = call zeroext i1 @stringListFileMatched(%struct.sPtrArray* %2, i8* %3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %result, align 1
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i8*, i8** %base, align 8
  %cmp2 = icmp ne i8* %5, %6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** @Excluded, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %call4 = call zeroext i1 @stringListFileMatched(%struct.sPtrArray* %7, i8* %8)
  %frombool5 = zext i1 %call4 to i8
  store i8 %frombool5, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %9 = load i8, i8* %result, align 1
  %tobool7 = trunc i8 %9 to i1
  ret i1 %tobool7
}

declare i8* @baseFilename(i8*) #2

declare zeroext i1 @stringListFileMatched(%struct.sPtrArray*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processMapOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  %spec = alloca i8*, align 8
  %map_parameter = alloca i8*, align 8
  %clear = alloca i8, align 1
  %op = alloca i8, align 1
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store i8 0, i8* %clear, align 1
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  %6 = load i8*, i8** %parameter.addr, align 8
  store i8* %6, i8** %spec, align 8
  %7 = load i8*, i8** %spec, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 43
  br i1 %cmp7, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end5
  %9 = load i8*, i8** %spec, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 45
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false9, %if.end5
  %11 = load i8*, i8** %spec, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %op, align 1
  %13 = load i8*, i8** %spec, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %spec, align 8
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false9
  store i8 0, i8* %op, align 1
  store i8 1, i8* %clear, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  %14 = load i8, i8* %clear, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end14
  %15 = load i32, i32* %language, align 4
  %call16 = call i8* @getLanguageName(i32 %15)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %call16)
  %16 = load i32, i32* %language, align 4
  call void @clearLanguageMap(i32 %16)
  store i8 43, i8* %op, align 1
  br label %if.end26

if.else17:                                        ; preds = %if.end14
  %17 = load i8, i8* %op, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 43
  %18 = zext i1 %cmp19 to i64
  %cond = select i1 %cmp19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)
  %19 = load i8*, i8** %spec, align 8
  %20 = load i8, i8* %op, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp eq i32 %conv21, 43
  %21 = zext i1 %cmp22 to i64
  %cond24 = select i1 %cmp22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %22 = load i32, i32* %language, align 4
  %call25 = call i8* @getLanguageName(i32 %22)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %cond, i8* %19, i8* %cond24, i8* %call25)
  br label %if.end26

if.end26:                                         ; preds = %if.else17, %if.then15
  %23 = load i8*, i8** %spec, align 8
  %call27 = call i8* @eStrdup(i8* %23)
  store i8* %call27, i8** %map_parameter, align 8
  %24 = load i8, i8* %op, align 1
  %conv28 = sext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv28, 43
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.end26
  %25 = load i32, i32* %language, align 4
  %26 = load i8*, i8** %map_parameter, align 8
  %call32 = call i8* @addLanguageMap(i32 %25, i8* %26, i1 zeroext false)
  br label %if.end41

if.else33:                                        ; preds = %if.end26
  %27 = load i8, i8* %op, align 1
  %conv34 = sext i8 %27 to i32
  %cmp35 = icmp eq i32 %conv34, 45
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else33
  %28 = load i32, i32* %language, align 4
  %29 = load i8*, i8** %map_parameter, align 8
  %call38 = call i8* @removeLanguageMap(i32 %28, i8* %29)
  br label %if.end40

if.else39:                                        ; preds = %if.else33
  br label %do.body

do.body:                                          ; preds = %if.else39
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end40

if.end40:                                         ; preds = %do.end, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then31
  %30 = load i8*, i8** %map_parameter, align 8
  call void @eFree(i8* %30)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end41, %if.then
  %31 = load i1, i1* %retval, align 1
  ret i1 %31
}

declare i8* @getLanguageName(i32) #2

declare void @clearLanguageMap(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @addLanguageMap(i32 %language, i8* %map_parameter, i1 zeroext %exclusiveInAllLanguages) #0 {
entry:
  %language.addr = alloca i32, align 4
  %map_parameter.addr = alloca i8*, align 8
  %exclusiveInAllLanguages.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  %pattern_p = alloca i8, align 1
  %map = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %map_parameter, i8** %map_parameter.addr, align 8
  %frombool = zext i1 %exclusiveInAllLanguages to i8
  store i8 %frombool, i8* %exclusiveInAllLanguages.addr, align 1
  store i8* null, i8** %p, align 8
  %0 = load i32, i32* %language.addr, align 4
  %1 = load i8*, i8** %map_parameter.addr, align 8
  %call = call i8* @extractMapFromParameter(i32 %0, i8* %1, i8** %p, i8* %pattern_p, i8* (i8*)* @skipPastMap)
  store i8* %call, i8** %map, align 8
  %2 = load i8*, i8** %map, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i8, i8* %pattern_p, align 1
  %tobool1 = trunc i8 %3 to i1
  %conv = zext i1 %tobool1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %language.addr, align 4
  %5 = load i8*, i8** %map, align 8
  %6 = load i8, i8* %exclusiveInAllLanguages.addr, align 1
  %tobool3 = trunc i8 %6 to i1
  call void @addLanguageExtensionMap(i32 %4, i8* %5, i1 zeroext %tobool3)
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %map, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else12

land.lhs.true5:                                   ; preds = %if.else
  %8 = load i8, i8* %pattern_p, align 1
  %tobool6 = trunc i8 %8 to i1
  %conv7 = zext i1 %tobool6 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %land.lhs.true5
  %9 = load i32, i32* %language.addr, align 4
  %10 = load i8*, i8** %map, align 8
  %11 = load i8, i8* %exclusiveInAllLanguages.addr, align 1
  %tobool11 = trunc i8 %11 to i1
  call void @addLanguagePatternMap(i32 %9, i8* %10, i1 zeroext %tobool11)
  br label %if.end

if.else12:                                        ; preds = %land.lhs.true5, %if.else
  %12 = load i32, i32* %language.addr, align 4
  %call13 = call i8* @getLanguageName(i32 %12)
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0), i8* %call13)
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %13 = load i8*, i8** %map, align 8
  %tobool15 = icmp ne i8* %13, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %14 = load i8*, i8** %map, align 8
  call void @eFree(i8* %14)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %15 = load i8*, i8** %p, align 8
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @removeLanguageMap(i32 %language, i8* %map_parameter) #0 {
entry:
  %language.addr = alloca i32, align 4
  %map_parameter.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pattern_p = alloca i8, align 1
  %map = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %map_parameter, i8** %map_parameter.addr, align 8
  store i8* null, i8** %p, align 8
  %0 = load i32, i32* %language.addr, align 4
  %1 = load i8*, i8** %map_parameter.addr, align 8
  %call = call i8* @extractMapFromParameter(i32 %0, i8* %1, i8** %p, i8* %pattern_p, i8* (i8*)* @skipPastMap)
  store i8* %call, i8** %map, align 8
  %2 = load i8*, i8** %map, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i8, i8* %pattern_p, align 1
  %tobool1 = trunc i8 %3 to i1
  %conv = zext i1 %tobool1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %language.addr, align 4
  %5 = load i8*, i8** %map, align 8
  %call3 = call zeroext i1 @removeLanguageExtensionMap(i32 %4, i8* %5)
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %map, align 8
  %tobool4 = icmp ne i8* %6, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else12

land.lhs.true5:                                   ; preds = %if.else
  %7 = load i8, i8* %pattern_p, align 1
  %tobool6 = trunc i8 %7 to i1
  %conv7 = zext i1 %tobool6 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %land.lhs.true5
  %8 = load i32, i32* %language.addr, align 4
  %9 = load i8*, i8** %map, align 8
  %call11 = call zeroext i1 @removeLanguagePatternMap(i32 %8, i8* %9)
  br label %if.end

if.else12:                                        ; preds = %land.lhs.true5, %if.else
  %10 = load i32, i32* %language.addr, align 4
  %call13 = call i8* @getLanguageName(i32 %10)
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i64 0, i64 0), i8* %call13)
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %11 = load i8*, i8** %map, align 8
  %tobool15 = icmp ne i8* %11, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %12 = load i8*, i8** %map, align 8
  call void @eFree(i8* %12)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %13 = load i8*, i8** %p, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processParamOption(i8* %option, i8* %value) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  %name = alloca i8*, align 8
  %sep = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %option.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 6
  %3 = load i32, i32* %language, align 4
  %call1 = call i8* @getLanguageName(i32 %3)
  %call2 = call i64 @strlen(i8* %call1)
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %call2
  store i8* %add.ptr3, i8** %sep, align 8
  %4 = load i8*, i8** %sep, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv, 58
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load i8*, i8** %option.addr, align 8
  %7 = load i8*, i8** %value.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i8* %6, i8* %7)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %8 = load i8*, i8** %sep, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %add.ptr8, i8** %name, align 8
  %9 = load i8*, i8** %value.addr, align 8
  %cmp9 = icmp eq i8* %9, null
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %10 = load i8*, i8** %value.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  %12 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %12)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false
  %13 = load i32, i32* %language, align 4
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %value.addr, align 8
  call void @applyParameter(i32 %13, i8* %14, i8* %15)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %16 = load i1, i1* %retval, align 1
  ret i1 %16
}

declare void @applyParameter(i32, i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @parseCmdlineOptions(%struct.sCookedArgs* %args) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body1
  %0 = load i32, i32* @Stage, align 4
  %cmp = icmp ne i32 %0, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 9, i32* @Stage, align 4
  %1 = load i32, i32* @Stage, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @StageDescription, i64 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  br label %do.end2

do.end2:                                          ; preds = %if.end
  %3 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  call void @parseOptions(%struct.sCookedArgs* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseOptions(%struct.sCookedArgs* %args) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call = call zeroext i1 @cArgOff(%struct.sCookedArgs* %0)
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call1 = call zeroext i1 @cArgIsOption(%struct.sCookedArgs* %1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %call1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  call void @parseOption(%struct.sCookedArgs* %3)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call2 = call zeroext i1 @cArgOff(%struct.sCookedArgs* %4)
  br i1 %call2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call3 = call zeroext i1 @cArgIsOption(%struct.sCookedArgs* %5)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* @NonOptionEncountered, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @previewFirstOption(%struct.sCookedArgs* %args) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %call = call zeroext i1 @cArgIsOption(%struct.sCookedArgs* %0)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %1, i32 0, i32 6
  %2 = load i8*, i8** %item, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item2 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %3, i32 0, i32 6
  %4 = load i8*, i8** %item2, align 8
  %call3 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item6 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %5, i32 0, i32 6
  %6 = load i8*, i8** %item6, align 8
  %call7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %while.body
  %7 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  call void @parseOption(%struct.sCookedArgs* %7)
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false5
  %8 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item9 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %8, i32 0, i32 6
  %9 = load i8*, i8** %item9, align 8
  %call10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %10, i32 0, i32 5
  %11 = load i8*, i8** %parameter, align 8
  %call12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0))
  store i8 1, i8* @SkipConfiguration, align 1
  %12 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  call void @cArgForth(%struct.sCookedArgs* %12)
  br label %if.end

if.else15:                                        ; preds = %land.lhs.true, %if.else
  br label %while.end

if.end:                                           ; preds = %if.then14
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else15, %while.cond
  ret void
}

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseOption(%struct.sCookedArgs* %args) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  %parameter3 = alloca i8*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %isOption = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %0, i32 0, i32 3
  %1 = load i8, i8* %isOption, align 2
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %do.end
  %2 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %longOption = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %2, i32 0, i32 4
  %3 = load i8, i8* %longOption, align 1
  %tobool1 = trunc i8 %3 to i1
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 6
  %5 = load i8*, i8** %item, align 8
  %6 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %6, i32 0, i32 5
  %7 = load i8*, i8** %parameter, align 8
  call void @processLongOption(i8* %5, i8* %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter4 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %8, i32 0, i32 5
  %9 = load i8*, i8** %parameter4, align 8
  store i8* %9, i8** %parameter3, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %10 = load i8*, i8** %parameter3, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %parameter3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %parameter3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item6 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %13, i32 0, i32 6
  %14 = load i8*, i8** %item6, align 8
  %15 = load i8*, i8** %parameter3, align 8
  call void @processShortOption(i8* %14, i8* %15)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then2
  %16 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  call void @cArgForth(%struct.sCookedArgs* %16)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @readOptionConfiguration() #0 {
entry:
  %0 = load i8, i8* @SkipConfiguration, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @parseConfigurationFileOptions()
  call void @parseEnvironmentOptions()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseConfigurationFileOptions() #0 {
entry:
  call void @preload(%struct.preloadPathElt* getelementptr inbounds ([4 x %struct.preloadPathElt], [4 x %struct.preloadPathElt]* @preload_path_list, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseEnvironmentOptions() #0 {
entry:
  %envOptions = alloca i8*, align 8
  %var = alloca i8*, align 8
  %args = alloca %struct.sCookedArgs*, align 8
  store i8* null, i8** %envOptions, align 8
  store i8* null, i8** %var, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body1
  %0 = load i32, i32* @Stage, align 4
  %cmp = icmp ne i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 8, i32* @Stage, align 4
  %1 = load i32, i32* @Stage, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @StageDescription, i64 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  br label %do.end2

do.end2:                                          ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.end2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.522, i64 0, i64 0), i8** %var, align 8
  %4 = load i8*, i8** %var, align 8
  %call = call i8* @ios_getenv(i8* %4)
  store i8* %call, i8** %envOptions, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.end2
  %5 = load i8*, i8** %envOptions, align 8
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.523, i64 0, i64 0), i8** %var, align 8
  %6 = load i8*, i8** %var, align 8
  %call7 = call i8* @ios_getenv(i8* %6)
  store i8* %call7, i8** %envOptions, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %7 = load i8*, i8** %envOptions, align 8
  %cmp9 = icmp ne i8* %7, null
  br i1 %cmp9, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end8
  %8 = load i8*, i8** %envOptions, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %9 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %envOptions, align 8
  %call14 = call %struct.sCookedArgs* @cArgNewFromString(i8* %10)
  store %struct.sCookedArgs* %call14, %struct.sCookedArgs** %args, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.524, i64 0, i64 0))
  %11 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @parseOptions(%struct.sCookedArgs* %11)
  %12 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @cArgDelete(%struct.sCookedArgs* %12)
  %13 = load i8, i8* @NonOptionEncountered, align 1
  %tobool15 = trunc i8 %13 to i1
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  %14 = load i8*, i8** %var, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.525, i64 0, i64 0), i8* %14)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %if.end8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initOptions() #0 {
entry:
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** @OptionFiles, align 8
  %call1 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call1, %struct.sPtrArray** @OptlibPathList, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  call void @installHeaderListDefaults()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0))
  call void @installLanguageMapDefaults()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0))
  call void @installLanguageAliasesDefaults()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0))
  call void @processExcludeOption(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0))
  ret void
}

declare %struct.sPtrArray* @stringListNew() #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @installHeaderListDefaults() #0 {
entry:
  %vfp = alloca %struct.__sFILE*, align 8
  %call = call %struct.sPtrArray* @stringListNewFromArgv(i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @HeaderExtensions, i64 0, i64 0))
  store %struct.sPtrArray* %call, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct.__sFILE*, %struct.__sFILE** @thread_stderr, align 8
  store %struct.__sFILE* %1, %struct.__sFILE** %vfp, align 8
  %2 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.526, i64 0, i64 0))
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  call void @stringListPrint(%struct.sPtrArray* %3, %struct.__sFILE* %4)
  %5 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %call2 = call i32 @putc(i32 10, %struct.__sFILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

declare void @installLanguageMapDefaults() #2

declare void @installLanguageAliasesDefaults() #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processExcludeOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %fileName = alloca i8*, align 8
  %sl = alloca %struct.sPtrArray*, align 8
  %item = alloca %struct.sVString*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %fileName, align 8
  %1 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @freeList(%struct.sPtrArray** @Excluded)
  br label %if.end23

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %parameter.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 64
  br i1 %cmp4, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  %5 = load i8*, i8** %fileName, align 8
  %call = call %struct.sPtrArray* @stringListNewFromFile(i8* %5)
  store %struct.sPtrArray* %call, %struct.sPtrArray** %sl, align 8
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %sl, align 8
  %cmp7 = icmp eq %struct.sPtrArray* %6, null
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %7 = load i8*, i8** %fileName, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.510, i64 0, i64 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** @Excluded, align 8
  %cmp10 = icmp eq %struct.sPtrArray* %8, null
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %sl, align 8
  store %struct.sPtrArray* %9, %struct.sPtrArray** @Excluded, align 8
  br label %if.end14

if.else13:                                        ; preds = %if.end
  %10 = load %struct.sPtrArray*, %struct.sPtrArray** @Excluded, align 8
  %11 = load %struct.sPtrArray*, %struct.sPtrArray** %sl, align 8
  call void @stringListCombine(%struct.sPtrArray* %10, %struct.sPtrArray* %11)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  %12 = load i8*, i8** %fileName, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.535, i64 0, i64 0), i8* %12)
  br label %if.end22

if.else15:                                        ; preds = %if.else
  %13 = load i8*, i8** %parameter.addr, align 8
  %call16 = call %struct.sVString* @vStringNewInit(i8* %13)
  store %struct.sVString* %call16, %struct.sVString** %item, align 8
  %14 = load %struct.sPtrArray*, %struct.sPtrArray** @Excluded, align 8
  %cmp17 = icmp eq %struct.sPtrArray* %14, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.else15
  %call20 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call20, %struct.sPtrArray** @Excluded, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else15
  %15 = load %struct.sPtrArray*, %struct.sPtrArray** @Excluded, align 8
  %16 = load %struct.sVString*, %struct.sVString** %item, align 8
  call void @stringListAdd(%struct.sPtrArray* %15, %struct.sVString* %16)
  %17 = load i8*, i8** %parameter.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.536, i64 0, i64 0), i8* %17)
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeOptionResources() #0 {
entry:
  call void @freeString(i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10))
  call void @freeString(i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9))
  call void @freeString(i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 19))
  call void @freeList(%struct.sPtrArray** @Excluded)
  call void @freeList(%struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11))
  call void @freeList(%struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12))
  call void @freeSearchPathList(%struct.sPtrArray** @OptlibPathList)
  call void @freeList(%struct.sPtrArray** @OptionFiles)
  store i32 0, i32* @Stage, align 4
  store i8 0, i8* @NonOptionEncountered, align 1
  store i8 1, i8* @FilesRequired, align 1
  store i8 0, i8* @SkipConfiguration, align 1
  store i8 0, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  store i8 1, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 1), align 1
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 7), align 1
  store %struct.sFmtElement* null, %struct.sFmtElement** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 8), align 8
  store i8* null, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9), align 8
  store i8* null, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  store i32 2, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  store i8* null, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  store i8* null, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 16), align 8
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 17), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  store i8* null, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 19), align 8
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 21), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 22), align 1
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 23), align 2
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 24), align 1
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 25), align 8
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 26), align 1
  store i32 96, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 27), align 4
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 28), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 29), align 4
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 30), align 8
  store %struct.sVString* null, %struct.sVString** @longNameTags, align 8
  store %struct.sVString* null, %struct.sVString** @longNameFields, align 8
  store %struct.sVString* null, %struct.sVString** @longNameSpecificFields, align 8
  store %struct.sVString* null, %struct.sVString** @longNameSpecificExtra, align 8
  call void @resetXtagsToDefaultValues()
  call void @resetFieldOptionsToDefaultValues()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeString(i8** %pString) #0 {
entry:
  %pString.addr = alloca i8**, align 8
  store i8** %pString, i8*** %pString.addr, align 8
  %0 = load i8**, i8*** %pString.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %pString.addr, align 8
  %3 = load i8*, i8** %2, align 8
  call void @eFree(i8* %3)
  %4 = load i8**, i8*** %pString.addr, align 8
  store i8* null, i8** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeSearchPathList(%struct.sPtrArray** %pathList) #0 {
entry:
  %pathList.addr = alloca %struct.sPtrArray**, align 8
  store %struct.sPtrArray** %pathList, %struct.sPtrArray*** %pathList.addr, align 8
  %0 = load %struct.sPtrArray**, %struct.sPtrArray*** %pathList.addr, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %0, align 8
  call void @stringListClear(%struct.sPtrArray* %1)
  %2 = load %struct.sPtrArray**, %struct.sPtrArray*** %pathList.addr, align 8
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %2, align 8
  call void @stringListDelete(%struct.sPtrArray* %3)
  %4 = load %struct.sPtrArray**, %struct.sPtrArray*** %pathList.addr, align 8
  store %struct.sPtrArray* null, %struct.sPtrArray** %4, align 8
  ret void
}

declare void @resetFieldOptionsToDefaultValues() #2

declare void @setTagWriter(i32) #2

declare i8* @argItem(%struct.sArgs*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseLongOption(%struct.sCookedArgs* %args, i8* %item) #0 {
entry:
  %args.addr = alloca %struct.sCookedArgs*, align 8
  %item.addr = alloca i8*, align 8
  %equal = alloca i8*, align 8
  store %struct.sCookedArgs* %args, %struct.sCookedArgs** %args.addr, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load i8*, i8** %item.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 61)
  store i8* %call, i8** %equal, align 8
  %1 = load i8*, i8** %equal, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %item.addr, align 8
  %call1 = call i8* @eStrdup(i8* %2)
  %3 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item2 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %3, i32 0, i32 6
  store i8* %call1, i8** %item2, align 8
  %4 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %4, i32 0, i32 5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0), i8** %parameter, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %item.addr, align 8
  %6 = load i8*, i8** %equal, align 8
  %7 = load i8*, i8** %item.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = call i8* @eStrndup(i8* %5, i64 %sub.ptr.sub)
  %8 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %item4 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %8, i32 0, i32 6
  store i8* %call3, i8** %item4, align 8
  %9 = load i8*, i8** %equal, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args.addr, align 8
  %parameter5 = getelementptr inbounds %struct.sCookedArgs, %struct.sCookedArgs* %10, i32 0, i32 5
  store i8* %add.ptr, i8** %parameter5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body6

do.body6:                                         ; preds = %do.end
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  ret void
}

declare i8* @eStrndup(i8*, i64) #2

declare i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @extractMapFromParameter(i32 %language, i8* %parameter, i8** %tail, i8* %pattern_p, i8* (i8*)* %skip) #0 {
entry:
  %retval = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %parameter.addr = alloca i8*, align 8
  %tail.addr = alloca i8**, align 8
  %pattern_p.addr = alloca i8*, align 8
  %skip.addr = alloca i8* (i8*)*, align 8
  %p = alloca i8*, align 8
  %first = alloca i8, align 1
  %tmp = alloca i8, align 1
  %result = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %parameter, i8** %parameter.addr, align 8
  store i8** %tail, i8*** %tail.addr, align 8
  store i8* %pattern_p, i8** %pattern_p.addr, align 8
  store i8* (i8*)* %skip, i8* (i8*)** %skip.addr, align 8
  store i8* null, i8** %p, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %first, align 1
  %2 = load i8, i8* %first, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %pattern_p.addr, align 8
  store i8 0, i8* %3, align 1
  %4 = load i8*, i8** %parameter.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %parameter.addr, align 8
  %5 = load i8* (i8*)*, i8* (i8*)** %skip.addr, align 8
  %6 = load i8*, i8** %parameter.addr, align 8
  %call = call i8* %5(i8* %6)
  store i8* %call, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %9 = load i8*, i8** %parameter.addr, align 8
  %call6 = call i8* @eStrdup(i8* %9)
  store i8* %call6, i8** %result, align 8
  %10 = load i8*, i8** %parameter.addr, align 8
  %11 = load i8*, i8** %parameter.addr, align 8
  %call7 = call i64 @strlen(i8* %11)
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %call7
  %12 = load i8**, i8*** %tail.addr, align 8
  store i8* %add.ptr, i8** %12, align 8
  %13 = load i8*, i8** %result, align 8
  store i8* %13, i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %tmp, align 1
  %16 = load i8*, i8** %p, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %parameter.addr, align 8
  %call8 = call i8* @eStrdup(i8* %17)
  store i8* %call8, i8** %result, align 8
  %18 = load i8, i8* %tmp, align 1
  %19 = load i8*, i8** %p, align 8
  store i8 %18, i8* %19, align 1
  %20 = load i8*, i8** %p, align 8
  %21 = load i8**, i8*** %tail.addr, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %result, align 8
  store i8* %22, i8** %retval, align 8
  br label %return

if.else9:                                         ; preds = %entry
  %23 = load i8, i8* %first, align 1
  %conv10 = sext i8 %23 to i32
  %cmp11 = icmp eq i32 %conv10, 40
  br i1 %cmp11, label %if.then13, label %if.end40

if.then13:                                        ; preds = %if.else9
  %24 = load i8*, i8** %pattern_p.addr, align 8
  store i8 1, i8* %24, align 1
  %25 = load i8*, i8** %parameter.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr14, i8** %parameter.addr, align 8
  %26 = load i8*, i8** %parameter.addr, align 8
  store i8* %26, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %27 = load i8*, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv15 = sext i8 %28 to i32
  %cmp16 = icmp ne i32 %conv15, 41
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv18 = sext i8 %30 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %31 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs ]
  br i1 %31, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv21 = sext i8 %33 to i32
  %cmp22 = icmp eq i32 %conv21, 92
  br i1 %cmp22, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %34 = load i8*, i8** %p, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %add.ptr24, align 1
  %conv25 = sext i8 %35 to i32
  %cmp26 = icmp eq i32 %conv25, 41
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %land.lhs.true
  %36 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then28, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr30, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv31 = sext i8 %39 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %for.end
  %40 = load i32, i32* %language.addr, align 4
  %call35 = call i8* @getLanguageName(i32 %40)
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.85, i64 0, i64 0), i8* %call35)
  br label %if.end39

if.else36:                                        ; preds = %for.end
  %41 = load i8*, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %tmp, align 1
  %43 = load i8*, i8** %p, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %parameter.addr, align 8
  %call37 = call i8* @eStrdup(i8* %44)
  store i8* %call37, i8** %result, align 8
  %45 = load i8, i8* %tmp, align 1
  %46 = load i8*, i8** %p, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i8*, i8** %p, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8**, i8*** %tail.addr, align 8
  store i8* %add.ptr38, i8** %48, align 8
  %49 = load i8*, i8** %result, align 8
  store i8* %49, i8** %retval, align 8
  br label %return

if.end39:                                         ; preds = %if.then34
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else9
  br label %if.end41

if.end41:                                         ; preds = %if.end40
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end41, %if.else36, %if.else, %if.then5
  %50 = load i8*, i8** %retval, align 8
  ret i8* %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @skipPastMap(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 46
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 40
  br i1 %cmp3, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load i8*, i8** %p.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv6, 44
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true5
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv9 = sext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %p.addr, align 8
  ret i8* %10
}

declare void @addLanguageExtensionMap(i32, i8*, i1 zeroext) #2

declare void @addLanguagePatternMap(i32, i8*, i1 zeroext) #2

declare zeroext i1 @removeLanguageExtensionMap(i32, i8*) #2

declare zeroext i1 @removeLanguagePatternMap(i32, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLongOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  %2 = load i8*, i8** %option.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i64 0, i64 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %do.end2
  %3 = load i8*, i8** %option.addr, align 8
  %4 = load i8*, i8** %parameter.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i64 0, i64 0), i8* %3, i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %option.addr, align 8
  %6 = load i8*, i8** %parameter.addr, align 8
  %call = call zeroext i1 @processBooleanOption(i8* %5, i8* %6)
  br i1 %call, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  br label %if.end70

if.else5:                                         ; preds = %if.end
  %7 = load i8*, i8** %option.addr, align 8
  %8 = load i8*, i8** %parameter.addr, align 8
  %call6 = call zeroext i1 @processLangSpecificFieldsOption(i8* %7, i8* %8)
  br i1 %call6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  br label %if.end69

if.else8:                                         ; preds = %if.else5
  %9 = load i8*, i8** %option.addr, align 8
  %10 = load i8*, i8** %parameter.addr, align 8
  %call9 = call zeroext i1 @processExtradefOption(i8* %9, i8* %10)
  br i1 %call9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  br label %if.end68

if.else11:                                        ; preds = %if.else8
  %11 = load i8*, i8** %option.addr, align 8
  %12 = load i8*, i8** %parameter.addr, align 8
  %call12 = call zeroext i1 @processFielddefOption(i8* %11, i8* %12)
  br i1 %call12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else11
  br label %if.end67

if.else14:                                        ; preds = %if.else11
  %13 = load i8*, i8** %option.addr, align 8
  %14 = load i8*, i8** %parameter.addr, align 8
  %call15 = call zeroext i1 @processLangSpecificExtraOption(i8* %13, i8* %14)
  br i1 %call15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else14
  br label %if.end66

if.else17:                                        ; preds = %if.else14
  %15 = load i8*, i8** %option.addr, align 8
  %16 = load i8*, i8** %parameter.addr, align 8
  %call18 = call zeroext i1 @processParametricOption(i8* %15, i8* %16)
  br i1 %call18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else17
  br label %if.end65

if.else20:                                        ; preds = %if.else17
  %17 = load i8*, i8** %option.addr, align 8
  %18 = load i8*, i8** %parameter.addr, align 8
  %call21 = call zeroext i1 @processKinddefOption(i8* %17, i8* %18)
  br i1 %call21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  br label %if.end64

if.else23:                                        ; preds = %if.else20
  %19 = load i8*, i8** %option.addr, align 8
  %20 = load i8*, i8** %parameter.addr, align 8
  %call24 = call zeroext i1 @processKindsOption(i8* %19, i8* %20)
  br i1 %call24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else23
  br label %if.end63

if.else26:                                        ; preds = %if.else23
  %21 = load i8*, i8** %option.addr, align 8
  %22 = load i8*, i8** %parameter.addr, align 8
  %call27 = call zeroext i1 @processAliasOption(i8* %21, i8* %22)
  br i1 %call27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else26
  br label %if.end62

if.else29:                                        ; preds = %if.else26
  %23 = load i8*, i8** %option.addr, align 8
  %24 = load i8*, i8** %parameter.addr, align 8
  %call30 = call zeroext i1 @processRegexOption(i8* %23, i8* %24)
  br i1 %call30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else29
  br label %if.end61

if.else32:                                        ; preds = %if.else29
  %25 = load i8*, i8** %option.addr, align 8
  %26 = load i8*, i8** %parameter.addr, align 8
  %call33 = call zeroext i1 @processMultilineRegexOption(i8* %25, i8* %26)
  br i1 %call33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else32
  br label %if.end60

if.else35:                                        ; preds = %if.else32
  %27 = load i8*, i8** %option.addr, align 8
  %28 = load i8*, i8** %parameter.addr, align 8
  %call36 = call zeroext i1 @processMapOption(i8* %27, i8* %28)
  br i1 %call36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else35
  br label %if.end59

if.else38:                                        ; preds = %if.else35
  %29 = load i8*, i8** %option.addr, align 8
  %30 = load i8*, i8** %parameter.addr, align 8
  %call39 = call zeroext i1 @processParamOption(i8* %29, i8* %30)
  br i1 %call39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else38
  br label %if.end58

if.else41:                                        ; preds = %if.else38
  %31 = load i8*, i8** %option.addr, align 8
  %32 = load i8*, i8** %parameter.addr, align 8
  %call42 = call zeroext i1 @processTabledefOption(i8* %31, i8* %32)
  br i1 %call42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else41
  br label %if.end57

if.else44:                                        ; preds = %if.else41
  %33 = load i8*, i8** %option.addr, align 8
  %34 = load i8*, i8** %parameter.addr, align 8
  %call45 = call zeroext i1 @processMultitableRegexOption(i8* %33, i8* %34)
  br i1 %call45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else44
  br label %if.end56

if.else47:                                        ; preds = %if.else44
  %35 = load i8*, i8** %option.addr, align 8
  %36 = load i8*, i8** %parameter.addr, align 8
  %call48 = call zeroext i1 @processMultitableExtendingOption(i8* %35, i8* %36)
  br i1 %call48, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else47
  br label %if.end55

if.else50:                                        ; preds = %if.else47
  %37 = load i8*, i8** %option.addr, align 8
  %38 = load i8*, i8** %parameter.addr, align 8
  %call51 = call zeroext i1 @processLanguageEncodingOption(i8* %37, i8* %38)
  br i1 %call51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else50
  br label %if.end54

if.else53:                                        ; preds = %if.else50
  %39 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i64 0, i64 0), i8* %39)
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then49
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then46
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then43
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then40
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then37
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then34
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then31
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then28
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then25
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then22
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then19
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then16
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then13
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then10
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then7
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processShortOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
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
  %3 = load i8*, i8** %option.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.500, i64 0, i64 0), i8* %3)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %option.addr, align 8
  %5 = load i8*, i8** %parameter.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.501, i64 0, i64 0), i8* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %option.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0), i32 %conv3)
  %cmp4 = icmp ne i8* %call, null
  br i1 %cmp4, label %land.lhs.true, label %if.else15

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %parameter.addr, align 8
  %cmp7 = icmp eq i8* %8, null
  br i1 %cmp7, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %9 = load i8*, i8** %parameter.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %lor.lhs.false9, %land.lhs.true
  %11 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.502, i64 0, i64 0), i8* %11)
  br label %if.end59

if.else15:                                        ; preds = %lor.lhs.false9, %if.end
  %12 = load i8*, i8** %option.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  switch i32 %conv16, label %sw.default [
    i32 63, label %sw.bb
    i32 97, label %sw.bb17
    i32 66, label %sw.bb18
    i32 68, label %sw.bb19
    i32 101, label %sw.bb21
    i32 102, label %sw.bb22
    i32 111, label %sw.bb22
    i32 70, label %sw.bb40
    i32 71, label %sw.bb41
    i32 104, label %sw.bb42
    i32 73, label %sw.bb44
    i32 76, label %sw.bb46
    i32 110, label %sw.bb52
    i32 78, label %sw.bb53
    i32 82, label %sw.bb54
    i32 117, label %sw.bb55
    i32 86, label %sw.bb56
    i32 119, label %sw.bb57
    i32 120, label %sw.bb58
  ]

sw.bb:                                            ; preds = %if.else15
  call void @processHelpOption(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.503, i64 0, i64 0), i8* null)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable

sw.bb17:                                          ; preds = %if.else15
  %14 = load i8*, i8** %option.addr, align 8
  call void @checkOptionOrder(i8* %14, i1 zeroext false)
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 0), align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.else15
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 1), align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.else15
  %15 = load i8*, i8** %parameter.addr, align 8
  %16 = load i8*, i8** %option.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv20 = sext i8 %17 to i32
  call void @processIgnoreOption(i8* %15, i32 %conv20)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else15
  %18 = load i8*, i8** %option.addr, align 8
  call void @checkOptionOrder(i8* %18, i1 zeroext false)
  call void @setEtagsMode()
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.else15, %if.else15
  %19 = load i8*, i8** %option.addr, align 8
  call void @checkOptionOrder(i8* %19, i1 zeroext false)
  %20 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  %cmp23 = icmp ne i8* %20, null
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %sw.bb22
  %21 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.504, i64 0, i64 0), i8* %21)
  call void @freeString(i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10))
  br label %if.end38

if.else26:                                        ; preds = %sw.bb22
  %22 = load i8*, i8** %parameter.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %23 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  br i1 %cmp29, label %land.lhs.true31, label %if.end37

land.lhs.true31:                                  ; preds = %if.else26
  %24 = load i8*, i8** %parameter.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true31
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.505, i64 0, i64 0))
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true31, %if.else26
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then25
  %26 = load i8*, i8** %parameter.addr, align 8
  %call39 = call i8* @stringCopy(i8* %26)
  store i8* %call39, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 10), align 8
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.else15
  store i8 0, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 1), align 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else15
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 24), align 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.else15
  %27 = load i8*, i8** %option.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv43 = sext i8 %28 to i32
  %29 = load i8*, i8** %parameter.addr, align 8
  call void @processHeaderListOption(i32 %conv43, i8* %29)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.else15
  %30 = load i8*, i8** %parameter.addr, align 8
  %31 = load i8*, i8** %option.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv45 = sext i8 %32 to i32
  call void @processIgnoreOption(i8* %30, i32 %conv45)
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.else15
  %33 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9), align 8
  %cmp47 = icmp ne i8* %33, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %sw.bb46
  %34 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.504, i64 0, i64 0), i8* %34)
  call void @freeString(i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9))
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %sw.bb46
  %35 = load i8*, i8** %parameter.addr, align 8
  %call51 = call i8* @stringCopy(i8* %35)
  store i8* %call51, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 9), align 8
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.else15
  store i32 1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.else15
  store i32 2, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.else15
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 4), align 8
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.else15
  %36 = load i8*, i8** %option.addr, align 8
  call void @checkOptionOrder(i8* %36, i1 zeroext false)
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.else15
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.else15
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.else15
  %37 = load i8*, i8** %option.addr, align 8
  call void @checkOptionOrder(i8* %37, i1 zeroext false)
  call void @setXrefMode()
  br label %sw.epilog

sw.default:                                       ; preds = %if.else15
  %38 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.506, i64 0, i64 0), i8* %38)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %if.end50, %sw.bb44, %sw.bb42, %sw.bb41, %sw.bb40, %if.end38, %sw.bb21, %sw.bb19, %sw.bb18, %sw.bb17
  br label %if.end59

if.end59:                                         ; preds = %sw.epilog, %if.then14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processBooleanOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %found = alloca i8, align 1
  %i = alloca i32, align 4
  %entry1 = alloca %struct.sBooleanOption*, align 8
  %slot = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store i32 16, i32* %count, align 4
  store i8 0, i8* %found, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8, i8* %found, align 1
  %tobool = trunc i8 %1 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.sBooleanOption], [16 x %struct.sBooleanOption]* @BooleanOptions, i64 0, i64 %idxprom
  store %struct.sBooleanOption* %arrayidx, %struct.sBooleanOption** %entry1, align 8
  %4 = load i8*, i8** %option.addr, align 8
  %5 = load %struct.sBooleanOption*, %struct.sBooleanOption** %entry1, align 8
  %name = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %4, i8* %6)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end16

if.then:                                          ; preds = %for.body
  store i8 1, i8* %found, align 1
  %7 = load %struct.sBooleanOption*, %struct.sBooleanOption** %entry1, align 8
  %acceptableStages = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %7, i32 0, i32 3
  %8 = load i64, i64* %acceptableStages, align 8
  %9 = load i32, i32* @Stage, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %8, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %10 = load i8*, i8** %option.addr, align 8
  %11 = load i32, i32* @Stage, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [10 x i8*], [10 x i8*]* @StageDescription, i64 0, i64 %idxprom5
  %12 = load i8*, i8** %arrayidx6, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.99, i64 0, i64 0), i8* %10, i8* %12)
  br label %for.end

if.end:                                           ; preds = %if.then
  %13 = load %struct.sBooleanOption*, %struct.sBooleanOption** %entry1, align 8
  %initOnly = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %13, i32 0, i32 2
  %14 = load i8, i8* %initOnly, align 8
  %tobool7 = trunc i8 %14 to i1
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %15 = load i8*, i8** %option.addr, align 8
  call void @checkOptionOrder(i8* %15, i1 zeroext true)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %16 = load %struct.sBooleanOption*, %struct.sBooleanOption** %entry1, align 8
  %redirect = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %16, i32 0, i32 4
  %17 = load i8* (%struct.sBooleanOption*)*, i8* (%struct.sBooleanOption*)** %redirect, align 8
  %tobool10 = icmp ne i8* (%struct.sBooleanOption*)* %17, null
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %18 = load %struct.sBooleanOption*, %struct.sBooleanOption** %entry1, align 8
  %redirect12 = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %18, i32 0, i32 4
  %19 = load i8* (%struct.sBooleanOption*)*, i8* (%struct.sBooleanOption*)** %redirect12, align 8
  %20 = load %struct.sBooleanOption*, %struct.sBooleanOption** %entry1, align 8
  %call13 = call i8* %19(%struct.sBooleanOption* %20)
  store i8* %call13, i8** %slot, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end9
  %21 = load %struct.sBooleanOption*, %struct.sBooleanOption** %entry1, align 8
  %pValue = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %21, i32 0, i32 1
  %22 = load i8*, i8** %pValue, align 8
  store i8* %22, i8** %slot, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %23 = load i8*, i8** %option.addr, align 8
  %24 = load i8*, i8** %parameter.addr, align 8
  %call15 = call zeroext i1 @getBooleanOption(i8* %23, i8* %24)
  %25 = load i8*, i8** %slot, align 8
  %frombool = zext i1 %call15 to i8
  store i8 %frombool, i8* %25, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then4, %land.end
  %27 = load i8, i8* %found, align 1
  %tobool17 = trunc i8 %27 to i1
  ret i1 %tobool17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processLangSpecificFieldsOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %lang = alloca i8*, align 8
  %len = alloca i64, align 8
  %language = alloca i32, align 4
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %mode = alloca i8, align 1
  %f = alloca i8*, align 8
  %inLongName = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store i32 -2, i32* %language, align 4
  %0 = load i8*, i8** %parameter.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8 1, i8* %mode, align 1
  store i8 0, i8* %inLongName, align 1
  %1 = load i8*, i8** %option.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), i64 7)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %option.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 7
  store i8* %add.ptr, i8** %lang, align 8
  %3 = load i8*, i8** %lang, align 8
  %call1 = call i64 @strlen(i8* %3)
  store i64 %call1, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i64 0, i64 0), i8* %5)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %6 = load i64, i64* %len, align 8
  %cmp4 = icmp eq i64 %6, 3
  br i1 %cmp4, label %land.lhs.true, label %if.else8

land.lhs.true:                                    ; preds = %if.else
  %7 = load i8*, i8** %lang, align 8
  %8 = load i64, i64* %len, align 8
  %call5 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0), i64 %8)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %language, align 4
  br label %if.end10

if.else8:                                         ; preds = %land.lhs.true, %if.else
  %9 = load i8*, i8** %lang, align 8
  %10 = load i64, i64* %len, align 8
  %call9 = call i32 @getNamedLanguage(i8* %9, i64 %10)
  store i32 %call9, i32* %language, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  %11 = load i32, i32* %language, align 4
  %cmp12 = icmp eq i32 %11, -2
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %12 = load i8*, i8** %lang, align 8
  %13 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.119, i64 0, i64 0), i8* %12, i8* %13)
  store i1 true, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.end11
  %14 = load i32, i32* %language, align 4
  call void @initializeParser(i32 %14)
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp15 = icmp eq i32 %conv, 42
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end14
  %17 = load i32, i32* %language, align 4
  call void @resetFieldsOption(i32 %17, i1 zeroext true)
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end42

if.else18:                                        ; preds = %if.end14
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp eq i32 %conv19, 123
  br i1 %cmp20, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv22 = sext i8 %22 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then25, label %if.else31

if.then25:                                        ; preds = %lor.lhs.false, %if.else18
  %23 = load i32, i32* %language, align 4
  call void @resetFieldsOption(i32 %23, i1 zeroext false)
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv26 = sext i8 %25 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  store i1 true, i1* %retval, align 1
  br label %return

if.end30:                                         ; preds = %if.then25
  br label %if.end41

if.else31:                                        ; preds = %lor.lhs.false
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv32 = sext i8 %27 to i32
  %cmp33 = icmp ne i32 %conv32, 43
  br i1 %cmp33, label %land.lhs.true35, label %if.end40

land.lhs.true35:                                  ; preds = %if.else31
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp ne i32 %conv36, 45
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true35
  %30 = load i8*, i8** %p, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.120, i64 0, i64 0), i8* %30)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true35, %if.else31
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end30
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then17
  %31 = load %struct.sVString*, %struct.sVString** @longNameSpecificFields, align 8
  %call43 = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %31)
  store %struct.sVString* %call43, %struct.sVString** @longNameSpecificFields, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end42
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv45 = sext i8 %33 to i32
  store i32 %conv45, i32* %c, align 4
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %c, align 4
  switch i32 %34, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb51
    i32 123, label %sw.bb56
    i32 125, label %sw.bb60
  ]

sw.bb:                                            ; preds = %while.body
  %35 = load i8, i8* %inLongName, align 1
  %tobool = trunc i8 %35 to i1
  br i1 %tobool, label %if.then48, label %if.else49

if.then48:                                        ; preds = %sw.bb
  %36 = load %struct.sVString*, %struct.sVString** @longNameSpecificFields, align 8
  %37 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %36, i32 %37)
  br label %if.end50

if.else49:                                        ; preds = %sw.bb
  store i8 1, i8* %mode, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  br label %sw.epilog

sw.bb51:                                          ; preds = %while.body
  %38 = load i8, i8* %inLongName, align 1
  %tobool52 = trunc i8 %38 to i1
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %sw.bb51
  %39 = load %struct.sVString*, %struct.sVString** @longNameSpecificFields, align 8
  %40 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %39, i32 %40)
  br label %if.end55

if.else54:                                        ; preds = %sw.bb51
  store i8 0, i8* %mode, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  br label %sw.epilog

sw.bb56:                                          ; preds = %while.body
  %41 = load i8, i8* %inLongName, align 1
  %tobool57 = trunc i8 %41 to i1
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %sw.bb56
  %42 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.121, i64 0, i64 0), i32 %42)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %sw.bb56
  store i8 1, i8* %inLongName, align 1
  br label %sw.epilog

sw.bb60:                                          ; preds = %while.body
  %43 = load i8, i8* %inLongName, align 1
  %tobool61 = trunc i8 %43 to i1
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %sw.bb60
  %44 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.121, i64 0, i64 0), i32 %44)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %sw.bb60
  %45 = load %struct.sVString*, %struct.sVString** @longNameSpecificFields, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 2
  %46 = load i8*, i8** %buffer, align 8
  store i8* %46, i8** %f, align 8
  %47 = load i32, i32* %language, align 4
  %48 = load i8*, i8** %f, align 8
  %49 = load i8, i8* %mode, align 1
  %tobool64 = trunc i8 %49 to i1
  call void @enableLanguageField(i32 %47, i8* %48, i1 zeroext %tobool64)
  store i8 0, i8* %inLongName, align 1
  br label %do.body

do.body:                                          ; preds = %if.end63
  %50 = load %struct.sVString*, %struct.sVString** @longNameSpecificFields, align 8
  store %struct.sVString* %50, %struct.sVString** %vStringClear_s, align 8
  %51 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %52 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer65 = getelementptr inbounds %struct.sVString, %struct.sVString* %52, i32 0, i32 2
  %53 = load i8*, i8** %buffer65, align 8
  %arrayidx = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %54 = load i8, i8* %inLongName, align 1
  %tobool66 = trunc i8 %54 to i1
  br i1 %tobool66, label %if.then67, label %if.else68

if.then67:                                        ; preds = %sw.default
  %55 = load %struct.sVString*, %struct.sVString** @longNameSpecificFields, align 8
  %56 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %55, i32 %56)
  br label %if.end69

if.else68:                                        ; preds = %sw.default
  %57 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.122, i64 0, i64 0), i32 %57)
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end69, %do.end, %if.end59, %if.end55, %if.end50
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then29, %if.then13, %if.then
  %58 = load i1, i1* %retval, align 1
  ret i1 %58
}

declare zeroext i1 @processExtradefOption(i8*, i8*) #2

declare zeroext i1 @processFielddefOption(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processLangSpecificExtraOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %lang = alloca i8*, align 8
  %len = alloca i64, align 8
  %language = alloca i32, align 4
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %mode = alloca i8, align 1
  %x = alloca i8*, align 8
  %inLongName = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store i32 -2, i32* %language, align 4
  %0 = load i8*, i8** %parameter.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8 1, i8* %mode, align 1
  store i8 0, i8* %inLongName, align 1
  %1 = load i8*, i8** %option.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0), i64 7)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %option.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 7
  store i8* %add.ptr, i8** %lang, align 8
  %3 = load i8*, i8** %lang, align 8
  %call1 = call i64 @strlen(i8* %3)
  store i64 %call1, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i64 0, i64 0), i8* %5)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %6 = load i64, i64* %len, align 8
  %cmp4 = icmp eq i64 %6, 3
  br i1 %cmp4, label %land.lhs.true, label %if.else8

land.lhs.true:                                    ; preds = %if.else
  %7 = load i8*, i8** %lang, align 8
  %8 = load i64, i64* %len, align 8
  %call5 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0), i64 %8)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %language, align 4
  br label %if.end10

if.else8:                                         ; preds = %land.lhs.true, %if.else
  %9 = load i8*, i8** %lang, align 8
  %10 = load i64, i64* %len, align 8
  %call9 = call i32 @getNamedLanguage(i8* %9, i64 %10)
  store i32 %call9, i32* %language, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  %11 = load i32, i32* %language, align 4
  %cmp12 = icmp eq i32 %11, -2
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %12 = load i8*, i8** %lang, align 8
  %13 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.119, i64 0, i64 0), i8* %12, i8* %13)
  store i1 true, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.end11
  %14 = load i32, i32* %language, align 4
  call void @initializeParser(i32 %14)
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp15 = icmp eq i32 %conv, 42
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end14
  %17 = load i32, i32* %language, align 4
  call void @resetXtags(i32 %17, i1 zeroext true)
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end42

if.else18:                                        ; preds = %if.end14
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp eq i32 %conv19, 123
  br i1 %cmp20, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv22 = sext i8 %22 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then25, label %if.else31

if.then25:                                        ; preds = %lor.lhs.false, %if.else18
  %23 = load i32, i32* %language, align 4
  call void @resetXtags(i32 %23, i1 zeroext false)
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv26 = sext i8 %25 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  store i1 true, i1* %retval, align 1
  br label %return

if.end30:                                         ; preds = %if.then25
  br label %if.end41

if.else31:                                        ; preds = %lor.lhs.false
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv32 = sext i8 %27 to i32
  %cmp33 = icmp ne i32 %conv32, 43
  br i1 %cmp33, label %land.lhs.true35, label %if.end40

land.lhs.true35:                                  ; preds = %if.else31
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp ne i32 %conv36, 45
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true35
  %30 = load i8*, i8** %p, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.125, i64 0, i64 0), i8* %30)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true35, %if.else31
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end30
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then17
  %31 = load %struct.sVString*, %struct.sVString** @longNameSpecificExtra, align 8
  %call43 = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %31)
  store %struct.sVString* %call43, %struct.sVString** @longNameSpecificExtra, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end42
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv45 = sext i8 %33 to i32
  store i32 %conv45, i32* %c, align 4
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %c, align 4
  switch i32 %34, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb51
    i32 123, label %sw.bb56
    i32 125, label %sw.bb60
  ]

sw.bb:                                            ; preds = %while.body
  %35 = load i8, i8* %inLongName, align 1
  %tobool = trunc i8 %35 to i1
  br i1 %tobool, label %if.then48, label %if.else49

if.then48:                                        ; preds = %sw.bb
  %36 = load %struct.sVString*, %struct.sVString** @longNameSpecificExtra, align 8
  %37 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %36, i32 %37)
  br label %if.end50

if.else49:                                        ; preds = %sw.bb
  store i8 1, i8* %mode, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  br label %sw.epilog

sw.bb51:                                          ; preds = %while.body
  %38 = load i8, i8* %inLongName, align 1
  %tobool52 = trunc i8 %38 to i1
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %sw.bb51
  %39 = load %struct.sVString*, %struct.sVString** @longNameSpecificExtra, align 8
  %40 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %39, i32 %40)
  br label %if.end55

if.else54:                                        ; preds = %sw.bb51
  store i8 0, i8* %mode, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  br label %sw.epilog

sw.bb56:                                          ; preds = %while.body
  %41 = load i8, i8* %inLongName, align 1
  %tobool57 = trunc i8 %41 to i1
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %sw.bb56
  %42 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.126, i64 0, i64 0), i32 %42)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %sw.bb56
  store i8 1, i8* %inLongName, align 1
  br label %sw.epilog

sw.bb60:                                          ; preds = %while.body
  %43 = load i8, i8* %inLongName, align 1
  %tobool61 = trunc i8 %43 to i1
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %sw.bb60
  %44 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.126, i64 0, i64 0), i32 %44)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %sw.bb60
  %45 = load %struct.sVString*, %struct.sVString** @longNameSpecificExtra, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %45, i32 0, i32 2
  %46 = load i8*, i8** %buffer, align 8
  store i8* %46, i8** %x, align 8
  %47 = load i32, i32* %language, align 4
  %48 = load i8*, i8** %x, align 8
  %49 = load i8, i8* %mode, align 1
  %tobool64 = trunc i8 %49 to i1
  call void @enableLanguageXtag(i32 %47, i8* %48, i1 zeroext %tobool64)
  store i8 0, i8* %inLongName, align 1
  br label %do.body

do.body:                                          ; preds = %if.end63
  %50 = load %struct.sVString*, %struct.sVString** @longNameSpecificExtra, align 8
  store %struct.sVString* %50, %struct.sVString** %vStringClear_s, align 8
  %51 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %51, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %52 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer65 = getelementptr inbounds %struct.sVString, %struct.sVString* %52, i32 0, i32 2
  %53 = load i8*, i8** %buffer65, align 8
  %arrayidx = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %54 = load i8, i8* %inLongName, align 1
  %tobool66 = trunc i8 %54 to i1
  br i1 %tobool66, label %if.then67, label %if.else68

if.then67:                                        ; preds = %sw.default
  %55 = load %struct.sVString*, %struct.sVString** @longNameSpecificExtra, align 8
  %56 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %55, i32 %56)
  br label %if.end69

if.else68:                                        ; preds = %sw.default
  %57 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.127, i64 0, i64 0), i32 %57)
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end69, %do.end, %if.end59, %if.end55, %if.end50
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then29, %if.then13, %if.then
  %58 = load i1, i1* %retval, align 1
  ret i1 %58
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processParametricOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %found = alloca i8, align 1
  %i = alloca i32, align 4
  %entry1 = alloca %struct.anon*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store i32 54, i32* %count, align 4
  store i8 0, i8* %found, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 54
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i8, i8* %found, align 1
  %tobool = trunc i8 %1 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [54 x %struct.anon], [54 x %struct.anon]* @ParametricOptions, i64 0, i64 %idxprom
  store %struct.anon* %arrayidx, %struct.anon** %entry1, align 8
  %4 = load i8*, i8** %option.addr, align 8
  %5 = load %struct.anon*, %struct.anon** %entry1, align 8
  %name = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %4, i8* %6)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body
  store i8 1, i8* %found, align 1
  %7 = load %struct.anon*, %struct.anon** %entry1, align 8
  %acceptableStages = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 3
  %8 = load i64, i64* %acceptableStages, align 8
  %9 = load i32, i32* @Stage, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %8, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %10 = load i8*, i8** %option.addr, align 8
  %11 = load i32, i32* @Stage, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [10 x i8*], [10 x i8*]* @StageDescription, i64 0, i64 %idxprom5
  %12 = load i8*, i8** %arrayidx6, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.99, i64 0, i64 0), i8* %10, i8* %12)
  br label %for.end

if.end:                                           ; preds = %if.then
  %13 = load %struct.anon*, %struct.anon** %entry1, align 8
  %initOnly = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %14 = load i8, i8* %initOnly, align 8
  %tobool7 = trunc i8 %14 to i1
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %15 = load i8*, i8** %option.addr, align 8
  call void @checkOptionOrder(i8* %15, i1 zeroext true)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %16 = load %struct.anon*, %struct.anon** %entry1, align 8
  %handler = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  %17 = load void (i8*, i8*)*, void (i8*, i8*)** %handler, align 8
  %18 = load i8*, i8** %option.addr, align 8
  %19 = load i8*, i8** %parameter.addr, align 8
  call void %17(i8* %18, i8* %19)
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then4, %land.end
  %21 = load i8, i8* %found, align 1
  %tobool11 = trunc i8 %21 to i1
  ret i1 %tobool11
}

declare zeroext i1 @processKinddefOption(i8*, i8*) #2

declare zeroext i1 @processKindsOption(i8*, i8*) #2

declare zeroext i1 @processAliasOption(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processRegexOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.496, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %language, align 4
  %3 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @processLanguageRegexOption(i32 %2, i32 0, i8* %3)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processMultilineRegexOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.497, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %language, align 4
  %3 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @processLanguageRegexOption(i32 %2, i32 1, i8* %3)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

declare zeroext i1 @processTabledefOption(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processMultitableRegexOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.498, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %language, align 4
  %3 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @processLanguageRegexOption(i32 %2, i32 2, i8* %3)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processMultitableExtendingOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.499, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %language, align 4
  %3 = load i8*, i8** %parameter.addr, align 8
  call void @processLanguageMultitableExtendingOption(i32 %2, i8* %3)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

declare zeroext i1 @processLanguageEncodingOption(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @checkOptionOrder(i8* %option, i1 zeroext %longOption) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %longOption.addr = alloca i8, align 1
  store i8* %option, i8** %option.addr, align 8
  %frombool = zext i1 %longOption to i8
  store i8 %frombool, i8* %longOption.addr, align 1
  %0 = load i8, i8* @NonOptionEncountered, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %longOption.addr, align 1
  %tobool1 = trunc i8 %1 to i1
  %2 = zext i1 %tobool1 to i64
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0)
  %3 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.114, i64 0, i64 0), i8* %cond, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @getBooleanOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %1 = load i8*, i8** %option.addr, align 8
  %call = call zeroext i1 @paramParserBool(i8* %0, i1 zeroext true, i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0))
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @redirectToXtag(%struct.sBooleanOption* %option) #0 {
entry:
  %option.addr = alloca %struct.sBooleanOption*, align 8
  %t = alloca i32, align 4
  %default_value = alloca i8, align 1
  store %struct.sBooleanOption* %option, %struct.sBooleanOption** %option.addr, align 8
  %0 = load %struct.sBooleanOption*, %struct.sBooleanOption** %option.addr, align 8
  %pValue = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %0, i32 0, i32 1
  %1 = load i8*, i8** %pValue, align 8
  %2 = ptrtoint i8* %1 to i32
  store i32 %2, i32* %t, align 4
  %3 = load i32, i32* %t, align 4
  %call = call zeroext i1 @isXtagEnabled(i32 %3)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %default_value, align 1
  %4 = load i32, i32* %t, align 4
  %5 = load i8, i8* %default_value, align 1
  %tobool = trunc i8 %5 to i1
  %call1 = call zeroext i1 @enableXtag(i32 %4, i1 zeroext %tobool)
  %6 = load i32, i32* %t, align 4
  %call2 = call %struct.sXtagDefinition* @getXtagDefinition(i32 %6)
  %enabled = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %call2, i32 0, i32 0
  ret i8* %enabled
}

declare %struct.sXtagDefinition* @getXtagDefinition(i32) #2

declare void @initializeParser(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetFieldsOption(i32 %lang, i1 zeroext %mode) #0 {
entry:
  %lang.addr = alloca i32, align 4
  %mode.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i32 %lang, i32* %lang.addr, align 4
  %frombool = zext i1 %mode to i8
  store i8 %frombool, i8* %mode.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @countFields()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %lang.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, i32* %lang.addr, align 4
  %3 = load i32, i32* %i, align 4
  %call2 = call i32 @getFieldOwner(i32 %3)
  %cmp3 = icmp eq i32 %2, %call2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i8, i8* %mode.addr, align 1
  %tobool = trunc i8 %5 to i1
  %call4 = call zeroext i1 @enableField(i32 %4, i1 zeroext %tobool, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString*) #2

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

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @enableLanguageField(i32 %language, i8* %field, i1 zeroext %mode) #0 {
entry:
  %language.addr = alloca i32, align 4
  %field.addr = alloca i8*, align 8
  %mode.addr = alloca i8, align 1
  %t = alloca i32, align 4
  %ftype_next = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %field, i8** %field.addr, align 8
  %frombool = zext i1 %mode to i8
  store i8 %frombool, i8* %mode.addr, align 1
  %0 = load i8*, i8** %field.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %call = call i32 @getFieldTypeForNameAndLanguage(i8* %0, i32 %1)
  store i32 %call, i32* %t, align 4
  %2 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %field.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.123, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %t, align 4
  %5 = load i8, i8* %mode.addr, align 1
  %tobool = trunc i8 %5 to i1
  %6 = load i32, i32* %language.addr, align 4
  %cmp1 = icmp ne i32 %6, -1
  %call2 = call zeroext i1 @enableField(i32 %4, i1 zeroext %tobool, i1 zeroext %cmp1)
  %7 = load i32, i32* %language.addr, align 4
  %cmp3 = icmp eq i32 %7, -1
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %t, align 4
  store i32 %8, i32* %ftype_next, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then4
  %9 = load i32, i32* %ftype_next, align 4
  %call5 = call i32 @nextSiblingField(i32 %9)
  store i32 %call5, i32* %ftype_next, align 4
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %ftype_next, align 4
  %11 = load i8, i8* %mode.addr, align 1
  %tobool7 = trunc i8 %11 to i1
  %12 = load i32, i32* %language.addr, align 4
  %cmp8 = icmp ne i32 %12, -1
  %call9 = call zeroext i1 @enableField(i32 %10, i1 zeroext %tobool7, i1 zeroext %cmp8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end10

if.end10:                                         ; preds = %while.end, %if.end
  ret void
}

declare i32 @countFields() #2

declare i32 @getFieldOwner(i32) #2

declare zeroext i1 @enableField(i32, i1 zeroext, i1 zeroext) #2

declare void @vStringResize(%struct.sVString*, i64) #2

declare i32 @getFieldTypeForNameAndLanguage(i8*, i32) #2

declare i32 @nextSiblingField(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetXtags(i32 %lang, i1 zeroext %mode) #0 {
entry:
  %lang.addr = alloca i32, align 4
  %mode.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i32 %lang, i32* %lang.addr, align 4
  %frombool = zext i1 %mode to i8
  store i8 %frombool, i8* %mode.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @countXtags()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %lang.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, i32* %lang.addr, align 4
  %3 = load i32, i32* %i, align 4
  %call2 = call i32 @getXtagOwner(i32 %3)
  %cmp3 = icmp eq i32 %2, %call2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i8, i8* %mode.addr, align 1
  %tobool = trunc i8 %5 to i1
  %call4 = call zeroext i1 @enableXtag(i32 %4, i1 zeroext %tobool)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @enableLanguageXtag(i32 %language, i8* %xtag, i1 zeroext %mode) #0 {
entry:
  %language.addr = alloca i32, align 4
  %xtag.addr = alloca i8*, align 8
  %mode.addr = alloca i8, align 1
  %x = alloca i32, align 4
  %xtag_next = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %xtag, i8** %xtag.addr, align 8
  %frombool = zext i1 %mode to i8
  store i8 %frombool, i8* %mode.addr, align 1
  %0 = load i8*, i8** %xtag.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %call = call i32 @getXtagTypeForNameAndLanguage(i8* %0, i32 %1)
  store i32 %call, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %xtag.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.128, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %x, align 4
  %5 = load i8, i8* %mode.addr, align 1
  %tobool = trunc i8 %5 to i1
  %call1 = call zeroext i1 @enableXtag(i32 %4, i1 zeroext %tobool)
  %6 = load i32, i32* %language.addr, align 4
  %cmp2 = icmp eq i32 %6, -1
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %x, align 4
  store i32 %7, i32* %xtag_next, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then3
  %8 = load i32, i32* %xtag_next, align 4
  %call4 = call i32 @nextSiblingXtag(i32 %8)
  store i32 %call4, i32* %xtag_next, align 4
  %cmp5 = icmp ne i32 %call4, -1
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %xtag_next, align 4
  %10 = load i8, i8* %mode.addr, align 1
  %tobool6 = trunc i8 %10 to i1
  %call7 = call zeroext i1 @enableXtag(i32 %9, i1 zeroext %tobool6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end8

if.end8:                                          ; preds = %while.end, %if.end
  ret void
}

declare i32 @countXtags() #2

declare i32 @getXtagOwner(i32) #2

declare i32 @getXtagTypeForNameAndLanguage(i8*, i32) #2

declare i32 @nextSiblingXtag(i32) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processEtagsInclude(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %file = alloca %struct.sVString*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.182, i64 0, i64 0), i8* %1)
  br label %if.end3

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call = call %struct.sVString* @vStringNewInit(i8* %2)
  store %struct.sVString* %call, %struct.sVString** %file, align 8
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  %cmp = icmp eq %struct.sPtrArray* %3, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.else
  %call2 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call2, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.else
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 12), align 8
  %5 = load %struct.sVString*, %struct.sVString** %file, align 8
  call void @stringListAdd(%struct.sPtrArray* %4, %struct.sVString* %5)
  store i8 0, i8* @FilesRequired, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processExcmdOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 109, label %sw.bb
    i32 110, label %sw.bb1
    i32 112, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 3), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %2 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.183, i64 0, i64 0), i8* %2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processExtraTagsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %t = alloca i32, align 4
  %p = alloca i8*, align 8
  %mode = alloca i8, align 1
  %c = alloca i32, align 4
  %inLongName = alloca i8, align 1
  %x = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8 1, i8* %mode, align 1
  store i8 0, i8* %inLongName, align 1
  %1 = load i8*, i8** %option.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.184, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 42
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @resetXtags(i32 -2, i1 zeroext true)
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv4, 43
  br i1 %cmp5, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.else
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv7, 45
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @resetXtags(i32 -2, i1 zeroext false)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then3
  %9 = load %struct.sVString*, %struct.sVString** @longNameTags, align 8
  %call13 = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %9)
  store %struct.sVString* %call13, %struct.sVString** @longNameTags, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end12
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv15 = sext i8 %11 to i32
  store i32 %conv15, i32* %c, align 4
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %c, align 4
  switch i32 %12, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb21
    i32 123, label %sw.bb26
    i32 125, label %sw.bb30
  ]

sw.bb:                                            ; preds = %while.body
  %13 = load i8, i8* %inLongName, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then18, label %if.else19

if.then18:                                        ; preds = %sw.bb
  %14 = load %struct.sVString*, %struct.sVString** @longNameTags, align 8
  %15 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %14, i32 %15)
  br label %if.end20

if.else19:                                        ; preds = %sw.bb
  store i8 1, i8* %mode, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.body
  %16 = load i8, i8* %inLongName, align 1
  %tobool22 = trunc i8 %16 to i1
  br i1 %tobool22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %sw.bb21
  %17 = load %struct.sVString*, %struct.sVString** @longNameTags, align 8
  %18 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %17, i32 %18)
  br label %if.end25

if.else24:                                        ; preds = %sw.bb21
  store i8 0, i8* %mode, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  %19 = load i8, i8* %inLongName, align 1
  %tobool27 = trunc i8 %19 to i1
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %sw.bb26
  %20 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.126, i64 0, i64 0), i32 %20)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %sw.bb26
  store i8 1, i8* %inLongName, align 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.body
  %21 = load i8, i8* %inLongName, align 1
  %tobool31 = trunc i8 %21 to i1
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %sw.bb30
  %22 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.126, i64 0, i64 0), i32 %22)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %sw.bb30
  %23 = load %struct.sVString*, %struct.sVString** @longNameTags, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer, align 8
  store i8* %24, i8** %x, align 8
  %25 = load i8*, i8** %x, align 8
  %call34 = call i32 @getXtagTypeForNameAndLanguage(i8* %25, i32 -2)
  store i32 %call34, i32* %t, align 4
  %26 = load i32, i32* %t, align 4
  %cmp35 = icmp eq i32 %26, -1
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.end33
  %27 = load i8*, i8** %x, align 8
  %28 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.185, i64 0, i64 0), i8* %27, i8* %28)
  br label %if.end41

if.else38:                                        ; preds = %if.end33
  %29 = load i32, i32* %t, align 4
  %30 = load i8, i8* %mode, align 1
  %tobool39 = trunc i8 %30 to i1
  %call40 = call zeroext i1 @enableXtag(i32 %29, i1 zeroext %tobool39)
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then37
  store i8 0, i8* %inLongName, align 1
  br label %do.body

do.body:                                          ; preds = %if.end41
  %31 = load %struct.sVString*, %struct.sVString** @longNameTags, align 8
  store %struct.sVString* %31, %struct.sVString** %vStringClear_s, align 8
  %32 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %33 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer42 = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 2
  %34 = load i8*, i8** %buffer42, align 8
  %arrayidx = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %35 = load i8, i8* %inLongName, align 1
  %tobool43 = trunc i8 %35 to i1
  br i1 %tobool43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %sw.default
  %36 = load %struct.sVString*, %struct.sVString** @longNameTags, align 8
  %37 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %36, i32 %37)
  br label %if.end55

if.else45:                                        ; preds = %sw.default
  %38 = load i32, i32* %c, align 4
  %conv46 = trunc i32 %38 to i8
  %call47 = call i32 @getXtagTypeForLetter(i8 signext %conv46)
  store i32 %call47, i32* %t, align 4
  %39 = load i32, i32* %t, align 4
  %cmp48 = icmp eq i32 %39, -1
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else45
  %40 = load i32, i32* %c, align 4
  %41 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.186, i64 0, i64 0), i32 %40, i8* %41)
  br label %if.end54

if.else51:                                        ; preds = %if.else45
  %42 = load i32, i32* %t, align 4
  %43 = load i8, i8* %mode, align 1
  %tobool52 = trunc i8 %43 to i1
  %call53 = call zeroext i1 @enableXtag(i32 %42, i1 zeroext %tobool52)
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.then50
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then44
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end55, %do.end, %if.end29, %if.end25, %if.end20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processFieldsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %mode = alloca i8, align 1
  %c = alloca i32, align 4
  %t = alloca i32, align 4
  %inLongName = alloca i8, align 1
  %f = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8 1, i8* %mode, align 1
  store i8 0, i8* %inLongName, align 1
  %1 = load %struct.sVString*, %struct.sVString** @longNameFields, align 8
  %call = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %1)
  store %struct.sVString* %call, %struct.sVString** @longNameFields, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @resetFieldsOption(i32 -2, i1 zeroext true)
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv2, 43
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 45
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  call void @resetFieldsOption(i32 -2, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end9
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv11 = sext i8 %10 to i32
  store i32 %conv11, i32* %c, align 4
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %c, align 4
  switch i32 %11, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb17
    i32 123, label %sw.bb22
    i32 125, label %sw.bb26
  ]

sw.bb:                                            ; preds = %while.body
  %12 = load i8, i8* %inLongName, align 1
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then14, label %if.else15

if.then14:                                        ; preds = %sw.bb
  %13 = load %struct.sVString*, %struct.sVString** @longNameFields, align 8
  %14 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %13, i32 %14)
  br label %if.end16

if.else15:                                        ; preds = %sw.bb
  store i8 1, i8* %mode, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.body
  %15 = load i8, i8* %inLongName, align 1
  %tobool18 = trunc i8 %15 to i1
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %sw.bb17
  %16 = load %struct.sVString*, %struct.sVString** @longNameFields, align 8
  %17 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %16, i32 %17)
  br label %if.end21

if.else20:                                        ; preds = %sw.bb17
  store i8 0, i8* %mode, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  %18 = load i8, i8* %inLongName, align 1
  %tobool23 = trunc i8 %18 to i1
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb22
  %19 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.121, i64 0, i64 0), i32 %19)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.bb22
  store i8 1, i8* %inLongName, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  %20 = load i8, i8* %inLongName, align 1
  %tobool27 = trunc i8 %20 to i1
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %sw.bb26
  %21 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.121, i64 0, i64 0), i32 %21)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %sw.bb26
  %22 = load %struct.sVString*, %struct.sVString** @longNameFields, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %22, i32 0, i32 2
  %23 = load i8*, i8** %buffer, align 8
  store i8* %23, i8** %f, align 8
  %24 = load i8*, i8** %f, align 8
  %call30 = call i32 @getFieldTypeForNameAndLanguage(i8* %24, i32 -2)
  store i32 %call30, i32* %t, align 4
  %25 = load i32, i32* %t, align 4
  %cmp31 = icmp eq i32 %25, -1
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  %26 = load %struct.sVString*, %struct.sVString** @longNameFields, align 8
  %buffer34 = getelementptr inbounds %struct.sVString, %struct.sVString* %26, i32 0, i32 2
  %27 = load i8*, i8** %buffer34, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.123, i64 0, i64 0), i8* %27)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29
  %28 = load i32, i32* %t, align 4
  %29 = load i8, i8* %mode, align 1
  %tobool36 = trunc i8 %29 to i1
  %call37 = call zeroext i1 @enableField(i32 %28, i1 zeroext %tobool36, i1 zeroext true)
  store i8 0, i8* %inLongName, align 1
  br label %do.body

do.body:                                          ; preds = %if.end35
  %30 = load %struct.sVString*, %struct.sVString** @longNameFields, align 8
  store %struct.sVString* %30, %struct.sVString** %vStringClear_s, align 8
  %31 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %31, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %32 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer38 = getelementptr inbounds %struct.sVString, %struct.sVString* %32, i32 0, i32 2
  %33 = load i8*, i8** %buffer38, align 8
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %34 = load i8, i8* %inLongName, align 1
  %tobool39 = trunc i8 %34 to i1
  br i1 %tobool39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %sw.default
  %35 = load %struct.sVString*, %struct.sVString** @longNameFields, align 8
  %36 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %35, i32 %36)
  br label %if.end51

if.else41:                                        ; preds = %sw.default
  %37 = load i32, i32* %c, align 4
  %conv42 = trunc i32 %37 to i8
  %call43 = call i32 @getFieldTypeForOption(i8 signext %conv42)
  store i32 %call43, i32* %t, align 4
  %38 = load i32, i32* %t, align 4
  %cmp44 = icmp eq i32 %38, -1
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else41
  %39 = load i32, i32* %c, align 4
  %40 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.186, i64 0, i64 0), i32 %39, i8* %40)
  br label %if.end50

if.else47:                                        ; preds = %if.else41
  %41 = load i32, i32* %t, align 4
  %42 = load i8, i8* %mode, align 1
  %tobool48 = trunc i8 %42 to i1
  %call49 = call zeroext i1 @enableField(i32 %41, i1 zeroext %tobool48, i1 zeroext true)
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then40
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end51, %do.end, %if.end25, %if.end21, %if.end16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processFilterTerminatorOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  call void @freeString(i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 19))
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i8* @stringCopy(i8* %0)
  store i8* %call, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 19), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processFormatOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %format = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i32* %format)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.183, i64 0, i64 0), i8* %1)
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %format, align 4
  %cmp1 = icmp ule i32 %2, 2
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %3 = load i32, i32* %format, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 13), align 8
  br label %if.end

if.else3:                                         ; preds = %if.else
  %4 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.188, i64 0, i64 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processHelpOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  call void @printProgramIdentification()
  %0 = load %struct.__sFILE*, %struct.__sFILE** @thread_stdout, align 8
  %call = call i32 @ios_fputc(i32 10, %struct.__sFILE* %0)
  call void @printInvocationDescription()
  %1 = load %struct.__sFILE*, %struct.__sFILE** @thread_stdout, align 8
  %call1 = call i32 @ios_fputc(i32 10, %struct.__sFILE* %1)
  call void @printOptionDescriptions(%struct.sOptionDescription* getelementptr inbounds ([226 x %struct.sOptionDescription], [226 x %struct.sOptionDescription]* @LongOptionDescription, i64 0, i64 0))
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processIf0Option(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %if0 = alloca i8, align 1
  %lang = alloca i32, align 4
  %arg = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %parameter.addr, align 8
  %call = call zeroext i1 @getBooleanOption(i8* %0, i8* %1)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %if0, align 1
  %call1 = call i32 @getNamedLanguage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.438, i64 0, i64 0), i64 0)
  store i32 %call1, i32* %lang, align 4
  %2 = load i8, i8* %if0, align 1
  %tobool = trunc i8 %2 to i1
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0)
  store i8* %cond, i8** %arg, align 8
  %4 = load i32, i32* %lang, align 4
  %5 = load i8*, i8** %arg, align 8
  call void @applyParameter(i32 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0), i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processInputEncodingOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  call void @eFree(i8* %1)
  br label %if.end3

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %call = call i8* @eStrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.439, i64 0, i64 0))
  store i8* %call, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %3 = load i8*, i8** %parameter.addr, align 8
  %call4 = call i8* @eStrdup(i8* %3)
  store i8* %call4, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processOutputEncodingOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  call void @eFree(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call = call i8* @eStrdup(i8* %2)
  store i8* %call, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLanguageForceOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.440, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %language, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %parameter.addr, align 8
  %call1 = call i32 @getNamedLanguage(i8* %1, i64 0)
  store i32 %call1, i32* %language, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %option.addr, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %option.addr, align 8
  %call4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i64 0, i64 0))
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %4 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.441, i64 0, i64 0), i8* %4)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false
  %5 = load i32, i32* %language, align 4
  %cmp8 = icmp eq i32 %5, -2
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end7
  %6 = load i8*, i8** %parameter.addr, align 8
  %7 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %6, i8* %7)
  br label %if.end11

if.else10:                                        ; preds = %if.end7
  %8 = load i32, i32* %language, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 16), align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLanguagesOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %langs = alloca i8*, align 8
  %mode = alloca i32, align 4
  %first = alloca i8, align 1
  %lang = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %end = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i8* @eStrdup(i8* %0)
  store i8* %call, i8** %langs, align 8
  store i32 2, i32* %mode, align 4
  store i8 1, i8* %first, align 1
  %1 = load i8*, i8** %langs, align 8
  store i8* %1, i8** %lang, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0), i8** %prefix, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.442, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %2 = load i8*, i8** %lang, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %lang, align 8
  %call1 = call i8* @strchr(i8* %3, i32 44)
  store i8* %call1, i8** %end, align 8
  %4 = load i8*, i8** %lang, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 43
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %lang, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %lang, align 8
  store i32 0, i32* %mode, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.443, i64 0, i64 0), i8** %prefix, align 8
  br label %if.end10

if.else:                                          ; preds = %while.body
  %7 = load i8*, i8** %lang, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 45
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %9 = load i8*, i8** %lang, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr9, i8** %lang, align 8
  store i32 1, i32* %mode, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.444, i64 0, i64 0), i8** %prefix, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %10 = load i32, i32* %mode, align 4
  %cmp11 = icmp eq i32 %10, 2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @enableLanguages(i1 zeroext false)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %11 = load i8*, i8** %end, align 8
  %cmp15 = icmp ne i8* %11, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %12 = load i8*, i8** %end, align 8
  store i8 0, i8* %12, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14
  %13 = load i8*, i8** %lang, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %14 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end45

if.then23:                                        ; preds = %if.end18
  %15 = load i8*, i8** %lang, align 8
  %call24 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.then23
  %16 = load i32, i32* %mode, align 4
  %cmp28 = icmp ne i32 %16, 1
  call void @enableLanguages(i1 zeroext %cmp28)
  br label %if.end39

if.else30:                                        ; preds = %if.then23
  %17 = load i8*, i8** %lang, align 8
  %call31 = call i32 @getNamedLanguage(i8* %17, i64 0)
  store i32 %call31, i32* %language, align 4
  %18 = load i32, i32* %language, align 4
  %cmp32 = icmp eq i32 %18, -2
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else30
  %19 = load i8*, i8** %lang, align 8
  %20 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %19, i8* %20)
  br label %if.end38

if.else35:                                        ; preds = %if.else30
  %21 = load i32, i32* %language, align 4
  %22 = load i32, i32* %mode, align 4
  %cmp36 = icmp ne i32 %22, 1
  call void @enableLanguage(i32 %21, i1 zeroext %cmp36)
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then27
  %23 = load i8, i8* %first, align 1
  %tobool = trunc i8 %23 to i1
  %24 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.205, i64 0, i64 0)
  %25 = load i8*, i8** %prefix, align 8
  %26 = load i8*, i8** %lang, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.445, i64 0, i64 0), i8* %cond, i8* %25, i8* %26)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0), i8** %prefix, align 8
  store i8 0, i8* %first, align 1
  %27 = load i32, i32* %mode, align 4
  %cmp41 = icmp eq i32 %27, 2
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  store i32 0, i32* %mode, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end39
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end18
  %28 = load i8*, i8** %end, align 8
  %cmp46 = icmp ne i8* %28, null
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end45
  %29 = load i8*, i8** %end, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond48 = phi i8* [ %add.ptr, %cond.true ], [ null, %cond.false ]
  store i8* %cond48, i8** %lang, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %langs, align 8
  call void @eFree(i8* %30)
  ret void
}

declare void @processLanguageDefineOption(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLanguageMapOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %maps = alloca i8*, align 8
  %map = alloca i8*, align 8
  %next = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i8* @eStrdup(i8* %0)
  store i8* %call, i8** %maps, align 8
  %1 = load i8*, i8** %maps, align 8
  store i8* %1, i8** %map, align 8
  %2 = load i8*, i8** %parameter.addr, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.446, i64 0, i64 0))
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.447, i64 0, i64 0))
  call void @installLanguageMapDefaults()
  br label %if.end9

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %3 = load i8*, i8** %map, align 8
  %cmp2 = icmp ne i8* %3, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %map, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %map, align 8
  %call5 = call i8* @processLanguageMap(i8* %7)
  store i8* %call5, i8** %next, align 8
  %8 = load i8*, i8** %next, align 8
  %cmp6 = icmp eq i8* %8, null
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %while.body
  %9 = load i8*, i8** %parameter.addr, align 8
  %10 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then8, %while.body
  %11 = load i8*, i8** %next, align 8
  store i8* %11, i8** %map, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end9

if.end9:                                          ; preds = %while.end, %if.then
  %12 = load i8*, i8** %maps, align 8
  call void @eFree(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLicenseOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  call void @printProgramIdentification()
  %call = call i32 @ios_puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0))
  %call1 = call i32 @ios_puts(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.450, i32 0, i32 0))
  %call2 = call i32 @ios_puts(i8* getelementptr inbounds ([438 x i8], [438 x i8]* @.str.451, i32 0, i32 0))
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListAliasesOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %3 to i1
  %4 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool4 = trunc i8 %4 to i1
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageAliases(i32 -1, i1 zeroext %tobool, i1 zeroext %tobool4, %struct.__sFILE* %5)
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i8*, i8** %parameter.addr, align 8
  %call5 = call i32 @getNamedLanguage(i8* %6, i64 0)
  store i32 %call5, i32* %language, align 4
  %7 = load i32, i32* %language, align 4
  %cmp6 = icmp eq i32 %7, -2
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %8 = load i8*, i8** %parameter.addr, align 8
  %9 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %8, i8* %9)
  br label %if.end

if.else9:                                         ; preds = %if.else
  %10 = load i32, i32* %language, align 4
  %11 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool10 = trunc i8 %11 to i1
  %12 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool11 = trunc i8 %12 to i1
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageAliases(i32 %10, i1 zeroext %tobool10, i1 zeroext %tobool11, %struct.__sFILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListExtrasOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %i = alloca i32, align 4
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %call = call %struct.colprintTable* @xtagColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call2 = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @xtagColprintAddCommonLines(%struct.colprintTable* %3)
  call void @initializeParser(i32 -1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %call5 = call i32 @countParsers()
  %cmp6 = icmp ult i32 %4, %call5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call8 = call zeroext i1 @isLanguageVisible(i32 %5)
  br i1 %call8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %7 = load i32, i32* %i, align 4
  call void @xtagColprintAddLanguageLines(%struct.colprintTable* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %parameter.addr, align 8
  %call10 = call i32 @getNamedLanguage(i8* %9, i64 0)
  store i32 %call10, i32* %language, align 4
  %10 = load i32, i32* %language, align 4
  %cmp11 = icmp eq i32 %10, -2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  %11 = load i8*, i8** %parameter.addr, align 8
  %12 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %11, i8* %12)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else
  %13 = load i32, i32* %language, align 4
  call void @initializeParser(i32 %13)
  %14 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %15 = load i32, i32* %language, align 4
  call void @xtagColprintAddLanguageLines(%struct.colprintTable* %14, i32 %15)
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %for.end
  %16 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %17 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %17 to i1
  %18 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool16 = trunc i8 %18 to i1
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @xtagColprintTablePrint(%struct.colprintTable* %16, i1 zeroext %tobool, i1 zeroext %tobool16, %struct.__sFILE* %19)
  %20 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %20)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListFeaturesOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %table = alloca %struct.colprintTable*, align 8
  %line = alloca %struct.colprintLine*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.453, i64 0, i64 0), i8* null)
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.Feature], [7 x %struct.Feature]* @Features, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.Feature, %struct.Feature* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %call1 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %2)
  store %struct.colprintLine* %call1, %struct.colprintLine** %line, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [7 x %struct.Feature], [7 x %struct.Feature]* @Features, i64 0, i64 %idxprom2
  %name4 = getelementptr inbounds %struct.Feature, %struct.Feature* %arrayidx3, i32 0, i32 0
  %4 = load i8*, i8** %name4, align 8
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i64 0, i64 0))
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call7 = call zeroext i1 @checkRegex()
  br i1 %call7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %5 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [7 x %struct.Feature], [7 x %struct.Feature]* @Features, i64 0, i64 %idxprom8
  %name10 = getelementptr inbounds %struct.Feature, %struct.Feature* %arrayidx9, i32 0, i32 0
  %7 = load i8*, i8** %name10, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %5, i8* %7)
  %8 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [7 x %struct.Feature], [7 x %struct.Feature]* @Features, i64 0, i64 %idxprom11
  %description = getelementptr inbounds %struct.Feature, %struct.Feature* %arrayidx12, i32 0, i32 1
  %10 = load i8*, i8** %description, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %8, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableSort(%struct.colprintTable* %12, i32 (%struct.colprintLine*, %struct.colprintLine*)* @featureCompare)
  %13 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %14 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %14 to i1
  %15 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool13 = trunc i8 %15 to i1
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @colprintTablePrint(%struct.colprintTable* %13, i32 0, i1 zeroext %tobool, i1 zeroext %tobool13, %struct.__sFILE* %16)
  %17 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %17)
  %18 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.end
  %19 = load %struct.__sFILE*, %struct.__sFILE** @thread_stdout, align 8
  %call16 = call i32 @ios_fputc(i32 10, %struct.__sFILE* %19)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.end
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListFieldsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %i = alloca i32, align 4
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %call = call %struct.colprintTable* @fieldColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call2 = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @fieldColprintAddCommonLines(%struct.colprintTable* %3)
  call void @initializeParser(i32 -1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %call5 = call i32 @countParsers()
  %cmp6 = icmp ult i32 %4, %call5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call8 = call zeroext i1 @isLanguageVisible(i32 %5)
  br i1 %call8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %7 = load i32, i32* %i, align 4
  call void @fieldColprintAddLanguageLines(%struct.colprintTable* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %parameter.addr, align 8
  %call10 = call i32 @getNamedLanguage(i8* %9, i64 0)
  store i32 %call10, i32* %language, align 4
  %10 = load i32, i32* %language, align 4
  %cmp11 = icmp eq i32 %10, -2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  %11 = load i8*, i8** %parameter.addr, align 8
  %12 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %11, i8* %12)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else
  %13 = load i32, i32* %language, align 4
  call void @initializeParser(i32 %13)
  %14 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %15 = load i32, i32* %language, align 4
  call void @fieldColprintAddLanguageLines(%struct.colprintTable* %14, i32 %15)
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %for.end
  %16 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %17 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %17 to i1
  %18 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool16 = trunc i8 %18 to i1
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @fieldColprintTablePrint(%struct.colprintTable* %16, i1 zeroext %tobool, i1 zeroext %tobool16, %struct.__sFILE* %19)
  %20 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %20)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListKindsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %print_all = alloca i8, align 1
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %tobool = icmp ne i32 %cond, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %print_all, align 1
  %2 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %parameter.addr, align 8
  %call3 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i8, i8* %print_all, align 1
  %tobool6 = trunc i8 %5 to i1
  %6 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool7 = trunc i8 %6 to i1
  %7 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool8 = trunc i8 %7 to i1
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageKinds(i32 -1, i1 zeroext %tobool6, i1 zeroext %tobool7, i1 zeroext %tobool8, %struct.__sFILE* %8)
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %parameter.addr, align 8
  %call9 = call i32 @getNamedLanguage(i8* %9, i64 0)
  store i32 %call9, i32* %language, align 4
  %10 = load i32, i32* %language, align 4
  %cmp10 = icmp eq i32 %10, -2
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %11 = load i8*, i8** %parameter.addr, align 8
  %12 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %11, i8* %12)
  br label %if.end

if.else13:                                        ; preds = %if.else
  %13 = load i32, i32* %language, align 4
  %14 = load i8, i8* %print_all, align 1
  %tobool14 = trunc i8 %14 to i1
  %15 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool15 = trunc i8 %15 to i1
  %16 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool16 = trunc i8 %16 to i1
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageKinds(i32 %13, i1 zeroext %tobool14, i1 zeroext %tobool15, i1 zeroext %tobool16, %struct.__sFILE* %17)
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListLangdefFlagsOptions(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %0 to i1
  %1 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool1 = trunc i8 %1 to i1
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLangdefFlags(i1 zeroext %tobool, i1 zeroext %tobool1, %struct.__sFILE* %2)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListLanguagesOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  call void @printLanguageList()
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListMapsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %parameter.addr, align 8
  call void @processListMapsOptionForType(i8* %0, i8* %1, i32 3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListMapExtensionsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %parameter.addr, align 8
  call void @processListMapsOptionForType(i8* %0, i8* %1, i32 6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListMapPatternsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %parameter.addr, align 8
  call void @processListMapsOptionForType(i8* %0, i8* %1, i32 5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListMultilineRegexFlagsOptions(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %0 to i1
  %1 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool1 = trunc i8 %1 to i1
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printMultilineRegexFlags(i1 zeroext %tobool, i1 zeroext %tobool1, %struct.__sFILE* %2)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListParametersOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %3 to i1
  %4 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool4 = trunc i8 %4 to i1
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageParameters(i32 -1, i1 zeroext %tobool, i1 zeroext %tobool4, %struct.__sFILE* %5)
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i8*, i8** %parameter.addr, align 8
  %call5 = call i32 @getNamedLanguage(i8* %6, i64 0)
  store i32 %call5, i32* %language, align 4
  %7 = load i32, i32* %language, align 4
  %cmp6 = icmp eq i32 %7, -2
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %8 = load i8*, i8** %parameter.addr, align 8
  %9 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %8, i8* %9)
  br label %if.end

if.else9:                                         ; preds = %if.else
  %10 = load i32, i32* %language, align 4
  %11 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool10 = trunc i8 %11 to i1
  %12 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool11 = trunc i8 %12 to i1
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageParameters(i32 %10, i1 zeroext %tobool10, i1 zeroext %tobool11, %struct.__sFILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListPseudoTagsOptions(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %0 to i1
  %1 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool1 = trunc i8 %1 to i1
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printPtags(i1 zeroext %tobool, i1 zeroext %tobool1, %struct.__sFILE* %2)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListRegexFlagsOptions(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %0 to i1
  %1 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool1 = trunc i8 %1 to i1
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printRegexFlags(i1 zeroext %tobool, i1 zeroext %tobool1, %struct.__sFILE* %2)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListRolesOptions(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %kindspecs = alloca i8*, align 8
  %lang = alloca i32, align 4
  %vstr = alloca %struct.sVString*, align 8
  store i8* %option, i8** %option.addr, align 8
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
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %3 to i1
  %4 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool3 = trunc i8 %4 to i1
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageRoles(i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.454, i64 0, i64 0), i1 zeroext %tobool, i1 zeroext %tobool3, %struct.__sFILE* %5)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %parameter.addr, align 8
  %call = call i8* @strchr(i8* %6, i32 46)
  store i8* %call, i8** %sep, align 8
  %7 = load i8*, i8** %sep, align 8
  %cmp4 = icmp eq i8* %7, null
  br i1 %cmp4, label %if.then11, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %8 = load i8*, i8** %sep, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %lor.lhs.false6, %if.end
  %10 = load i8*, i8** %parameter.addr, align 8
  %call12 = call %struct.sVString* @vStringNewInit(i8* %10)
  store %struct.sVString* %call12, %struct.sVString** %vstr, align 8
  %11 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  %12 = load i8*, i8** %sep, align 8
  %tobool13 = icmp ne i8* %12, null
  %13 = zext i1 %tobool13 to i64
  %cond = select i1 %tobool13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.454, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.455, i64 0, i64 0)
  call void @vStringCatS(%struct.sVString* %11, i8* %cond)
  %14 = load i8*, i8** %option.addr, align 8
  %15 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer, align 8
  call void @processListRolesOptions(i8* %14, i8* %16)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %lor.lhs.false6
  %17 = load i8*, i8** %sep, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %add.ptr, i8** %kindspecs, align 8
  %18 = load i8*, i8** %parameter.addr, align 8
  %call15 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.456, i64 0, i64 0), i64 4)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then26, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end14
  %19 = load i8*, i8** %parameter.addr, align 8
  %call19 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.457, i64 0, i64 0), i64 1)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %20 = load i8*, i8** %parameter.addr, align 8
  %call23 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.458, i64 0, i64 0), i64 1)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %lor.lhs.false22, %lor.lhs.false18, %if.end14
  store i32 -1, i32* %lang, align 4
  br label %if.end32

if.else:                                          ; preds = %lor.lhs.false22
  %21 = load i8*, i8** %parameter.addr, align 8
  %22 = load i8*, i8** %sep, align 8
  %23 = load i8*, i8** %parameter.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call27 = call i32 @getNamedLanguage(i8* %21, i64 %sub.ptr.sub)
  store i32 %call27, i32* %lang, align 4
  %24 = load i32, i32* %lang, align 4
  %cmp28 = icmp eq i32 %24, -2
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  %25 = load i8*, i8** %parameter.addr, align 8
  %26 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.459, i64 0, i64 0), i8* %25, i8* %26)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then26
  %27 = load i32, i32* %lang, align 4
  %28 = load i8*, i8** %kindspecs, align 8
  %29 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool33 = trunc i8 %29 to i1
  %30 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool34 = trunc i8 %30 to i1
  %31 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageRoles(i32 %27, i8* %28, i1 zeroext %tobool33, i1 zeroext %tobool34, %struct.__sFILE* %31)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListSubparsersOptions(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %lang = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
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
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %4 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %4 to i1
  %5 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool6 = trunc i8 %5 to i1
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageSubparsers(i32 -1, i1 zeroext %tobool, i1 zeroext %tobool6, %struct.__sFILE* %6)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %7 = load i8*, i8** %parameter.addr, align 8
  %call7 = call i32 @getNamedLanguage(i8* %7, i64 0)
  store i32 %call7, i32* %lang, align 4
  %8 = load i32, i32* %lang, align 4
  %cmp8 = icmp eq i32 %8, -2
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %9 = load i8*, i8** %parameter.addr, align 8
  %10 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.459, i64 0, i64 0), i8* %9, i8* %10)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %11 = load i32, i32* %lang, align 4
  %12 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool12 = trunc i8 %12 to i1
  %13 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool13 = trunc i8 %13 to i1
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageSubparsers(i32 %11, i1 zeroext %tobool12, i1 zeroext %tobool13, %struct.__sFILE* %14)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processMaxRecursionDepthOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
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
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.460, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i8*, i8** %parameter.addr, align 8
  %call = call i64 @atol(i8* %4)
  %cmp3 = icmp slt i64 %call, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.461, i64 0, i64 0), i8* %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load i8*, i8** %parameter.addr, align 8
  %call7 = call i64 @atol(i8* %6)
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 29), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processOptlibDir(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  call void @resetOptlibPathList(i1 zeroext true)
  br label %if.end14

if.else:                                          ; preds = %do.end
  %2 = load i8*, i8** %parameter.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then6, label %if.else12

if.then6:                                         ; preds = %if.else
  %4 = load i8*, i8** %parameter.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %add.ptr, i8** %path, align 8
  %5 = load i8*, i8** %path, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then6
  br label %if.end14

if.end:                                           ; preds = %if.then6
  %7 = load i8*, i8** %path, align 8
  call void @prependToOptlibPathList(i8* %7, i1 zeroext true)
  br label %if.end13

if.else12:                                        ; preds = %if.else
  call void @resetOptlibPathList(i1 zeroext true)
  %8 = load i8*, i8** %parameter.addr, align 8
  store i8* %8, i8** %path, align 8
  %9 = load i8*, i8** %path, align 8
  call void @prependToOptlibPathList(i8* %9, i1 zeroext true)
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end13, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processOptionFile(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %parameter.addr, align 8
  call void @processOptionFileCommon(i8* %0, i8* %1, i1 zeroext false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processOptionFileMaybe(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %parameter.addr, align 8
  call void @processOptionFileCommon(i8* %0, i8* %1, i1 zeroext true)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processOutputFormat(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.476, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.477, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br label %if.end23

if.else:                                          ; preds = %if.end
  %4 = load i8*, i8** %parameter.addr, align 8
  %call5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.478, i64 0, i64 0))
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  call void @setTagWriter(i32 1)
  br label %if.end22

if.else9:                                         ; preds = %if.else
  %5 = load i8*, i8** %parameter.addr, align 8
  %call10 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else9
  call void @setEtagsMode()
  br label %if.end21

if.else14:                                        ; preds = %if.else9
  %6 = load i8*, i8** %parameter.addr, align 8
  %call15 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.479, i64 0, i64 0))
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else14
  call void @setXrefMode()
  br label %if.end20

if.else19:                                        ; preds = %if.else14
  %7 = load i8*, i8** %option.addr, align 8
  %8 = load i8*, i8** %parameter.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.480, i64 0, i64 0), i8* %7, i8* %8)
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then8
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processPatternLengthLimit(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
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
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.460, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i8*, i8** %parameter.addr, align 8
  %call = call zeroext i1 @strToUInt(i8* %4, i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 27))
  br i1 %call, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.481, i64 0, i64 0), i8* %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processPseudoTags(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %s = alloca i8, align 1
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %i14 = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %call = call zeroext i1 @enablePtag(i32 %4, i1 zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  store i8 0, i8* %s, align 1
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end29

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv8 = sext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 43
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  store i8 1, i8* %s, align 1
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8
  br label %if.end28

if.else13:                                        ; preds = %if.else
  store i8 1, i8* %s, align 1
  store i32 0, i32* %i14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc20, %if.else13
  %12 = load i32, i32* %i14, align 4
  %cmp16 = icmp ult i32 %12, 11
  br i1 %cmp16, label %for.body18, label %for.end22

for.body18:                                       ; preds = %for.cond15
  %13 = load i32, i32* %i14, align 4
  %call19 = call zeroext i1 @enablePtag(i32 %13, i1 zeroext false)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body18
  %14 = load i32, i32* %i14, align 4
  %inc21 = add i32 %14, 1
  store i32 %inc21, i32* %i14, align 4
  br label %for.cond15

for.end22:                                        ; preds = %for.cond15
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end22
  br label %return

if.end27:                                         ; preds = %for.end22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then11
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then7
  %17 = load i8*, i8** %p, align 8
  %call30 = call i32 @getPtagTypeForName(i8* %17)
  store i32 %call30, i32* %t, align 4
  %18 = load i32, i32* %t, align 4
  %cmp31 = icmp eq i32 %18, -1
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  %19 = load i8*, i8** %p, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.482, i64 0, i64 0), i8* %19)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %20 = load i32, i32* %t, align 4
  %21 = load i8, i8* %s, align 1
  %tobool = trunc i8 %21 to i1
  %call35 = call zeroext i1 @enablePtag(i32 %20, i1 zeroext %tobool)
  br label %return

return:                                           ; preds = %if.end34, %if.then26, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processSortOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call zeroext i1 @isFalse(i8* %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @isTrue(i8* %1)
  br i1 %call1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  br label %if.end12

if.else3:                                         ; preds = %if.else
  %2 = load i8*, i8** %parameter.addr, align 8
  %call4 = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.483, i64 0, i64 0))
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else3
  %3 = load i8*, i8** %parameter.addr, align 8
  %call5 = call i32 @strcasecmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.484, i64 0, i64 0))
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** %parameter.addr, align 8
  %call8 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.485, i64 0, i64 0))
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.else3
  store i32 2, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 5), align 4
  br label %if.end

if.else11:                                        ; preds = %lor.lhs.false7
  %5 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.183, i64 0, i64 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processTagRelative(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call zeroext i1 @isFalse(i8* %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @isTrue(i8* %1)
  br i1 %call1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 1, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  br label %if.end12

if.else3:                                         ; preds = %if.else
  %2 = load i8*, i8** %parameter.addr, align 8
  %call4 = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.486, i64 0, i64 0))
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i32 2, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  br label %if.end11

if.else6:                                         ; preds = %if.else3
  %3 = load i8*, i8** %parameter.addr, align 8
  %call7 = call i32 @strcasecmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.487, i64 0, i64 0))
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else6
  store i32 3, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 20), align 8
  br label %if.end

if.else10:                                        ; preds = %if.else6
  %4 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.183, i64 0, i64 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then2
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processVersionOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  call void @printProgramIdentification()
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processAnonHashOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %buf = alloca [9 x i8], align 1
  store i8* %option, i8** %option.addr, align 8
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
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.488, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i8*, i8** %parameter.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  call void @anonHashString(i8* %4, i8* %arraydecay)
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.489, i64 0, i64 0), i8* %arraydecay3)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processDumpKeywordsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @dumpKeywordTable(%struct.__sFILE* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processDumpOptionsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.490, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.491, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 54
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [54 x %struct.anon], [54 x %struct.anon]* @ParametricOptions, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.489, i64 0, i64 0), i8* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.490, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.492, i64 0, i64 0))
  store i32 0, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, i32* %i4, align 4
  %conv6 = zext i32 %7 to i64
  %cmp7 = icmp ult i64 %conv6, 16
  br i1 %cmp7, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond5
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %9 = load i32, i32* %i4, align 4
  %idxprom10 = zext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [16 x %struct.sBooleanOption], [16 x %struct.sBooleanOption]* @BooleanOptions, i64 0, i64 %idxprom10
  %name12 = getelementptr inbounds %struct.sBooleanOption, %struct.sBooleanOption* %arrayidx11, i32 0, i32 0
  %10 = load i8*, i8** %name12, align 8
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.489, i64 0, i64 0), i8* %10)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %11 = load i32, i32* %i4, align 4
  %inc15 = add i32 %11, 1
  store i32 %inc15, i32* %i4, align 4
  br label %for.cond5

for.end16:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processEchoOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
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
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.493, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i8*, i8** %parameter.addr, align 8
  call void (i8*, ...) @notice(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.494, i64 0, i64 0), i8* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processForceInitOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.495, i64 0, i64 0))
  call void @initializeParser(i32 -1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processForceQuitOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %s = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
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
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i8*, i8** %parameter.addr, align 8
  %call = call zeroext i1 @strToInt(i8* %3, i32 0, i32* %s)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 0, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  %4 = load i32, i32* %s, align 4
  call void @ios_exit(i32 %4) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListMultitableRegexFlagsOptions(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %0 to i1
  %1 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool1 = trunc i8 %1 to i1
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printMultitableRegexFlags(i1 zeroext %tobool, i1 zeroext %tobool1, %struct.__sFILE* %2)
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processXformatOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load %struct.sFmtElement*, %struct.sFmtElement** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 8), align 8
  %tobool = icmp ne %struct.sFmtElement* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sFmtElement*, %struct.sFmtElement** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 8), align 8
  call void @fmtDelete(%struct.sFmtElement* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call = call %struct.sFmtElement* @fmtNew(i8* %2)
  store %struct.sFmtElement* %call, %struct.sFmtElement** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 8), align 8
  ret void
}

declare %struct.sVString* @vStringNewInit(i8*) #2

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #2

declare i32 @getXtagTypeForLetter(i8 signext) #2

declare i32 @getFieldTypeForOption(i8 signext) #2

declare i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printProgramIdentification() #0 {
entry:
  %0 = load i8*, i8** @ctags_repoinfo, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @ctags_repoinfo, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i64 0, i64 0))
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.190, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.191, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.192, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.193, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %4 = load i8*, i8** @ctags_repoinfo, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.194, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.191, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.192, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.193, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.195, i64 0, i64 0))
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.196, i64 0, i64 0))
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.197, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.198, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i64 0, i64 0))
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.201, i64 0, i64 0))
  call void @printFeatureList()
  ret void
}

declare i32 @ios_fputc(i32, %struct.__sFILE*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printInvocationDescription() #0 {
entry:
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call = call i8* @getExecutableName()
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.215, i64 0, i64 0), i8* %call)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printOptionDescriptions(%struct.sOptionDescription* %optDesc) #0 {
entry:
  %optDesc.addr = alloca %struct.sOptionDescription*, align 8
  %i = alloca i32, align 4
  store %struct.sOptionDescription* %optDesc, %struct.sOptionDescription** %optDesc.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.sOptionDescription*, %struct.sOptionDescription** %optDesc.addr, align 8
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sOptionDescription, %struct.sOptionDescription* %0, i64 %idxprom
  %description = getelementptr inbounds %struct.sOptionDescription, %struct.sOptionDescription* %arrayidx, i32 0, i32 1
  %2 = load i8*, i8** %description, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 2), align 2
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %struct.sOptionDescription*, %struct.sOptionDescription** %optDesc.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.sOptionDescription, %struct.sOptionDescription* %4, i64 %idxprom1
  %usedByEtags = getelementptr inbounds %struct.sOptionDescription, %struct.sOptionDescription* %arrayidx2, i32 0, i32 0
  %6 = load i32, i32* %usedByEtags, align 8
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %7 = load %struct.sOptionDescription*, %struct.sOptionDescription** %optDesc.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct.sOptionDescription, %struct.sOptionDescription* %7, i64 %idxprom4
  %description6 = getelementptr inbounds %struct.sOptionDescription, %struct.sOptionDescription* %arrayidx5, i32 0, i32 1
  %9 = load i8*, i8** %description6, align 8
  %call = call i32 @ios_puts(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @ctags_cleanup(...) #2

; Function Attrs: noreturn
declare void @ios_exit(i32) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printFeatureList() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.Feature], [7 x %struct.Feature]* @Features, i64 0, i64 %idxprom
  %name = getelementptr inbounds %struct.Feature, %struct.Feature* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.202, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [7 x %struct.Feature], [7 x %struct.Feature]* @Features, i64 0, i64 %idxprom2
  %name4 = getelementptr inbounds %struct.Feature, %struct.Feature* %arrayidx3, i32 0, i32 0
  %5 = load i8*, i8** %name4, align 8
  %call5 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i64 0, i64 0))
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = call zeroext i1 @checkRegex()
  br i1 %call7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %7 = load i32, i32* %i, align 4
  %cmp9 = icmp sgt i32 %7, 0
  %8 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.205, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0)
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [7 x %struct.Feature], [7 x %struct.Feature]* @Features, i64 0, i64 %idxprom10
  %name12 = getelementptr inbounds %struct.Feature, %struct.Feature* %arrayidx11, i32 0, i32 0
  %10 = load i8*, i8** %name12, align 8
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.204, i64 0, i64 0), i8* %cond, i8* %10)
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %cmp15 = icmp sgt i32 %12, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end
  %13 = load %struct.__sFILE*, %struct.__sFILE** @thread_stdout, align 8
  %call17 = call i32 @ios_fputc(i32 10, %struct.__sFILE* %13)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end
  ret void
}

declare zeroext i1 @checkRegex() #2

declare i32 @ios_puts(i8*) #2

declare void @enableLanguages(i1 zeroext) #2

declare void @enableLanguage(i32, i1 zeroext) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @processLanguageMap(i8* %map) #0 {
entry:
  %map.addr = alloca i8*, align 8
  %separator = alloca i8*, align 8
  %result = alloca i8*, align 8
  %language = alloca i32, align 4
  %list = alloca i8*, align 8
  %clear = alloca i8, align 1
  %deflt = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %map, i8** %map.addr, align 8
  %0 = load i8*, i8** %map.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 58)
  store i8* %call, i8** %separator, align 8
  store i8* null, i8** %result, align 8
  %1 = load i8*, i8** %separator, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end53

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %separator, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %add.ptr, i8** %list, align 8
  store i8 0, i8* %clear, align 1
  %3 = load i8*, i8** %separator, align 8
  store i8 0, i8* %3, align 1
  %4 = load i8*, i8** %map.addr, align 8
  %call1 = call i32 @getNamedLanguage(i8* %4, i64 0)
  store i32 %call1, i32* %language, align 4
  %5 = load i32, i32* %language, align 4
  %cmp2 = icmp ne i32 %5, -2
  br i1 %cmp2, label %if.then3, label %if.end52

if.then3:                                         ; preds = %if.then
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.446, i64 0, i64 0), i8** %deflt, align 8
  %6 = load i8*, i8** %list, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 43
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %8 = load i8*, i8** %list, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %list, align 8
  br label %if.end

if.else:                                          ; preds = %if.then3
  store i8 1, i8* %clear, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %9 = load i8*, i8** %list, align 8
  store i8* %9, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp ne i32 %conv7, 44
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load i8*, i8** %p, align 8
  %17 = load i8*, i8** %list, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp14 = icmp eq i64 %sub.ptr.sub, 7
  br i1 %cmp14, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %for.end
  %18 = load i8*, i8** %list, align 8
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %list, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %20 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %call19 = call i32 @strncasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.446, i32 0, i32 0), i64 %sub.ptr.sub18)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %land.lhs.true
  %21 = load i32, i32* %language, align 4
  %call23 = call i8* @getLanguageName(i32 %21)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.448, i64 0, i64 0), i8* %call23)
  %22 = load i32, i32* %language, align 4
  call void @installLanguageMapDefault(i32 %22)
  %23 = load i8*, i8** %p, align 8
  store i8* %23, i8** %list, align 8
  br label %if.end42

if.else24:                                        ; preds = %land.lhs.true, %for.end
  %24 = load i8, i8* %clear, align 1
  %tobool = trunc i8 %24 to i1
  br i1 %tobool, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else24
  %25 = load i32, i32* %language, align 4
  %call26 = call i8* @getLanguageName(i32 %25)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %call26)
  %26 = load i32, i32* %language, align 4
  call void @clearLanguageMap(i32 %26)
  br label %if.end29

if.else27:                                        ; preds = %if.else24
  %27 = load i32, i32* %language, align 4
  %call28 = call i8* @getLanguageName(i32 %27)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.449, i64 0, i64 0), i8* %call28)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end29
  %28 = load i8*, i8** %list, align 8
  %cmp30 = icmp ne i8* %28, null
  br i1 %cmp30, label %land.lhs.true32, label %land.end40

land.lhs.true32:                                  ; preds = %while.cond
  %29 = load i8*, i8** %list, align 8
  %30 = load i8, i8* %29, align 1
  %conv33 = sext i8 %30 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %land.rhs36, label %land.end40

land.rhs36:                                       ; preds = %land.lhs.true32
  %31 = load i8*, i8** %list, align 8
  %32 = load i8, i8* %31, align 1
  %conv37 = sext i8 %32 to i32
  %cmp38 = icmp ne i32 %conv37, 44
  br label %land.end40

land.end40:                                       ; preds = %land.rhs36, %land.lhs.true32, %while.cond
  %33 = phi i1 [ false, %land.lhs.true32 ], [ false, %while.cond ], [ %cmp38, %land.rhs36 ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end40
  %34 = load i32, i32* %language, align 4
  %35 = load i8*, i8** %list, align 8
  %call41 = call i8* @addLanguageMap(i32 %34, i8* %35, i1 zeroext true)
  store i8* %call41, i8** %list, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end40
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end42

if.end42:                                         ; preds = %while.end, %if.then22
  %36 = load i8*, i8** %list, align 8
  %cmp43 = icmp ne i8* %36, null
  br i1 %cmp43, label %land.lhs.true45, label %if.end51

land.lhs.true45:                                  ; preds = %if.end42
  %37 = load i8*, i8** %list, align 8
  %38 = load i8, i8* %37, align 1
  %conv46 = sext i8 %38 to i32
  %cmp47 = icmp eq i32 %conv46, 44
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %land.lhs.true45
  %39 = load i8*, i8** %list, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr50, i8** %list, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true45, %if.end42
  %40 = load i8*, i8** %list, align 8
  store i8* %40, i8** %result, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %entry
  %41 = load i8*, i8** %result, align 8
  ret i8* %41
}

declare i32 @strncasecmp(i8*, i8*, i64) #2

declare void @installLanguageMapDefault(i32) #2

declare void @printLanguageAliases(i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare %struct.colprintTable* @xtagColprintTableNew() #2

declare void @xtagColprintAddCommonLines(%struct.colprintTable*) #2

declare i32 @countParsers() #2

declare zeroext i1 @isLanguageVisible(i32) #2

declare void @xtagColprintAddLanguageLines(%struct.colprintTable*, i32) #2

declare void @xtagColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @colprintTableDelete(%struct.colprintTable*) #2

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #2

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #2

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #2

declare void @colprintTableSort(%struct.colprintTable*, i32 (%struct.colprintLine*, %struct.colprintLine*)*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @featureCompare(%struct.colprintLine* %a, %struct.colprintLine* %b) #0 {
entry:
  %a.addr = alloca %struct.colprintLine*, align 8
  %b.addr = alloca %struct.colprintLine*, align 8
  store %struct.colprintLine* %a, %struct.colprintLine** %a.addr, align 8
  store %struct.colprintLine* %b, %struct.colprintLine** %b.addr, align 8
  %0 = load %struct.colprintLine*, %struct.colprintLine** %a.addr, align 8
  %call = call i8* @colprintLineGetColumn(%struct.colprintLine* %0, i32 0)
  %1 = load %struct.colprintLine*, %struct.colprintLine** %b.addr, align 8
  %call1 = call i8* @colprintLineGetColumn(%struct.colprintLine* %1, i32 0)
  %call2 = call i32 @strcmp(i8* %call, i8* %call1)
  ret i32 %call2
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare i8* @colprintLineGetColumn(%struct.colprintLine*, i32) #2

declare %struct.colprintTable* @fieldColprintTableNew() #2

declare void @fieldColprintAddCommonLines(%struct.colprintTable*) #2

declare void @fieldColprintAddLanguageLines(%struct.colprintTable*, i32) #2

declare void @fieldColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printLanguageKinds(i32, i1 zeroext, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printLangdefFlags(i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printLanguageList() #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processListMapsOptionForType(i8* %option, i8* %parameter, i32 %type) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %type.addr, align 4
  %4 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool = trunc i8 %4 to i1
  %5 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool4 = trunc i8 %5 to i1
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageMaps(i32 -1, i32 %3, i1 zeroext %tobool, i1 zeroext %tobool4, %struct.__sFILE* %6)
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %7 = load i8*, i8** %parameter.addr, align 8
  %call5 = call i32 @getNamedLanguage(i8* %7, i64 0)
  store i32 %call5, i32* %language, align 4
  %8 = load i32, i32* %language, align 4
  %cmp6 = icmp eq i32 %8, -2
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %9 = load i8*, i8** %parameter.addr, align 8
  %10 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %9, i8* %10)
  br label %if.end

if.else9:                                         ; preds = %if.else
  %11 = load i32, i32* %language, align 4
  %12 = load i32, i32* %type.addr, align 4
  %13 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 1), align 1
  %tobool10 = trunc i8 %13 to i1
  %14 = load i8, i8* getelementptr inbounds (%struct.localOptionValues, %struct.localOptionValues* @localOption, i32 0, i32 0), align 1
  %tobool11 = trunc i8 %14 to i1
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  call void @printLanguageMaps(i32 %11, i32 %12, i1 zeroext %tobool10, i1 zeroext %tobool11, %struct.__sFILE* %15)
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  call void bitcast (void (...)* @ctags_cleanup to void ()*)()
  call void @ios_exit(i32 0) #5
  unreachable
}

declare void @printLanguageMaps(i32, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printMultilineRegexFlags(i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printLanguageParameters(i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printPtags(i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printRegexFlags(i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @printLanguageRoles(i32, i8*, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @vStringCatS(%struct.sVString*, i8*) #2

declare void @printLanguageSubparsers(i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare i64 @atol(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetOptlibPathList(i1 zeroext %report_in_verbose) #0 {
entry:
  %report_in_verbose.addr = alloca i8, align 1
  %frombool = zext i1 %report_in_verbose to i8
  store i8 %frombool, i8* %report_in_verbose.addr, align 1
  call void @freeSearchPathList(%struct.sPtrArray** @OptlibPathList)
  %0 = load i8, i8* %report_in_verbose.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.462, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** @OptlibPathList, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @prependToOptlibPathList(i8* %dir, i1 zeroext %report_in_verbose) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %report_in_verbose.addr = alloca i8, align 1
  %elt = alloca %struct.sVString*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %frombool = zext i1 %report_in_verbose to i8
  store i8 %frombool, i8* %report_in_verbose.addr, align 1
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call %struct.sVString* @vStringNewInit(i8* %0)
  store %struct.sVString* %call, %struct.sVString** %elt, align 8
  %1 = load i8, i8* %report_in_verbose.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dir.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.463, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.464, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** @OptlibPathList, align 8
  %4 = load %struct.sVString*, %struct.sVString** %elt, align 8
  call void @stringListAdd(%struct.sPtrArray* %3, %struct.sVString* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processOptionFileCommon(i8* %option, i8* %parameter, i1 zeroext %allowNonExistingFile) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %allowNonExistingFile.addr = alloca i8, align 1
  %path = alloca i8*, align 8
  %vpath = alloca %struct.sVString*, align 8
  %status = alloca %struct.fileStatus*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %frombool = zext i1 %allowNonExistingFile to i8
  store i8 %frombool, i8* %allowNonExistingFile.addr, align 1
  store %struct.sVString* null, %struct.sVString** %vpath, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.465, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %parameter.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv3, 47
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %parameter.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 46
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i8*, i8** %parameter.addr, align 8
  %call = call %struct.sVString* @expandOnOptlibPathList(i8* %7)
  store %struct.sVString* %call, %struct.sVString** %vpath, align 8
  %8 = load %struct.sVString*, %struct.sVString** %vpath, align 8
  %tobool = icmp ne %struct.sVString* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %9 = load %struct.sVString*, %struct.sVString** %vpath, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %11 = load i8*, i8** %parameter.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ %11, %cond.false ]
  store i8* %cond, i8** %path, align 8
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load i8*, i8** %parameter.addr, align 8
  store i8* %12, i8** %path, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %cond.end
  %13 = load i8*, i8** %path, align 8
  %call12 = call %struct.fileStatus* @eStat(i8* %13)
  store %struct.fileStatus* %call12, %struct.fileStatus** %status, align 8
  %14 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %exists = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %14, i32 0, i32 1
  %15 = load i8, i8* %exists, align 8
  %tobool13 = trunc i8 %15 to i1
  br i1 %tobool13, label %if.else18, label %if.then14

if.then14:                                        ; preds = %if.end11
  %16 = load i8, i8* %allowNonExistingFile.addr, align 1
  %tobool15 = trunc i8 %16 to i1
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then14
  %17 = load i8*, i8** %path, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.466, i64 0, i64 0), i8* %17)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  br label %if.end29

if.else18:                                        ; preds = %if.end11
  %18 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  %isDirectory = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %18, i32 0, i32 3
  %19 = load i8, i8* %isDirectory, align 2
  %tobool19 = trunc i8 %19 to i1
  br i1 %tobool19, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.else18
  %20 = load i8*, i8** %path, align 8
  %call21 = call zeroext i1 @parseAllConfigurationFilesOptionsInDirectory(i8* %20, %struct.sPtrArray* null)
  br i1 %call21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.then20
  %21 = load i8*, i8** %path, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.467, i64 0, i64 0), i8* %21)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  br label %if.end28

if.else24:                                        ; preds = %if.else18
  %22 = load i8*, i8** %path, align 8
  %call25 = call zeroext i1 @parseFileOptions(i8* %22)
  br i1 %call25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.else24
  %23 = load i8*, i8** %path, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.468, i64 0, i64 0), i8* %23)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.else24
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end17
  %24 = load %struct.fileStatus*, %struct.fileStatus** %status, align 8
  call void @eStatFree(%struct.fileStatus* %24)
  %25 = load %struct.sVString*, %struct.sVString** %vpath, align 8
  %tobool30 = icmp ne %struct.sVString* %25, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  %26 = load %struct.sVString*, %struct.sVString** %vpath, align 8
  call void @vStringDelete(%struct.sVString* %26)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @expandOnOptlibPathList(i8* %leaf) #0 {
entry:
  %leaf.addr = alloca i8*, align 8
  store i8* %leaf, i8** %leaf.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** @OptlibPathList, align 8
  %1 = load i8*, i8** %leaf.addr, align 8
  %call = call %struct.sVString* @expandOnSearchPathList(%struct.sPtrArray* %0, i8* %1, i1 (i8*)* @doesFileExist)
  ret %struct.sVString* %call
}

declare %struct.fileStatus* @eStat(i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseAllConfigurationFilesOptionsInDirectory(i8* %dirName, %struct.sPtrArray* %already_loaded_files) #0 {
entry:
  %retval = alloca i1, align 1
  %dirName.addr = alloca i8*, align 8
  %already_loaded_files.addr = alloca %struct.sPtrArray*, align 8
  %dents = alloca %struct.dirent**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %path = alloca i8*, align 8
  %s = alloca %struct.fileStatus*, align 8
  store i8* %dirName, i8** %dirName.addr, align 8
  store %struct.sPtrArray* %already_loaded_files, %struct.sPtrArray** %already_loaded_files.addr, align 8
  %0 = load i8*, i8** %dirName.addr, align 8
  %call = call i32 @scanDirectory(i8* %0, %struct.dirent*** %dents, i32 (%struct.dirent*)* @ignore_dot_file, i32 (%struct.dirent**, %struct.dirent**)* @alphaSort)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %already_loaded_files.addr, align 8
  %tobool = icmp ne %struct.sPtrArray* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %already_loaded_files.addr, align 8
  %6 = load %struct.dirent**, %struct.dirent*** %dents, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.dirent*, %struct.dirent** %6, i64 %idxprom
  %8 = load %struct.dirent*, %struct.dirent** %arrayidx, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %8, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name, i64 0, i64 0
  %call2 = call zeroext i1 @stringListHas(%struct.sPtrArray* %5, i8* %arraydecay)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %for.body
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %already_loaded_files.addr, align 8
  %tobool4 = icmp ne %struct.sPtrArray* %9, null
  br i1 %tobool4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.else
  %10 = load %struct.sPtrArray*, %struct.sPtrArray** %already_loaded_files.addr, align 8
  %11 = load %struct.dirent**, %struct.dirent*** %dents, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds %struct.dirent*, %struct.dirent** %11, i64 %idxprom6
  %13 = load %struct.dirent*, %struct.dirent** %arrayidx7, align 8
  %d_name8 = getelementptr inbounds %struct.dirent, %struct.dirent* %13, i32 0, i32 5
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name8, i64 0, i64 0
  %call10 = call %struct.sVString* @vStringNewInit(i8* %arraydecay9)
  call void @stringListAdd(%struct.sPtrArray* %10, %struct.sVString* %call10)
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %14 = load i8*, i8** %dirName.addr, align 8
  %15 = load %struct.dirent**, %struct.dirent*** %dents, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds %struct.dirent*, %struct.dirent** %15, i64 %idxprom13
  %17 = load %struct.dirent*, %struct.dirent** %arrayidx14, align 8
  %d_name15 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 5
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name15, i64 0, i64 0
  %call17 = call i8* @combinePathAndFile(i8* %14, i8* %arraydecay16)
  store i8* %call17, i8** %path, align 8
  %18 = load i8*, i8** %path, align 8
  %call18 = call %struct.fileStatus* @eStat(i8* %18)
  store %struct.fileStatus* %call18, %struct.fileStatus** %s, align 8
  %19 = load %struct.fileStatus*, %struct.fileStatus** %s, align 8
  %exists = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %19, i32 0, i32 1
  %20 = load i8, i8* %exists, align 8
  %tobool19 = trunc i8 %20 to i1
  br i1 %tobool19, label %land.lhs.true20, label %if.end30

land.lhs.true20:                                  ; preds = %if.end12
  %21 = load %struct.dirent**, %struct.dirent*** %dents, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds %struct.dirent*, %struct.dirent** %21, i64 %idxprom21
  %23 = load %struct.dirent*, %struct.dirent** %arrayidx22, align 8
  %call23 = call i32 @accept_only_dot_ctags(%struct.dirent* %23)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %land.lhs.true20
  %24 = load i8*, i8** %dirName.addr, align 8
  %25 = load %struct.dirent**, %struct.dirent*** %dents, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds %struct.dirent*, %struct.dirent** %25, i64 %idxprom26
  %27 = load %struct.dirent*, %struct.dirent** %arrayidx27, align 8
  %d_name28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 5
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name28, i64 0, i64 0
  call void @parseConfigurationFileOptionsInDirectoryWithLeafname(i8* %24, i8* %arraydecay29)
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %land.lhs.true20, %if.end12
  %28 = load %struct.fileStatus*, %struct.fileStatus** %s, align 8
  call void @eStatFree(%struct.fileStatus* %28)
  %29 = load %struct.dirent**, %struct.dirent*** %dents, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds %struct.dirent*, %struct.dirent** %29, i64 %idxprom31
  %31 = load %struct.dirent*, %struct.dirent** %arrayidx32, align 8
  %32 = bitcast %struct.dirent* %31 to i8*
  call void @free(i8* %32)
  %33 = load i8*, i8** %path, align 8
  call void @eFree(i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %if.then3
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.dirent**, %struct.dirent*** %dents, align 8
  %36 = bitcast %struct.dirent** %35 to i8*
  call void @free(i8* %36)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %37 = load i1, i1* %retval, align 1
  ret i1 %37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @parseFileOptions(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %fileFound = alloca i8, align 1
  %format = alloca i8*, align 8
  %fp = alloca %struct.__sFILE*, align 8
  %args = alloca %struct.sCookedArgs*, align 8
  %file = alloca %struct.sVString*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8 0, i8* %fileFound, align 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.470, i64 0, i64 0), i8** %format, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** @OptionFiles, align 8
  %1 = load i8*, i8** %fileName.addr, align 8
  %call = call zeroext i1 @stringListHasTest(%struct.sPtrArray* %0, i1 (i8*, i8*)* @checkSameFile, i8* %1)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fileName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.470, i32 0, i32 0), i8* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.471, i64 0, i64 0))
  store i8 1, i8* %fileFound, align 1
  br label %if.end9

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %fileName.addr, align 8
  %call1 = call %struct.__sFILE* @"\01_fopen"(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.472, i64 0, i64 0))
  store %struct.__sFILE* %call1, %struct.__sFILE** %fp, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %cmp = icmp eq %struct.__sFILE* %4, null
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %5 = load i8*, i8** %fileName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.470, i32 0, i32 0), i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.473, i64 0, i64 0))
  br label %if.end8

if.else3:                                         ; preds = %if.else
  %6 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call4 = call %struct.sCookedArgs* @cArgNewFromLineFile(%struct.__sFILE* %6)
  store %struct.sCookedArgs* %call4, %struct.sCookedArgs** %args, align 8
  %7 = load i8*, i8** %fileName.addr, align 8
  %call5 = call %struct.sVString* @vStringNewInit(i8* %7)
  store %struct.sVString* %call5, %struct.sVString** %file, align 8
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** @OptionFiles, align 8
  %9 = load %struct.sVString*, %struct.sVString** %file, align 8
  call void @stringListAdd(%struct.sPtrArray* %8, %struct.sVString* %9)
  %10 = load i8*, i8** %fileName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.470, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.474, i64 0, i64 0))
  %11 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @parseOptions(%struct.sCookedArgs* %11)
  %12 = load i8, i8* @NonOptionEncountered, align 1
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else3
  %13 = load i8*, i8** %fileName.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.475, i64 0, i64 0), i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else3
  %14 = load %struct.sCookedArgs*, %struct.sCookedArgs** %args, align 8
  call void @cArgDelete(%struct.sCookedArgs* %14)
  %15 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8
  %call7 = call i32 @fclose(%struct.__sFILE* %15)
  store i8 1, i8* %fileFound, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %16 = load i8, i8* %fileFound, align 1
  %tobool10 = trunc i8 %16 to i1
  ret i1 %tobool10
}

declare void @eStatFree(%struct.fileStatus*) #2

declare void @vStringDelete(%struct.sVString*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @expandOnSearchPathList(%struct.sPtrArray* %pathList, i8* %leaf, i1 (i8*)* %check) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %pathList.addr = alloca %struct.sPtrArray*, align 8
  %leaf.addr = alloca i8*, align 8
  %check.addr = alloca i1 (i8*)*, align 8
  %i = alloca i32, align 4
  %body = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %r = alloca %struct.sVString*, align 8
  store %struct.sPtrArray* %pathList, %struct.sPtrArray** %pathList.addr, align 8
  store i8* %leaf, i8** %leaf.addr, align 8
  store i1 (i8*)* %check, i1 (i8*)** %check.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** %pathList.addr, align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %0)
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %pathList.addr, align 8
  %3 = load i32, i32* %i, align 4
  %sub = sub i32 %3, 1
  %call1 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %2, i32 %sub)
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %call1, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  store i8* %4, i8** %body, align 8
  %5 = load i8*, i8** %body, align 8
  %6 = load i8*, i8** %leaf.addr, align 8
  %call2 = call i8* @combinePathAndFile(i8* %5, i8* %6)
  store i8* %call2, i8** %tmp, align 8
  %7 = load i1 (i8*)*, i1 (i8*)** %check.addr, align 8
  %8 = load i8*, i8** %tmp, align 8
  %call3 = call zeroext i1 %7(i8* %8)
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %tmp, align 8
  %call4 = call %struct.sVString* @vStringNewOwn(i8* %9)
  store %struct.sVString* %call4, %struct.sVString** %r, align 8
  %10 = load %struct.sVString*, %struct.sVString** %r, align 8
  store %struct.sVString* %10, %struct.sVString** %retval, align 8
  br label %return

if.else:                                          ; preds = %for.body
  %11 = load i8*, i8** %tmp, align 8
  call void @eFree(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %13
}

declare zeroext i1 @doesFileExist(i8*) #2

declare i32 @stringListCount(%struct.sPtrArray*) #2

declare %struct.sVString* @stringListItem(%struct.sPtrArray*, i32) #2

declare i8* @combinePathAndFile(i8*, i8*) #2

declare %struct.sVString* @vStringNewOwn(i8*) #2

declare i32 @scanDirectory(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (%struct.dirent**, %struct.dirent**)*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ignore_dot_file(%struct.dirent* %dent) #0 {
entry:
  %retval = alloca i32, align 4
  %dent.addr = alloca %struct.dirent*, align 8
  store %struct.dirent* %dent, %struct.dirent** %dent.addr, align 8
  %0 = load %struct.dirent*, %struct.dirent** %dent.addr, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %0, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name, i64 0, i64 0
  %1 = load i8, i8* %arraydecay, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @alphaSort(%struct.dirent** %a, %struct.dirent** %b) #0 {
entry:
  %a.addr = alloca %struct.dirent**, align 8
  %b.addr = alloca %struct.dirent**, align 8
  store %struct.dirent** %a, %struct.dirent*** %a.addr, align 8
  store %struct.dirent** %b, %struct.dirent*** %b.addr, align 8
  %0 = load %struct.dirent**, %struct.dirent*** %a.addr, align 8
  %1 = load %struct.dirent*, %struct.dirent** %0, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %1, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name, i64 0, i64 0
  %2 = load %struct.dirent**, %struct.dirent*** %b.addr, align 8
  %3 = load %struct.dirent*, %struct.dirent** %2, align 8
  %d_name1 = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 5
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name1, i64 0, i64 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay2)
  ret i32 %call
}

declare zeroext i1 @stringListHas(%struct.sPtrArray*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @accept_only_dot_ctags(%struct.dirent* %dent) #0 {
entry:
  %retval = alloca i32, align 4
  %dent.addr = alloca %struct.dirent*, align 8
  %len = alloca i64, align 8
  store %struct.dirent* %dent, %struct.dirent** %dent.addr, align 8
  %0 = load %struct.dirent*, %struct.dirent** %dent.addr, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %0, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %1, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.dirent*, %struct.dirent** %dent.addr, align 8
  %d_name1 = getelementptr inbounds %struct.dirent, %struct.dirent* %2, i32 0, i32 5
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %d_name1, i64 0, i64 0
  %3 = load i64, i64* %len, align 8
  %sub = sub i64 %3, 6
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay2, i64 %sub
  %call3 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.469, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @parseConfigurationFileOptionsInDirectoryWithLeafname(i8* %directory, i8* %leafname) #0 {
entry:
  %directory.addr = alloca i8*, align 8
  %leafname.addr = alloca i8*, align 8
  %pathname = alloca i8*, align 8
  store i8* %directory, i8** %directory.addr, align 8
  store i8* %leafname, i8** %leafname.addr, align 8
  %0 = load i8*, i8** %directory.addr, align 8
  %1 = load i8*, i8** %leafname.addr, align 8
  %call = call i8* @combinePathAndFile(i8* %0, i8* %1)
  store i8* %call, i8** %pathname, align 8
  %2 = load i8*, i8** %pathname, align 8
  %call1 = call zeroext i1 @parseFileOptions(i8* %2)
  %3 = load i8*, i8** %pathname, align 8
  call void @eFree(i8* %3)
  ret void
}

declare void @free(i8*) #2

declare zeroext i1 @stringListHasTest(%struct.sPtrArray*, i1 (i8*, i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @checkSameFile(i8* %fileName, i8* %userData) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = load i8*, i8** %fileName.addr, align 8
  %call = call zeroext i1 @isSameFile(i8* %0, i8* %1)
  ret i1 %call
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

declare i32 @fclose(%struct.__sFILE*) #2

declare zeroext i1 @isSameFile(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setXrefMode() #0 {
entry:
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 7), align 1
  call void @setTagWriter(i32 3)
  ret void
}

declare zeroext i1 @strToUInt(i8*, i32, i32*) #2

declare zeroext i1 @enablePtag(i32, i1 zeroext) #2

declare i32 @getPtagTypeForName(i8*) #2

declare void @anonHashString(i8*, i8*) #2

declare void @dumpKeywordTable(%struct.__sFILE*) #2

declare zeroext i1 @strToInt(i8*, i32, i32*) #2

declare void @printMultitableRegexFlags(i1 zeroext, i1 zeroext, %struct.__sFILE*) #2

declare void @fmtDelete(%struct.sFmtElement*) #2

declare %struct.sFmtElement* @fmtNew(i8*) #2

declare zeroext i1 @processLanguageRegexOption(i32, i32, i8*) #2

declare void @processLanguageMultitableExtendingOption(i32, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processIgnoreOption(i8* %list, i32 %IgnoreOrDefine) #0 {
entry:
  %list.addr = alloca i8*, align 8
  %IgnoreOrDefine.addr = alloca i32, align 4
  %lang = alloca i32, align 4
  %fileName = alloca i8*, align 8
  store i8* %list, i8** %list.addr, align 8
  store i32 %IgnoreOrDefine, i32* %IgnoreOrDefine.addr, align 4
  %call = call i32 @getNamedLanguage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.438, i64 0, i64 0), i64 0)
  store i32 %call, i32* %lang, align 4
  %0 = load i32, i32* %IgnoreOrDefine.addr, align 4
  %cmp = icmp eq i32 %0, 68
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %lang, align 4
  %2 = load i8*, i8** %list.addr, align 8
  call void @applyParameter(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.507, i64 0, i64 0), i8* %2)
  br label %if.end15

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %list.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call1 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.508, i64 0, i64 0), i32 %conv)
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %5 = load i8*, i8** %list.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 64
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  %7 = load i8*, i8** %list.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  %8 = load i8*, i8** %list.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %8, %cond.false ]
  store i8* %cond, i8** %fileName, align 8
  %9 = load i8*, i8** %fileName, align 8
  call void @addIgnoreListFromFile(i8* %9)
  br label %if.end14

if.else8:                                         ; preds = %if.else
  %10 = load i8*, i8** %list.addr, align 8
  %call9 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else8
  %11 = load i32, i32* %lang, align 4
  call void @applyParameter(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.509, i64 0, i64 0), i8* null)
  br label %if.end

if.else13:                                        ; preds = %if.else8
  %12 = load i8*, i8** %list.addr, align 8
  call void @readIgnoreList(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %cond.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processHeaderListOption(i32 %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i32, align 4
  %parameter.addr = alloca i8*, align 8
  %clear = alloca i8, align 1
  store i32 %option, i32* %option.addr, align 4
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call zeroext i1 @doesFileExist(i8* %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %option.addr, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.512, i64 0, i64 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.446, i64 0, i64 0))
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @installHeaderListDefaults()
  br label %if.end12

if.else:                                          ; preds = %if.end
  store i8 1, i8* %clear, align 1
  %3 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 43
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %5 = load i8*, i8** %parameter.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %parameter.addr, align 8
  store i8 0, i8* %clear, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  %cmp7 = icmp eq %struct.sPtrArray* %6, null
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %call10 = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call10, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.513, i64 0, i64 0))
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 11), align 8
  %8 = load i8*, i8** %parameter.addr, align 8
  %9 = load i8, i8* %clear, align 1
  %tobool = trunc i8 %9 to i1
  call void @addExtensionList(%struct.sPtrArray* %7, i8* %8, i1 zeroext %tobool)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addIgnoreListFromFile(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %lang = alloca i32, align 4
  %tokens = alloca %struct.sPtrArray*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.sVString*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %call = call i32 @getNamedLanguage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.438, i64 0, i64 0), i64 0)
  store i32 %call, i32* %lang, align 4
  %0 = load i8*, i8** %fileName.addr, align 8
  %call1 = call %struct.sPtrArray* @stringListNewFromFile(i8* %0)
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %tokens, align 8
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %tokens, align 8
  %cmp = icmp eq %struct.sPtrArray* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fileName.addr, align 8
  call void (i32, i8*, ...) @error(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.510, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %tokens, align 8
  %call2 = call i32 @stringListCount(%struct.sPtrArray* %3)
  store i32 %call2, i32* %c, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %tokens, align 8
  %7 = load i32, i32* %i, align 4
  %call4 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %6, i32 %7)
  store %struct.sVString* %call4, %struct.sVString** %s, align 8
  %8 = load i32, i32* %lang, align 4
  %9 = load %struct.sVString*, %struct.sVString** %s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %9, i32 0, i32 2
  %10 = load i8*, i8** %buffer, align 8
  call void @applyParameter(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.509, i64 0, i64 0), i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.sPtrArray*, %struct.sPtrArray** %tokens, align 8
  call void @stringListDelete(%struct.sPtrArray* %12)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @readIgnoreList(i8* %list) #0 {
entry:
  %list.addr = alloca i8*, align 8
  %lang = alloca i32, align 4
  %newList = alloca i8*, align 8
  %token = alloca i8*, align 8
  store i8* %list, i8** %list.addr, align 8
  %call = call i32 @getNamedLanguage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.438, i64 0, i64 0), i64 0)
  store i32 %call, i32* %lang, align 4
  %0 = load i8*, i8** %list.addr, align 8
  %call1 = call i8* @stringCopy(i8* %0)
  store i8* %call1, i8** %newList, align 8
  %1 = load i8*, i8** %newList, align 8
  %call2 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.511, i64 0, i64 0))
  store i8* %call2, i8** %token, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %token, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %lang, align 4
  %4 = load i8*, i8** %token, align 8
  call void @applyParameter(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.509, i64 0, i64 0), i8* %4)
  %call3 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.511, i64 0, i64 0))
  store i8* %call3, i8** %token, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %newList, align 8
  call void @eFree(i8* %5)
  ret void
}

declare %struct.sPtrArray* @stringListNewFromFile(i8*) #2

declare i8* @strtok(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addExtensionList(%struct.sPtrArray* %slist, i8* %elist, i1 zeroext %clear) #0 {
entry:
  %slist.addr = alloca %struct.sPtrArray*, align 8
  %elist.addr = alloca i8*, align 8
  %clear.addr = alloca i8, align 1
  %extensionList = alloca i8*, align 8
  %extension = alloca i8*, align 8
  %first = alloca i8, align 1
  %separator = alloca i8*, align 8
  %vfp = alloca %struct.__sFILE*, align 8
  store %struct.sPtrArray* %slist, %struct.sPtrArray** %slist.addr, align 8
  store i8* %elist, i8** %elist.addr, align 8
  %frombool = zext i1 %clear to i8
  store i8 %frombool, i8* %clear.addr, align 1
  %0 = load i8*, i8** %elist.addr, align 8
  %call = call i8* @eStrdup(i8* %0)
  store i8* %call, i8** %extensionList, align 8
  store i8* null, i8** %extension, align 8
  store i8 1, i8* %first, align 1
  %1 = load i8, i8* %clear.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.514, i64 0, i64 0))
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %slist.addr, align 8
  call void @stringListClear(%struct.sPtrArray* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.515, i64 0, i64 0))
  %3 = load i8*, i8** %elist.addr, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %elist.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end9

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i8*, i8** %extensionList, align 8
  store i8* %6, i8** %extension, align 8
  %7 = load i8*, i8** %elist.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 46
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  %9 = load i8*, i8** %extension, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %extension, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end9
  %10 = load i8*, i8** %extension, align 8
  %cmp10 = icmp ne i8* %10, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %extension, align 8
  %call12 = call i8* @strchr(i8* %11, i32 46)
  store i8* %call12, i8** %separator, align 8
  %12 = load i8*, i8** %separator, align 8
  %cmp13 = icmp ne i8* %12, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body
  %13 = load i8*, i8** %separator, align 8
  store i8 0, i8* %13, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %while.body
  %14 = load i8, i8* %first, align 1
  %tobool17 = trunc i8 %14 to i1
  %15 = zext i1 %tobool17 to i64
  %cond = select i1 %tobool17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.205, i64 0, i64 0)
  %16 = load i8*, i8** %extension, align 8
  %17 = load i8, i8* %16, align 1
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  %18 = load i8*, i8** %extension, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.517, i64 0, i64 0), %cond.true ], [ %18, %cond.false ]
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.516, i64 0, i64 0), i8* %cond, i8* %cond22)
  %19 = load %struct.sPtrArray*, %struct.sPtrArray** %slist.addr, align 8
  %20 = load i8*, i8** %extension, align 8
  %call23 = call %struct.sVString* @vStringNewInit(i8* %20)
  call void @stringListAdd(%struct.sPtrArray* %19, %struct.sVString* %call23)
  store i8 0, i8* %first, align 1
  %21 = load i8*, i8** %separator, align 8
  %cmp24 = icmp eq i8* %21, null
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %cond.end
  store i8* null, i8** %extension, align 8
  br label %if.end27

if.else:                                          ; preds = %cond.end
  %22 = load i8*, i8** %separator, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %add.ptr, i8** %extension, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.end
  %23 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool28 = trunc i8 %23 to i1
  br i1 %tobool28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %do.body
  %24 = load %struct.__sFILE*, %struct.__sFILE** @thread_stderr, align 8
  store %struct.__sFILE* %24, %struct.__sFILE** %vfp, align 8
  %25 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %call30 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.518, i64 0, i64 0))
  %26 = load %struct.sPtrArray*, %struct.sPtrArray** %slist.addr, align 8
  %27 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  call void @stringListPrint(%struct.sPtrArray* %26, %struct.__sFILE* %27)
  %28 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %call31 = call i32 @putc(i32 10, %struct.__sFILE* %28)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end32
  ret void
}

declare void @stringListClear(%struct.sPtrArray*) #2

declare void @stringListPrint(%struct.sPtrArray*, %struct.__sFILE*) #2

declare i32 @putc(i32, %struct.__sFILE*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @preload(%struct.preloadPathElt* %pathList) #0 {
entry:
  %pathList.addr = alloca %struct.preloadPathElt*, align 8
  %i = alloca i32, align 4
  %loaded = alloca %struct.sPtrArray*, align 8
  %elt = alloca %struct.preloadPathElt*, align 8
  %maker = alloca i8* (i8*, i8*)*, align 8
  %path1 = alloca i8*, align 8
  store %struct.preloadPathElt* %pathList, %struct.preloadPathElt** %pathList.addr, align 8
  %call = call %struct.sPtrArray* @stringListNew()
  store %struct.sPtrArray* %call, %struct.sPtrArray** %loaded, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.preloadPathElt*, %struct.preloadPathElt** %pathList.addr, align 8
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %0, i64 %idxprom
  %path = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %path, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.preloadPathElt*, %struct.preloadPathElt** %pathList.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %3, i64 %idx.ext
  store %struct.preloadPathElt* %add.ptr, %struct.preloadPathElt** %elt, align 8
  %5 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %makePath = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %5, i32 0, i32 2
  %6 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %makePath, align 8
  store i8* (i8*, i8*)* %6, i8* (i8*, i8*)** %maker, align 8
  %7 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %path2 = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %7, i32 0, i32 0
  %8 = load i8*, i8** %path2, align 8
  store i8* %8, i8** %path1, align 8
  %9 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %maker, align 8
  %tobool = icmp ne i8* (i8*, i8*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %maker, align 8
  %11 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %path3 = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %11, i32 0, i32 0
  %12 = load i8*, i8** %path3, align 8
  %13 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %extra = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %13, i32 0, i32 3
  %14 = load i8*, i8** %extra, align 8
  %call4 = call i8* %10(i8* %12, i8* %14)
  store i8* %call4, i8** %path1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load i8*, i8** %path1, align 8
  %cmp5 = icmp eq i8* %15, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %for.inc

if.end7:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end7
  br label %do.end

do.end:                                           ; preds = %do.body
  %16 = load i32, i32* @Stage, align 4
  %17 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %stage = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %17, i32 0, i32 4
  %18 = load i32, i32* %stage, align 8
  %cmp8 = icmp ne i32 %16, %18
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %do.end
  %19 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %stage10 = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %19, i32 0, i32 4
  %20 = load i32, i32* %stage10, align 8
  store i32 %20, i32* @Stage, align 4
  %21 = load i32, i32* @Stage, align 4
  %idxprom11 = zext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [10 x i8*], [10 x i8*]* @StageDescription, i64 0, i64 %idxprom11
  %22 = load i8*, i8** %arrayidx12, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i8* %22)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %do.end
  %23 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %isDirectory = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %23, i32 0, i32 1
  %24 = load i8, i8* %isDirectory, align 8
  %tobool14 = trunc i8 %24 to i1
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %25 = load i8*, i8** %path1, align 8
  %26 = load %struct.sPtrArray*, %struct.sPtrArray** %loaded, align 8
  %call16 = call zeroext i1 @parseAllConfigurationFilesOptionsInDirectory(i8* %25, %struct.sPtrArray* %26)
  br label %if.end18

if.else:                                          ; preds = %if.end13
  %27 = load i8*, i8** %path1, align 8
  %call17 = call zeroext i1 @parseFileOptions(i8* %27)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %28 = load i8*, i8** %path1, align 8
  %29 = load %struct.preloadPathElt*, %struct.preloadPathElt** %elt, align 8
  %path19 = getelementptr inbounds %struct.preloadPathElt, %struct.preloadPathElt* %29, i32 0, i32 0
  %30 = load i8*, i8** %path19, align 8
  %cmp20 = icmp ne i8* %28, %30
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %31 = load i8*, i8** %path1, align 8
  call void @eFree(i8* %31)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.then6
  %32 = load i32, i32* %i, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.sPtrArray*, %struct.sPtrArray** %loaded, align 8
  call void @stringListClear(%struct.sPtrArray* %33)
  %34 = load %struct.sPtrArray*, %struct.sPtrArray** %loaded, align 8
  call void @stringListDelete(%struct.sPtrArray* %34)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* @prependEnvvar(i8* %path, i8* %envvar) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %envvar.addr = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  %envval = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %envvar, i8** %envvar.addr, align 8
  store i8* null, i8** %full_path, align 8
  %0 = load i8*, i8** %envvar.addr, align 8
  %call = call i8* @ios_getenv(i8* %0)
  store i8* %call, i8** %envval, align 8
  %1 = load i8*, i8** %envval, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %envval, align 8
  %3 = load i8*, i8** %path.addr, align 8
  %call1 = call i8* @combinePathAndFile(i8* %2, i8* %3)
  store i8* %call1, i8** %full_path, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %full_path, align 8
  ret i8* %4
}

declare i8* @ios_getenv(i8*) #2

declare %struct.sPtrArray* @stringListNewFromArgv(i8**) #2

declare void @stringListCombine(%struct.sPtrArray*, %struct.sPtrArray*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetXtagsToDefaultValues() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 @countXtags()
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call1 = call zeroext i1 @enableXtag(i32 %1, i1 zeroext false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call zeroext i1 @enableXtag(i32 0, i1 zeroext true)
  %call3 = call zeroext i1 @enableXtag(i32 6, i1 zeroext true)
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
