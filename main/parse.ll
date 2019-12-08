; ModuleID = 'parse.c'
source_filename = "parse.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios11.0.0"

%struct.sHashTable = type opaque
%struct.sParserObject = type { %struct.sParserDefinition*, %struct.sKindDefinition*, %struct.sPtrArray*, %struct.sPtrArray*, %struct.sPtrArray*, i8, i32, %struct.slaveControlBlock*, %struct.kindControlBlock*, %struct.lregexControlBlock* }
%struct.sParserDefinition = type { i8*, %struct.sKindDefinition*, i32, i8**, i8**, i8**, void (i32)*, void (i32, i1)*, void ()*, i32 (i32)*, i8* (%struct._MIO*, i32*, i32)**, i32, i8, i8, i8, i8, %struct.tagRegexTable*, i32, %struct.keywordTable*, i32, %struct.sTagXpathTableTable*, i32, i8, %struct.sFieldDefinition*, i32, %struct.sXtagDefinition*, i32, %struct.sParserDependency*, i32, %struct.sParameterHandlerTable*, i32, %struct.sXpathFileSpec*, i32, i32, i8 }
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
%struct.sKindDefinition = type { i8, i8, i8*, i8*, i8, i32, %struct.sRoleDesc*, %struct.sScopeSeparator*, i32, i32, i32, %struct.sKindDefinition*, %struct.sKindDefinition* }
%struct.sRoleDesc = type { i8, i8*, i8* }
%struct.sScopeSeparator = type { i32, i8* }
%struct.sPtrArray = type opaque
%struct.slaveControlBlock = type opaque
%struct.kindControlBlock = type opaque
%struct.lregexControlBlock = type opaque
%struct.sOptionValues = type { i8, i8, i8, i32, i8, i32, i8, i8, %struct.sFmtElement*, i8*, i8*, %struct.sPtrArray*, %struct.sPtrArray*, i32, i8*, i8*, i32, i8, i8, i8*, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32 }
%struct.sFmtElement = type opaque
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.sFlagDefinition = type { i8, i8*, void (i8, i8*)*, void (i8*, i8*, i8*)*, i8*, i8* }
%struct.taster = type { %struct.sVString* (%struct._MIO*)*, i8* }
%struct.GetLanguageRequest = type { i32, i8*, %struct._MIO* }
%struct.sTrashBox = type opaque
%struct.preLangDefFlagData = type { i8*, i32 }
%struct.sSubparser = type { %struct.sSlaveParser*, %struct.sSubparser*, i8, i8, i32, void (%struct.sSubparser*)*, void (%struct.sSubparser*)*, void (%struct.sSubparser*, i8*)*, void (%struct.sSubparser*, %struct.sTagEntryInfo*, i32)* }
%struct.sSlaveParser = type { i32, i32, i8*, %struct.sSlaveParser* }
%struct.langKindDefinitionStruct = type { i8*, i8* }
%struct.colprintTable = type opaque
%struct.colprintLine = type opaque
%struct.regexMatch = type { i64, i64 }
%struct.sPtagDesc = type { i8, i8*, i8*, i1 (%struct.sPtagDesc*, i8*)*, i8 }
%struct.makeKindDescriptionPseudoTagData = type { i8*, %struct.sPtagDesc*, i8 }
%struct.getLangCtx = type { i8*, %struct._MIO*, i8 }
%struct.fileStatus = type { i8*, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.parserCandidate = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@specTypeName = global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 8
@LanguageHTable = internal global %struct.sHashTable* null, align 8
@LanguageTable = internal global %struct.sParserObject* null, align 8
@LanguageCount = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kindGhost = internal global %struct.sKindDefinition { i8 0, i8 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, align 8
@Option = external global %struct.sOptionValues, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"    %s: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Installing parsers: \00", align 1
@BuiltInParsers = internal global [92 x %struct.sParserDefinition* ()*] [%struct.sParserDefinition* ()* @CTagsSelfTestParser, %struct.sParserDefinition* ()* @AdaParser, %struct.sParserDefinition* ()* @AntParser, %struct.sParserDefinition* ()* @AsmParser, %struct.sParserDefinition* ()* @AspParser, %struct.sParserDefinition* ()* @AutoconfParser, %struct.sParserDefinition* ()* @AutoItParser, %struct.sParserDefinition* ()* @AutomakeParser, %struct.sParserDefinition* ()* @AwkParser, %struct.sParserDefinition* ()* @BasicParser, %struct.sParserDefinition* ()* @BetaParser, %struct.sParserDefinition* ()* @ClojureParser, %struct.sParserDefinition* ()* @CParser, %struct.sParserDefinition* ()* @CppParser, %struct.sParserDefinition* ()* @CPreProParser, %struct.sParserDefinition* ()* @CssParser, %struct.sParserDefinition* ()* @CsharpParser, %struct.sParserDefinition* ()* @CtagsParser, %struct.sParserDefinition* ()* @CobolParser, %struct.sParserDefinition* ()* @CUDAParser, %struct.sParserDefinition* ()* @DParser, %struct.sParserDefinition* ()* @DiffParser, %struct.sParserDefinition* ()* @DtdParser, %struct.sParserDefinition* ()* @DTSParser, %struct.sParserDefinition* ()* @DosBatchParser, %struct.sParserDefinition* ()* @EiffelParser, %struct.sParserDefinition* ()* @ElmParser, %struct.sParserDefinition* ()* @ErlangParser, %struct.sParserDefinition* ()* @FalconParser, %struct.sParserDefinition* ()* @FlexParser, %struct.sParserDefinition* ()* @FortranParser, %struct.sParserDefinition* ()* @GdbinitParser, %struct.sParserDefinition* ()* @GoParser, %struct.sParserDefinition* ()* @HtmlParser, %struct.sParserDefinition* ()* @IniconfParser, %struct.sParserDefinition* ()* @ITclParser, %struct.sParserDefinition* ()* @JavaParser, %struct.sParserDefinition* ()* @JavaPropertiesParser, %struct.sParserDefinition* ()* @JavaScriptParser, %struct.sParserDefinition* ()* @JsonParser, %struct.sParserDefinition* ()* @LdScriptParser, %struct.sParserDefinition* ()* @LispParser, %struct.sParserDefinition* ()* @LuaParser, %struct.sParserDefinition* ()* @M4Parser, %struct.sParserDefinition* ()* @ManParser, %struct.sParserDefinition* ()* @MakefileParser, %struct.sParserDefinition* ()* @MatLabParser, %struct.sParserDefinition* ()* @MyrddinParser, %struct.sParserDefinition* ()* @ObjcParser, %struct.sParserDefinition* ()* @OldCppParser, %struct.sParserDefinition* ()* @OldCParser, %struct.sParserDefinition* ()* @OcamlParser, %struct.sParserDefinition* ()* @PasswdParser, %struct.sParserDefinition* ()* @PascalParser, %struct.sParserDefinition* ()* @PerlParser, %struct.sParserDefinition* ()* @Perl6Parser, %struct.sParserDefinition* ()* @PhpParser, %struct.sParserDefinition* ()* @PodParser, %struct.sParserDefinition* ()* @ProtobufParser, %struct.sParserDefinition* ()* @PuppetManifestParser, %struct.sParserDefinition* ()* @PythonParser, %struct.sParserDefinition* ()* @PythonLoggingConfigParser, %struct.sParserDefinition* ()* @QemuHXParser, %struct.sParserDefinition* ()* @QtMocParser, %struct.sParserDefinition* ()* @RParser, %struct.sParserDefinition* ()* @RSpecParser, %struct.sParserDefinition* ()* @RexxParser, %struct.sParserDefinition* ()* @RobotParser, %struct.sParserDefinition* ()* @RpmSpecParser, %struct.sParserDefinition* ()* @RstParser, %struct.sParserDefinition* ()* @RubyParser, %struct.sParserDefinition* ()* @RustParser, %struct.sParserDefinition* ()* @SchemeParser, %struct.sParserDefinition* ()* @ShParser, %struct.sParserDefinition* ()* @SlangParser, %struct.sParserDefinition* ()* @SmlParser, %struct.sParserDefinition* ()* @SqlParser, %struct.sParserDefinition* ()* @SystemdUnitParser, %struct.sParserDefinition* ()* @TclParser, %struct.sParserDefinition* ()* @TclOOParser, %struct.sParserDefinition* ()* @TexParser, %struct.sParserDefinition* ()* @TTCNParser, %struct.sParserDefinition* ()* @VeraParser, %struct.sParserDefinition* ()* @VerilogParser, %struct.sParserDefinition* ()* @SystemVerilogParser, %struct.sParserDefinition* ()* @UCtagsAspellParser, %struct.sParserDefinition* ()* @VhdlParser, %struct.sParserDefinition* ()* @VimParser, %struct.sParserDefinition* ()* @WindResParser, %struct.sParserDefinition* ()* @YaccParser, %struct.sParserDefinition* ()* @YumRepoParser, %struct.sParserDefinition* ()* @ZephirParser], align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"parser definition must contain name\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"%s parser definition must define one and only one parsing routine\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@longName = internal global %struct.sVString* null, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"No language specified for \22%s\22 option\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Language \22%s\22 already defined\00", align 1
@PreLangDefFlagDef = internal global [4 x %struct.sFlagDefinition] [%struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_lang_def_flag_base_long, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.127, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_lang_def_flag_direction_long, i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.129, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_lang_def_flag_direction_long, i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.131, i32 0, i32 0) }, %struct.sFlagDefinition { i8 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i32 0, i32 0), void (i8, i8*)* null, void (i8*, i8*, i8*)* @pre_lang_def_flag_direction_long, i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.133, i32 0, i32 0) }], align 8
@.str.13 = private unnamed_addr constant [65 x i8] c"Ignore the direction of subparser because \22{base=}\22 is not given\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"kinddef-\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"kinds\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Unknown language \22%s\22 in \22%s\22 option\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"kinds-\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"No language given in \22%s\22 option\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [12 x i8] c" [disabled]\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"alias-all\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"clear aliases for %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"  Installing default language aliases:\0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"Use \22%s\22 option for reset (\22default\22) or clearing (\22\22)\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"alias-\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"extradef-\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"_fielddef-\00", align 1
@.str.32 = private unnamed_addr constant [121 x i8] c"runParserInNarrowedInputStream: %s; file: %s, start(line: %lu, offset: %ld, srcline: %lu) - end(line: %lu, offset: %ld)\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"input-encoding-\00", align 1
@EncodingMap = internal global i8** null, align 8
@EncodingMapMax = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [39 x i8] c"%s requires a memory stream for input\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"%s/%s requires a memory stream for input\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"ignoring %s (unknown language/language disabled)\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"no separator(+) found: %s\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"the name of source table is empty in table extending: %s\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"the name of dist table is empty in table extending: %s\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"_tabledef-\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"A parameter is needed after \22%s\22 option\00", align 1
@makeKindSeparatorsPseudoTags.sepval = internal global %struct.sVString* null, align 8
@__const.makeKindSeparatorsPseudoTags.name = private unnamed_addr constant [5 x i8] c"/\00\00/\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"%s%02x%02x\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"no such parameter in %s: %s\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"force enable \22%s\22 as base parser\0A\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"scheduleRunningBaseparser %s with subparsers: \00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"ghost\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"%s parser specified with --language-force is disabled\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"Get file language for %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"\09pattern: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c".in\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"\09pattern + template(%s): %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@eager_tasters = internal constant [6 x %struct.taster] [%struct.taster { %struct.sVString* (%struct._MIO*)* @extractInterpreter, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0) }, %struct.taster { %struct.sVString* (%struct._MIO*)* @extractZshAutoloadTag, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0) }, %struct.taster { %struct.sVString* (%struct._MIO*)* @extractEmacsModeAtFirstLine, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i32 0, i32 0) }, %struct.taster { %struct.sVString* (%struct._MIO*)* @extractEmacsModeLanguageAtEOF, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0) }, %struct.taster { %struct.sVString* (%struct._MIO*)* @extractVimFileType, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0) }, %struct.taster { %struct.sVString* (%struct._MIO*)* @extractPHPMark, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0) }], align 8
@.str.55 = private unnamed_addr constant [26 x i8] c"\09fallback[hint = %d]: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"candidates\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"candidates after sorting and filtering\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"\09selector: %p\0A\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"\09selector: NONE\0A\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"\09\09#%s: %u\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"\09\09\09%u: %s (%s: \22%s\22)\0A\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"\09\09selection: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"\09\09no selection\0A\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"\09%s: %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"interpreter\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"zsh autoload tag\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"emacs mode at the first line\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"emacs mode at the EOF\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"vim modeline\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"PHP marker\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"#compdef\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"#autoload\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"zsh\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"-*-\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"mode:\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"End:\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"Local Variables:\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"vim:\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"vi:\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"ex:\00", align 1
@__const.extractVimFileType.prefix = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0)], align 8
@.str.82 = private unnamed_addr constant [10 x i8] c"filetype=\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"ft=\00", align 1
@__const.determineVimFileType.filetype_prefix = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)], align 8
@.str.84 = private unnamed_addr constant [6 x i8] c"<?php\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c" (removed from %s)\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"Initialize parser: %s\0A\00", align 1
@CTagsSelfTestParser.extensions = internal constant [1 x i8*] zeroinitializer, align 8
@.str.91 = private unnamed_addr constant [14 x i8] c"CTagsSelfTest\00", align 1
@CTST_Kinds = internal global [8 x %struct.sKindDefinition] [%struct.sKindDefinition { i8 1, i8 98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0), i8 0, i32 1, %struct.sRoleDesc* getelementptr inbounds ([1 x %struct.sRoleDesc], [1 x %struct.sRoleDesc]* @CTST_BrokenRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.95, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 76, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.96, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 66, i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.99, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 69, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.100, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 0, i8 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.102, i32 0, i32 0), i8 0, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @CTST_DisabledKindRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, %struct.sKindDefinition { i8 1, i8 101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i8 0, i32 2, %struct.sRoleDesc* getelementptr inbounds ([2 x %struct.sRoleDesc], [2 x %struct.sRoleDesc]* @CTST_EnabledKindRoles, i32 0, i32 0), %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }], align 8
@.str.92 = private unnamed_addr constant [11 x i8] c"broken tag\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"name with unwanted characters\00", align 1
@CTST_BrokenRoles = internal global [1 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0) }], align 8
@.str.94 = private unnamed_addr constant [10 x i8] c"no letter\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"kind with no letter\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"kind with no long name\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"nothingSpecial\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"emit a normal tag\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"beginning of an area for a guest\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"end of an area for a guest\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"a kind disabled by default\00", align 1
@CTST_DisabledKindRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.106, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.107, i32 0, i32 0) }], align 8
@.str.103 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"a kind enabled by default\00", align 1
@CTST_EnabledKindRoles = internal global [2 x %struct.sRoleDesc] [%struct.sRoleDesc { i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i32 0, i32 0) }, %struct.sRoleDesc { i8 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.109, i32 0, i32 0) }], align 8
@.str.105 = private unnamed_addr constant [7 x i8] c"broken\00", align 1
@.str.106 = private unnamed_addr constant [40 x i8] c"disbaled role attached to disabled kind\00", align 1
@.str.107 = private unnamed_addr constant [39 x i8] c"enabled role attached to disabled kind\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"disbaled role attached to enabled kind\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"enabled role attached to enabled kind\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"one\0Aof\0Dbroken\09name\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"\\Broken\09Context\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"abnormal kindDefinition testing (no letter)\00", align 1
@.str.113 = private unnamed_addr constant [47 x i8] c"abnormal kindDefinition testing (no long name)\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"NOTHING_SPECIAL\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"disable-kind-no-role\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"enabled-kind-no-role\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"disable-kind-disabled-role\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"enabled-kind-disabled-role\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"disable-kind-enabled-role\00", align 1
@.str.120 = private unnamed_addr constant [26 x i8] c"enabled-kind-enabled-role\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"Add optlib parser: %s\0A\00", align 1
@defaultFileKind = internal constant %struct.sKindDefinition { i8 0, i8 70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), i8 0, i32 0, %struct.sRoleDesc* null, %struct.sScopeSeparator* null, i32 0, i32 0, i32 0, %struct.sKindDefinition* null, %struct.sKindDefinition* null }, align 8
@.str.124 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"BASEPARSER\00", align 1
@.str.127 = private unnamed_addr constant [25 x i8] c"utilize as a base parser\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.129 = private unnamed_addr constant [49 x i8] c"make the base parser dedicated to this subparser\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.131 = private unnamed_addr constant [48 x i8] c"share the base parser with the other subparsers\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"bidirectional\00", align 1
@.str.133 = private unnamed_addr constant [58 x i8] c"utilize the base parser both 'dedicated' and 'shared' way\00", align 1
@.str.134 = private unnamed_addr constant [59 x i8] c"No base parser specified for \22%s\22 flag of --langdef option\00", align 1
@.str.135 = private unnamed_addr constant [68 x i8] c"Unknown language(%s) is specified for \22%s\22 flag of --langdef option\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"Freeing %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [46 x i8] c"no kind definition specified in \22--%s\22 option\00", align 1
@.str.138 = private unnamed_addr constant [42 x i8] c"no kind letter specified in \22--%s\22 option\00", align 1
@.str.139 = private unnamed_addr constant [69 x i8] c"the kind letter give in \22--%s\22 option is not an alphabet or a number\00", align 1
@.str.140 = private unnamed_addr constant [65 x i8] c"the kind letter `F' in \22--%s\22 option is reserved for \22file\22 kind\00", align 1
@.str.141 = private unnamed_addr constant [72 x i8] c"the kind for letter `%c' specified in \22--%s\22 option is already defined.\00", align 1
@.str.142 = private unnamed_addr constant [62 x i8] c"wrong kind definition in \22--%s\22 option: no comma after letter\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"no kind name specified in \22--%s\22 option\00", align 1
@.str.144 = private unnamed_addr constant [47 x i8] c"no kind description specified in \22--%s\22 option\00", align 1
@.str.145 = private unnamed_addr constant [56 x i8] c"unacceptable char as part of kind name in \22--%s\22 option\00", align 1
@.str.146 = private unnamed_addr constant [40 x i8] c"the kind name in \22--%s\22 option is empty\00", align 1
@.str.147 = private unnamed_addr constant [70 x i8] c"the kind for name `%s' specified in \22--%s\22 option is already defined.\00", align 1
@.str.148 = private unnamed_addr constant [49 x i8] c"found an empty kind description in \22--%s\22 option\00", align 1
@.str.149 = private unnamed_addr constant [49 x i8] c"unexpected character in kind specification: '%c'\00", align 1
@.str.150 = private unnamed_addr constant [39 x i8] c"Unsupported kind: '%s' for --%s option\00", align 1
@.str.151 = private unnamed_addr constant [39 x i8] c"Unsupported kind: '%c' for --%s option\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"reset aliases for %s\0A\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"add an alias %s to %s\0A\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"remove an alias %s from %s\0A\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"set alias %s to %s\0A\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"L:LANGUAGE\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"L:TYPE\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"L:MAP\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"L:PATTERN\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"L:EXTENSION\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c" *.%s\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"L:ALIAS\00", align 1
@.str.164 = private unnamed_addr constant [47 x i8] c"no extra definition specified in \22--%s\22 option\00", align 1
@.str.165 = private unnamed_addr constant [48 x i8] c"no extra description specified in \22--%s\22 option\00", align 1
@.str.166 = private unnamed_addr constant [41 x i8] c"the extra name in \22--%s\22 option is empty\00", align 1
@.str.167 = private unnamed_addr constant [57 x i8] c"unacceptable char as part of extra name in \22--%s\22 option\00", align 1
@.str.168 = private unnamed_addr constant [47 x i8] c"no field definition specified in \22--%s\22 option\00", align 1
@.str.169 = private unnamed_addr constant [48 x i8] c"no field description specified in \22--%s\22 option\00", align 1
@.str.170 = private unnamed_addr constant [41 x i8] c"the field name in \22--%s\22 option is empty\00", align 1
@.str.171 = private unnamed_addr constant [57 x i8] c"unacceptable char as part of field name in \22--%s\22 option\00", align 1
@.str.172 = private unnamed_addr constant [44 x i8] c"field description in \22--%s\22 option is empty\00", align 1
@parsersUsedInCurrentInput = internal global %struct.sPtrArray* null, align 8
@.str.173 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.175 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initLanguageTables() #0 {
entry:
  store %struct.sHashTable* null, %struct.sHashTable** @LanguageHTable, align 8
  store %struct.sParserObject* null, %struct.sParserObject** @LanguageTable, align 8
  store i32 0, i32* @LanguageCount, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countParsers() #0 {
entry:
  %0 = load i32, i32* @LanguageCount, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @makeSimpleTag(%struct.sVString* %name, i32 %kindIndex) #0 {
entry:
  %name.addr = alloca %struct.sVString*, align 8
  %kindIndex.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 0, i32* %r, align 4
  %0 = load i32, i32* %kindIndex.addr, align 4
  %call = call zeroext i1 @isInputLanguageKindEnabled(i32 %0)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %cmp = icmp ne %struct.sVString* %1, null
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %cmp2 = icmp ugt i64 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %4 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %4, i32 0, i32 2
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i32, i32* %kindIndex.addr, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* %5, i32 %6)
  %call3 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call3, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  %7 = load i32, i32* %r, align 4
  ret i32 %7
}

declare zeroext i1 @isInputLanguageKindEnabled(i32) #1

declare void @initTagEntry(%struct.sTagEntryInfo*, i8*, i32) #1

declare i32 @makeTagEntry(%struct.sTagEntryInfo*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @makeSimpleRefTag(%struct.sVString* %name, i32 %kindIndex, i32 %roleIndex) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca %struct.sVString*, align 8
  %kindIndex.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %e = alloca %struct.sTagEntryInfo, align 8
  store %struct.sVString* %name, %struct.sVString** %name.addr, align 8
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  store i32 0, i32* %r, align 4
  %call = call zeroext i1 @isXtagEnabled(i32 4)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %r, align 4
  store i32 %0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i32, i32* %kindIndex.addr, align 4
  %2 = load i32, i32* %roleIndex.addr, align 4
  %call1 = call zeroext i1 @isInputLanguageRoleEnabled(i32 %1, i32 %2)
  br i1 %call1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %do.end
  %3 = load %struct.sVString*, %struct.sVString** %name.addr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i32, i32* %kindIndex.addr, align 4
  %6 = load i32, i32* %roleIndex.addr, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %4, i32 %5, i32 %6)
  %call3 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  store i32 %call3, i32* %r, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.end
  %7 = load i32, i32* %r, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare zeroext i1 @isXtagEnabled(i32) #1

declare zeroext i1 @isInputLanguageRoleEnabled(i32, i32) #1

declare void @initRefTagEntry(%struct.sTagEntryInfo*, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isLanguageEnabled(i32 %language) #0 {
entry:
  %retval = alloca i1, align 1
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 1
  %5 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kindTable, align 8
  %cmp = icmp eq %struct.sKindDefinition* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 11
  %7 = load i32, i32* %method, align 8
  %and = and i32 %7, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.else, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %method3 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 11
  %9 = load i32, i32* %method3, align 8
  %and4 = and i32 %9, 4
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true2
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then6, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isLanguageVisible(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 22
  %4 = load i8, i8* %invisible, align 4
  %tobool = trunc i8 %4 to i1
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sParserDefinition* @parserNew(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %result = alloca %struct.sParserDefinition*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i8* @eCalloc(i64 1, i64 232)
  %0 = bitcast i8* %call to %struct.sParserDefinition*
  store %struct.sParserDefinition* %0, %struct.sParserDefinition** %result, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i8* @eStrdup(i8* %1)
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %result, align 8
  %name2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 0
  store i8* %call1, i8** %name2, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %result, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %enabled, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %result, align 8
  ret %struct.sParserDefinition* %4
}

declare i8* @eCalloc(i64, i64) #1

declare i8* @eStrdup(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesLanguageAllowNullTag(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %allowNullTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 14
  %3 = load i8, i8* %allowNullTag, align 2
  %tobool = trunc i8 %3 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesLanguageRequestAutomaticFQTag(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 15
  %3 = load i8, i8* %requestAutomaticFQTag, align 1
  %tobool = trunc i8 %3 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getLanguageName(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  store i8* %4, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %5 = load i8*, i8** %result, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @getLanguageKindName(i32 %language, i32 %kindIndex) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindIndex.addr = alloca i32, align 4
  %kdef = alloca %struct.sKindDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  %1 = load i32, i32* %kindIndex.addr, align 4
  %call = call %struct.sKindDefinition* @getLanguageKind(i32 %0, i32 %1)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %kdef, align 8
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %2, i32 0, i32 2
  %3 = load i8*, i8** %name, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @getLanguageKind(i32 %language, i32 %kindIndex) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindIndex.addr = alloca i32, align 4
  %kdef = alloca %struct.sKindDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %kindIndex.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %do.end
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  %fileKind = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 1
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %fileKind, align 8
  store %struct.sKindDefinition* %3, %struct.sKindDefinition** %kdef, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %do.end
  store %struct.sKindDefinition* @kindGhost, %struct.sKindDefinition** %kdef, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body2

do.body2:                                         ; preds = %sw.default
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  %4 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %5 = load i32, i32* %language.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i64 %idxprom4
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx5, i32 0, i32 8
  %6 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %7 = load i32, i32* %kindIndex.addr, align 4
  %call = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %6, i32 %7)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %kdef, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end3, %sw.bb1, %sw.bb
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  ret %struct.sKindDefinition* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @defineLanguageKind(i32 %language, %struct.sKindDefinition* %def, void (%struct.sKindDefinition*)* %freeKindDef) #0 {
entry:
  %language.addr = alloca i32, align 4
  %def.addr = alloca %struct.sKindDefinition*, align 8
  %freeKindDef.addr = alloca void (%struct.sKindDefinition*)*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sKindDefinition* %def, %struct.sKindDefinition** %def.addr, align 8
  store void (%struct.sKindDefinition*)* %freeKindDef, void (%struct.sKindDefinition*)** %freeKindDef.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def.addr, align 8
  %4 = load void (%struct.sKindDefinition*)*, void (%struct.sKindDefinition*)** %freeKindDef.addr, align 8
  %call = call i32 @defineKind(%struct.kindControlBlock* %2, %struct.sKindDefinition* %3, void (%struct.sKindDefinition*)* %4)
  ret i32 %call
}

declare i32 @defineKind(%struct.kindControlBlock*, %struct.sKindDefinition*, void (%struct.sKindDefinition*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countLanguageKinds(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %2)
  ret i32 %call
}

declare i32 @countKinds(%struct.kindControlBlock*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @countLanguageRoles(i32 %language, i32 %kindIndex) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindIndex.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %3 = load i32, i32* %kindIndex.addr, align 4
  %call = call i32 @countRoles(%struct.kindControlBlock* %2, i32 %3)
  ret i32 %call
}

declare i32 @countRoles(%struct.kindControlBlock*, i32) #1

declare %struct.sKindDefinition* @getKind(%struct.kindControlBlock*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sKindDefinition* @getLanguageKindForLetter(i32 %language, i8 signext %kindLetter) #0 {
entry:
  %retval = alloca %struct.sKindDefinition*, align 8
  %language.addr = alloca i32, align 4
  %kindLetter.addr = alloca i8, align 1
  store i32 %language, i32* %language.addr, align 4
  store i8 %kindLetter, i8* %kindLetter.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8, i8* %kindLetter.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  %fileKind = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 1
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %fileKind, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 1
  %4 = load i8, i8* %letter, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %5 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %6 = load i32, i32* %language.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i64 %idxprom3
  %fileKind5 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx4, i32 0, i32 1
  %7 = load %struct.sKindDefinition*, %struct.sKindDefinition** %fileKind5, align 8
  store %struct.sKindDefinition* %7, %struct.sKindDefinition** %retval, align 8
  br label %return

if.else:                                          ; preds = %do.end
  %8 = load i8, i8* %kindLetter.addr, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 32
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  store %struct.sKindDefinition* @kindGhost, %struct.sKindDefinition** %retval, align 8
  br label %return

if.else10:                                        ; preds = %if.else
  %9 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %10 = load i32, i32* %language.addr, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %9, i64 %idxprom11
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx12, i32 0, i32 8
  %11 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %12 = load i8, i8* %kindLetter.addr, align 1
  %conv13 = sext i8 %12 to i32
  %call = call %struct.sKindDefinition* @getKindForLetter(%struct.kindControlBlock* %11, i32 %conv13)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %retval, align 8
  br label %return

return:                                           ; preds = %if.else10, %if.then9, %if.then
  %13 = load %struct.sKindDefinition*, %struct.sKindDefinition** %retval, align 8
  ret %struct.sKindDefinition* %13
}

declare %struct.sKindDefinition* @getKindForLetter(%struct.kindControlBlock*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getNamedLanguage(i8* %name, i64 %len) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %def = alloca %struct.sParserDefinition*, align 8
  %lang = alloca %struct.sParserDefinition*, align 8
  %vstr = alloca %struct.sVString*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -2, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %1 = load %struct.sHashTable*, %struct.sHashTable** @LanguageHTable, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i8* @hashTableGetItem(%struct.sHashTable* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.sParserDefinition*
  store %struct.sParserDefinition* %3, %struct.sParserDefinition** %def, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %tobool = icmp ne %struct.sParserDefinition* %4, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 33
  %6 = load i32, i32* %id, align 4
  store i32 %6, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end13

if.else:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @LanguageCount, align 4
  %cmp2 = icmp ult i32 %7, %8
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %result, align 4
  %cmp3 = icmp eq i32 %9, -2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %11, i64 %idxprom
  %def4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %13 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def4, align 8
  store %struct.sParserDefinition* %13, %struct.sParserDefinition** %lang, align 8
  br label %do.body5

do.body5:                                         ; preds = %for.body
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %14 = load i8*, i8** %name.addr, align 8
  %call7 = call %struct.sVString* @vStringNewInit(i8* %14)
  store %struct.sVString* %call7, %struct.sVString** %vstr, align 8
  %15 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  %16 = load i64, i64* %len.addr, align 8
  call void @vStringTruncate(%struct.sVString* %15, i64 %16)
  %17 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer, align 8
  %19 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name8 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %19, i32 0, i32 0
  %20 = load i8*, i8** %name8, align 8
  %call9 = call i32 @strcasecmp(i8* %18, i8* %20)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end6
  %21 = load i32, i32* %i, align 4
  store i32 %21, i32* %result, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end6
  %22 = load %struct.sVString*, %struct.sVString** %vstr, align 8
  call void @vStringDelete(%struct.sVString* %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.end
  %24 = load i32, i32* %result, align 4
  ret i32 %24
}

declare i8* @hashTableGetItem(%struct.sHashTable*, i8*) #1

declare %struct.sVString* @vStringNewInit(i8*) #1

declare void @vStringTruncate(%struct.sVString*, i64) #1

declare i32 @strcasecmp(i8*, i8*) #1

declare void @vStringDelete(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getLanguageForCommand(i8* %command, i32 %startFrom) #0 {
entry:
  %command.addr = alloca i8*, align 8
  %startFrom.addr = alloca i32, align 4
  %tmp_command = alloca i8*, align 8
  %tmp_spec = alloca i8*, align 8
  %tmp_specType = alloca i32, align 4
  store i8* %command, i8** %command.addr, align 8
  store i32 %startFrom, i32* %startFrom.addr, align 4
  %0 = load i8*, i8** %command.addr, align 8
  %call = call i8* @baseFilename(i8* %0)
  store i8* %call, i8** %tmp_command, align 8
  %1 = load i8*, i8** %tmp_command, align 8
  %2 = load i32, i32* %startFrom.addr, align 4
  %call1 = call i32 @getNameOrAliasesLanguageAndSpec(i8* %1, i32 %2, i8** %tmp_spec, i32* %tmp_specType)
  ret i32 %call1
}

declare i8* @baseFilename(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getNameOrAliasesLanguageAndSpec(i8* %key, i32 %start_index, i8** %spec, i32* %specType) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %start_index.addr = alloca i32, align 4
  %spec.addr = alloca i8**, align 8
  %specType.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %aliases = alloca %struct.sPtrArray*, align 8
  %tmp = alloca %struct.sVString*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %start_index, i32* %start_index.addr, align 4
  store i8** %spec, i8*** %spec.addr, align 8
  store i32* %specType, i32** %specType.addr, align 8
  store i32 -2, i32* %result, align 4
  %0 = load i32, i32* %start_index.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %start_index.addr, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %start_index.addr, align 4
  %cmp1 = icmp eq i32 %1, -2
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i32, i32* %start_index.addr, align 4
  %3 = load i32, i32* @LanguageCount, align 4
  %cmp2 = icmp sge i32 %2, %3
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.else
  %4 = load i32, i32* %result, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load i32, i32* %start_index.addr, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @LanguageCount, align 4
  %cmp5 = icmp ult i32 %6, %7
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %result, align 4
  %cmp6 = icmp eq i32 %8, -2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %11 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %10, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %12 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %12, i32 0, i32 4
  %13 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases, align 8
  store %struct.sPtrArray* %13, %struct.sPtrArray** %aliases, align 8
  %14 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %14, i32 0, i32 0
  %15 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %15, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %16 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def9 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i32 0, i32 0
  %17 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def9, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %cmp10 = icmp ne i8* %18, null
  br i1 %cmp10, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %if.end8
  %19 = load i8*, i8** %key.addr, align 8
  %20 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def11 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %20, i32 0, i32 0
  %21 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def11, align 8
  %name12 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %21, i32 0, i32 0
  %22 = load i8*, i8** %name12, align 8
  %call = call i32 @strcasecmp(i8* %19, i8* %22)
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %land.lhs.true
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* %result, align 4
  %24 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def15 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %24, i32 0, i32 0
  %25 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def15, align 8
  %name16 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %25, i32 0, i32 0
  %26 = load i8*, i8** %name16, align 8
  %27 = load i8**, i8*** %spec.addr, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %specType.addr, align 8
  store i32 1, i32* %28, align 4
  br label %if.end24

if.else17:                                        ; preds = %land.lhs.true, %if.end8
  %29 = load %struct.sPtrArray*, %struct.sPtrArray** %aliases, align 8
  %cmp18 = icmp ne %struct.sPtrArray* %29, null
  br i1 %cmp18, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %if.else17
  %30 = load %struct.sPtrArray*, %struct.sPtrArray** %aliases, align 8
  %31 = load i8*, i8** %key.addr, align 8
  %call20 = call %struct.sVString* @stringListFileFinds(%struct.sPtrArray* %30, i8* %31)
  store %struct.sVString* %call20, %struct.sVString** %tmp, align 8
  %tobool21 = icmp ne %struct.sVString* %call20, null
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  %32 = load i32, i32* %i, align 4
  store i32 %32, i32* %result, align 4
  %33 = load %struct.sVString*, %struct.sVString** %tmp, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %33, i32 0, i32 2
  %34 = load i8*, i8** %buffer, align 8
  %35 = load i8**, i8*** %spec.addr, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i32*, i32** %specType.addr, align 8
  store i32 1, i32* %36, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true19, %if.else17
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then14
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.then7
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %38 = load i32, i32* %result, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getLanguageForFilename(i8* %filename, i32 %startFrom) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %startFrom.addr = alloca i32, align 4
  %tmp_filename = alloca i8*, align 8
  %tmp_spec = alloca i8*, align 8
  %tmp_specType = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %startFrom, i32* %startFrom.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @baseFilename(i8* %0)
  store i8* %call, i8** %tmp_filename, align 8
  %1 = load i8*, i8** %tmp_filename, align 8
  %2 = load i32, i32* %startFrom.addr, align 4
  %call1 = call i32 @getPatternLanguageAndSpec(i8* %1, i32 %2, i8** %tmp_spec, i32* %tmp_specType)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getPatternLanguageAndSpec(i8* %baseName, i32 %start_index, i8** %spec, i32* %specType) #0 {
entry:
  %retval = alloca i32, align 4
  %baseName.addr = alloca i8*, align 8
  %start_index.addr = alloca i32, align 4
  %spec.addr = alloca i8**, align 8
  %specType.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %ptrns = alloca %struct.sPtrArray*, align 8
  %tmp = alloca %struct.sVString*, align 8
  %parser19 = alloca %struct.sParserObject*, align 8
  %exts = alloca %struct.sPtrArray*, align 8
  %tmp22 = alloca %struct.sVString*, align 8
  store i8* %baseName, i8** %baseName.addr, align 8
  store i32 %start_index, i32* %start_index.addr, align 4
  store i8** %spec, i8*** %spec.addr, align 8
  store i32* %specType, i32** %specType.addr, align 8
  store i32 -2, i32* %result, align 4
  %0 = load i32, i32* %start_index.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %start_index.addr, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %start_index.addr, align 4
  %cmp1 = icmp eq i32 %1, -2
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load i32, i32* %start_index.addr, align 4
  %3 = load i32, i32* @LanguageCount, align 4
  %cmp2 = icmp sge i32 %2, %3
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.else
  %4 = load i32, i32* %result, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load i8**, i8*** %spec.addr, align 8
  store i8* null, i8** %5, align 8
  %6 = load i32, i32* %start_index.addr, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @LanguageCount, align 4
  %cmp5 = icmp ult i32 %7, %8
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %result, align 4
  %cmp6 = icmp eq i32 %9, -2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %11, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %13 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i32 0, i32 2
  %14 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  store %struct.sPtrArray* %14, %struct.sPtrArray** %ptrns, align 8
  %15 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %15, i32 0, i32 0
  %16 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %16, i32 0, i32 34
  %bf.load = load i8, i8* %enabled, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %ptrns, align 8
  %cmp9 = icmp ne %struct.sPtrArray* %17, null
  br i1 %cmp9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end8
  %18 = load %struct.sPtrArray*, %struct.sPtrArray** %ptrns, align 8
  %19 = load i8*, i8** %baseName.addr, align 8
  %call = call %struct.sVString* @stringListFileFinds(%struct.sPtrArray* %18, i8* %19)
  store %struct.sVString* %call, %struct.sVString** %tmp, align 8
  %tobool10 = icmp ne %struct.sVString* %call, null
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %result, align 4
  %21 = load %struct.sVString*, %struct.sVString** %tmp, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer, align 8
  %23 = load i8**, i8*** %spec.addr, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %specType.addr, align 8
  store i32 3, i32* %24, align 4
  br label %found

if.end12:                                         ; preds = %land.lhs.true, %if.end8
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then7
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load i32, i32* %start_index.addr, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc39, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* @LanguageCount, align 4
  %cmp14 = icmp ult i32 %27, %28
  br i1 %cmp14, label %land.rhs15, label %land.end17

land.rhs15:                                       ; preds = %for.cond13
  %29 = load i32, i32* %result, align 4
  %cmp16 = icmp eq i32 %29, -2
  br label %land.end17

land.end17:                                       ; preds = %land.rhs15, %for.cond13
  %30 = phi i1 [ false, %for.cond13 ], [ %cmp16, %land.rhs15 ]
  br i1 %30, label %for.body18, label %for.end41

for.body18:                                       ; preds = %land.end17
  %31 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %32 = load i32, i32* %i, align 4
  %idx.ext20 = zext i32 %32 to i64
  %add.ptr21 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %31, i64 %idx.ext20
  store %struct.sParserObject* %add.ptr21, %struct.sParserObject** %parser19, align 8
  %33 = load %struct.sParserObject*, %struct.sParserObject** %parser19, align 8
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %33, i32 0, i32 3
  %34 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  store %struct.sPtrArray* %34, %struct.sPtrArray** %exts, align 8
  %35 = load %struct.sParserObject*, %struct.sParserObject** %parser19, align 8
  %def23 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %35, i32 0, i32 0
  %36 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def23, align 8
  %enabled24 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %36, i32 0, i32 34
  %bf.load25 = load i8, i8* %enabled24, align 8
  %bf.clear26 = and i8 %bf.load25, 1
  %bf.cast27 = zext i8 %bf.clear26 to i32
  %tobool28 = icmp ne i32 %bf.cast27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %for.body18
  br label %for.inc39

if.end30:                                         ; preds = %for.body18
  %37 = load %struct.sPtrArray*, %struct.sPtrArray** %exts, align 8
  %cmp31 = icmp ne %struct.sPtrArray* %37, null
  br i1 %cmp31, label %land.lhs.true32, label %if.end38

land.lhs.true32:                                  ; preds = %if.end30
  %38 = load %struct.sPtrArray*, %struct.sPtrArray** %exts, align 8
  %39 = load i8*, i8** %baseName.addr, align 8
  %call33 = call i8* @fileExtension(i8* %39)
  %call34 = call %struct.sVString* @stringListExtensionFinds(%struct.sPtrArray* %38, i8* %call33)
  store %struct.sVString* %call34, %struct.sVString** %tmp22, align 8
  %tobool35 = icmp ne %struct.sVString* %call34, null
  br i1 %tobool35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %land.lhs.true32
  %40 = load i32, i32* %i, align 4
  store i32 %40, i32* %result, align 4
  %41 = load %struct.sVString*, %struct.sVString** %tmp22, align 8
  %buffer37 = getelementptr inbounds %struct.sVString, %struct.sVString* %41, i32 0, i32 2
  %42 = load i8*, i8** %buffer37, align 8
  %43 = load i8**, i8*** %spec.addr, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32*, i32** %specType.addr, align 8
  store i32 2, i32* %44, align 4
  br label %found

if.end38:                                         ; preds = %land.lhs.true32, %if.end30
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38, %if.then29
  %45 = load i32, i32* %i, align 4
  %inc40 = add i32 %45, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond13

for.end41:                                        ; preds = %land.end17
  br label %found

found:                                            ; preds = %for.end41, %if.then36, %if.then11
  %46 = load i32, i32* %result, align 4
  store i32 %46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %found, %if.then3
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getLanguageForFilenameAndContents(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %req = alloca %struct.GetLanguageRequest, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  %type = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %fileName1 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 1
  %0 = load i8*, i8** %fileName.addr, align 8
  store i8* %0, i8** %fileName1, align 8
  %mio = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 2
  store %struct._MIO* null, %struct._MIO** %mio, align 8
  %call = call i32 @getFileLanguageForRequest(%struct.GetLanguageRequest* %req)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getFileLanguageForRequest(%struct.GetLanguageRequest* %req) #0 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca %struct.GetLanguageRequest*, align 8
  %l = alloca i32, align 4
  store %struct.GetLanguageRequest* %req, %struct.GetLanguageRequest** %req.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 16), align 8
  store i32 %0, i32* %l, align 4
  %1 = load i32, i32* %l, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.GetLanguageRequest*, %struct.GetLanguageRequest** %req.addr, align 8
  %call = call i32 @getFileLanguageForRequestInternal(%struct.GetLanguageRequest* %2)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %l, align 4
  %call1 = call zeroext i1 @isLanguageEnabled(i32 %3)
  br i1 %call1, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  %4 = load i32, i32* %l, align 4
  %call3 = call i8* @getLanguageName(i32 %4)
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i64 0, i64 0), i8* %call3)
  store i32 -1, i32* %retval, align 4
  br label %return

if.else4:                                         ; preds = %if.else
  %5 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 16), align 8
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else4, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @installLanguageMapDefault(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %vfp = alloca %struct.__sFILE*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 2
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  %cmp = icmp ne %struct.sPtrArray* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i32 0, i32 2
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns1, align 8
  call void @stringListDelete(%struct.sPtrArray* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %6 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %6, i32 0, i32 3
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  %cmp2 = icmp ne %struct.sPtrArray* %7, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %8 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %8, i32 0, i32 3
  %9 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions4, align 8
  call void @stringListDelete(%struct.sPtrArray* %9)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %10, i32 0, i32 0
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %patterns = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 4
  %12 = load i8**, i8*** %patterns, align 8
  %cmp6 = icmp eq i8** %12, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call = call %struct.sPtrArray* @stringListNew()
  %13 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns8 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i32 0, i32 2
  store %struct.sPtrArray* %call, %struct.sPtrArray** %currentPatterns8, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end5
  %14 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def9 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %14, i32 0, i32 0
  %15 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def9, align 8
  %patterns10 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %15, i32 0, i32 4
  %16 = load i8**, i8*** %patterns10, align 8
  %call11 = call %struct.sPtrArray* @stringListNewFromArgv(i8** %16)
  %17 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns12 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %17, i32 0, i32 2
  store %struct.sPtrArray* %call11, %struct.sPtrArray** %currentPatterns12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %18 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def14 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %18, i32 0, i32 0
  %19 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def14, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %19, i32 0, i32 3
  %20 = load i8**, i8*** %extensions, align 8
  %cmp15 = icmp eq i8** %20, null
  br i1 %cmp15, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.end13
  %call17 = call %struct.sPtrArray* @stringListNew()
  %21 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions18 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %21, i32 0, i32 3
  store %struct.sPtrArray* %call17, %struct.sPtrArray** %currentExtensions18, align 8
  br label %if.end24

if.else19:                                        ; preds = %if.end13
  %22 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def20 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %22, i32 0, i32 0
  %23 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def20, align 8
  %extensions21 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %23, i32 0, i32 3
  %24 = load i8**, i8*** %extensions21, align 8
  %call22 = call %struct.sPtrArray* @stringListNewFromArgv(i8** %24)
  %25 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions23 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %25, i32 0, i32 3
  store %struct.sPtrArray* %call22, %struct.sPtrArray** %currentExtensions23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else19, %if.then16
  br label %do.body25

do.body25:                                        ; preds = %if.end24
  %26 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool = trunc i8 %26 to i1
  br i1 %tobool, label %if.then26, label %if.end28

if.then26:                                        ; preds = %do.body25
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %27, %struct.__sFILE** %vfp, align 8
  %28 = load i32, i32* %language.addr, align 4
  %29 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  call void @printLanguageMap(i32 %28, %struct.__sFILE* %29)
  %30 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %call27 = call i32 @putc(i32 10, %struct.__sFILE* %30)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.body25
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  ret void
}

declare void @stringListDelete(%struct.sPtrArray*) #1

declare %struct.sPtrArray* @stringListNew() #1

declare %struct.sPtrArray* @stringListNewFromArgv(i8**) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printLanguageMap(i32 %language, %struct.__sFILE* %fp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %fp.addr = alloca %struct.__sFILE*, align 8
  %first = alloca i8, align 1
  %i = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %map = alloca %struct.sPtrArray*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i8 1, i8* %first, align 1
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 2
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  store %struct.sPtrArray* %3, %struct.sPtrArray** %map, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %map, align 8
  %cmp = icmp ne %struct.sPtrArray* %4, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %map, align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %6)
  %cmp1 = icmp ult i32 %5, %call
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %9 = load i8, i8* %first, align 1
  %tobool = trunc i8 %9 to i1
  %10 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)
  %11 = load %struct.sPtrArray*, %struct.sPtrArray** %map, align 8
  %12 = load i32, i32* %i, align 4
  %call2 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %11, i32 %12)
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %call2, i32 0, i32 2
  %13 = load i8*, i8** %buffer, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* %cond, i8* %13)
  store i8 0, i8* %first, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %15 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %15, i32 0, i32 3
  %16 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  store %struct.sPtrArray* %16, %struct.sPtrArray** %map, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc16, %for.end
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %map, align 8
  %cmp5 = icmp ne %struct.sPtrArray* %17, null
  br i1 %cmp5, label %land.rhs6, label %land.end9

land.rhs6:                                        ; preds = %for.cond4
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.sPtrArray*, %struct.sPtrArray** %map, align 8
  %call7 = call i32 @stringListCount(%struct.sPtrArray* %19)
  %cmp8 = icmp ult i32 %18, %call7
  br label %land.end9

land.end9:                                        ; preds = %land.rhs6, %for.cond4
  %20 = phi i1 [ false, %for.cond4 ], [ %cmp8, %land.rhs6 ]
  br i1 %20, label %for.body10, label %for.end18

for.body10:                                       ; preds = %land.end9
  %21 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  %22 = load i8, i8* %first, align 1
  %tobool11 = trunc i8 %22 to i1
  %23 = zext i1 %tobool11 to i64
  %cond12 = select i1 %tobool11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)
  %24 = load %struct.sPtrArray*, %struct.sPtrArray** %map, align 8
  %25 = load i32, i32* %i, align 4
  %call13 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %24, i32 %25)
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %call13, i32 0, i32 2
  %26 = load i8*, i8** %buffer14, align 8
  %call15 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i8* %cond12, i8* %26)
  store i8 0, i8* %first, align 1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body10
  %27 = load i32, i32* %i, align 4
  %inc17 = add i32 %27, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond4

for.end18:                                        ; preds = %land.end9
  ret void
}

declare i32 @putc(i32, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @installLanguageMapDefaults() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call = call i8* @getLanguageName(i32 %2)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %call)
  %3 = load i32, i32* %i, align 4
  call void @installLanguageMapDefault(i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @verbose(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @installLanguageAliasesDefault(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %vfp = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases, align 8
  %cmp = icmp ne %struct.sPtrArray* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i32 0, i32 4
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases1, align 8
  call void @stringListDelete(%struct.sPtrArray* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %6 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %6, i32 0, i32 0
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %aliases = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 5
  %8 = load i8**, i8*** %aliases, align 8
  %cmp2 = icmp eq i8** %8, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call = call %struct.sPtrArray* @stringListNew()
  %9 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %9, i32 0, i32 4
  store %struct.sPtrArray* %call, %struct.sPtrArray** %currentAliases4, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  %10 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def5 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %10, i32 0, i32 0
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def5, align 8
  %aliases6 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 5
  %12 = load i8**, i8*** %aliases6, align 8
  %call7 = call %struct.sPtrArray* @stringListNewFromArgv(i8** %12)
  %13 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases8 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i32 0, i32 4
  store %struct.sPtrArray* %call7, %struct.sPtrArray** %currentAliases8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  br label %do.body10

do.body10:                                        ; preds = %if.end9
  %14 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 6), align 8
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then11, label %if.end23

if.then11:                                        ; preds = %do.body10
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  store %struct.__sFILE* %15, %struct.__sFILE** %vfp, align 8
  %16 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases12 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i32 0, i32 4
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases12, align 8
  %cmp13 = icmp ne %struct.sPtrArray* %17, null
  br i1 %cmp13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.then11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then14
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases15 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %19, i32 0, i32 4
  %20 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases15, align 8
  %call16 = call i32 @stringListCount(%struct.sPtrArray* %20)
  %cmp17 = icmp ult i32 %18, %call16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %22 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases18 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %22, i32 0, i32 4
  %23 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases18, align 8
  %24 = load i32, i32* %i, align 4
  %call19 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %23, i32 %24)
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %call19, i32 0, i32 2
  %25 = load i8*, i8** %buffer, align 8
  %call20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end21

if.end21:                                         ; preds = %for.end, %if.then11
  %27 = load %struct.__sFILE*, %struct.__sFILE** %vfp, align 8
  %call22 = call i32 @putc(i32 10, %struct.__sFILE* %27)
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %do.body10
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  ret void
}

declare i32 @stringListCount(%struct.sPtrArray*) #1

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare %struct.sVString* @stringListItem(%struct.sPtrArray*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @installLanguageAliasesDefaults() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call = call i8* @getLanguageName(i32 %2)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %call)
  %3 = load i32, i32* %i, align 4
  call void @installLanguageAliasesDefault(i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @clearLanguageMap(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 2
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  call void @stringListClear(%struct.sPtrArray* %2)
  %3 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %4 = load i32, i32* %language.addr, align 4
  %idx.ext1 = sext i32 %4 to i64
  %add.ptr2 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i64 %idx.ext1
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr2, i32 0, i32 3
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  call void @stringListClear(%struct.sPtrArray* %5)
  ret void
}

declare void @stringListClear(%struct.sPtrArray*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @clearLanguageAliases(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases, align 8
  %tobool = icmp ne %struct.sPtrArray* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i32 0, i32 4
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases1, align 8
  call void @stringListClear(%struct.sPtrArray* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @removeLanguagePatternMap(i32 %language, i8* %pattern) #0 {
entry:
  %language.addr = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @LanguageCount, align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i8, i8* %result, align 1
  %tobool = trunc i8 %3 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %6 = load i8*, i8** %pattern.addr, align 8
  %call = call zeroext i1 @removeLanguagePatternMap1(i32 %5, i8* %6)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %7 = load i8, i8* %result, align 1
  %tobool2 = trunc i8 %7 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %8 = phi i1 [ true, %for.body ], [ %tobool2, %lor.rhs ]
  %frombool = zext i1 %8 to i8
  store i8 %frombool, i8* %result, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %language.addr, align 4
  %11 = load i8*, i8** %pattern.addr, align 8
  %call3 = call zeroext i1 @removeLanguagePatternMap1(i32 %10, i8* %11)
  %frombool4 = zext i1 %call3 to i8
  store i8 %frombool4, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %12 = load i8, i8* %result, align 1
  %tobool5 = trunc i8 %12 to i1
  ret i1 %tobool5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @removeLanguagePatternMap1(i32 %language, i8* %pattern) #0 {
entry:
  %language.addr = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %ptrn = alloca %struct.sPtrArray*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 2
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  store %struct.sPtrArray* %2, %struct.sPtrArray** %ptrn, align 8
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %ptrn, align 8
  %cmp = icmp ne %struct.sPtrArray* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %ptrn, align 8
  %5 = load i8*, i8** %pattern.addr, align 8
  %call = call zeroext i1 @stringListDeleteItemExtension(%struct.sPtrArray* %4, i8* %5)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %language.addr, align 4
  %call1 = call i8* @getLanguageName(i32 %6)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i64 0, i64 0), i8* %call1)
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i8, i8* %result, align 1
  %tobool = trunc i8 %7 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addLanguagePatternMap(i32 %language, i8* %ptrn, i1 zeroext %exclusiveInAllLanguages) #0 {
entry:
  %language.addr = alloca i32, align 4
  %ptrn.addr = alloca i8*, align 8
  %exclusiveInAllLanguages.addr = alloca i8, align 1
  %str = alloca %struct.sVString*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %ptrn, i8** %ptrn.addr, align 8
  %frombool = zext i1 %exclusiveInAllLanguages to i8
  store i8 %frombool, i8* %exclusiveInAllLanguages.addr, align 1
  %0 = load i8*, i8** %ptrn.addr, align 8
  %call = call %struct.sVString* @vStringNewInit(i8* %0)
  store %struct.sVString* %call, %struct.sVString** %str, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %3 = load i8, i8* %exclusiveInAllLanguages.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load i8*, i8** %ptrn.addr, align 8
  %call1 = call zeroext i1 @removeLanguagePatternMap(i32 -1, i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i32 0, i32 2
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  %7 = load %struct.sVString*, %struct.sVString** %str, align 8
  call void @stringListAdd(%struct.sPtrArray* %6, %struct.sVString* %7)
  ret void
}

declare void @stringListAdd(%struct.sPtrArray*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @removeLanguageExtensionMap(i32 %language, i8* %extension) #0 {
entry:
  %language.addr = alloca i32, align 4
  %extension.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %extension, i8** %extension.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @LanguageCount, align 4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i8*, i8** %extension.addr, align 8
  %call = call zeroext i1 @removeLanguageExtensionMap1(i32 %3, i8* %4)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %5 = load i8, i8* %result, align 1
  %tobool = trunc i8 %5 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %6 = phi i1 [ true, %for.body ], [ %tobool, %lor.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %result, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %language.addr, align 4
  %9 = load i8*, i8** %extension.addr, align 8
  %call2 = call zeroext i1 @removeLanguageExtensionMap1(i32 %8, i8* %9)
  %frombool3 = zext i1 %call2 to i8
  store i8 %frombool3, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i8, i8* %result, align 1
  %tobool4 = trunc i8 %10 to i1
  ret i1 %tobool4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @removeLanguageExtensionMap1(i32 %language, i8* %extension) #0 {
entry:
  %language.addr = alloca i32, align 4
  %extension.addr = alloca i8*, align 8
  %result = alloca i8, align 1
  %exts = alloca %struct.sPtrArray*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %extension, i8** %extension.addr, align 8
  store i8 0, i8* %result, align 1
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 3
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  store %struct.sPtrArray* %2, %struct.sPtrArray** %exts, align 8
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %exts, align 8
  %cmp = icmp ne %struct.sPtrArray* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %exts, align 8
  %5 = load i8*, i8** %extension.addr, align 8
  %call = call zeroext i1 @stringListDeleteItemExtension(%struct.sPtrArray* %4, i8* %5)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %language.addr, align 4
  %call1 = call i8* @getLanguageName(i32 %6)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.89, i64 0, i64 0), i8* %call1)
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i8, i8* %result, align 1
  %tobool = trunc i8 %7 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addLanguageExtensionMap(i32 %language, i8* %extension, i1 zeroext %exclusiveInAllLanguages) #0 {
entry:
  %language.addr = alloca i32, align 4
  %extension.addr = alloca i8*, align 8
  %exclusiveInAllLanguages.addr = alloca i8, align 1
  %str = alloca %struct.sVString*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %extension, i8** %extension.addr, align 8
  %frombool = zext i1 %exclusiveInAllLanguages to i8
  store i8 %frombool, i8* %exclusiveInAllLanguages.addr, align 1
  %0 = load i8*, i8** %extension.addr, align 8
  %call = call %struct.sVString* @vStringNewInit(i8* %0)
  store %struct.sVString* %call, %struct.sVString** %str, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i8, i8* %exclusiveInAllLanguages.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %2 = load i8*, i8** %extension.addr, align 8
  %call1 = call zeroext i1 @removeLanguageExtensionMap(i32 -1, i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %3 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %4 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i64 %idx.ext
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 3
  %5 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  %6 = load %struct.sVString*, %struct.sVString** %str, align 8
  call void @stringListAdd(%struct.sPtrArray* %5, %struct.sVString* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addLanguageAlias(i32 %language, i8* %alias) #0 {
entry:
  %language.addr = alloca i32, align 4
  %alias.addr = alloca i8*, align 8
  %str = alloca %struct.sVString*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %alias, i8** %alias.addr, align 8
  %0 = load i8*, i8** %alias.addr, align 8
  %call = call %struct.sVString* @vStringNewInit(i8* %0)
  store %struct.sVString* %call, %struct.sVString** %str, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %3 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i32 0, i32 4
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases, align 8
  %cmp = icmp eq %struct.sPtrArray* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %call1 = call %struct.sPtrArray* @stringListNew()
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases2 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i32 0, i32 4
  store %struct.sPtrArray* %call1, %struct.sPtrArray** %currentAliases2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %6 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases3 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %6, i32 0, i32 4
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases3, align 8
  %8 = load %struct.sVString*, %struct.sVString** %str, align 8
  call void @stringListAdd(%struct.sPtrArray* %7, %struct.sVString* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @enableLanguage(i32 %language, i1 zeroext %state) #0 {
entry:
  %language.addr = alloca i32, align 4
  %state.addr = alloca i8, align 1
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %state to i8
  store i8 %frombool, i8* %state.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8, i8* %state.addr, align 1
  %tobool = trunc i8 %0 to i1
  %conv = zext i1 %tobool to i32
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %enabled = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 34
  %4 = trunc i32 %conv to i8
  %bf.load = load i8, i8* %enabled, align 8
  %bf.value = and i8 %4, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %enabled, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @enableLanguages(i1 zeroext %state) #0 {
entry:
  %state.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %frombool = zext i1 %state to i8
  store i8 %frombool, i8* %state.addr, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8, i8* %state.addr, align 1
  %tobool = trunc i8 %3 to i1
  call void @enableLanguage(i32 %2, i1 zeroext %tobool)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initializeParser(i32 %lang) #0 {
entry:
  %lang.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %lang, i32* %lang.addr, align 4
  %0 = load i32, i32* %lang.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %call = call i32 @countParsers()
  %cmp1 = icmp ult i32 %1, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  call void @initializeParserOne(i32 %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %lang.addr, align 4
  call void @initializeParserOne(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeParserOne(i32 %lang) #0 {
entry:
  %lang.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %lang, i32* %lang.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %lang.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %initialized = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 5
  %bf.load = load i8, i8* %initialized, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i32 0, i32 0
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i64 0, i64 0), i8* %5)
  %6 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %initialized1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %6, i32 0, i32 5
  %bf.load2 = load i8, i8* %initialized1, align 8
  %bf.clear3 = and i8 %bf.load2, -2
  %bf.set = or i8 %bf.clear3, 1
  store i8 %bf.set, i8* %initialized1, align 8
  %7 = load i32, i32* %lang.addr, align 4
  call void @installKeywordTable(i32 %7)
  %8 = load i32, i32* %lang.addr, align 4
  call void @installTagXpathTable(i32 %8)
  %9 = load i32, i32* %lang.addr, align 4
  call void @installFieldDefinition(i32 %9)
  %10 = load i32, i32* %lang.addr, align 4
  call void @installXtagDefinition(i32 %10)
  %11 = load i32, i32* %lang.addr, align 4
  call void @installTagRegexTable(i32 %11)
  %12 = load i32, i32* %lang.addr, align 4
  %call = call zeroext i1 @hasLanguageScopeActionInRegex(i32 %12)
  br i1 %call, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i32 0, i32 0
  %14 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def4, align 8
  %requestAutomaticFQTag = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %14, i32 0, i32 15
  %15 = load i8, i8* %requestAutomaticFQTag, align 1
  %tobool5 = trunc i8 %15 to i1
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def7 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i32 0, i32 0
  %17 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def7, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %17, i32 0, i32 12
  store i8 1, i8* %useCork, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %lor.lhs.false
  %18 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def9 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %18, i32 0, i32 0
  %19 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def9, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %19, i32 0, i32 6
  %20 = load void (i32)*, void (i32)** %initialize, align 8
  %cmp = icmp ne void (i32)* %20, null
  br i1 %cmp, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  %21 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def11 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %21, i32 0, i32 0
  %22 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def11, align 8
  %initialize12 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %22, i32 0, i32 6
  %23 = load void (i32)*, void (i32)** %initialize12, align 8
  %24 = load i32, i32* %lang.addr, align 4
  call void %23(i32 %24)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8
  %25 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def14 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %25, i32 0, i32 0
  %26 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def14, align 8
  %27 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %27, i32 0, i32 7
  %28 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  call void @initializeDependencies(%struct.sParserDefinition* %26, %struct.slaveControlBlock* %28)
  br label %do.body

do.body:                                          ; preds = %if.end13
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body15

do.body15:                                        ; preds = %do.end
  br label %do.end16

do.end16:                                         ; preds = %do.body15
  br label %if.end23

out:                                              ; preds = %if.then
  %29 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def17 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %29, i32 0, i32 0
  %30 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def17, align 8
  %initialize18 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %30, i32 0, i32 6
  %31 = load void (i32)*, void (i32)** %initialize18, align 8
  %cmp19 = icmp eq void (i32)* %31, @lazyInitialize
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %out
  %32 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def21 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %32, i32 0, i32 0
  %33 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def21, align 8
  %initialize22 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %33, i32 0, i32 6
  %34 = load void (i32)*, void (i32)** %initialize22, align 8
  %35 = load i32, i32* %lang.addr, align 4
  call void %34(i32 %35)
  br label %if.end23

if.end23:                                         ; preds = %do.end16, %if.then20, %out
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @initializeParsing() #0 {
entry:
  %builtInCount = alloca i32, align 4
  %i = alloca i32, align 4
  %def = alloca %struct.sParserDefinition*, align 8
  %accepted = alloca i8, align 1
  store i32 92, i32* %builtInCount, align 4
  %0 = load i32, i32* %builtInCount, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 72
  %call = call i8* @eMalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.sParserObject*
  store %struct.sParserObject* %1, %struct.sParserObject** @LanguageTable, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %3 = bitcast %struct.sParserObject* %2 to i8*
  %4 = load i32, i32* %builtInCount, align 4
  %conv1 = zext i32 %4 to i64
  %mul2 = mul i64 %conv1, 72
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 %mul2, i1 false)
  %call3 = call %struct.sHashTable* @hashTableNew(i32 127, i32 (i8*)* @hashCstrcasehash, i1 (i8*, i8*)* @hashCstrcaseeq, void (i8*)* null, void (i8*)* null)
  store %struct.sHashTable* %call3, %struct.sHashTable** @LanguageHTable, align 8
  %5 = load %struct.sHashTable*, %struct.sHashTable** @LanguageHTable, align 8
  %6 = bitcast %struct.sHashTable* %5 to i8*
  %call4 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %6, void (i8*)* bitcast (void (%struct.sHashTable*)* @hashTableDelete to void (i8*)*))
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %builtInCount, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [92 x %struct.sParserDefinition* ()*], [92 x %struct.sParserDefinition* ()*]* @BuiltInParsers, i64 0, i64 %idxprom
  %10 = load %struct.sParserDefinition* ()*, %struct.sParserDefinition* ()** %arrayidx, align 8
  %call6 = call %struct.sParserDefinition* %10()
  store %struct.sParserDefinition* %call6, %struct.sParserDefinition** %def, align 8
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %cmp7 = icmp ne %struct.sParserDefinition* %11, null
  br i1 %cmp7, label %if.then, label %if.end38

if.then:                                          ; preds = %for.body
  store i8 0, i8* %accepted, align 1
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %cmp9 = icmp eq i8* %13, null
  br i1 %cmp9, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %14 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name11 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %14, i32 0, i32 0
  %15 = load i8*, i8** %name11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %lor.lhs.false, %if.then
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end34

if.else:                                          ; preds = %lor.lhs.false
  %17 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %17, i32 0, i32 11
  %18 = load i32, i32* %method, align 8
  %and = and i32 %18, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %19 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %19, i32 0, i32 8
  store void ()* @findRegexTags, void ()** %parser, align 8
  store i8 1, i8* %accepted, align 1
  br label %if.end33

if.else18:                                        ; preds = %if.else
  %20 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %20, i32 0, i32 22
  %21 = load i8, i8* %invisible, align 4
  %tobool19 = trunc i8 %21 to i1
  br i1 %tobool19, label %if.else32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else18
  %22 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser20 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %22, i32 0, i32 8
  %23 = load void ()*, void ()** %parser20, align 8
  %tobool21 = icmp ne void ()* %23, null
  %lnot = xor i1 %tobool21, true
  %lnot22 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot22 to i32
  %24 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %24, i32 0, i32 9
  %25 = load i32 (i32)*, i32 (i32)** %parser2, align 8
  %tobool23 = icmp ne i32 (i32)* %25, null
  %lnot24 = xor i1 %tobool23, true
  %lnot26 = xor i1 %lnot24, true
  %lnot.ext27 = zext i1 %lnot26 to i32
  %add = add nsw i32 %lnot.ext, %lnot.ext27
  %cmp28 = icmp ne i32 %add, 1
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %land.lhs.true
  %26 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name31 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %26, i32 0, i32 0
  %27 = load i8*, i8** %name31, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i8* %27)
  br label %if.end

if.else32:                                        ; preds = %land.lhs.true, %if.else18
  store i8 1, i8* %accepted, align 1
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then30
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then17
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then16
  %28 = load i8, i8* %accepted, align 1
  %tobool35 = trunc i8 %28 to i1
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %29 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  call void @initializeParsingCommon(%struct.sParserDefinition* %29, i1 zeroext true)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %30 = load i32, i32* %i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc46, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %builtInCount, align 4
  %cmp40 = icmp ult i32 %31, %32
  br i1 %cmp40, label %for.body42, label %for.end48

for.body42:                                       ; preds = %for.cond39
  %33 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom43 = zext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %33, i64 %idxprom43
  %def45 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx44, i32 0, i32 0
  %35 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def45, align 8
  call void @linkDependenciesAtInitializeParsing(%struct.sParserDefinition* %35)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body42
  %36 = load i32, i32* %i, align 4
  %inc47 = add i32 %36, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond39

for.end48:                                        ; preds = %for.cond39
  ret void
}

declare i8* @eMalloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare %struct.sHashTable* @hashTableNew(i32, i32 (i8*)*, i1 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @hashCstrcasehash(i8*) #1

declare zeroext i1 @hashCstrcaseeq(i8*, i8*) #1

declare i8* @trashBoxPut(%struct.sTrashBox*, i8*, void (i8*)*) #1

declare void @hashTableDelete(%struct.sHashTable*) #1

declare void @error(i32, i8*, ...) #1

declare void @findRegexTags() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @initializeParsingCommon(%struct.sParserDefinition* %def, i1 zeroext %is_builtin) #0 {
entry:
  %def.addr = alloca %struct.sParserDefinition*, align 8
  %is_builtin.addr = alloca i8, align 1
  %parser = alloca %struct.sParserObject*, align 8
  store %struct.sParserDefinition* %def, %struct.sParserDefinition** %def.addr, align 8
  %frombool = zext i1 %is_builtin to i8
  store i8 %frombool, i8* %is_builtin.addr, align 1
  %0 = load i8, i8* %is_builtin.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ugt i32 %1, 0
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0)
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i64 0, i64 0), i8* %cond, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %name1 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 0
  %6 = load i8*, i8** %name1, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i64 0, i64 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* @LanguageCount, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* @LanguageCount, align 4
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 33
  store i32 %7, i32* %id, align 4
  %9 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %id2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 33
  %11 = load i32, i32* %id2, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %9, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %13 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def3 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i32 0, i32 0
  store %struct.sParserDefinition* %12, %struct.sParserDefinition** %def3, align 8
  %14 = load %struct.sHashTable*, %struct.sHashTable** @LanguageHTable, align 8
  %15 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %name4 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %15, i32 0, i32 0
  %16 = load i8*, i8** %name4, align 8
  %17 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %18 = bitcast %struct.sParserDefinition* %17 to i8*
  call void @hashTablePutItem(%struct.sHashTable* %14, i8* %16, i8* %18)
  %19 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %fileKind = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %19, i32 0, i32 1
  store %struct.sKindDefinition* @defaultFileKind, %struct.sKindDefinition** %fileKind, align 8
  %20 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %call = call %struct.kindControlBlock* @allocKindControlBlock(%struct.sParserDefinition* %20)
  %21 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %21, i32 0, i32 8
  store %struct.kindControlBlock* %call, %struct.kindControlBlock** %kindControlBlock, align 8
  %22 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %call5 = call %struct.slaveControlBlock* @allocSlaveControlBlock(%struct.sParserDefinition* %22)
  %23 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %23, i32 0, i32 7
  store %struct.slaveControlBlock* %call5, %struct.slaveControlBlock** %slaveControlBlock, align 8
  %24 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %call6 = call %struct.lregexControlBlock* @allocLregexControlBlock(%struct.sParserDefinition* %24)
  %25 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %25, i32 0, i32 9
  store %struct.lregexControlBlock* %call6, %struct.lregexControlBlock** %lregexControlBlock, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @linkDependenciesAtInitializeParsing(%struct.sParserDefinition* %parser) #0 {
entry:
  %parser.addr = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  %d = alloca %struct.sParserDependency*, align 8
  %upper = alloca i32, align 4
  %upperParser = alloca %struct.sParserObject*, align 8
  store %struct.sParserDefinition* %parser, %struct.sParserDefinition** %parser.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 28
  %2 = load i32, i32* %dependencyCount, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 27
  %4 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies, align 8
  %5 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %4, i64 %idx.ext
  store %struct.sParserDependency* %add.ptr, %struct.sParserDependency** %d, align 8
  %6 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %upperParser1 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %6, i32 0, i32 1
  %7 = load i8*, i8** %upperParser1, align 8
  %call = call i32 @getNamedLanguage(i8* %7, i64 0)
  store i32 %call, i32* %upper, align 4
  %8 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %9 = load i32, i32* %upper, align 4
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %8, i64 %idx.ext2
  store %struct.sParserObject* %add.ptr3, %struct.sParserObject** %upperParser, align 8
  %10 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %type = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %10, i32 0, i32 0
  %11 = load i32, i32* %type, align 8
  %12 = load %struct.sParserObject*, %struct.sParserObject** %upperParser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %12, i32 0, i32 0
  %13 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %14 = load %struct.sParserObject*, %struct.sParserObject** %upperParser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %14, i32 0, i32 7
  %15 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  %16 = load %struct.sParserObject*, %struct.sParserObject** %upperParser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i32 0, i32 8
  %17 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %18 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %19 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %20 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %20, i32 0, i32 33
  %21 = load i32, i32* %id, align 4
  %idx.ext4 = sext i32 %21 to i64
  %add.ptr5 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %19, i64 %idx.ext4
  %kindControlBlock6 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr5, i32 0, i32 8
  %22 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock6, align 8
  %23 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %data = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %23, i32 0, i32 2
  %24 = load i8*, i8** %data, align 8
  call void @linkDependencyAtInitializeParsing(i32 %11, %struct.sParserDefinition* %13, %struct.slaveControlBlock* %15, %struct.kindControlBlock* %17, %struct.sParserDefinition* %18, %struct.kindControlBlock* %22, i8* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeParserResources() #0 {
entry:
  %i = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %4 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i32 0, i32 0
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 7
  %6 = load void (i32, i1)*, void (i32, i1)** %finalize, align 8
  %tobool = icmp ne void (i32, i1)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %7, i32 0, i32 0
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def1, align 8
  %finalize2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 7
  %9 = load void (i32, i1)*, void (i32, i1)** %finalize2, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %initialized = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %11, i32 0, i32 5
  %bf.load = load i8, i8* %initialized, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool3 = icmp ne i32 %bf.cast, 0
  call void %9(i32 %10, i1 zeroext %tobool3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %12, i32 0, i32 9
  %13 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  call void @freeLregexControlBlock(%struct.lregexControlBlock* %13)
  %14 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %14, i32 0, i32 8
  %15 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  call void @freeKindControlBlock(%struct.kindControlBlock* %15)
  %16 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i32 0, i32 8
  store %struct.kindControlBlock* null, %struct.kindControlBlock** %kindControlBlock4, align 8
  %17 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def5 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %17, i32 0, i32 0
  %18 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def5, align 8
  %19 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %19, i32 0, i32 7
  %20 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  call void @finalizeDependencies(%struct.sParserDefinition* %18, %struct.slaveControlBlock* %20)
  %21 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock6 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %21, i32 0, i32 7
  %22 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock6, align 8
  call void @freeSlaveControlBlock(%struct.slaveControlBlock* %22)
  %23 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock7 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %23, i32 0, i32 7
  store %struct.slaveControlBlock* null, %struct.slaveControlBlock** %slaveControlBlock7, align 8
  %24 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def8 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %24, i32 0, i32 0
  %25 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def8, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %25, i32 0, i32 27
  store %struct.sParserDependency* null, %struct.sParserDependency** %dependencies, align 8
  %26 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def9 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %26, i32 0, i32 0
  %27 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def9, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %27, i32 0, i32 28
  store i32 0, i32* %dependencyCount, align 8
  %28 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %28, i32 0, i32 2
  call void @freeList(%struct.sPtrArray** %currentPatterns)
  %29 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %29, i32 0, i32 3
  call void @freeList(%struct.sPtrArray** %currentExtensions)
  %30 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %30, i32 0, i32 4
  call void @freeList(%struct.sPtrArray** %currentAliases)
  %31 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def10 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %31, i32 0, i32 0
  %32 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def10, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %32, i32 0, i32 0
  %33 = load i8*, i8** %name, align 8
  call void @eFree(i8* %33)
  %34 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def11 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %34, i32 0, i32 0
  %35 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def11, align 8
  %name12 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %35, i32 0, i32 0
  store i8* null, i8** %name12, align 8
  %36 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def13 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %36, i32 0, i32 0
  %37 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def13, align 8
  %38 = bitcast %struct.sParserDefinition* %37 to i8*
  call void @eFree(i8* %38)
  %39 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def14 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %39, i32 0, i32 0
  store %struct.sParserDefinition* null, %struct.sParserDefinition** %def14, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %cmp15 = icmp ne %struct.sParserObject* %41, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  %42 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %43 = bitcast %struct.sParserObject* %42 to i8*
  call void @eFree(i8* %43)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end
  store %struct.sParserObject* null, %struct.sParserObject** @LanguageTable, align 8
  store i32 0, i32* @LanguageCount, align 4
  store %struct.sVString* null, %struct.sVString** @longName, align 8
  ret void
}

declare void @freeLregexControlBlock(%struct.lregexControlBlock*) #1

declare void @freeKindControlBlock(%struct.kindControlBlock*) #1

declare void @finalizeDependencies(%struct.sParserDefinition*, %struct.slaveControlBlock*) #1

declare void @freeSlaveControlBlock(%struct.slaveControlBlock*) #1

declare void @freeList(%struct.sPtrArray**) #1

declare void @eFree(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @processLanguageDefineOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %flags = alloca i8*, align 8
  %def = alloca %struct.sParserDefinition*, align 8
  %data = alloca %struct.preLangDefFlagData, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %2)
  br label %if.end43

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @getNamedLanguage(i8* %3, i64 0)
  %cmp2 = icmp ne i32 %call, -2
  br i1 %cmp2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %4 = load i8*, i8** %parameter.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %4)
  br label %if.end42

if.else5:                                         ; preds = %if.else
  %5 = load i8*, i8** %parameter.addr, align 8
  %call6 = call i8* @strchr(i8* %5, i32 123)
  store i8* %call6, i8** %flags, align 8
  %6 = load i8*, i8** %flags, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %7 = load i8*, i8** %parameter.addr, align 8
  %8 = load i8*, i8** %flags, align 8
  %9 = load i8*, i8** %parameter.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call8 = call i8* @eStrndup(i8* %7, i64 %sub.ptr.sub)
  store i8* %call8, i8** %name, align 8
  br label %if.end

if.else9:                                         ; preds = %if.else5
  %10 = load i8*, i8** %parameter.addr, align 8
  %call10 = call i8* @eStrdup(i8* %10)
  store i8* %call10, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then7
  %11 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %12 = bitcast %struct.sParserObject* %11 to i8*
  %13 = load i32, i32* @LanguageCount, align 4
  %add = add i32 %13, 1
  %conv11 = zext i32 %add to i64
  %mul = mul i64 %conv11, 72
  %call12 = call i8* @eRealloc(i8* %12, i64 %mul)
  %14 = bitcast i8* %call12 to %struct.sParserObject*
  store %struct.sParserObject* %14, %struct.sParserObject** @LanguageTable, align 8
  %15 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %16 = load i32, i32* @LanguageCount, align 4
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %15, i64 %idx.ext
  %17 = bitcast %struct.sParserObject* %add.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 72, i1 false)
  %18 = bitcast %struct.preLangDefFlagData* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i8*, i8** %flags, align 8
  %20 = bitcast %struct.preLangDefFlagData* %data to i8*
  call void @flagsEval(i8* %19, %struct.sFlagDefinition* getelementptr inbounds ([4 x %struct.sFlagDefinition], [4 x %struct.sFlagDefinition]* @PreLangDefFlagDef, i64 0, i64 0), i32 4, i8* %20)
  %base = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 0
  %21 = load i8*, i8** %base, align 8
  %cmp13 = icmp eq i8* %21, null
  br i1 %cmp13, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %direction = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 1
  %22 = load i32, i32* %direction, align 8
  %cmp15 = icmp ne i32 %22, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end
  %base19 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 0
  %23 = load i8*, i8** %base19, align 8
  %tobool20 = icmp ne i8* %23, null
  br i1 %tobool20, label %land.lhs.true21, label %if.end27

land.lhs.true21:                                  ; preds = %if.end18
  %direction22 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 1
  %24 = load i32, i32* %direction22, align 8
  %cmp23 = icmp eq i32 %24, 0
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %land.lhs.true21
  %direction26 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 1
  store i32 1, i32* %direction26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true21, %if.end18
  %25 = load i8*, i8** %name, align 8
  %base28 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 0
  %26 = load i8*, i8** %base28, align 8
  %direction29 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 1
  %27 = load i32, i32* %direction29, align 8
  %call30 = call %struct.sParserDefinition* @OptlibParser(i8* %25, i8* %26, i32 %27)
  store %struct.sParserDefinition* %call30, %struct.sParserDefinition** %def, align 8
  %base31 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 0
  %28 = load i8*, i8** %base31, align 8
  %tobool32 = icmp ne i8* %28, null
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end27
  %base34 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %data, i32 0, i32 0
  %29 = load i8*, i8** %base34, align 8
  call void @eFree(i8* %29)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27
  %30 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  call void @initializeParsingCommon(%struct.sParserDefinition* %30, i1 zeroext false)
  %31 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  call void @linkDependenciesAtInitializeParsing(%struct.sParserDefinition* %31)
  %call36 = call %struct.sPtrArray* @stringListNew()
  %32 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %33 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %33, i32 0, i32 33
  %34 = load i32, i32* %id, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx37 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %32, i64 %idxprom
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx37, i32 0, i32 2
  store %struct.sPtrArray* %call36, %struct.sPtrArray** %currentPatterns, align 8
  %call38 = call %struct.sPtrArray* @stringListNew()
  %35 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %36 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %id39 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %36, i32 0, i32 33
  %37 = load i32, i32* %id39, align 4
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %35, i64 %idxprom40
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx41, i32 0, i32 3
  store %struct.sPtrArray* %call38, %struct.sPtrArray** %currentExtensions, align 8
  %38 = load i8*, i8** %name, align 8
  call void @eFree(i8* %38)
  br label %if.end42

if.end42:                                         ; preds = %if.end35, %if.then4
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then
  ret void
}

declare i8* @strchr(i8*, i32) #1

declare i8* @eStrndup(i8*, i64) #1

declare i8* @eRealloc(i8*, i64) #1

declare void @flagsEval(i8*, %struct.sFlagDefinition*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sParserDefinition* @OptlibParser(i8* %name, i8* %base, i32 %direction) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %direction.addr = alloca i32, align 4
  %def = alloca %struct.sParserDefinition*, align 8
  %sub = alloca %struct.sSubparser*, align 8
  %dep = alloca %struct.sParserDependency*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* %0)
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %initialize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 6
  store void (i32)* @lazyInitialize, void (i32)** %initialize, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 11
  store i32 1, i32* %method, align 8
  %3 = load i8*, i8** %base.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @eCalloc(i64 1, i64 56)
  %4 = bitcast i8* %call1 to %struct.sSubparser*
  store %struct.sSubparser* %4, %struct.sSubparser** %sub, align 8
  %call2 = call i8* @eCalloc(i64 1, i64 24)
  %5 = bitcast i8* %call2 to %struct.sParserDependency*
  store %struct.sParserDependency* %5, %struct.sParserDependency** %dep, align 8
  %6 = load i32, i32* %direction.addr, align 4
  %7 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %direction3 = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %7, i32 0, i32 4
  store i32 %6, i32* %direction3, align 4
  %8 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %type = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %8, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %9 = load i8*, i8** %base.addr, align 8
  %call4 = call i8* @eStrdup(i8* %9)
  %10 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %upperParser = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %10, i32 0, i32 1
  store i8* %call4, i8** %upperParser, align 8
  %11 = load %struct.sSubparser*, %struct.sSubparser** %sub, align 8
  %12 = bitcast %struct.sSubparser* %11 to i8*
  %13 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %data = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %13, i32 0, i32 2
  store i8* %12, i8** %data, align 8
  %14 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %15 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %15, i32 0, i32 27
  store %struct.sParserDependency* %14, %struct.sParserDependency** %dependencies, align 8
  %16 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %16, i32 0, i32 28
  store i32 1, i32* %dependencyCount, align 8
  %17 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %finalize = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %17, i32 0, i32 7
  store void (i32, i1)* @optlibFreeDep, void (i32, i1)** %finalize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isLanguageKindEnabled(i32 %language, i32 %kindIndex) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindIndex.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %3 = load i32, i32* %kindIndex.addr, align 4
  %call = call zeroext i1 @isKindEnabled(%struct.kindControlBlock* %2, i32 %3)
  ret i1 %call
}

declare zeroext i1 @isKindEnabled(%struct.kindControlBlock*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isLanguageRoleEnabled(i32 %language, i32 %kindIndex, i32 %roleIndex) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindIndex.addr = alloca i32, align 4
  %roleIndex.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i32 %kindIndex, i32* %kindIndex.addr, align 4
  store i32 %roleIndex, i32* %roleIndex.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %3 = load i32, i32* %kindIndex.addr, align 4
  %4 = load i32, i32* %roleIndex.addr, align 4
  %call = call zeroext i1 @isRoleEnabled(%struct.kindControlBlock* %2, i32 %3, i32 %4)
  ret i1 %call
}

declare zeroext i1 @isRoleEnabled(%struct.kindControlBlock*, i32, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processKinddefOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %language, align 4
  %3 = load i8*, i8** %option.addr, align 8
  %4 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @processLangDefineKind(i32 %2, i8* %3, i8* %4)
  store i1 %call1, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

declare i32 @getLanguageComponentInOption(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processLangDefineKind(i32 %language, i8* %option, i8* %parameterx) #0 {
entry:
  %retval = alloca i1, align 1
  %language.addr = alloca i32, align 4
  %option.addr = alloca i8*, align 8
  %parameterx.addr = alloca i8*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  %letter = alloca i32, align 4
  %p = alloca i8*, align 8
  %name = alloca i8*, align 8
  %description = alloca i8*, align 8
  %tmp_start = alloca i8*, align 8
  %tmp_end = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameterx, i8** %parameterx.addr, align 8
  %0 = load i8*, i8** %parameterx.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %3 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %5 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.137, i64 0, i64 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end2
  %6 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  store i32 %conv5, i32* %letter, align 4
  %8 = load i32, i32* %letter, align 4
  %cmp6 = icmp eq i32 %8, 44
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %9 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.138, i64 0, i64 0), i8* %9)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %10 = load i32, i32* %letter, align 4
  %call = call i32 @isalnum(i32 %10) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  %11 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.139, i64 0, i64 0), i8* %11)
  br label %if.end20

if.else:                                          ; preds = %if.end9
  %12 = load i32, i32* %letter, align 4
  %cmp11 = icmp eq i32 %12, 70
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  %13 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.140, i64 0, i64 0), i8* %13)
  br label %if.end19

if.else14:                                        ; preds = %if.else
  %14 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %14, i32 0, i32 8
  %15 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %16 = load i32, i32* %letter, align 4
  %call15 = call %struct.sKindDefinition* @getKindForLetter(%struct.kindControlBlock* %15, i32 %16)
  %tobool16 = icmp ne %struct.sKindDefinition* %call15, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else14
  %17 = load i32, i32* %letter, align 4
  %18 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.141, i64 0, i64 0), i32 %17, i8* %18)
  store i1 true, i1* %retval, align 1
  br label %return

if.end18:                                         ; preds = %if.else14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  %19 = load i8*, i8** %p, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  %cmp23 = icmp ne i32 %conv22, 44
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  %21 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.142, i64 0, i64 0), i8* %21)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end20
  %22 = load i8*, i8** %p, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %add.ptr27, i8** %p, align 8
  %23 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %24 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end26
  %25 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.143, i64 0, i64 0), i8* %25)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end26
  %26 = load i8*, i8** %p, align 8
  %call34 = call i8* @strchr(i8* %26, i32 44)
  store i8* %call34, i8** %tmp_end, align 8
  %27 = load i8*, i8** %tmp_end, align 8
  %tobool35 = icmp ne i8* %27, null
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  %28 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.144, i64 0, i64 0), i8* %28)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %29 = load i8*, i8** %p, align 8
  store i8* %29, i8** %tmp_start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end44, %if.end37
  %30 = load i8*, i8** %p, align 8
  %31 = load i8*, i8** %tmp_end, align 8
  %cmp38 = icmp ne i8* %30, %31
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv40 = sext i8 %33 to i32
  %call41 = call i32 @isalnum(i32 %conv40) #4
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %while.body
  %34 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.145, i64 0, i64 0), i8* %34)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %while.body
  %35 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load i8*, i8** %tmp_end, align 8
  %37 = load i8*, i8** %tmp_start, align 8
  %cmp45 = icmp eq i8* %36, %37
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %while.end
  %38 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.146, i64 0, i64 0), i8* %38)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %while.end
  %39 = load i8*, i8** %tmp_start, align 8
  %40 = load i8*, i8** %tmp_end, align 8
  %41 = load i8*, i8** %tmp_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call49 = call i8* @eStrndup(i8* %39, i64 %sub.ptr.sub)
  store i8* %call49, i8** %name, align 8
  %42 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock50 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %42, i32 0, i32 8
  %43 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock50, align 8
  %44 = load i8*, i8** %name, align 8
  %call51 = call %struct.sKindDefinition* @getKindForName(%struct.kindControlBlock* %43, i8* %44)
  %tobool52 = icmp ne %struct.sKindDefinition* %call51, null
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end48
  %45 = load i8*, i8** %name, align 8
  %46 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.147, i64 0, i64 0), i8* %45, i8* %46)
  %47 = load i8*, i8** %name, align 8
  call void @eFree(i8* %47)
  store i1 true, i1* %retval, align 1
  br label %return

if.end54:                                         ; preds = %if.end48
  %48 = load i8*, i8** %p, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr55, i8** %p, align 8
  %49 = load i8*, i8** %p, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %50 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end54
  %51 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.148, i64 0, i64 0), i8* %51)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end54
  %52 = load i8*, i8** %p, align 8
  %call62 = call i8* @eStrdup(i8* %52)
  store i8* %call62, i8** %description, align 8
  %call63 = call i8* @eCalloc(i64 1, i64 80)
  %53 = bitcast i8* %call63 to %struct.sKindDefinition*
  store %struct.sKindDefinition* %53, %struct.sKindDefinition** %kdef, align 8
  %54 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %enabled = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %54, i32 0, i32 0
  store i8 1, i8* %enabled, align 8
  %55 = load i32, i32* %letter, align 4
  %conv64 = trunc i32 %55 to i8
  %56 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %letter65 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %56, i32 0, i32 1
  store i8 %conv64, i8* %letter65, align 1
  %57 = load i8*, i8** %name, align 8
  %58 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %name66 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %58, i32 0, i32 2
  store i8* %57, i8** %name66, align 8
  %59 = load i8*, i8** %description, align 8
  %60 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %description67 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %60, i32 0, i32 3
  store i8* %59, i8** %description67, align 8
  %61 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock68 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %61, i32 0, i32 8
  %62 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock68, align 8
  %63 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %call69 = call i32 @defineKind(%struct.kindControlBlock* %62, %struct.sKindDefinition* %63, void (%struct.sKindDefinition*)* @freeKdef)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end61, %if.then53, %if.then17
  %64 = load i1, i1* %retval, align 1
  ret i1 %64
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processKindsOption(i8* %option, i8* %parameter) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %handled = alloca i8, align 1
  %arg = alloca %struct.langKindDefinitionStruct, align 8
  %language = alloca i32, align 4
  %dash = alloca i8*, align 8
  %len = alloca i64, align 8
  %langName = alloca i8*, align 8
  %lang = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  store i8 0, i8* %handled, align 1
  %option1 = getelementptr inbounds %struct.langKindDefinitionStruct, %struct.langKindDefinitionStruct* %arg, i32 0, i32 0
  %0 = load i8*, i8** %option.addr, align 8
  store i8* %0, i8** %option1, align 8
  %parameter2 = getelementptr inbounds %struct.langKindDefinitionStruct, %struct.langKindDefinitionStruct* %arg, i32 0, i32 1
  %1 = load i8*, i8** %parameter.addr, align 8
  store i8* %1, i8** %parameter2, align 8
  %2 = load i8*, i8** %option.addr, align 8
  %call = call i8* @strchr(i8* %2, i32 45)
  store i8* %call, i8** %dash, align 8
  %3 = load i8*, i8** %dash, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %dash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %call3 = call i32 @strcmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i8*, i8** %dash, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %5, i64 1
  %call6 = call i32 @strcmp(i8* %add.ptr5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.else19

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i8*, i8** %dash, align 8
  %7 = load i8*, i8** %option.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %cmp8 = icmp eq i64 %8, 3
  br i1 %cmp8, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %if.then
  %9 = load i8*, i8** %option.addr, align 8
  %10 = load i64, i64* %len, align 8
  %call10 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 %10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true9
  %11 = bitcast %struct.langKindDefinitionStruct* %arg to i8*
  call void @foreachLanguage(void (i32, i8*)* @processLangKindDefinitionEach, i8* %11)
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true9, %if.then
  %12 = load i8*, i8** %option.addr, align 8
  %13 = load i64, i64* %len, align 8
  %call13 = call i32 @getNamedLanguage(i8* %12, i64 %13)
  store i32 %call13, i32* %language, align 4
  %14 = load i32, i32* %language, align 4
  %cmp14 = icmp eq i32 %14, -2
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %15 = load i8*, i8** %option.addr, align 8
  %16 = load i64, i64* %len, align 8
  %call16 = call i8* @eStrndup(i8* %15, i64 %16)
  store i8* %call16, i8** %langName, align 8
  %17 = load i8*, i8** %langName, align 8
  %18 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i8* %17, i8* %18)
  %19 = load i8*, i8** %langName, align 8
  call void @eFree(i8* %19)
  br label %if.end

if.else17:                                        ; preds = %if.else
  %20 = load i32, i32* %language, align 4
  %21 = load i8*, i8** %option.addr, align 8
  %22 = load i8*, i8** %parameter.addr, align 8
  call void @processLangKindDefinition(i32 %20, i8* %21, i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then12
  store i8 1, i8* %handled, align 1
  br label %if.end42

if.else19:                                        ; preds = %lor.lhs.false, %entry
  %23 = load i8*, i8** %option.addr, align 8
  %call20 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i64 6)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end41

if.then22:                                        ; preds = %if.else19
  %24 = load i8*, i8** %option.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %24, i64 6
  store i8* %add.ptr23, i8** %lang, align 8
  %25 = load i8*, i8** %lang, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %26 to i32
  %cmp24 = icmp eq i32 %conv, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then22
  %27 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* %27)
  br label %if.end40

if.else27:                                        ; preds = %if.then22
  %28 = load i8*, i8** %lang, align 8
  %call28 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else27
  %29 = bitcast %struct.langKindDefinitionStruct* %arg to i8*
  call void @foreachLanguage(void (i32, i8*)* @processLangKindDefinitionEach, i8* %29)
  br label %if.end39

if.else32:                                        ; preds = %if.else27
  %30 = load i8*, i8** %lang, align 8
  %call33 = call i32 @getNamedLanguage(i8* %30, i64 0)
  store i32 %call33, i32* %language, align 4
  %31 = load i32, i32* %language, align 4
  %cmp34 = icmp eq i32 %31, -2
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else32
  %32 = load i8*, i8** %lang, align 8
  %33 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i8* %32, i8* %33)
  br label %if.end38

if.else37:                                        ; preds = %if.else32
  %34 = load i32, i32* %language, align 4
  %35 = load i8*, i8** %option.addr, align 8
  %36 = load i8*, i8** %parameter.addr, align 8
  call void @processLangKindDefinition(i32 %34, i8* %35, i8* %36)
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then36
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then31
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then26
  store i8 1, i8* %handled, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.else19
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end18
  %37 = load i8, i8* %handled, align 1
  %tobool = trunc i8 %37 to i1
  ret i1 %tobool
}

declare i32 @strcmp(i8*, i8*) #1

declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @foreachLanguage(void (i32, i8*)* %callback, i8* %user_data) #0 {
entry:
  %callback.addr = alloca void (i32, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 -2, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %result, align 4
  %cmp1 = icmp eq i32 %2, -2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %6, %struct.sParserDefinition** %lang, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %cmp2 = icmp ne i8* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i8*, i8** %user_data.addr, align 8
  call void %9(i32 %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLangKindDefinitionEach(i32 %lang, i8* %user_data) #0 {
entry:
  %lang.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %arg = alloca %struct.langKindDefinitionStruct*, align 8
  store i32 %lang, i32* %lang.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.langKindDefinitionStruct*
  store %struct.langKindDefinitionStruct* %1, %struct.langKindDefinitionStruct** %arg, align 8
  %2 = load i32, i32* %lang.addr, align 4
  %3 = load %struct.langKindDefinitionStruct*, %struct.langKindDefinitionStruct** %arg, align 8
  %option = getelementptr inbounds %struct.langKindDefinitionStruct, %struct.langKindDefinitionStruct* %3, i32 0, i32 0
  %4 = load i8*, i8** %option, align 8
  %5 = load %struct.langKindDefinitionStruct*, %struct.langKindDefinitionStruct** %arg, align 8
  %parameter = getelementptr inbounds %struct.langKindDefinitionStruct, %struct.langKindDefinitionStruct* %5, i32 0, i32 1
  %6 = load i8*, i8** %parameter, align 8
  call void @processLangKindDefinition(i32 %2, i8* %4, i8* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLangKindDefinition(i32 %language, i8* %option, i8* %parameter) #0 {
entry:
  %language.addr = alloca i32, align 4
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %mode = alloca i8, align 1
  %c = alloca i32, align 4
  %inLongName = alloca i8, align 1
  %k = alloca i8*, align 8
  %r = alloca i8, align 1
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8 1, i8* %mode, align 1
  store i8 0, i8* %inLongName, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i32, i32* %language.addr, align 4
  call void @initializeParser(i32 %1)
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 42
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %4 = load i32, i32* %language.addr, align 4
  call void @resetLanguageKinds(i32 %4, i1 zeroext true)
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end9

if.else:                                          ; preds = %do.end
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv2, 43
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 45
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  %10 = load i32, i32* %language.addr, align 4
  call void @resetLanguageKinds(i32 %10, i1 zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %11 = load %struct.sVString*, %struct.sVString** @longName, align 8
  %call = call %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString* %11)
  store %struct.sVString* %call, %struct.sVString** @longName, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end9
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  store i32 %conv11, i32* %c, align 4
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %c, align 4
  switch i32 %14, label %sw.default [
    i32 43, label %sw.bb
    i32 45, label %sw.bb17
    i32 123, label %sw.bb22
    i32 125, label %sw.bb26
  ]

sw.bb:                                            ; preds = %while.body
  %15 = load i8, i8* %inLongName, align 1
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %if.then14, label %if.else15

if.then14:                                        ; preds = %sw.bb
  %16 = load %struct.sVString*, %struct.sVString** @longName, align 8
  %17 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %16, i32 %17)
  br label %if.end16

if.else15:                                        ; preds = %sw.bb
  store i8 1, i8* %mode, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.body
  %18 = load i8, i8* %inLongName, align 1
  %tobool18 = trunc i8 %18 to i1
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %sw.bb17
  %19 = load %struct.sVString*, %struct.sVString** @longName, align 8
  %20 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %19, i32 %20)
  br label %if.end21

if.else20:                                        ; preds = %sw.bb17
  store i8 0, i8* %mode, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  %21 = load i8, i8* %inLongName, align 1
  %tobool23 = trunc i8 %21 to i1
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb22
  %22 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.149, i64 0, i64 0), i32 %22)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.bb22
  store i8 1, i8* %inLongName, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  %23 = load i8, i8* %inLongName, align 1
  %tobool27 = trunc i8 %23 to i1
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %sw.bb26
  %24 = load i32, i32* %c, align 4
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.149, i64 0, i64 0), i32 %24)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %sw.bb26
  %25 = load %struct.sVString*, %struct.sVString** @longName, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %25, i32 0, i32 2
  %26 = load i8*, i8** %buffer, align 8
  store i8* %26, i8** %k, align 8
  %27 = load i32, i32* %language.addr, align 4
  %28 = load i8*, i8** %k, align 8
  %29 = load i8, i8* %mode, align 1
  %tobool30 = trunc i8 %29 to i1
  %call31 = call zeroext i1 @enableLanguageKindLong(i32 %27, i8* %28, i1 zeroext %tobool30)
  %frombool = zext i1 %call31 to i8
  store i8 %frombool, i8* %r, align 1
  %30 = load i8, i8* %r, align 1
  %tobool32 = trunc i8 %30 to i1
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  %31 = load i8*, i8** %k, align 8
  %32 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.150, i64 0, i64 0), i8* %31, i8* %32)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  store i8 0, i8* %inLongName, align 1
  br label %do.body35

do.body35:                                        ; preds = %if.end34
  %33 = load %struct.sVString*, %struct.sVString** @longName, align 8
  store %struct.sVString* %33, %struct.sVString** %vStringClear_s, align 8
  %34 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %34, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %35 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer36 = getelementptr inbounds %struct.sVString, %struct.sVString* %35, i32 0, i32 2
  %36 = load i8*, i8** %buffer36, align 8
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end37

do.end37:                                         ; preds = %do.body35
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %37 = load i8, i8* %inLongName, align 1
  %tobool38 = trunc i8 %37 to i1
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %sw.default
  %38 = load %struct.sVString*, %struct.sVString** @longName, align 8
  %39 = load i32, i32* %c, align 4
  call void @vStringPut(%struct.sVString* %38, i32 %39)
  br label %if.end47

if.else40:                                        ; preds = %sw.default
  %40 = load i32, i32* %language.addr, align 4
  %41 = load i32, i32* %c, align 4
  %42 = load i8, i8* %mode, align 1
  %tobool41 = trunc i8 %42 to i1
  %call42 = call zeroext i1 @enableLanguageKind(i32 %40, i32 %41, i1 zeroext %tobool41)
  %frombool43 = zext i1 %call42 to i8
  store i8 %frombool43, i8* %r, align 1
  %43 = load i8, i8* %r, align 1
  %tobool44 = trunc i8 %43 to i1
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.else40
  %44 = load i32, i32* %c, align 4
  %45 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.151, i64 0, i64 0), i32 %44, i8* %45)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.else40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then39
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end47, %do.end37, %if.end25, %if.end21, %if.end16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageRoles(i32 %language, i8* %kindspecs, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindspecs.addr = alloca i8*, align 8
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %kindspecs, i8** %kindspecs.addr, align 8
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.colprintTable* @roleColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load i32, i32* %language.addr, align 4
  call void @initializeParser(i32 %0)
  %1 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @LanguageCount, align 4
  %cmp2 = icmp ult i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %call3 = call zeroext i1 @isLanguageVisible(i32 %4)
  br i1 %call3, label %if.end, label %if.then4

if.then4:                                         ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %7 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %8 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %8, i32 0, i32 8
  %9 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %10 = load i8*, i8** %kindspecs.addr, align 8
  call void @roleColprintAddRoles(%struct.colprintTable* %7, %struct.kindControlBlock* %9, i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then4
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end8

if.else:                                          ; preds = %entry
  %12 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %13 = load i32, i32* %language.addr, align 4
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %12, i64 %idx.ext5
  store %struct.sParserObject* %add.ptr6, %struct.sParserObject** %parser, align 8
  %14 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %15 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock7 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %15, i32 0, i32 8
  %16 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock7, align 8
  %17 = load i8*, i8** %kindspecs.addr, align 8
  call void @roleColprintAddRoles(%struct.colprintTable* %14, %struct.kindControlBlock* %16, i8* %17)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  %18 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %19 = load i32, i32* %language.addr, align 4
  %cmp9 = icmp ne i32 %19, -1
  %20 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %20 to i1
  %21 = load i8, i8* %machinable.addr, align 1
  %tobool10 = trunc i8 %21 to i1
  %22 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @roleColprintTablePrint(%struct.colprintTable* %18, i1 zeroext %cmp9, i1 zeroext %tobool, i1 zeroext %tobool10, %struct.__sFILE* %22)
  %23 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %23)
  ret void
}

declare %struct.colprintTable* @roleColprintTableNew() #1

declare void @roleColprintAddRoles(%struct.colprintTable*, %struct.kindControlBlock*, i8*) #1

declare void @roleColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

declare void @colprintTableDelete(%struct.colprintTable*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageKinds(i32 %language, i1 zeroext %allKindFields, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %allKindFields.addr = alloca i8, align 1
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %i = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %allKindFields to i8
  store i8 %frombool, i8* %allKindFields.addr, align 1
  %frombool1 = zext i1 %withListHeader to i8
  store i8 %frombool1, i8* %withListHeader.addr, align 1
  %frombool2 = zext i1 %machinable to i8
  store i8 %frombool2, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store %struct.colprintTable* null, %struct.colprintTable** %table, align 8
  %0 = load i8, i8* %allKindFields.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.colprintTable* @kindColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @LanguageCount, align 4
  %cmp4 = icmp ult i32 %2, %3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %6, %struct.sParserDefinition** %lang, align 8
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 22
  %8 = load i8, i8* %invisible, align 4
  %tobool5 = trunc i8 %8 to i1
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %9 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %tobool8 = icmp ne %struct.colprintTable* %9, null
  br i1 %tobool8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end7
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load i32, i32* %i, align 4
  %call10 = call zeroext i1 @isLanguageEnabled(i32 %12)
  %13 = zext i1 %call10 to i64
  %cond = select i1 %call10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* %11, i8* %cond)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @printKinds(i32 %14, i1 zeroext true, %struct.colprintTable* %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then6
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end13

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %language.addr, align 4
  %18 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @printKinds(i32 %17, i1 zeroext false, %struct.colprintTable* %18)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %for.end
  %19 = load i8, i8* %allKindFields.addr, align 1
  %tobool14 = trunc i8 %19 to i1
  br i1 %tobool14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end13
  %20 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %21 = load i32, i32* %language.addr, align 4
  %cmp16 = icmp eq i32 %21, -1
  %22 = zext i1 %cmp16 to i64
  %cond17 = select i1 %cmp16, i32 0, i32 1
  %tobool18 = icmp ne i32 %cond17, 0
  %23 = load i8, i8* %withListHeader.addr, align 1
  %tobool19 = trunc i8 %23 to i1
  %24 = load i8, i8* %machinable.addr, align 1
  %tobool20 = trunc i8 %24 to i1
  %25 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @kindColprintTablePrint(%struct.colprintTable* %20, i1 zeroext %tobool18, i1 zeroext %tobool19, i1 zeroext %tobool20, %struct.__sFILE* %25)
  %26 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %26)
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13
  ret void
}

declare %struct.colprintTable* @kindColprintTableNew() #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printKinds(i32 %language, i1 zeroext %indent, %struct.colprintTable* %table) #0 {
entry:
  %language.addr = alloca i32, align 4
  %indent.addr = alloca i8, align 1
  %table.addr = alloca %struct.colprintTable*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  %kcb = alloca %struct.kindControlBlock*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %indent to i8
  store i8 %frombool, i8* %indent.addr, align 1
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %language.addr, align 4
  call void @initializeParser(i32 %0)
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %3 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i32 0, i32 8
  %4 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  store %struct.kindControlBlock* %4, %struct.kindControlBlock** %kcb, align 8
  %5 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %tobool = icmp ne %struct.colprintTable* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %7 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  call void @kindColprintAddLanguageLines(%struct.colprintTable* %6, %struct.kindControlBlock* %7)
  br label %if.end

if.else:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %9)
  %cmp = icmp ult i32 %8, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %11 = load i32, i32* %i, align 4
  %call1 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %10, i32 %11)
  %12 = load i8, i8* %indent.addr, align 1
  %tobool2 = trunc i8 %12 to i1
  call void @printKind(%struct.sKindDefinition* %call1, i1 zeroext %tobool2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @kindColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageParameters(i32 %language, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %i = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.colprintTable* @paramColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @LanguageCount, align 4
  %cmp2 = icmp ult i32 %1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %5, %struct.sParserDefinition** %lang, align 8
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 22
  %7 = load i8, i8* %invisible, align 4
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %9 = load i32, i32* %i, align 4
  call void @printParameters(%struct.colprintTable* %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then3
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end4

if.else:                                          ; preds = %entry
  %11 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %12 = load i32, i32* %language.addr, align 4
  call void @printParameters(%struct.colprintTable* %11, i32 %12)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %for.end
  %13 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %14 = load i32, i32* %language.addr, align 4
  %cmp5 = icmp ne i32 %14, -1
  %15 = load i8, i8* %withListHeader.addr, align 1
  %tobool6 = trunc i8 %15 to i1
  %16 = load i8, i8* %machinable.addr, align 1
  %tobool7 = trunc i8 %16 to i1
  %17 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @paramColprintTablePrint(%struct.colprintTable* %13, i1 zeroext %cmp5, i1 zeroext %tobool6, i1 zeroext %tobool7, %struct.__sFILE* %17)
  %18 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %18)
  ret void
}

declare %struct.colprintTable* @paramColprintTableNew() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printParameters(%struct.colprintTable* %table, i32 %language) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %language.addr, align 4
  call void @initializeParser(i32 %0)
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %3, %struct.sParserDefinition** %lang, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %parameterHandlerTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 29
  %5 = load %struct.sParameterHandlerTable*, %struct.sParameterHandlerTable** %parameterHandlerTable, align 8
  %cmp = icmp ne %struct.sParameterHandlerTable* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %parameterHandlerCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 30
  %8 = load i32, i32* %parameterHandlerCount, align 8
  %cmp1 = icmp ult i32 %6, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %10 = load i32, i32* %language.addr, align 4
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %parameterHandlerTable2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 29
  %12 = load %struct.sParameterHandlerTable*, %struct.sParameterHandlerTable** %parameterHandlerTable2, align 8
  %13 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.sParameterHandlerTable, %struct.sParameterHandlerTable* %12, i64 %idx.ext
  call void @paramColprintAddParameter(%struct.colprintTable* %9, i32 %10, %struct.sParameterHandlerTable* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %do.end
  ret void
}

declare void @paramColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processAliasOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %do.end
  %1 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i8*, i8** %parameter.addr, align 8
  %call3 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @LanguageCount, align 4
  %cmp7 = icmp ult i32 %4, %5
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  call void @clearLanguageAliases(i32 %6)
  %7 = load i32, i32* %i, align 4
  %call9 = call i8* @getLanguageName(i32 %7)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i8* %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %parameter.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %for.end
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0))
  call void @installLanguageAliasesDefaults()
  br label %if.end

if.end:                                           ; preds = %if.then14, %for.end
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i64 0, i64 0), i8* %11)
  store i1 false, i1* %retval, align 1
  br label %return

if.end15:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1
  br label %return

if.end16:                                         ; preds = %do.end
  %12 = load i8*, i8** %option.addr, align 8
  %call17 = call i32 @getLanguageComponentInOption(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  store i32 %call17, i32* %language, align 4
  %13 = load i32, i32* %language, align 4
  %cmp18 = icmp eq i32 %13, -2
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i1 false, i1* %retval, align 1
  br label %return

if.end21:                                         ; preds = %if.end16
  %14 = load i32, i32* %language, align 4
  %15 = load i8*, i8** %parameter.addr, align 8
  call void @processLangAliasOption(i32 %14, i8* %15)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.end15, %if.else
  %16 = load i1, i1* %retval, align 1
  ret i1 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @processLangAliasOption(i32 %language, i8* %parameter) #0 {
entry:
  %language.addr = alloca i32, align 4
  %parameter.addr = alloca i8*, align 8
  %alias = alloca i8*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %parameter, i8** %parameter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load i8*, i8** %parameter.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %4 = load i32, i32* %language.addr, align 4
  call void @clearLanguageAliases(i32 %4)
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i32 0, i32 0
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i8* %7)
  br label %if.end36

if.else:                                          ; preds = %do.end
  %8 = load i8*, i8** %parameter.addr, align 8
  %call = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %9 = load i32, i32* %language.addr, align 4
  call void @installLanguageAliasesDefault(i32 %9)
  %10 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def5 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %10, i32 0, i32 0
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def5, align 8
  %name6 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 0
  %12 = load i8*, i8** %name6, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.152, i64 0, i64 0), i8* %12)
  br label %if.end35

if.else7:                                         ; preds = %if.else
  %13 = load i8*, i8** %parameter.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 43
  br i1 %cmp10, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else7
  %15 = load i8*, i8** %parameter.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr13, i8** %alias, align 8
  %16 = load i32, i32* %language.addr, align 4
  %17 = load i8*, i8** %alias, align 8
  call void @addLanguageAlias(i32 %16, i8* %17)
  %18 = load i8*, i8** %alias, align 8
  %19 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def14 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %19, i32 0, i32 0
  %20 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def14, align 8
  %name15 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %20, i32 0, i32 0
  %21 = load i8*, i8** %name15, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.153, i64 0, i64 0), i8* %18, i8* %21)
  br label %if.end34

if.else16:                                        ; preds = %if.else7
  %22 = load i8*, i8** %parameter.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %23 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %if.then21, label %if.else30

if.then21:                                        ; preds = %if.else16
  %24 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %24, i32 0, i32 4
  %25 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases, align 8
  %tobool = icmp ne %struct.sPtrArray* %25, null
  br i1 %tobool, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.then21
  %26 = load i8*, i8** %parameter.addr, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %add.ptr23, i8** %alias, align 8
  %27 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentAliases24 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %27, i32 0, i32 4
  %28 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases24, align 8
  %29 = load i8*, i8** %alias, align 8
  %call25 = call zeroext i1 @stringListDeleteItemExtension(%struct.sPtrArray* %28, i8* %29)
  br i1 %call25, label %if.then26, label %if.end

if.then26:                                        ; preds = %if.then22
  %30 = load i8*, i8** %alias, align 8
  %31 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def27 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %31, i32 0, i32 0
  %32 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def27, align 8
  %name28 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %32, i32 0, i32 0
  %33 = load i8*, i8** %name28, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.154, i64 0, i64 0), i8* %30, i8* %33)
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.then22
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then21
  br label %if.end33

if.else30:                                        ; preds = %if.else16
  %34 = load i8*, i8** %parameter.addr, align 8
  store i8* %34, i8** %alias, align 8
  %35 = load i32, i32* %language.addr, align 4
  call void @clearLanguageAliases(i32 %35)
  %36 = load i32, i32* %language.addr, align 4
  %37 = load i8*, i8** %alias, align 8
  call void @addLanguageAlias(i32 %36, i8* %37)
  %38 = load i8*, i8** %alias, align 8
  %39 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def31 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %39, i32 0, i32 0
  %40 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def31, align 8
  %name32 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %40, i32 0, i32 0
  %41 = load i8*, i8** %name32, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.155, i64 0, i64 0), i8* %38, i8* %41)
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.end29
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then12
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then4
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageMaps(i32 %language, i32 %type, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %i = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %parser15 = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store %struct.colprintTable* null, %struct.colprintTable** %table, align 8
  %0 = load i32, i32* %type.addr, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %call = call %struct.colprintTable* @mapColprintTableNew(i32 %1)
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then2, label %if.else11

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @LanguageCount, align 4
  %cmp3 = icmp ult i32 %3, %4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %call4 = call zeroext i1 @isLanguageVisible(i32 %5)
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.body
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %6 = load i32, i32* %type.addr, align 4
  %and7 = and i32 %6, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %7 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %8 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %7, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %9 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %10 = load i32, i32* %type.addr, align 4
  %11 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  call void @mapColprintAddLanguage(%struct.colprintTable* %9, i32 %10, %struct.sParserObject* %11)
  br label %if.end10

if.else:                                          ; preds = %if.end6
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %type.addr, align 4
  call void @printMaps(i32 %12, i32 %13)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.then5
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end20

if.else11:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.else11
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i32, i32* %type.addr, align 4
  %and12 = and i32 %15, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %do.end
  %16 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %17 = load i32, i32* %language.addr, align 4
  %idx.ext16 = sext i32 %17 to i64
  %add.ptr17 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i64 %idx.ext16
  store %struct.sParserObject* %add.ptr17, %struct.sParserObject** %parser15, align 8
  %18 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %19 = load i32, i32* %type.addr, align 4
  %20 = load %struct.sParserObject*, %struct.sParserObject** %parser15, align 8
  call void @mapColprintAddLanguage(%struct.colprintTable* %18, i32 %19, %struct.sParserObject* %20)
  br label %if.end19

if.else18:                                        ; preds = %do.end
  %21 = load i32, i32* %language.addr, align 4
  %22 = load i32, i32* %type.addr, align 4
  call void @printMaps(i32 %21, i32 %22)
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %for.end
  %23 = load i32, i32* %type.addr, align 4
  %and21 = and i32 %23, 4
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end20
  %24 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %25 = load i32, i32* %language.addr, align 4
  %cmp24 = icmp eq i32 %25, -1
  %26 = zext i1 %cmp24 to i64
  %cond = select i1 %cmp24, i32 0, i32 1
  %27 = load i8, i8* %withListHeader.addr, align 1
  %tobool25 = trunc i8 %27 to i1
  %28 = load i8, i8* %machinable.addr, align 1
  %tobool26 = trunc i8 %28 to i1
  %29 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %24, i32 %cond, i1 zeroext %tobool25, i1 zeroext %tobool26, %struct.__sFILE* %29)
  %30 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %30)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.colprintTable* @mapColprintTableNew(i32 %type) #0 {
entry:
  %retval = alloca %struct.colprintTable*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %and = and i32 %0, 3
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i64 0, i64 0), i8* null)
  store %struct.colprintTable* %call, %struct.colprintTable** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %and1 = and i32 %1, 1
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %call3 = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.159, i64 0, i64 0), i8* null)
  store %struct.colprintTable* %call3, %struct.colprintTable** %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.else
  %2 = load i32, i32* %type.addr, align 4
  %and5 = and i32 %2, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else4
  %call8 = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i64 0, i64 0), i8* null)
  store %struct.colprintTable* %call8, %struct.colprintTable** %retval, align 8
  br label %return

if.else9:                                         ; preds = %if.else4
  br label %do.body

do.body:                                          ; preds = %if.else9
  br label %do.end

do.end:                                           ; preds = %do.body
  store %struct.colprintTable* null, %struct.colprintTable** %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then7, %if.then2, %if.then
  %3 = load %struct.colprintTable*, %struct.colprintTable** %retval, align 8
  ret %struct.colprintTable* %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @mapColprintAddLanguage(%struct.colprintTable* %table, i32 %type, %struct.sParserObject* %parser) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %type.addr = alloca i32, align 4
  %parser.addr = alloca %struct.sParserObject*, align 8
  %line = alloca %struct.colprintLine*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %pattern = alloca %struct.sVString*, align 8
  %extension = alloca %struct.sVString*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.sParserObject* %parser, %struct.sParserObject** %parser.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i32 0, i32 2
  %2 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %2)
  store i32 %call, i32* %count, align 4
  %cmp = icmp ult i32 0, %call
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %count, align 4
  %cmp1 = icmp ult i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call2 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %5)
  store %struct.colprintLine* %call2, %struct.colprintLine** %line, align 8
  %6 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %currentPatterns3 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %6, i32 0, i32 2
  %7 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns3, align 8
  %8 = load i32, i32* %i, align 4
  %call4 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %7, i32 %8)
  store %struct.sVString* %call4, %struct.sVString** %pattern, align 8
  %9 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %10 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %10, i32 0, i32 0
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %9, i8* %12)
  %13 = load i32, i32* %type.addr, align 4
  %and5 = and i32 %13, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  %14 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body
  %15 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %16 = load %struct.sVString*, %struct.sVString** %pattern, align 8
  call void @colprintLineAppendColumnVString(%struct.colprintLine* %15, %struct.sVString* %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end8

if.end8:                                          ; preds = %for.end, %land.lhs.true, %entry
  %18 = load i32, i32* %type.addr, align 4
  %and9 = and i32 %18, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true11, label %if.end30

land.lhs.true11:                                  ; preds = %if.end8
  %19 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %19, i32 0, i32 3
  %20 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  %call12 = call i32 @stringListCount(%struct.sPtrArray* %20)
  store i32 %call12, i32* %count, align 4
  %cmp13 = icmp ult i32 0, %call12
  br i1 %cmp13, label %if.then14, label %if.end30

if.then14:                                        ; preds = %land.lhs.true11
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %if.then14
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %count, align 4
  %cmp16 = icmp ult i32 %21, %22
  br i1 %cmp16, label %for.body17, label %for.end29

for.body17:                                       ; preds = %for.cond15
  %23 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call18 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %23)
  store %struct.colprintLine* %call18, %struct.colprintLine** %line, align 8
  %24 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %currentExtensions19 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %24, i32 0, i32 3
  %25 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions19, align 8
  %26 = load i32, i32* %i, align 4
  %call20 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %25, i32 %26)
  store %struct.sVString* %call20, %struct.sVString** %extension, align 8
  %27 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %28 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %def21 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %28, i32 0, i32 0
  %29 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def21, align 8
  %name22 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %29, i32 0, i32 0
  %30 = load i8*, i8** %name22, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %27, i8* %30)
  %31 = load i32, i32* %type.addr, align 4
  %and23 = and i32 %31, 1
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body17
  %32 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.body17
  %33 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %34 = load %struct.sVString*, %struct.sVString** %extension, align 8
  call void @colprintLineAppendColumnVString(%struct.colprintLine* %33, %struct.sVString* %34)
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %35 = load i32, i32* %i, align 4
  %inc28 = add i32 %35, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond15

for.end29:                                        ; preds = %for.cond15
  br label %if.end30

if.end30:                                         ; preds = %for.end29, %land.lhs.true11, %if.end8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printMaps(i32 %language, i32 %type) #0 {
entry:
  %language.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i64 0, i64 0), i8* %4)
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i32 0, i32 2
  %6 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns, align 8
  %cmp = icmp ne %struct.sPtrArray* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %type.addr, align 4
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %9, i32 0, i32 2
  %10 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns1, align 8
  %call2 = call i32 @stringListCount(%struct.sPtrArray* %10)
  %cmp3 = icmp ult i32 %8, %call2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentPatterns4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %11, i32 0, i32 2
  %12 = load %struct.sPtrArray*, %struct.sPtrArray** %currentPatterns4, align 8
  %13 = load i32, i32* %i, align 4
  %call5 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %12, i32 %13)
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %call5, i32 0, i32 2
  %14 = load i8*, i8** %buffer, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  %16 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i32 0, i32 3
  %17 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions, align 8
  %cmp7 = icmp ne %struct.sPtrArray* %17, null
  br i1 %cmp7, label %land.lhs.true8, label %if.end24

land.lhs.true8:                                   ; preds = %if.end
  %18 = load i32, i32* %type.addr, align 4
  %and9 = and i32 %18, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %land.lhs.true8
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc21, %if.then11
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions13 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %20, i32 0, i32 3
  %21 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions13, align 8
  %call14 = call i32 @stringListCount(%struct.sPtrArray* %21)
  %cmp15 = icmp ult i32 %19, %call14
  br i1 %cmp15, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond12
  %22 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %currentExtensions17 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %22, i32 0, i32 3
  %23 = load %struct.sPtrArray*, %struct.sPtrArray** %currentExtensions17, align 8
  %24 = load i32, i32* %i, align 4
  %call18 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %23, i32 %24)
  %buffer19 = getelementptr inbounds %struct.sVString, %struct.sVString* %call18, i32 0, i32 2
  %25 = load i8*, i8** %buffer19, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i64 0, i64 0), i8* %25)
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %26 = load i32, i32* %i, align 4
  %inc22 = add i32 %26, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond12

for.end23:                                        ; preds = %for.cond12
  br label %if.end24

if.end24:                                         ; preds = %for.end23, %land.lhs.true8, %if.end
  %call25 = call i32 @putchar(i32 10)
  ret void
}

declare void @colprintTablePrint(%struct.colprintTable*, i32, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageAliases(i32 %language, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %table = alloca %struct.colprintTable*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %call = call %struct.colprintTable* @aliasColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %0 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @LanguageCount, align 4
  %cmp2 = icmp ult i32 %1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %4 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i32 0, i32 0
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 22
  %7 = load i8, i8* %invisible, align 4
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %9 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  call void @aliasColprintAddLanguage(%struct.colprintTable* %8, %struct.sParserObject* %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then3
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end6

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %do.body
  %11 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %12 = load i32, i32* %language.addr, align 4
  %idx.ext4 = sext i32 %12 to i64
  %add.ptr5 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %11, i64 %idx.ext4
  store %struct.sParserObject* %add.ptr5, %struct.sParserObject** %parser, align 8
  %13 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %14 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  call void @aliasColprintAddLanguage(%struct.colprintTable* %13, %struct.sParserObject* %14)
  br label %if.end6

if.end6:                                          ; preds = %do.end, %for.end
  %15 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %16 = load i32, i32* %language.addr, align 4
  %cmp7 = icmp eq i32 %16, -1
  %17 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 0, i32 1
  %18 = load i8, i8* %withListHeader.addr, align 1
  %tobool8 = trunc i8 %18 to i1
  %19 = load i8, i8* %machinable.addr, align 1
  %tobool9 = trunc i8 %19 to i1
  %20 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @colprintTablePrint(%struct.colprintTable* %15, i32 %cond, i1 zeroext %tobool8, i1 zeroext %tobool9, %struct.__sFILE* %20)
  %21 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %21)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.colprintTable* @aliasColprintTableNew() #0 {
entry:
  %call = call %struct.colprintTable* (i8*, ...) @colprintTableNew(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.163, i64 0, i64 0), i8* null)
  ret %struct.colprintTable* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @aliasColprintAddLanguage(%struct.colprintTable* %table, %struct.sParserObject* %parser) #0 {
entry:
  %table.addr = alloca %struct.colprintTable*, align 8
  %parser.addr = alloca %struct.sParserObject*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %line = alloca %struct.colprintLine*, align 8
  %alias = alloca %struct.sVString*, align 8
  store %struct.colprintTable* %table, %struct.colprintTable** %table.addr, align 8
  store %struct.sParserObject* %parser, %struct.sParserObject** %parser.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %currentAliases = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i32 0, i32 4
  %1 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases, align 8
  %tobool = icmp ne %struct.sPtrArray* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %currentAliases1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 4
  %3 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases1, align 8
  %call = call i32 @stringListCount(%struct.sPtrArray* %3)
  store i32 %call, i32* %count, align 4
  %cmp = icmp ult i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %count, align 4
  %cmp2 = icmp ult i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.colprintTable*, %struct.colprintTable** %table.addr, align 8
  %call3 = call %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable* %6)
  store %struct.colprintLine* %call3, %struct.colprintLine** %line, align 8
  %7 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %currentAliases4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %7, i32 0, i32 4
  %8 = load %struct.sPtrArray*, %struct.sPtrArray** %currentAliases4, align 8
  %9 = load i32, i32* %i, align 4
  %call5 = call %struct.sVString* @stringListItem(%struct.sPtrArray* %8, i32 %9)
  store %struct.sVString* %call5, %struct.sVString** %alias, align 8
  %10 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %11 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %11, i32 0, i32 0
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  call void @colprintLineAppendColumnCString(%struct.colprintLine* %10, i8* %13)
  %14 = load %struct.colprintLine*, %struct.colprintLine** %line, align 8
  %15 = load %struct.sVString*, %struct.sVString** %alias, align 8
  call void @colprintLineAppendColumnVString(%struct.colprintLine* %14, %struct.sVString* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageList() #0 {
entry:
  %i = alloca i32, align 4
  %ltable = alloca %struct.sParserDefinition**, align 8
  %0 = load i32, i32* @LanguageCount, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @eMalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.sParserDefinition**
  store %struct.sParserDefinition** %1, %struct.sParserDefinition*** %ltable, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %7 = load %struct.sParserDefinition**, %struct.sParserDefinition*** %ltable, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds %struct.sParserDefinition*, %struct.sParserDefinition** %7, i64 %idxprom2
  store %struct.sParserDefinition* %6, %struct.sParserDefinition** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.sParserDefinition**, %struct.sParserDefinition*** %ltable, align 8
  %11 = bitcast %struct.sParserDefinition** %10 to i8*
  %12 = load i32, i32* @LanguageCount, align 4
  %conv4 = zext i32 %12 to i64
  call void @qsort(i8* %11, i64 %conv4, i64 8, i32 (i8*, i8*)* @compareParsersByName)
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc9, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @LanguageCount, align 4
  %cmp6 = icmp ult i32 %13, %14
  br i1 %cmp6, label %for.body8, label %for.end11

for.body8:                                        ; preds = %for.cond5
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.sParserDefinition**, %struct.sParserDefinition*** %ltable, align 8
  call void @printLanguage(i32 %15, %struct.sParserDefinition** %16)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body8
  %17 = load i32, i32* %i, align 4
  %inc10 = add i32 %17, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond5

for.end11:                                        ; preds = %for.cond5
  %18 = load %struct.sParserDefinition**, %struct.sParserDefinition*** %ltable, align 8
  %19 = bitcast %struct.sParserDefinition** %18 to i8*
  call void @eFree(i8* %19)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @compareParsersByName(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %la = alloca %struct.sParserDefinition**, align 8
  %lb = alloca %struct.sParserDefinition**, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.sParserDefinition**
  store %struct.sParserDefinition** %1, %struct.sParserDefinition*** %la, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.sParserDefinition**
  store %struct.sParserDefinition** %3, %struct.sParserDefinition*** %lb, align 8
  %4 = load %struct.sParserDefinition**, %struct.sParserDefinition*** %la, align 8
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %4, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.sParserDefinition**, %struct.sParserDefinition*** %lb, align 8
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %7, align 8
  %name1 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 0
  %9 = load i8*, i8** %name1, align 8
  %call = call i32 @strcasecmp(i8* %6, i8* %9)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printLanguage(i32 %language, %struct.sParserDefinition** %ltable) #0 {
entry:
  %language.addr = alloca i32, align 4
  %ltable.addr = alloca %struct.sParserDefinition**, align 8
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sParserDefinition** %ltable, %struct.sParserDefinition*** %ltable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserDefinition**, %struct.sParserDefinition*** %ltable.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserDefinition*, %struct.sParserDefinition** %0, i64 %idxprom
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %arrayidx, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 22
  %4 = load i8, i8* %invisible, align 4
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %if.end4

if.end:                                           ; preds = %do.end
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 1
  %6 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kindTable, align 8
  %cmp = icmp ne %struct.sKindDefinition* %6, null
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 11
  %8 = load i32, i32* %method, align 8
  %and = and i32 %8, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 33
  %12 = load i32, i32* %id, align 4
  %call = call zeroext i1 @isLanguageEnabled(i32 %12)
  %13 = zext i1 %call to i64
  %cond = select i1 %call, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* %10, i8* %cond)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processExtradefOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %language, align 4
  %3 = load i8*, i8** %option.addr, align 8
  %4 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @processLangDefineExtra(i32 %2, i8* %3, i8* %4)
  store i1 %call1, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processLangDefineExtra(i32 %language, i8* %option, i8* %parameterx) #0 {
entry:
  %language.addr = alloca i32, align 4
  %option.addr = alloca i8*, align 8
  %parameterx.addr = alloca i8*, align 8
  %xdef = alloca %struct.sXtagDefinition*, align 8
  %p = alloca i8*, align 8
  %desc = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameterx, i8** %parameterx.addr, align 8
  %0 = load i8*, i8** %parameterx.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %3 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.164, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end2
  %4 = load i8*, i8** %p, align 8
  %call = call i8* @strchr(i8* %4, i32 44)
  store i8* %call, i8** %desc, align 8
  %5 = load i8*, i8** %desc, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.165, i64 0, i64 0), i8* %6)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %desc, align 8
  %8 = load i8*, i8** %p, align 8
  %cmp5 = icmp eq i8* %7, %8
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %9 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.166, i64 0, i64 0), i8* %9)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %desc, align 8
  %cmp10 = icmp ult i8* %10, %11
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = sext i8 %13 to i32
  %call13 = call i32 @isalnum(i32 %conv12) #4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body
  %14 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.167, i64 0, i64 0), i8* %14)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call i8* @eCalloc(i64 1, i64 48)
  %16 = bitcast i8* %call17 to %struct.sXtagDefinition*
  store %struct.sXtagDefinition* %16, %struct.sXtagDefinition** %xdef, align 8
  %17 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef, align 8
  %enabled = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %17, i32 0, i32 0
  store i8 0, i8* %enabled, align 8
  %18 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef, align 8
  %letter = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %18, i32 0, i32 1
  store i8 0, i8* %letter, align 1
  %19 = load i8*, i8** %parameterx.addr, align 8
  %20 = load i8*, i8** %desc, align 8
  %21 = load i8*, i8** %parameterx.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call18 = call i8* @eStrndup(i8* %19, i64 %sub.ptr.sub)
  %22 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef, align 8
  %name = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %22, i32 0, i32 2
  store i8* %call18, i8** %name, align 8
  %23 = load i8*, i8** %desc, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 1
  %call19 = call i8* @eStrdup(i8* %add.ptr)
  %24 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef, align 8
  %description = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %24, i32 0, i32 3
  store i8* %call19, i8** %description, align 8
  %25 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef, align 8
  %isEnabled = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %25, i32 0, i32 4
  store i1 (%struct.sXtagDefinition*)* null, i1 (%struct.sXtagDefinition*)** %isEnabled, align 8
  %26 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef, align 8
  %27 = bitcast %struct.sXtagDefinition* %26 to i8*
  %call20 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %27, void (i8*)* bitcast (void (%struct.sXtagDefinition*)* @xtagDefinitionDestroy to void (i8*)*))
  %28 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef, align 8
  %29 = load i32, i32* %language.addr, align 4
  %call21 = call i32 @defineXtag(%struct.sXtagDefinition* %28, i32 %29)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processFielddefOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  store i32 %call, i32* %language, align 4
  %1 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %1, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %language, align 4
  %3 = load i8*, i8** %option.addr, align 8
  %4 = load i8*, i8** %parameter.addr, align 8
  %call1 = call zeroext i1 @processLangDefineField(i32 %2, i8* %3, i8* %4)
  store i1 %call1, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @processLangDefineField(i32 %language, i8* %option, i8* %parameter) #0 {
entry:
  %language.addr = alloca i32, align 4
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %fdef = alloca %struct.sFieldDefinition*, align 8
  %p = alloca i8*, align 8
  %desc = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %3 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.168, i64 0, i64 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end2
  %4 = load i8*, i8** %p, align 8
  %call = call i8* @strchr(i8* %4, i32 44)
  store i8* %call, i8** %desc, align 8
  %5 = load i8*, i8** %desc, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.169, i64 0, i64 0), i8* %6)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %desc, align 8
  %8 = load i8*, i8** %p, align 8
  %cmp5 = icmp eq i8* %7, %8
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %9 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.170, i64 0, i64 0), i8* %9)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %desc, align 8
  %cmp10 = icmp ult i8* %10, %11
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = sext i8 %13 to i32
  %call13 = call i32 @isalnum(i32 %conv12) #4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body
  %14 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.171, i64 0, i64 0), i8* %14)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %desc, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %call17 = call i64 @strlen(i8* %add.ptr)
  %cmp18 = icmp eq i64 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  %17 = load i8*, i8** %option.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.172, i64 0, i64 0), i8* %17)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.end
  %call22 = call i8* @eCalloc(i64 1, i64 88)
  %18 = bitcast i8* %call22 to %struct.sFieldDefinition*
  store %struct.sFieldDefinition* %18, %struct.sFieldDefinition** %fdef, align 8
  %19 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %enabled = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %19, i32 0, i32 3
  store i8 0, i8* %enabled, align 8
  %20 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %letter = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %20, i32 0, i32 0
  store i8 0, i8* %letter, align 8
  %21 = load i8*, i8** %parameter.addr, align 8
  %22 = load i8*, i8** %desc, align 8
  %23 = load i8*, i8** %parameter.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call23 = call i8* @eStrndup(i8* %21, i64 %sub.ptr.sub)
  %24 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %24, i32 0, i32 1
  store i8* %call23, i8** %name, align 8
  %25 = load i8*, i8** %desc, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %25, i64 1
  %call25 = call i8* @eStrdup(i8* %add.ptr24)
  %26 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %description = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %26, i32 0, i32 2
  store i8* %call25, i8** %description, align 8
  %27 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %isValueAvailable = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %27, i32 0, i32 5
  store i1 (%struct.sTagEntryInfo*)* null, i1 (%struct.sTagEntryInfo*)** %isValueAvailable, align 8
  %28 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %dataType = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %28, i32 0, i32 6
  store i32 1, i32* %dataType, align 8
  %29 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %ftype = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %29, i32 0, i32 7
  store i32 -1, i32* %ftype, align 4
  %30 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %31 = bitcast %struct.sFieldDefinition* %30 to i8*
  %call26 = call i8* @trashBoxPut(%struct.sTrashBox* null, i8* %31, void (i8*)* bitcast (void (%struct.sFieldDefinition*)* @fieldDefinitionDestroy to void (i8*)*))
  %32 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef, align 8
  %33 = load i32, i32* %language.addr, align 4
  %call27 = call i32 @defineField(%struct.sFieldDefinition* %32, i32 %33)
  ret i1 true
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notifyLanguageRegexInputStart(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  call void @notifyRegexInputStart(%struct.lregexControlBlock* %2)
  ret void
}

declare void @notifyRegexInputStart(%struct.lregexControlBlock*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @notifyLanguageRegexInputEnd(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  call void @notifyRegexInputEnd(%struct.lregexControlBlock* %2)
  ret void
}

declare void @notifyRegexInputEnd(%struct.lregexControlBlock*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @runParserInNarrowedInputStream(i32 %language, i64 %startLine, i64 %startCharOffset, i64 %endLine, i64 %endCharOffset, i64 %sourceLineOffset) #0 {
entry:
  %language.addr = alloca i32, align 4
  %startLine.addr = alloca i64, align 8
  %startCharOffset.addr = alloca i64, align 8
  %endLine.addr = alloca i64, align 8
  %endCharOffset.addr = alloca i64, align 8
  %sourceLineOffset.addr = alloca i64, align 8
  %tagFileResized = alloca i8, align 1
  store i32 %language, i32* %language.addr, align 4
  store i64 %startLine, i64* %startLine.addr, align 8
  store i64 %startCharOffset, i64* %startCharOffset.addr, align 8
  store i64 %endLine, i64* %endLine.addr, align 8
  store i64 %endCharOffset, i64* %endCharOffset.addr, align 8
  store i64 %sourceLineOffset, i64* %sourceLineOffset.addr, align 8
  %0 = load i32, i32* %language.addr, align 4
  %call = call i8* @getLanguageName(i32 %0)
  %call1 = call i8* @getInputFileName()
  %1 = load i64, i64* %startLine.addr, align 8
  %2 = load i64, i64* %startCharOffset.addr, align 8
  %3 = load i64, i64* %sourceLineOffset.addr, align 8
  %4 = load i64, i64* %endLine.addr, align 8
  %5 = load i64, i64* %endCharOffset.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.32, i64 0, i64 0), i8* %call, i8* %call1, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)
  %6 = load i64, i64* %startLine.addr, align 8
  %7 = load i64, i64* %startCharOffset.addr, align 8
  %8 = load i64, i64* %endLine.addr, align 8
  %9 = load i64, i64* %endCharOffset.addr, align 8
  %10 = load i64, i64* %sourceLineOffset.addr, align 8
  call void @pushNarrowedInputStream(i64 %6, i64 %7, i64 %8, i64 %9, i64 %10)
  %11 = load i32, i32* %language.addr, align 4
  %call2 = call zeroext i1 @createTagsWithFallback1(i32 %11, i32* null)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %tagFileResized, align 1
  call void @popNarrowedInputStream()
  %12 = load i8, i8* %tagFileResized, align 1
  %tobool = trunc i8 %12 to i1
  ret i1 %tobool
}

declare i8* @getInputFileName() #1

declare void @pushNarrowedInputStream(i64, i64, i64, i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @createTagsWithFallback1(i32 %language, i32* %exclusive_subparser) #0 {
entry:
  %language.addr = alloca i32, align 4
  %exclusive_subparser.addr = alloca i32*, align 8
  %tagFileResized = alloca i8, align 1
  %numTags = alloca i64, align 8
  %tagfpos = alloca %struct._MIOPos, align 8
  %lastPromise = alloca i32, align 4
  %passCount = alloca i32, align 4
  %whyRescan = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %useCork = alloca i8, align 1
  %s = alloca %struct.sSubparser*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32* %exclusive_subparser, i32** %exclusive_subparser.addr, align 8
  store i8 0, i8* %tagFileResized, align 1
  %call = call i64 @numTagsAdded()
  store i64 %call, i64* %numTags, align 8
  %call1 = call i32 @getLastPromise()
  store i32 %call1, i32* %lastPromise, align 4
  store i32 0, i32* %passCount, align 4
  %0 = load i32, i32* %language.addr, align 4
  call void @initializeParser(i32 %0)
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  store %struct.sParserObject* %arrayidx, %struct.sParserObject** %parser, align 8
  %3 = load i32, i32* %language.addr, align 4
  call void @setupLanguageSubparsersInUse(i32 %3)
  %4 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i32 0, i32 0
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %call2 = call zeroext i1 @doesParserUseCork(%struct.sParserDefinition* %5)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %useCork, align 1
  %6 = load i8, i8* %useCork, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @corkTagFile()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %language.addr, align 4
  call void @addParserPseudoTags(i32 %7)
  call void @tagFilePosition(%struct._MIOPos* %tagfpos)
  %8 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  call void @anonResetMaybe(%struct.sParserObject* %8)
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %9 = load i32, i32* %language.addr, align 4
  %10 = load i32, i32* %passCount, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %passCount, align 4
  %call3 = call i32 @createTagsForFile(i32 %9, i32 %inc)
  store i32 %call3, i32* %whyRescan, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8, i8* %useCork, align 1
  %tobool4 = trunc i8 %11 to i1
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  call void @uncorkTagFile()
  call void @corkTagFile()
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.body
  %12 = load i32, i32* %whyRescan, align 4
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @setTagFilePosition(%struct._MIOPos* %tagfpos)
  %13 = load i64, i64* %numTags, align 8
  call void @setNumTagsAdded(i64 %13)
  store i8 1, i8* %tagFileResized, align 1
  %14 = load i32, i32* %lastPromise, align 4
  call void @breakPromisesAfter(i32 %14)
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %15 = load i32, i32* %whyRescan, align 4
  %cmp9 = icmp eq i32 %15, 2
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.else
  call void @tagFilePosition(%struct._MIOPos* %tagfpos)
  %call11 = call i64 @numTagsAdded()
  store i64 %call11, i64* %numTags, align 8
  %call12 = call i32 @getLastPromise()
  store i32 %call12, i32* %lastPromise, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %language.addr, align 4
  %call15 = call zeroext i1 @hasLanguageMultilineRegexPatterns(i32 %16)
  br i1 %call15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %while.end
  br label %while.cond17

while.cond17:                                     ; preds = %while.body20, %if.then16
  %call18 = call i8* @readLineFromInputFile()
  %cmp19 = icmp ne i8* %call18, null
  br i1 %cmp19, label %while.body20, label %while.end21

while.body20:                                     ; preds = %while.cond17
  br label %while.cond17

while.end21:                                      ; preds = %while.cond17
  br label %if.end22

if.end22:                                         ; preds = %while.end21, %while.end
  %17 = load i8, i8* %useCork, align 1
  %tobool23 = trunc i8 %17 to i1
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @uncorkTagFile()
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %18 = load i32, i32* %language.addr, align 4
  %call26 = call %struct.sSubparser* @teardownLanguageSubparsersInUse(i32 %18)
  store %struct.sSubparser* %call26, %struct.sSubparser** %s, align 8
  %19 = load i32*, i32** %exclusive_subparser.addr, align 8
  %tobool27 = icmp ne i32* %19, null
  br i1 %tobool27, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end25
  %20 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %tobool28 = icmp ne %struct.sSubparser* %20, null
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  %21 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %call30 = call i32 @getSubparserLanguage(%struct.sSubparser* %21)
  %22 = load i32*, i32** %exclusive_subparser.addr, align 8
  store i32 %call30, i32* %22, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %if.end25
  %23 = load i8, i8* %tagFileResized, align 1
  %tobool32 = trunc i8 %23 to i1
  ret i1 %tobool32
}

declare void @popNarrowedInputStream() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processLanguageEncodingOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
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
  call void @addLanguageEncoding(i32 %2, i8* %3)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addLanguageEncoding(i32 %language, i8* %encoding) #0 {
entry:
  %language.addr = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %istart = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i32, i32* %language.addr, align 4
  %1 = load i32, i32* @EncodingMapMax, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @EncodingMapMax, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* @EncodingMapMax, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %4 = load i32, i32* @EncodingMapMax, align 4
  %add = add i32 %4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %istart, align 4
  %5 = load i8**, i8*** @EncodingMap, align 8
  %6 = bitcast i8** %5 to i8*
  %7 = load i32, i32* %language.addr, align 4
  %add3 = add nsw i32 %7, 1
  %conv = sext i32 %add3 to i64
  %mul = mul i64 %conv, 8
  %call = call i8* @eRealloc(i8* %6, i64 %mul)
  %8 = bitcast i8* %call to i8**
  store i8** %8, i8*** @EncodingMap, align 8
  %9 = load i32, i32* %istart, align 4
  store i32 %9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %language.addr, align 4
  %cmp4 = icmp sle i32 %10, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** @EncodingMap, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %language.addr, align 4
  store i32 %15, i32* @EncodingMapMax, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false
  %16 = load i8**, i8*** @EncodingMap, align 8
  %17 = load i32, i32* %language.addr, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds i8*, i8** %16, i64 %idxprom6
  %18 = load i8*, i8** %arrayidx7, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %19 = load i8**, i8*** @EncodingMap, align 8
  %20 = load i32, i32* %language.addr, align 4
  %idxprom9 = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %19, i64 %idxprom9
  %21 = load i8*, i8** %arrayidx10, align 8
  call void @eFree(i8* %21)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %22 = load i8*, i8** %encoding.addr, align 8
  %call12 = call i8* @eStrdup(i8* %22)
  %23 = load i8**, i8*** @EncodingMap, align 8
  %24 = load i32, i32* %language.addr, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds i8*, i8** %23, i64 %idxprom13
  store i8* %call12, i8** %arrayidx14, align 8
  %25 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  %tobool15 = icmp ne i8* %25, null
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end11
  %call17 = call i8* @eStrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.173, i64 0, i64 0))
  store i8* %call17, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @freeEncodingResources() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i8**, i8*** @EncodingMap, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @EncodingMapMax, align 4
  %cmp = icmp ule i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** @EncodingMap, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %6 = load i8**, i8*** @EncodingMap, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %6, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  call void @eFree(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8**, i8*** @EncodingMap, align 8
  %11 = bitcast i8** %10 to i8*
  call void @eFree(i8* %11)
  store i8** null, i8*** @EncodingMap, align 8
  br label %if.end5

if.end5:                                          ; preds = %for.end, %entry
  %12 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  %tobool6 = icmp ne i8* %12, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %13 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  call void @eFree(i8* %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  store i8* null, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %15 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  call void @eFree(i8* %15)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  store i8* null, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @doesParserRequireMemoryStream(i32 %language) #0 {
entry:
  %retval = alloca i1, align 1
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  %d = alloca %struct.sParserDependency*, align 8
  %baseParser = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagXpathTableCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 21
  %4 = load i32, i32* %tagXpathTableCount, align 8
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %useMemoryStreamInput = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 13
  %6 = load i8, i8* %useMemoryStreamInput, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i8* %8)
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 28
  %11 = load i32, i32* %dependencyCount, align 8
  %cmp1 = icmp ult i32 %9, %11
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %12, i32 0, i32 27
  %13 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies, align 8
  %14 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %13, i64 %idx.ext
  store %struct.sParserDependency* %add.ptr, %struct.sParserDependency** %d, align 8
  %15 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %type = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %15, i32 0, i32 0
  %16 = load i32, i32* %type, align 8
  %cmp2 = icmp eq i32 %16, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %data = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %17, i32 0, i32 2
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct.sSubparser*
  %direction = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %19, i32 0, i32 4
  %20 = load i32, i32* %direction, align 4
  %and = and i32 %20, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end13

if.then4:                                         ; preds = %land.lhs.true
  %21 = load %struct.sParserDependency*, %struct.sParserDependency** %d, align 8
  %upperParser = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %21, i32 0, i32 1
  %22 = load i8*, i8** %upperParser, align 8
  %call = call i32 @getNamedLanguage(i8* %22, i64 0)
  store i32 %call, i32* %baseParser, align 4
  %23 = load i32, i32* %baseParser, align 4
  %call5 = call zeroext i1 @doesParserRequireMemoryStream(i32 %23)
  br i1 %call5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then4
  %24 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name7 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %24, i32 0, i32 0
  %25 = load i8*, i8** %name7, align 8
  %26 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %27 = load i32, i32* %baseParser, align 4
  %idxprom8 = sext i32 %27 to i64
  %arrayidx9 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %26, i64 %idxprom8
  %def10 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx9, i32 0, i32 0
  %28 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def10, align 8
  %name11 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %28, i32 0, i32 0
  %29 = load i8*, i8** %name11, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0), i8* %25, i8* %29)
  store i1 true, i1* %retval, align 1
  br label %return

if.end12:                                         ; preds = %if.then4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %30 = load i32, i32* %i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then6, %if.then
  %31 = load i1, i1* %retval, align 1
  ret i1 %31
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @parseFile(i8* %fileName) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %bRet = alloca i8, align 1
  store i8* %fileName, i8** %fileName.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %fileName.addr, align 8
  %call = call zeroext i1 @parseFileWithMio(i8* %0, %struct._MIO* null)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %bRet, align 1
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i8, i8* %bRet, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @parseFileWithMio(i8* %fileName, %struct._MIO* %mio) #0 {
entry:
  %retval = alloca i1, align 1
  %fileName.addr = alloca i8*, align 8
  %mio.addr = alloca %struct._MIO*, align 8
  %tagFileResized = alloca i8, align 1
  %language = alloca i32, align 4
  %req = alloca %struct.GetLanguageRequest, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i8 0, i8* %tagFileResized, align 1
  %type = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 0
  %0 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %tobool = icmp ne %struct._MIO* %0, null
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 0
  store i32 %cond, i32* %type, align 8
  %fileName1 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 1
  %2 = load i8*, i8** %fileName.addr, align 8
  store i8* %2, i8** %fileName1, align 8
  %mio2 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 2
  %3 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  store %struct._MIO* %3, %struct._MIO** %mio2, align 8
  %call = call i32 @getFileLanguageForRequest(%struct.GetLanguageRequest* %req)
  store i32 %call, i32* %language, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 23), align 2
  %tobool3 = trunc i8 %4 to i1
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %5 = load i8*, i8** %fileName.addr, align 8
  %6 = load i32, i32* %language, align 4
  call void @printGuessedParser(i8* %5, i32 %6)
  %7 = load i8, i8* %tagFileResized, align 1
  %tobool4 = trunc i8 %7 to i1
  store i1 %tobool4, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  %8 = load i32, i32* %language, align 4
  %cmp = icmp eq i32 %8, -2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load i8*, i8** %fileName.addr, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.36, i64 0, i64 0), i8* %9)
  br label %if.end50

if.else:                                          ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %if.else
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  %10 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool8 = trunc i8 %10 to i1
  br i1 %tobool8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %do.end7
  %11 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 30), align 8
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  call void @openTagFile()
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %do.end7
  %12 = load i8**, i8*** @EncodingMap, align 8
  %tobool12 = icmp ne i8** %12, null
  br i1 %tobool12, label %land.lhs.true13, label %cond.false

land.lhs.true13:                                  ; preds = %if.end11
  %13 = load i32, i32* %language, align 4
  %14 = load i32, i32* @EncodingMapMax, align 4
  %cmp14 = icmp ule i32 %13, %14
  br i1 %cmp14, label %land.lhs.true15, label %cond.false

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %15 = load i8**, i8*** @EncodingMap, align 8
  %16 = load i32, i32* %language, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  %tobool16 = icmp ne i8* %17, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true15
  %18 = load i8**, i8*** @EncodingMap, align 8
  %19 = load i32, i32* %language, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i8*, i8** %18, i64 %idxprom17
  %20 = load i8*, i8** %arrayidx18, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true15, %land.lhs.true13, %if.end11
  %21 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 14), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i8* [ %20, %cond.true ], [ %21, %cond.false ]
  %22 = load i8*, i8** getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 15), align 8
  %call20 = call zeroext i1 @openConverter(i8* %cond19, i8* %22)
  call void @setupWriter()
  call void @setupAnon()
  call void @initParserTrashBox()
  %23 = load i8*, i8** %fileName.addr, align 8
  %24 = load i32, i32* %language, align 4
  %mio21 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 2
  %25 = load %struct._MIO*, %struct._MIO** %mio21, align 8
  %call22 = call zeroext i1 @createTagsWithFallback(i8* %23, i32 %24, %struct._MIO* %25)
  %frombool = zext i1 %call22 to i8
  store i8 %frombool, i8* %tagFileResized, align 1
  call void @finiParserTrashBox()
  call void @teardownAnon()
  %call23 = call i8* @getSourceFileTagPath()
  %call24 = call zeroext i1 @teardownWriter(i8* %call23)
  br i1 %call24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end
  br label %cond.end28

cond.false26:                                     ; preds = %cond.end
  %26 = load i8, i8* %tagFileResized, align 1
  %tobool27 = trunc i8 %26 to i1
  %conv = zext i1 %tobool27 to i32
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true25
  %cond29 = phi i32 [ 1, %cond.true25 ], [ %conv, %cond.false26 ]
  %tobool30 = icmp ne i32 %cond29, 0
  %frombool31 = zext i1 %tobool30 to i8
  store i8 %frombool31, i8* %tagFileResized, align 1
  %27 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 18), align 1
  %tobool32 = trunc i8 %27 to i1
  br i1 %tobool32, label %land.lhs.true34, label %if.end38

land.lhs.true34:                                  ; preds = %cond.end28
  %28 = load i32, i32* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 30), align 8
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %land.lhs.true34
  %29 = load i8, i8* %tagFileResized, align 1
  %tobool37 = trunc i8 %29 to i1
  call void @closeTagFile(i1 zeroext %tobool37)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true34, %cond.end28
  call void @addTotals(i32 1, i64 0, i64 0)
  call void @closeConverter()
  %type39 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 0
  %30 = load i32, i32* %type39, align 8
  %cmp40 = icmp eq i32 %30, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end48

land.lhs.true42:                                  ; preds = %if.end38
  %mio43 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 2
  %31 = load %struct._MIO*, %struct._MIO** %mio43, align 8
  %tobool44 = icmp ne %struct._MIO* %31, null
  br i1 %tobool44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %land.lhs.true42
  %mio46 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 2
  %32 = load %struct._MIO*, %struct._MIO** %mio46, align 8
  %call47 = call i32 @mio_free(%struct._MIO* %32)
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true42, %if.end38
  %33 = load i8, i8* %tagFileResized, align 1
  %tobool49 = trunc i8 %33 to i1
  store i1 %tobool49, i1* %retval, align 1
  br label %return

if.end50:                                         ; preds = %if.then5
  %type51 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 0
  %34 = load i32, i32* %type51, align 8
  %cmp52 = icmp eq i32 %34, 0
  br i1 %cmp52, label %land.lhs.true54, label %if.end60

land.lhs.true54:                                  ; preds = %if.end50
  %mio55 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 2
  %35 = load %struct._MIO*, %struct._MIO** %mio55, align 8
  %tobool56 = icmp ne %struct._MIO* %35, null
  br i1 %tobool56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %land.lhs.true54
  %mio58 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %req, i32 0, i32 2
  %36 = load %struct._MIO*, %struct._MIO** %mio58, align 8
  %call59 = call i32 @mio_free(%struct._MIO* %36)
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %land.lhs.true54, %if.end50
  %37 = load i8, i8* %tagFileResized, align 1
  %tobool61 = trunc i8 %37 to i1
  store i1 %tobool61, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end60, %if.end48, %if.then
  %38 = load i1, i1* %retval, align 1
  ret i1 %38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @printGuessedParser(i8* %fileName, i32 %language) #0 {
entry:
  %fileName.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %parserName = alloca i8*, align 8
  store i8* %fileName, i8** %fileName.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 23), align 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i64 0, i64 0), i8** %parserName, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  store i8* %4, i8** %parserName, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8
  %6 = load i8*, i8** %fileName.addr, align 8
  %7 = load i8*, i8** %parserName, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.175, i64 0, i64 0), i8* %6, i8* %7)
  ret void
}

declare void @openTagFile() #1

declare zeroext i1 @openConverter(i8*, i8*) #1

declare void @setupWriter() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setupAnon() #0 {
entry:
  %call = call %struct.sPtrArray* @ptrArrayNew(void (i8*)* null)
  store %struct.sPtrArray* %call, %struct.sPtrArray** @parsersUsedInCurrentInput, align 8
  ret void
}

declare void @initParserTrashBox() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @createTagsWithFallback(i8* %fileName, i32 %language, %struct._MIO* %mio) #0 {
entry:
  %retval = alloca i1, align 1
  %fileName.addr = alloca i8*, align 8
  %language.addr = alloca i32, align 4
  %mio.addr = alloca %struct._MIO*, align 8
  %exclusive_subparser = alloca i32, align 4
  %tagFileResized = alloca i8, align 1
  store i8* %fileName, i8** %fileName.addr, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct._MIO* %mio, %struct._MIO** %mio.addr, align 8
  store i32 -2, i32* %exclusive_subparser, align 4
  store i8 0, i8* %tagFileResized, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %fileName.addr, align 8
  %1 = load i32, i32* %language.addr, align 4
  %2 = load %struct._MIO*, %struct._MIO** %mio.addr, align 8
  %call = call zeroext i1 @openInputFile(i8* %0, i32 %1, %struct._MIO* %2)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  %3 = load i32, i32* %language.addr, align 4
  %call1 = call zeroext i1 @createTagsWithFallback1(i32 %3, i32* %exclusive_subparser)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %tagFileResized, align 1
  %call2 = call zeroext i1 @forcePromises()
  br i1 %call2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i8, i8* %tagFileResized, align 1
  %tobool = trunc i8 %4 to i1
  %conv = zext i1 %tobool to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv, %cond.false ]
  %tobool3 = icmp ne i32 %cond, 0
  %frombool4 = zext i1 %tobool3 to i8
  store i8 %frombool4, i8* %tagFileResized, align 1
  %5 = load i32, i32* %exclusive_subparser, align 4
  %cmp = icmp eq i32 %5, -2
  br i1 %cmp, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  %6 = load i32, i32* %language.addr, align 4
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  %7 = load i32, i32* %exclusive_subparser, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %6, %cond.true6 ], [ %7, %cond.false7 ]
  call void @pushLanguage(i32 %cond9)
  %8 = load i8*, i8** %fileName.addr, align 8
  call void @makeFileTag(i8* %8)
  %call10 = call i32 @popLanguage()
  call void @closeInputFile()
  %9 = load i8, i8* %tagFileResized, align 1
  %tobool11 = trunc i8 %9 to i1
  store i1 %tobool11, i1* %retval, align 1
  br label %return

return:                                           ; preds = %cond.end8, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

declare void @finiParserTrashBox() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @teardownAnon() #0 {
entry:
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** @parsersUsedInCurrentInput, align 8
  call void @ptrArrayDelete(%struct.sPtrArray* %0)
  store %struct.sPtrArray* null, %struct.sPtrArray** @parsersUsedInCurrentInput, align 8
  ret void
}

declare zeroext i1 @teardownWriter(i8*) #1

declare i8* @getSourceFileTagPath() #1

declare void @closeTagFile(i1 zeroext) #1

declare void @addTotals(i32, i64, i64) #1

declare void @closeConverter() #1

declare i32 @mio_free(%struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @matchLanguageMultilineRegex(i32 %language, %struct.sVString* %allLines) #0 {
entry:
  %language.addr = alloca i32, align 4
  %allLines.addr = alloca %struct.sVString*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sVString* %allLines, %struct.sVString** %allLines.addr, align 8
  %0 = load i32, i32* %language.addr, align 4
  %1 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  call void @matchLanguageMultilineRegexCommon(i32 %0, i1 (%struct.lregexControlBlock*, %struct.sVString*)* @matchMultilineRegex, %struct.sVString* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @matchLanguageMultilineRegexCommon(i32 %language, i1 (%struct.lregexControlBlock*, %struct.sVString*)* %func, %struct.sVString* %allLines) #0 {
entry:
  %language.addr = alloca i32, align 4
  %func.addr = alloca i1 (%struct.lregexControlBlock*, %struct.sVString*)*, align 8
  %allLines.addr = alloca %struct.sVString*, align 8
  %tmp = alloca %struct.sSubparser*, align 8
  %t = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i1 (%struct.lregexControlBlock*, %struct.sVString*)* %func, i1 (%struct.lregexControlBlock*, %struct.sVString*)** %func.addr, align 8
  store %struct.sVString* %allLines, %struct.sVString** %allLines.addr, align 8
  %0 = load i1 (%struct.lregexControlBlock*, %struct.sVString*)*, i1 (%struct.lregexControlBlock*, %struct.sVString*)** %func.addr, align 8
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %4 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  %call = call zeroext i1 %0(%struct.lregexControlBlock* %3, %struct.sVString* %4)
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call1 = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %5, i1 zeroext true)
  store %struct.sSubparser* %call1, %struct.sSubparser** %tmp, align 8
  %cmp = icmp ne %struct.sSubparser* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call2 = call i32 @getSubparserLanguage(%struct.sSubparser* %6)
  store i32 %call2, i32* %t, align 4
  %7 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  call void @enterSubparser(%struct.sSubparser* %7)
  %8 = load i32, i32* %t, align 4
  %9 = load i1 (%struct.lregexControlBlock*, %struct.sVString*)*, i1 (%struct.lregexControlBlock*, %struct.sVString*)** %func.addr, align 8
  %10 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  call void @matchLanguageMultilineRegexCommon(i32 %8, i1 (%struct.lregexControlBlock*, %struct.sVString*)* %9, %struct.sVString* %10)
  call void @leaveSubparser()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare zeroext i1 @matchMultilineRegex(%struct.lregexControlBlock*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @matchLanguageMultitableRegex(i32 %language, %struct.sVString* %allLines) #0 {
entry:
  %language.addr = alloca i32, align 4
  %allLines.addr = alloca %struct.sVString*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sVString* %allLines, %struct.sVString** %allLines.addr, align 8
  %0 = load i32, i32* %language.addr, align 4
  %1 = load %struct.sVString*, %struct.sVString** %allLines.addr, align 8
  call void @matchLanguageMultilineRegexCommon(i32 %0, i1 (%struct.lregexControlBlock*, %struct.sVString*)* @matchMultitableRegex, %struct.sVString* %1)
  ret void
}

declare zeroext i1 @matchMultitableRegex(%struct.lregexControlBlock*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @processLanguageMultitableExtendingOption(i32 %language, i8* %parameter) #0 {
entry:
  %language.addr = alloca i32, align 4
  %parameter.addr = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dist = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %parameter.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 43)
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %parameter.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %tmp, align 8
  %4 = load i8*, i8** %parameter.addr, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %5 = load i8*, i8** %parameter.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i64 0, i64 0), i8* %5)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %6 = load i8*, i8** %tmp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %src, align 8
  %7 = load i8*, i8** %src, align 8
  %8 = load i8, i8* %7, align 1
  %tobool3 = icmp ne i8 %8, 0
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  %9 = load i8*, i8** %parameter.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i64 0, i64 0), i8* %9)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %10 = load i8*, i8** %parameter.addr, align 8
  %11 = load i8*, i8** %tmp, align 8
  %12 = load i8*, i8** %parameter.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call6 = call i8* @eStrndup(i8* %10, i64 %sub.ptr.sub)
  store i8* %call6, i8** %dist, align 8
  %13 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %14 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr7, i32 0, i32 9
  %15 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %16 = load i8*, i8** %src, align 8
  %17 = load i8*, i8** %dist, align 8
  call void @extendRegexTable(%struct.lregexControlBlock* %15, i8* %16, i8* %17)
  %18 = load i8*, i8** %dist, align 8
  call void @eFree(i8* %18)
  ret void
}

declare void @extendRegexTable(%struct.lregexControlBlock*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hasLanguageMultilineRegexPatterns(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  %call = call zeroext i1 @lregexQueryParserAndSubparsers(i32 %0, i1 (%struct.lregexControlBlock*)* @regexNeedsMultilineBuffer)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @lregexQueryParserAndSubparsers(i32 %language, i1 (%struct.lregexControlBlock*)* %predicate) #0 {
entry:
  %language.addr = alloca i32, align 4
  %predicate.addr = alloca i1 (%struct.lregexControlBlock*)*, align 8
  %r = alloca i8, align 1
  %tmp = alloca %struct.sSubparser*, align 8
  %t = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i1 (%struct.lregexControlBlock*)* %predicate, i1 (%struct.lregexControlBlock*)** %predicate.addr, align 8
  %0 = load i1 (%struct.lregexControlBlock*)*, i1 (%struct.lregexControlBlock*)** %predicate.addr, align 8
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %call = call zeroext i1 %0(%struct.lregexControlBlock* %3)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %r, align 1
  %4 = load i8, i8* %r, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call1 = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %5, i1 zeroext true)
  store %struct.sSubparser* %call1, %struct.sSubparser** %tmp, align 8
  %cmp = icmp ne %struct.sSubparser* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call2 = call i32 @getSubparserLanguage(%struct.sSubparser* %6)
  store i32 %call2, i32* %t, align 4
  %7 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  call void @enterSubparser(%struct.sSubparser* %7)
  %8 = load i32, i32* %t, align 4
  %9 = load i1 (%struct.lregexControlBlock*)*, i1 (%struct.lregexControlBlock*)** %predicate.addr, align 8
  %call3 = call zeroext i1 @lregexQueryParserAndSubparsers(i32 %8, i1 (%struct.lregexControlBlock*)* %9)
  %frombool4 = zext i1 %call3 to i8
  store i8 %frombool4, i8* %r, align 1
  call void @leaveSubparser()
  %10 = load i8, i8* %r, align 1
  %tobool5 = trunc i8 %10 to i1
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then6, %while.cond
  br label %if.end7

if.end7:                                          ; preds = %while.end, %entry
  %11 = load i8, i8* %r, align 1
  %tobool8 = trunc i8 %11 to i1
  ret i1 %tobool8
}

declare zeroext i1 @regexNeedsMultilineBuffer(%struct.lregexControlBlock*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addLanguageCallbackRegex(i32 %language, i8* %regex, i8* %flags, i1 (i8*, %struct.regexMatch*, i32, i8*)* %callback, i8* %disabled, i8* %userData) #0 {
entry:
  %language.addr = alloca i32, align 4
  %regex.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %callback.addr = alloca i1 (i8*, %struct.regexMatch*, i32, i8*)*, align 8
  %disabled.addr = alloca i8*, align 8
  %userData.addr = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %regex, i8** %regex.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i1 (i8*, %struct.regexMatch*, i32, i8*)* %callback, i1 (i8*, %struct.regexMatch*, i32, i8*)** %callback.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %3 = load i8*, i8** %regex.addr, align 8
  %4 = load i8*, i8** %flags.addr, align 8
  %5 = load i1 (i8*, %struct.regexMatch*, i32, i8*)*, i1 (i8*, %struct.regexMatch*, i32, i8*)** %callback.addr, align 8
  %6 = load i8*, i8** %disabled.addr, align 8
  %7 = load i8*, i8** %userData.addr, align 8
  call void @addCallbackRegex(%struct.lregexControlBlock* %2, i8* %3, i8* %4, i1 (i8*, %struct.regexMatch*, i32, i8*)* %5, i8* %6, i8* %7)
  ret void
}

declare void @addCallbackRegex(%struct.lregexControlBlock*, i8*, i8*, i1 (i8*, %struct.regexMatch*, i32, i8*)*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @hasLanguageScopeActionInRegex(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %hasScopeAction = alloca i8, align 1
  store i32 %language, i32* %language.addr, align 4
  %0 = load i32, i32* %language.addr, align 4
  call void @pushLanguage(i32 %0)
  %1 = load i32, i32* %language.addr, align 4
  %call = call zeroext i1 @lregexQueryParserAndSubparsers(i32 %1, i1 (%struct.lregexControlBlock*)* @hasScopeActionInRegex)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %hasScopeAction, align 1
  %call1 = call i32 @popLanguage()
  %2 = load i8, i8* %hasScopeAction, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

declare void @pushLanguage(i32) #1

declare zeroext i1 @hasScopeActionInRegex(%struct.lregexControlBlock*) #1

declare i32 @popLanguage() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @matchLanguageRegex(i32 %language, %struct.sVString* %line) #0 {
entry:
  %language.addr = alloca i32, align 4
  %line.addr = alloca %struct.sVString*, align 8
  %tmp = alloca %struct.sSubparser*, align 8
  %t = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store %struct.sVString* %line, %struct.sVString** %line.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %3 = load %struct.sVString*, %struct.sVString** %line.addr, align 8
  %call = call zeroext i1 @matchRegex(%struct.lregexControlBlock* %2, %struct.sVString* %3)
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call1 = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %4, i1 zeroext true)
  store %struct.sSubparser* %call1, %struct.sSubparser** %tmp, align 8
  %cmp = icmp ne %struct.sSubparser* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call2 = call i32 @getSubparserLanguage(%struct.sSubparser* %5)
  store i32 %call2, i32* %t, align 4
  %6 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  call void @enterSubparser(%struct.sSubparser* %6)
  %7 = load i32, i32* %t, align 4
  %8 = load %struct.sVString*, %struct.sVString** %line.addr, align 8
  call void @matchLanguageRegex(i32 %7, %struct.sVString* %8)
  call void @leaveSubparser()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare zeroext i1 @matchRegex(%struct.lregexControlBlock*, %struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %last, i1 zeroext %includingNoneCraftedParser) #0 {
entry:
  %retval = alloca %struct.sSubparser*, align 8
  %last.addr = alloca %struct.sSubparser*, align 8
  %includingNoneCraftedParser.addr = alloca i8, align 1
  %lang = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %r = alloca %struct.sSubparser*, align 8
  %t = alloca i32, align 4
  store %struct.sSubparser* %last, %struct.sSubparser** %last.addr, align 8
  %frombool = zext i1 %includingNoneCraftedParser to i8
  store i8 %frombool, i8* %includingNoneCraftedParser.addr, align 1
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* %lang, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %lang, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sSubparser*, %struct.sSubparser** %last.addr, align 8
  %cmp = icmp eq %struct.sSubparser* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i32 0, i32 7
  %4 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  %call1 = call %struct.sSubparser* @getFirstSubparser(%struct.slaveControlBlock* %4)
  store %struct.sSubparser* %call1, %struct.sSubparser** %r, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.sSubparser*, %struct.sSubparser** %last.addr, align 8
  %next = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %5, i32 0, i32 1
  %6 = load %struct.sSubparser*, %struct.sSubparser** %next, align 8
  store %struct.sSubparser* %6, %struct.sSubparser** %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.sSubparser*, %struct.sSubparser** %r, align 8
  %cmp2 = icmp eq %struct.sSubparser* %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load %struct.sSubparser*, %struct.sSubparser** %r, align 8
  store %struct.sSubparser* %8, %struct.sSubparser** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.sSubparser*, %struct.sSubparser** %r, align 8
  %call5 = call i32 @getSubparserLanguage(%struct.sSubparser* %9)
  store i32 %call5, i32* %t, align 4
  %10 = load i32, i32* %t, align 4
  %call6 = call zeroext i1 @isLanguageEnabled(i32 %10)
  br i1 %call6, label %land.lhs.true, label %if.else12

land.lhs.true:                                    ; preds = %if.end4
  %11 = load i8, i8* %includingNoneCraftedParser.addr, align 1
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %13 = load i32, i32* %t, align 4
  %idx.ext7 = sext i32 %13 to i64
  %add.ptr8 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %12, i64 %idx.ext7
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr8, i32 0, i32 0
  %14 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %14, i32 0, i32 11
  %15 = load i32, i32* %method, align 8
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %16 = phi i1 [ false, %lor.lhs.false ], [ true, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %cmp10 = icmp eq i32 %land.ext, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %land.end, %land.lhs.true
  %17 = load %struct.sSubparser*, %struct.sSubparser** %r, align 8
  store %struct.sSubparser* %17, %struct.sSubparser** %retval, align 8
  br label %return

if.else12:                                        ; preds = %land.end, %if.end4
  %18 = load %struct.sSubparser*, %struct.sSubparser** %r, align 8
  %19 = load i8, i8* %includingNoneCraftedParser.addr, align 1
  %tobool13 = trunc i8 %19 to i1
  %call14 = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %18, i1 zeroext %tobool13)
  store %struct.sSubparser* %call14, %struct.sSubparser** %retval, align 8
  br label %return

return:                                           ; preds = %if.else12, %if.then11, %if.then3
  %20 = load %struct.sSubparser*, %struct.sSubparser** %retval, align 8
  ret %struct.sSubparser* %20
}

declare i32 @getSubparserLanguage(%struct.sSubparser*) #1

declare void @enterSubparser(%struct.sSubparser*) #1

declare void @leaveSubparser() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processLanguageRegexOption(i32 %language, i32 %regptype, i8* %parameter) #0 {
entry:
  %language.addr = alloca i32, align 4
  %regptype.addr = alloca i32, align 4
  %parameter.addr = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %regptype, i32* %regptype.addr, align 4
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %2 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %3 = load i32, i32* %regptype.addr, align 4
  %4 = load i8*, i8** %parameter.addr, align 8
  call void @processTagRegexOption(%struct.lregexControlBlock* %2, i32 %3, i8* %4)
  ret i1 true
}

declare void @processTagRegexOption(%struct.lregexControlBlock*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @processTabledefOption(i8* %option, i8* %parameter) #0 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca i8*, align 8
  %parameter.addr = alloca i8*, align 8
  %language = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %parameter, i8** %parameter.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %call = call i32 @getLanguageComponentInOption(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0))
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
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  %6 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %7 = load i32, i32* %language, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %6, i64 %idx.ext
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 9
  %8 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %9 = load i8*, i8** %parameter.addr, align 8
  call void @addRegexTable(%struct.lregexControlBlock* %8, i8* %9)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

declare void @addRegexTable(%struct.lregexControlBlock*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @useRegexMethod(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 11
  %4 = load i32, i32* %method, align 8
  %or = or i32 %4, 2
  store i32 %or, i32* %method, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getXpathFileSpecCount(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %xpathFileSpecCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 32
  %4 = load i32, i32* %xpathFileSpecCount, align 8
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sXpathFileSpec* @getXpathFileSpec(i32 %language, i32 %nth) #0 {
entry:
  %language.addr = alloca i32, align 4
  %nth.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %nth, i32* %nth.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %xpathFileSpecs = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 31
  %4 = load %struct.sXpathFileSpec*, %struct.sXpathFileSpec** %xpathFileSpecs, align 8
  %5 = load i32, i32* %nth.addr, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sXpathFileSpec, %struct.sXpathFileSpec* %4, i64 %idx.ext
  ret %struct.sXpathFileSpec* %add.ptr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @makeKindSeparatorsPseudoTags(i32 %language, %struct.sPtagDesc* %pdesc) #0 {
entry:
  %retval = alloca i1, align 1
  %language.addr = alloca i32, align 4
  %pdesc.addr = alloca %struct.sPtagDesc*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  %lang = alloca %struct.sParserDefinition*, align 8
  %kcb = alloca %struct.kindControlBlock*, align 8
  %kind = alloca %struct.sKindDefinition*, align 8
  %kindCount = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i8, align 1
  %name = alloca [5 x i8], align 1
  %upperKind = alloca %struct.sKindDefinition*, align 8
  %sep = alloca %struct.sScopeSeparator*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sPtagDesc* %pdesc, %struct.sPtagDesc** %pdesc.addr, align 8
  store i8 0, i8* %r, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %3, %struct.sParserDefinition** %lang, align 8
  %4 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i32 0, i32 8
  %5 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  store %struct.kindControlBlock* %5, %struct.kindControlBlock** %kcb, align 8
  %6 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %6)
  store i32 %call, i32* %kindCount, align 4
  %7 = load i32, i32* %kindCount, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load i8, i8* %r, align 1
  %tobool = trunc i8 %8 to i1
  store i1 %tobool, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %kindCount, align 4
  %cmp1 = icmp ult i32 %9, %10
  br i1 %cmp1, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sVString*, %struct.sVString** @makeKindSeparatorsPseudoTags.sepval, align 8
  %tobool2 = icmp ne %struct.sVString* %11, null
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %for.body
  %call4 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call4, %struct.sVString** @makeKindSeparatorsPseudoTags.sepval, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body
  %12 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %13 = load i32, i32* %i, align 4
  %call6 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %12, i32 %13)
  store %struct.sKindDefinition* %call6, %struct.sKindDefinition** %kind, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.end5
  %14 = load i32, i32* %j, align 4
  %15 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %separatorCount = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %15, i32 0, i32 8
  %16 = load i32, i32* %separatorCount, align 8
  %cmp8 = icmp ult i32 %14, %16
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %17 = bitcast [5 x i8]* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.makeKindSeparatorsPseudoTags.name, i32 0, i32 0), i64 5, i1 false)
  %18 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %separators = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %18, i32 0, i32 7
  %19 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %separators, align 8
  %20 = load i32, i32* %j, align 4
  %idx.ext10 = zext i32 %20 to i64
  %add.ptr11 = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %19, i64 %idx.ext10
  store %struct.sScopeSeparator* %add.ptr11, %struct.sScopeSeparator** %sep, align 8
  %21 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %sep, align 8
  %parentKindIndex = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %21, i32 0, i32 0
  %22 = load i32, i32* %parentKindIndex, align 8
  %cmp12 = icmp eq i32 %22, -3
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.body9
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 1
  store i8 42, i8* %arrayidx, align 1
  %23 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %23, i32 0, i32 1
  %24 = load i8, i8* %letter, align 1
  %arrayidx14 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 2
  store i8 %24, i8* %arrayidx14, align 1
  br label %if.end34

if.else:                                          ; preds = %for.body9
  %25 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %sep, align 8
  %parentKindIndex15 = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %25, i32 0, i32 0
  %26 = load i32, i32* %parentKindIndex15, align 8
  %cmp16 = icmp eq i32 %26, -1
  br i1 %cmp16, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else
  %27 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %letter18 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %27, i32 0, i32 1
  %28 = load i8, i8* %letter18, align 1
  %arrayidx19 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 1
  store i8 %28, i8* %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 3
  %29 = load i8, i8* %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 2
  store i8 %29, i8* %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 3
  store i8 0, i8* %arrayidx22, align 1
  br label %if.end33

if.else23:                                        ; preds = %if.else
  %30 = load i32, i32* %language.addr, align 4
  %31 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %sep, align 8
  %parentKindIndex24 = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %31, i32 0, i32 0
  %32 = load i32, i32* %parentKindIndex24, align 8
  %call25 = call %struct.sKindDefinition* @getLanguageKind(i32 %30, i32 %32)
  store %struct.sKindDefinition* %call25, %struct.sKindDefinition** %upperKind, align 8
  %33 = load %struct.sKindDefinition*, %struct.sKindDefinition** %upperKind, align 8
  %tobool26 = icmp ne %struct.sKindDefinition* %33, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.else23
  br label %for.inc

if.end28:                                         ; preds = %if.else23
  %34 = load %struct.sKindDefinition*, %struct.sKindDefinition** %upperKind, align 8
  %letter29 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %34, i32 0, i32 1
  %35 = load i8, i8* %letter29, align 1
  %arrayidx30 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 1
  store i8 %35, i8* %arrayidx30, align 1
  %36 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %letter31 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %36, i32 0, i32 1
  %37 = load i8, i8* %letter31, align 1
  %arrayidx32 = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 2
  store i8 %37, i8* %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.then17
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then13
  br label %do.body35

do.body35:                                        ; preds = %if.end34
  %38 = load %struct.sVString*, %struct.sVString** @makeKindSeparatorsPseudoTags.sepval, align 8
  store %struct.sVString* %38, %struct.sVString** %vStringClear_s, align 8
  %39 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %39, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %40 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %40, i32 0, i32 2
  %41 = load i8*, i8** %buffer, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %arrayidx36, align 1
  br label %do.end37

do.end37:                                         ; preds = %do.body35
  %42 = load %struct.sVString*, %struct.sVString** @makeKindSeparatorsPseudoTags.sepval, align 8
  %43 = load %struct.sScopeSeparator*, %struct.sScopeSeparator** %sep, align 8
  %separator = getelementptr inbounds %struct.sScopeSeparator, %struct.sScopeSeparator* %43, i32 0, i32 1
  %44 = load i8*, i8** %separator, align 8
  call void @vStringCatSWithEscaping(%struct.sVString* %42, i8* %44)
  %45 = load %struct.sPtagDesc*, %struct.sPtagDesc** %pdesc.addr, align 8
  %46 = load %struct.sVString*, %struct.sVString** @makeKindSeparatorsPseudoTags.sepval, align 8
  %buffer38 = getelementptr inbounds %struct.sVString, %struct.sVString* %46, i32 0, i32 2
  %47 = load i8*, i8** %buffer38, align 8
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0
  %48 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name39 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %48, i32 0, i32 0
  %49 = load i8*, i8** %name39, align 8
  %call40 = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %45, i8* %47, i8* %arraydecay, i8* %49)
  br i1 %call40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end37
  %50 = load i8, i8* %r, align 1
  %tobool41 = trunc i8 %50 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end37
  %51 = phi i1 [ true, %do.end37 ], [ %tobool41, %lor.rhs ]
  %frombool = zext i1 %51 to i8
  store i8 %frombool, i8* %r, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end, %if.then27
  %52 = load i32, i32* %j, align 4
  %inc = add i32 %52, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc42

for.inc42:                                        ; preds = %for.end
  %53 = load i32, i32* %i, align 4
  %inc43 = add i32 %53, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  %54 = load i8, i8* %r, align 1
  %tobool45 = trunc i8 %54 to i1
  store i1 %tobool45, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end44, %if.then
  %55 = load i1, i1* %retval, align 1
  ret i1 %55
}

declare %struct.sVString* @vStringNew() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @vStringCatSWithEscaping(%struct.sVString*, i8*) #1

declare zeroext i1 @writePseudoTag(%struct.sPtagDesc*, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @makeKindDescriptionsPseudoTags(i32 %language, %struct.sPtagDesc* %pdesc) #0 {
entry:
  %language.addr = alloca i32, align 4
  %pdesc.addr = alloca %struct.sPtagDesc*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  %kcb = alloca %struct.kindControlBlock*, align 8
  %lang = alloca %struct.sParserDefinition*, align 8
  %kind = alloca %struct.sKindDefinition*, align 8
  %kindCount = alloca i32, align 4
  %i = alloca i32, align 4
  %data = alloca %struct.makeKindDescriptionPseudoTagData, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.sPtagDesc* %pdesc, %struct.sPtagDesc** %pdesc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 8
  %3 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  store %struct.kindControlBlock* %3, %struct.kindControlBlock** %kcb, align 8
  %4 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i32 0, i32 0
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %5, %struct.sParserDefinition** %lang, align 8
  %6 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %6)
  store i32 %call, i32* %kindCount, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %langName = getelementptr inbounds %struct.makeKindDescriptionPseudoTagData, %struct.makeKindDescriptionPseudoTagData* %data, i32 0, i32 0
  store i8* %8, i8** %langName, align 8
  %9 = load %struct.sPtagDesc*, %struct.sPtagDesc** %pdesc.addr, align 8
  %pdesc1 = getelementptr inbounds %struct.makeKindDescriptionPseudoTagData, %struct.makeKindDescriptionPseudoTagData* %data, i32 0, i32 1
  store %struct.sPtagDesc* %9, %struct.sPtagDesc** %pdesc1, align 8
  %written = getelementptr inbounds %struct.makeKindDescriptionPseudoTagData, %struct.makeKindDescriptionPseudoTagData* %data, i32 0, i32 2
  store i8 0, i8* %written, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %kindCount, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %13 = load i32, i32* %i, align 4
  %call2 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %12, i32 %13)
  store %struct.sKindDefinition* %call2, %struct.sKindDefinition** %kind, align 8
  %14 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind, align 8
  %15 = bitcast %struct.makeKindDescriptionPseudoTagData* %data to i8*
  %call3 = call zeroext i1 @makeKindDescriptionPseudoTag(%struct.sKindDefinition* %14, i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %written4 = getelementptr inbounds %struct.makeKindDescriptionPseudoTagData, %struct.makeKindDescriptionPseudoTagData* %data, i32 0, i32 2
  %17 = load i8, i8* %written4, align 8
  %tobool = trunc i8 %17 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @makeKindDescriptionPseudoTag(%struct.sKindDefinition* %kind, i8* %user_data) #0 {
entry:
  %kind.addr = alloca %struct.sKindDefinition*, align 8
  %user_data.addr = alloca i8*, align 8
  %data = alloca %struct.makeKindDescriptionPseudoTagData*, align 8
  %letter_and_name = alloca %struct.sVString*, align 8
  %description = alloca %struct.sVString*, align 8
  %d = alloca i8*, align 8
  store %struct.sKindDefinition* %kind, %struct.sKindDefinition** %kind.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.makeKindDescriptionPseudoTagData*
  store %struct.makeKindDescriptionPseudoTagData* %1, %struct.makeKindDescriptionPseudoTagData** %data, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %letter_and_name, align 8
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %description, align 8
  %2 = load %struct.sVString*, %struct.sVString** %letter_and_name, align 8
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %3, i32 0, i32 1
  %4 = load i8, i8* %letter, align 1
  %conv = sext i8 %4 to i32
  call void @vStringPut(%struct.sVString* %2, i32 %conv)
  %5 = load %struct.sVString*, %struct.sVString** %letter_and_name, align 8
  call void @vStringPut(%struct.sVString* %5, i32 44)
  %6 = load %struct.sVString*, %struct.sVString** %letter_and_name, align 8
  %7 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %7, i32 0, i32 2
  %8 = load i8*, i8** %name, align 8
  call void @vStringCatS(%struct.sVString* %6, i8* %8)
  %9 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %description2 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %9, i32 0, i32 3
  %10 = load i8*, i8** %description2, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %description3 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %11, i32 0, i32 3
  %12 = load i8*, i8** %description3, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kind.addr, align 8
  %name4 = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %13, i32 0, i32 2
  %14 = load i8*, i8** %name4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %14, %cond.false ]
  store i8* %cond, i8** %d, align 8
  %15 = load %struct.sVString*, %struct.sVString** %description, align 8
  call void @vStringPut(%struct.sVString* %15, i32 47)
  %16 = load %struct.sVString*, %struct.sVString** %description, align 8
  %17 = load i8*, i8** %d, align 8
  call void @vStringCatSWithEscapingAsPattern(%struct.sVString* %16, i8* %17)
  %18 = load %struct.sVString*, %struct.sVString** %description, align 8
  call void @vStringPut(%struct.sVString* %18, i32 47)
  %19 = load %struct.makeKindDescriptionPseudoTagData*, %struct.makeKindDescriptionPseudoTagData** %data, align 8
  %pdesc = getelementptr inbounds %struct.makeKindDescriptionPseudoTagData, %struct.makeKindDescriptionPseudoTagData* %19, i32 0, i32 1
  %20 = load %struct.sPtagDesc*, %struct.sPtagDesc** %pdesc, align 8
  %21 = load %struct.sVString*, %struct.sVString** %letter_and_name, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %21, i32 0, i32 2
  %22 = load i8*, i8** %buffer, align 8
  %23 = load %struct.sVString*, %struct.sVString** %description, align 8
  %buffer5 = getelementptr inbounds %struct.sVString, %struct.sVString* %23, i32 0, i32 2
  %24 = load i8*, i8** %buffer5, align 8
  %25 = load %struct.makeKindDescriptionPseudoTagData*, %struct.makeKindDescriptionPseudoTagData** %data, align 8
  %langName = getelementptr inbounds %struct.makeKindDescriptionPseudoTagData, %struct.makeKindDescriptionPseudoTagData* %25, i32 0, i32 0
  %26 = load i8*, i8** %langName, align 8
  %call6 = call zeroext i1 @writePseudoTag(%struct.sPtagDesc* %20, i8* %22, i8* %24, i8* %26)
  %conv7 = zext i1 %call6 to i32
  %27 = load %struct.makeKindDescriptionPseudoTagData*, %struct.makeKindDescriptionPseudoTagData** %data, align 8
  %written = getelementptr inbounds %struct.makeKindDescriptionPseudoTagData, %struct.makeKindDescriptionPseudoTagData* %27, i32 0, i32 2
  %28 = load i8, i8* %written, align 8
  %tobool8 = trunc i8 %28 to i1
  %conv9 = zext i1 %tobool8 to i32
  %or = or i32 %conv9, %conv7
  %tobool10 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool10 to i8
  store i8 %frombool, i8* %written, align 8
  %29 = load %struct.sVString*, %struct.sVString** %description, align 8
  call void @vStringDelete(%struct.sVString* %29)
  %30 = load %struct.sVString*, %struct.sVString** %letter_and_name, align 8
  call void @vStringDelete(%struct.sVString* %30)
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @anonHashString(i8* %filename, i8* %buf) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @anonHash(i8* %1)
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 %call)
  ret void
}

declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @anonHash(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %hash = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 5381, i32* %hash, align 4
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
  %2 = load i32, i32* %hash, align 4
  %shl = shl i32 %2, 5
  %3 = load i32, i32* %hash, align 4
  %add = add i32 %shl, %3
  %4 = load i32, i32* %c, align 4
  %add1 = add i32 %add, %4
  store i32 %add1, i32* %hash, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %hash, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @anonGenerate(%struct.sVString* %buffer, i8* %prefix, i32 %kind) #0 {
entry:
  %buffer.addr = alloca %struct.sVString*, align 8
  %prefix.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %szNum = alloca [32 x i8], align 1
  %buf = alloca [9 x i8], align 1
  store %struct.sVString* %buffer, %struct.sVString** %buffer.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %call = call i32 @getInputLanguage()
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %1 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %anonymousIdentiferId = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i32 0, i32 6
  %2 = load i32, i32* %anonymousIdentiferId, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %anonymousIdentiferId, align 4
  %3 = load %struct.sVString*, %struct.sVString** %buffer.addr, align 8
  %4 = load i8*, i8** %prefix.addr, align 8
  call void @vStringCopyS(%struct.sVString* %3, i8* %4)
  %call1 = call i8* @getInputFileName()
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  call void @anonHashString(i8* %call1, i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %szNum, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %anonymousIdentiferId4 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i32 0, i32 6
  %6 = load i32, i32* %anonymousIdentiferId4, align 4
  %7 = load i32, i32* %kind.addr, align 4
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* %arraydecay3, i32 %6, i32 %7)
  %8 = load %struct.sVString*, %struct.sVString** %buffer.addr, align 8
  %arraydecay6 = getelementptr inbounds [32 x i8], [32 x i8]* %szNum, i64 0, i64 0
  call void @vStringCatS(%struct.sVString* %8, i8* %arraydecay6)
  ret void
}

declare i32 @getInputLanguage() #1

declare void @vStringCopyS(%struct.sVString*, i8*) #1

declare void @vStringCatS(%struct.sVString*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @applyParameter(i32 %language, i8* %name, i8* %args) #0 {
entry:
  %language.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %args.addr = alloca i8*, align 8
  %parser = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %args, i8** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* %language.addr, align 4
  call void @initializeParserOne(i32 %0)
  %1 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %2 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %1, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %3, %struct.sParserDefinition** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %parameterHandlerTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 29
  %5 = load %struct.sParameterHandlerTable*, %struct.sParameterHandlerTable** %parameterHandlerTable, align 8
  %tobool = icmp ne %struct.sParameterHandlerTable* %5, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %parameterHandlerCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 30
  %8 = load i32, i32* %parameterHandlerCount, align 8
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %parameterHandlerTable1 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 29
  %10 = load %struct.sParameterHandlerTable*, %struct.sParameterHandlerTable** %parameterHandlerTable1, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds %struct.sParameterHandlerTable, %struct.sParameterHandlerTable* %10, i64 %idxprom2
  %name4 = getelementptr inbounds %struct.sParameterHandlerTable, %struct.sParameterHandlerTable* %arrayidx3, i32 0, i32 0
  %12 = load i8*, i8** %name4, align 8
  %13 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %12, i8* %13)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %14 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %parameterHandlerTable7 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %14, i32 0, i32 29
  %15 = load %struct.sParameterHandlerTable*, %struct.sParameterHandlerTable** %parameterHandlerTable7, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds %struct.sParameterHandlerTable, %struct.sParameterHandlerTable* %15, i64 %idxprom8
  %handleParameter = getelementptr inbounds %struct.sParameterHandlerTable, %struct.sParameterHandlerTable* %arrayidx9, i32 0, i32 2
  %17 = load void (i32, i8*, i8*)*, void (i32, i8*, i8*)** %handleParameter, align 8
  %18 = load i32, i32* %language.addr, align 4
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load i8*, i8** %args.addr, align 8
  call void %17(i32 %18, i8* %19, i8* %20)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %do.end
  %22 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %name11 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %22, i32 0, i32 0
  %23 = load i8*, i8** %name11, align 8
  %24 = load i8*, i8** %name.addr, align 8
  call void (i32, i8*, ...) @error(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0), i8* %23, i8* %24)
  br label %return

return:                                           ; preds = %if.end10, %if.then6
  ret void
}

declare %struct.sSubparser* @getFirstSubparser(%struct.slaveControlBlock*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sSlaveParser* @getNextSlaveParser(%struct.sSlaveParser* %last) #0 {
entry:
  %last.addr = alloca %struct.sSlaveParser*, align 8
  %lang = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %r = alloca %struct.sSlaveParser*, align 8
  store %struct.sSlaveParser* %last, %struct.sSlaveParser** %last.addr, align 8
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* %lang, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %lang, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sSlaveParser*, %struct.sSlaveParser** %last.addr, align 8
  %cmp = icmp eq %struct.sSlaveParser* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i32 0, i32 7
  %4 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  %call1 = call %struct.sSlaveParser* @getFirstSlaveParser(%struct.slaveControlBlock* %4)
  store %struct.sSlaveParser* %call1, %struct.sSlaveParser** %r, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.sSlaveParser*, %struct.sSlaveParser** %last.addr, align 8
  %next = getelementptr inbounds %struct.sSlaveParser, %struct.sSlaveParser* %5, i32 0, i32 3
  %6 = load %struct.sSlaveParser*, %struct.sSlaveParser** %next, align 8
  store %struct.sSlaveParser* %6, %struct.sSlaveParser** %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.sSlaveParser*, %struct.sSlaveParser** %r, align 8
  ret %struct.sSlaveParser* %7
}

declare %struct.sSlaveParser* @getFirstSlaveParser(%struct.slaveControlBlock*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @scheduleRunningBaseparser(i32 %dependencyIndex) #0 {
entry:
  %dependencyIndex.addr = alloca i32, align 4
  %current = alloca i32, align 4
  %current_parser = alloca %struct.sParserDefinition*, align 8
  %dep = alloca %struct.sParserDependency*, align 8
  %i = alloca i32, align 4
  %base_name = alloca i8*, align 8
  %base = alloca i32, align 4
  %base_parser = alloca %struct.sParserObject*, align 8
  %tmp = alloca %struct.sSubparser*, align 8
  %t = alloca i32, align 4
  store i32 %dependencyIndex, i32* %dependencyIndex.addr, align 4
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* %current, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %current, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %current_parser, align 8
  store %struct.sParserDependency* null, %struct.sParserDependency** %dep, align 8
  %3 = load i32, i32* %dependencyIndex.addr, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %current_parser, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 28
  %6 = load i32, i32* %dependencyCount, align 8
  %cmp1 = icmp ult i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %current_parser, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 27
  %8 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %8, i64 %idxprom2
  %type = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %arrayidx3, i32 0, i32 0
  %10 = load i32, i32* %type, align 8
  %cmp4 = icmp eq i32 %10, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %current_parser, align 8
  %dependencies6 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 27
  %12 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies6, align 8
  %13 = load i32, i32* %i, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %12, i64 %idx.ext
  store %struct.sParserDependency* %add.ptr, %struct.sParserDependency** %dep, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then5, %for.cond
  br label %if.end10

if.else:                                          ; preds = %entry
  %15 = load %struct.sParserDefinition*, %struct.sParserDefinition** %current_parser, align 8
  %dependencies7 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %15, i32 0, i32 27
  %16 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies7, align 8
  %17 = load i32, i32* %dependencyIndex.addr, align 4
  %idx.ext8 = sext i32 %17 to i64
  %add.ptr9 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %16, i64 %idx.ext8
  store %struct.sParserDependency* %add.ptr9, %struct.sParserDependency** %dep, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %for.end
  %18 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %cmp11 = icmp eq %struct.sParserDependency* %18, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  br label %return

if.end13:                                         ; preds = %if.end10
  %19 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %upperParser = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %19, i32 0, i32 1
  %20 = load i8*, i8** %upperParser, align 8
  store i8* %20, i8** %base_name, align 8
  %21 = load i8*, i8** %base_name, align 8
  %call14 = call i32 @getNamedLanguage(i8* %21, i64 0)
  store i32 %call14, i32* %base, align 4
  %22 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %23 = load i32, i32* %base, align 4
  %idx.ext15 = sext i32 %23 to i64
  %add.ptr16 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %22, i64 %idx.ext15
  store %struct.sParserObject* %add.ptr16, %struct.sParserObject** %base_parser, align 8
  %24 = load i32, i32* %dependencyIndex.addr, align 4
  %cmp17 = icmp eq i32 %24, -1
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end13
  %25 = load %struct.sParserObject*, %struct.sParserObject** %base_parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %25, i32 0, i32 7
  %26 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  call void @useDefaultSubparsers(%struct.slaveControlBlock* %26)
  br label %if.end21

if.else19:                                        ; preds = %if.end13
  %27 = load %struct.sParserObject*, %struct.sParserObject** %base_parser, align 8
  %slaveControlBlock20 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %27, i32 0, i32 7
  %28 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock20, align 8
  %29 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %data = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %29, i32 0, i32 2
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct.sSubparser*
  call void @useSpecifiedSubparser(%struct.slaveControlBlock* %28, %struct.sSubparser* %31)
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18
  %32 = load i32, i32* %base, align 4
  %call22 = call zeroext i1 @isLanguageEnabled(i32 %32)
  br i1 %call22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end21
  %33 = load i32, i32* %base, align 4
  call void @enableLanguage(i32 %33, i1 zeroext true)
  %34 = load %struct.sParserObject*, %struct.sParserObject** %base_parser, align 8
  %dontEmit = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %34, i32 0, i32 5
  %bf.load = load i8, i8* %dontEmit, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %dontEmit, align 8
  %35 = load %struct.sParserObject*, %struct.sParserObject** %base_parser, align 8
  %def24 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %35, i32 0, i32 0
  %36 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def24, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %36, i32 0, i32 0
  %37 = load i8*, i8** %name, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i8* %37)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %38 = load i8*, i8** %base_name, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.46, i64 0, i64 0), i8* %38)
  %39 = load i32, i32* %base, align 4
  call void @pushLanguage(i32 %39)
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end25
  %40 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call26 = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %40, i1 zeroext true)
  store %struct.sSubparser* %call26, %struct.sSubparser** %tmp, align 8
  %cmp27 = icmp ne %struct.sSubparser* %call26, null
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call28 = call i32 @getSubparserLanguage(%struct.sSubparser* %41)
  store i32 %call28, i32* %t, align 4
  %42 = load i32, i32* %t, align 4
  %call29 = call i8* @getLanguageName(i32 %42)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* %call29)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call30 = call i32 @popLanguage()
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %43 = load i8*, i8** %base_name, align 8
  %call31 = call i32 @makePromise(i8* %43, i64 0, i64 0, i64 0, i64 0, i64 0)
  br label %return

return:                                           ; preds = %while.end, %if.then12
  ret void
}

declare void @useDefaultSubparsers(%struct.slaveControlBlock*) #1

declare void @useSpecifiedSubparser(%struct.slaveControlBlock*, %struct.sSubparser*) #1

declare i32 @makePromise(i8*, i64, i64, i64, i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isParserMarkedNoEmission() #0 {
entry:
  %lang = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* %lang, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %lang, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %dontEmit = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 5
  %bf.load = load i8, i8* %dontEmit, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define %struct.sSubparser* @getSubparserRunningBaseparser() #0 {
entry:
  %retval = alloca %struct.sSubparser*, align 8
  %current = alloca i32, align 4
  %current_parser = alloca %struct.sParserObject*, align 8
  %s = alloca %struct.sSubparser*, align 8
  %call = call i32 @getInputLanguage()
  store i32 %call, i32* %current, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %current, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %current_parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %current_parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 7
  %3 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  %call1 = call %struct.sSubparser* @getFirstSubparser(%struct.slaveControlBlock* %3)
  store %struct.sSubparser* %call1, %struct.sSubparser** %s, align 8
  %4 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %tobool = icmp ne %struct.sSubparser* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  %schedulingBaseparserExplicitly = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %5, i32 0, i32 2
  %6 = load i8, i8* %schedulingBaseparserExplicitly, align 8
  %tobool2 = trunc i8 %6 to i1
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.sSubparser*, %struct.sSubparser** %s, align 8
  store %struct.sSubparser* %7, %struct.sSubparser** %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct.sSubparser* null, %struct.sSubparser** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct.sSubparser*, %struct.sSubparser** %retval, align 8
  ret %struct.sSubparser* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageSubparsers(i32 %language, i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %withListHeader.addr = alloca i8, align 1
  %machinable.addr = alloca i8, align 1
  %fp.addr = alloca %struct.__sFILE*, align 8
  %i = alloca i32, align 4
  %table = alloca %struct.colprintTable*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  %i3 = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %withListHeader to i8
  store i8 %frombool, i8* %withListHeader.addr, align 1
  %frombool1 = zext i1 %machinable to i8
  store i8 %frombool1, i8* %machinable.addr, align 1
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  call void @initializeParserOne(i32 %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call %struct.colprintTable* @subparserColprintTableNew()
  store %struct.colprintTable* %call, %struct.colprintTable** %table, align 8
  %4 = load i32, i32* %language.addr, align 4
  %cmp2 = icmp eq i32 %4, -1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i3, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc8, %if.then
  %5 = load i32, i32* %i3, align 4
  %6 = load i32, i32* @LanguageCount, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end10

for.body6:                                        ; preds = %for.cond4
  %7 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %8 = load i32, i32* %i3, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %7, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %9 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %9, i32 0, i32 0
  %10 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %10, i32 0, i32 22
  %11 = load i8, i8* %invisible, align 4
  %tobool = trunc i8 %11 to i1
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body6
  br label %for.inc8

if.end:                                           ; preds = %for.body6
  %12 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %13 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i32 0, i32 7
  %14 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  call void @subparserColprintAddSubparsers(%struct.colprintTable* %12, %struct.slaveControlBlock* %14)
  br label %for.inc8

for.inc8:                                         ; preds = %if.end, %if.then7
  %15 = load i32, i32* %i3, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %i3, align 4
  br label %for.cond4

for.end10:                                        ; preds = %for.cond4
  br label %if.end14

if.else:                                          ; preds = %for.end
  %16 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %17 = load i32, i32* %language.addr, align 4
  %idx.ext11 = sext i32 %17 to i64
  %add.ptr12 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i64 %idx.ext11
  store %struct.sParserObject* %add.ptr12, %struct.sParserObject** %parser, align 8
  %18 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %19 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %slaveControlBlock13 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %19, i32 0, i32 7
  %20 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock13, align 8
  call void @subparserColprintAddSubparsers(%struct.colprintTable* %18, %struct.slaveControlBlock* %20)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %for.end10
  %21 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %22 = load i8, i8* %withListHeader.addr, align 1
  %tobool15 = trunc i8 %22 to i1
  %23 = load i8, i8* %machinable.addr, align 1
  %tobool16 = trunc i8 %23 to i1
  %24 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @subparserColprintTablePrint(%struct.colprintTable* %21, i1 zeroext %tobool15, i1 zeroext %tobool16, %struct.__sFILE* %24)
  %25 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %25)
  ret void
}

declare %struct.colprintTable* @subparserColprintTableNew() #1

declare void @subparserColprintAddSubparsers(%struct.colprintTable*, %struct.slaveControlBlock*) #1

declare void @subparserColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLangdefFlags(i1 zeroext %withListHeader, i1 zeroext %machinable, %struct.__sFILE* %fp) #0 {
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
  call void @flagsColprintAddDefinitions(%struct.colprintTable* %0, %struct.sFlagDefinition* getelementptr inbounds ([4 x %struct.sFlagDefinition], [4 x %struct.sFlagDefinition]* @PreLangDefFlagDef, i64 0, i64 0), i32 4)
  %1 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  %2 = load i8, i8* %withListHeader.addr, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load i8, i8* %machinable.addr, align 1
  %tobool2 = trunc i8 %3 to i1
  %4 = load %struct.__sFILE*, %struct.__sFILE** %fp.addr, align 8
  call void @flagsColprintTablePrint(%struct.colprintTable* %1, i1 zeroext %tobool, i1 zeroext %tobool2, %struct.__sFILE* %4)
  %5 = load %struct.colprintTable*, %struct.colprintTable** %table, align 8
  call void @colprintTableDelete(%struct.colprintTable* %5)
  ret void
}

declare %struct.colprintTable* @flagsColprintTableNew() #1

declare void @flagsColprintAddDefinitions(%struct.colprintTable*, %struct.sFlagDefinition*, i32) #1

declare void @flagsColprintTablePrint(%struct.colprintTable*, i1 zeroext, i1 zeroext, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @printLanguageMultitableStatistics(i32 %language, %struct.__sFILE* %vfp) #0 {
entry:
  %language.addr = alloca i32, align 4
  %vfp.addr = alloca %struct.__sFILE*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  store %struct.__sFILE* %vfp, %struct.__sFILE** %vfp.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 9
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %4 = load %struct.__sFILE*, %struct.__sFILE** %vfp.addr, align 8
  call void @printMultitableStatistics(%struct.lregexControlBlock* %3, %struct.__sFILE* %4)
  ret void
}

declare void @printMultitableStatistics(%struct.lregexControlBlock*, %struct.__sFILE*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addLanguageRegexTable(i32 %language, i8* %name) #0 {
entry:
  %language.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 9
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %4 = load i8*, i8** %name.addr, align 8
  call void @addRegexTable(%struct.lregexControlBlock* %3, i8* %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addLanguageTagMultiTableRegex(i32 %language, i8* %table_name, i8* %regex, i8* %name, i8* %kinds, i8* %flags, i8* %disabled) #0 {
entry:
  %language.addr = alloca i32, align 4
  %table_name.addr = alloca i8*, align 8
  %regex.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %kinds.addr = alloca i8*, align 8
  %flags.addr = alloca i8*, align 8
  %disabled.addr = alloca i8*, align 8
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %table_name, i8** %table_name.addr, align 8
  store i8* %regex, i8** %regex.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %kinds, i8** %kinds.addr, align 8
  store i8* %flags, i8** %flags.addr, align 8
  store i8* %disabled, i8** %disabled.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 9
  %3 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %4 = load i8*, i8** %table_name.addr, align 8
  %5 = load i8*, i8** %regex.addr, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i8*, i8** %kinds.addr, align 8
  %8 = load i8*, i8** %flags.addr, align 8
  %9 = load i8*, i8** %disabled.addr, align 8
  call void @addTagMultiTableRegex(%struct.lregexControlBlock* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9)
  ret void
}

declare void @addTagMultiTableRegex(%struct.lregexControlBlock*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare %struct.sVString* @stringListFileFinds(%struct.sPtrArray*, i8*) #1

declare %struct.sVString* @stringListExtensionFinds(%struct.sPtrArray*, i8*) #1

declare i8* @fileExtension(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getFileLanguageForRequestInternal(%struct.GetLanguageRequest* %req) #0 {
entry:
  %req.addr = alloca %struct.GetLanguageRequest*, align 8
  %fileName = alloca i8*, align 8
  %language = alloca i32, align 4
  %fallback = alloca [4 x i32], align 4
  %i = alloca i32, align 4
  %glc = alloca %struct.getLangCtx, align 8
  %baseName = alloca i8*, align 8
  %templateBaseName = alloca i8*, align 8
  %fstatus = alloca %struct.fileStatus*, align 8
  %tExt = alloca i8*, align 8
  store %struct.GetLanguageRequest* %req, %struct.GetLanguageRequest** %req.addr, align 8
  %0 = load %struct.GetLanguageRequest*, %struct.GetLanguageRequest** %req.addr, align 8
  %fileName1 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %0, i32 0, i32 1
  %1 = load i8*, i8** %fileName1, align 8
  store i8* %1, i8** %fileName, align 8
  %fileName2 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 0
  %2 = load i8*, i8** %fileName, align 8
  store i8* %2, i8** %fileName2, align 8
  %input = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %3 = load %struct.GetLanguageRequest*, %struct.GetLanguageRequest** %req.addr, align 8
  %type = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.GetLanguageRequest*, %struct.GetLanguageRequest** %req.addr, align 8
  %mio = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %5, i32 0, i32 2
  %6 = load %struct._MIO*, %struct._MIO** %mio, align 8
  %call = call %struct._MIO* @mio_ref(%struct._MIO* %6)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._MIO* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct._MIO* %cond, %struct._MIO** %input, align 8
  %err = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 2
  store i8 0, i8* %err, align 8
  %7 = load i8*, i8** %fileName, align 8
  %call3 = call i8* @baseFilename(i8* %7)
  store i8* %call3, i8** %baseName, align 8
  store i8* null, i8** %templateBaseName, align 8
  store %struct.fileStatus* null, %struct.fileStatus** %fstatus, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %8, 4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %fallback, i64 0, i64 %idxprom
  store i32 -2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %fileName, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i8* %11)
  %12 = load i8*, i8** %baseName, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* %12)
  %13 = load i8*, i8** %baseName, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %fallback, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 2
  %call5 = call i32 @getPatternLanguage(i8* %13, %struct.getLangCtx* %glc, i32* %add.ptr)
  store i32 %call5, i32* %language, align 4
  %14 = load i32, i32* %language, align 4
  %cmp6 = icmp ne i32 %14, -2
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %err7 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 2
  %15 = load i8, i8* %err7, align 8
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8** %tExt, align 8
  %16 = load i8*, i8** %fileName, align 8
  %call8 = call i8* @baseFilenameSansExtensionNew(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0))
  store i8* %call8, i8** %templateBaseName, align 8
  %17 = load i8*, i8** %templateBaseName, align 8
  %tobool9 = icmp ne i8* %17, null
  br i1 %tobool9, label %if.then10, label %if.end36

if.then10:                                        ; preds = %if.end
  %18 = load i8*, i8** %templateBaseName, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* %18)
  br label %do.body

do.body:                                          ; preds = %if.then10
  %input11 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %19 = load %struct._MIO*, %struct._MIO** %input11, align 8
  %tobool12 = icmp ne %struct._MIO* %19, null
  br i1 %tobool12, label %if.end27, label %if.then13

if.then13:                                        ; preds = %do.body
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %input15 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %20 = load %struct._MIO*, %struct._MIO** %input15, align 8
  %tobool16 = icmp ne %struct._MIO* %20, null
  br i1 %tobool16, label %if.end26, label %if.then17

if.then17:                                        ; preds = %do.body14
  %fileName18 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 0
  %21 = load i8*, i8** %fileName18, align 8
  %call19 = call %struct._MIO* @getMio(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i1 zeroext false)
  %input20 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  store %struct._MIO* %call19, %struct._MIO** %input20, align 8
  %input21 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %22 = load %struct._MIO*, %struct._MIO** %input21, align 8
  %tobool22 = icmp ne %struct._MIO* %22, null
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.then17
  %err24 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 2
  store i8 1, i8* %err24, align 8
  br label %cleanup

if.end25:                                         ; preds = %if.then17
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %do.body14
  br label %do.end

do.end:                                           ; preds = %if.end26
  br label %if.end27

if.end27:                                         ; preds = %do.end, %do.body
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  %input29 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %23 = load %struct._MIO*, %struct._MIO** %input29, align 8
  call void @mio_rewind(%struct._MIO* %23)
  %24 = load i8*, i8** %templateBaseName, align 8
  %arraydecay30 = getelementptr inbounds [4 x i32], [4 x i32]* %fallback, i64 0, i64 0
  %add.ptr31 = getelementptr inbounds i32, i32* %arraydecay30, i64 3
  %call32 = call i32 @getPatternLanguage(i8* %24, %struct.getLangCtx* %glc, i32* %add.ptr31)
  store i32 %call32, i32* %language, align 4
  %25 = load i32, i32* %language, align 4
  %cmp33 = icmp ne i32 %25, -2
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.end28
  br label %cleanup

if.end35:                                         ; preds = %do.end28
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end
  %input37 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %26 = load %struct._MIO*, %struct._MIO** %input37, align 8
  %tobool38 = icmp ne %struct._MIO* %26, null
  br i1 %tobool38, label %if.then43, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %27 = load i8*, i8** %fileName, align 8
  %call40 = call %struct.fileStatus* @eStat(i8* %27)
  store %struct.fileStatus* %call40, %struct.fileStatus** %fstatus, align 8
  %tobool41 = icmp ne %struct.fileStatus* %call40, null
  br i1 %tobool41, label %land.lhs.true, label %if.end103

land.lhs.true:                                    ; preds = %lor.lhs.false39
  %28 = load %struct.fileStatus*, %struct.fileStatus** %fstatus, align 8
  %exists = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %28, i32 0, i32 1
  %29 = load i8, i8* %exists, align 8
  %tobool42 = trunc i8 %29 to i1
  br i1 %tobool42, label %if.then43, label %if.end103

if.then43:                                        ; preds = %land.lhs.true, %if.end36
  %30 = load %struct.fileStatus*, %struct.fileStatus** %fstatus, align 8
  %tobool44 = icmp ne %struct.fileStatus* %30, null
  br i1 %tobool44, label %land.lhs.true45, label %lor.lhs.false47

land.lhs.true45:                                  ; preds = %if.then43
  %31 = load %struct.fileStatus*, %struct.fileStatus** %fstatus, align 8
  %isExecutable = getelementptr inbounds %struct.fileStatus, %struct.fileStatus* %31, i32 0, i32 5
  %32 = load i8, i8* %isExecutable, align 4
  %tobool46 = trunc i8 %32 to i1
  br i1 %tobool46, label %if.then49, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %land.lhs.true45, %if.then43
  %33 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 24), align 1
  %tobool48 = trunc i8 %33 to i1
  br i1 %tobool48, label %if.then49, label %if.end73

if.then49:                                        ; preds = %lor.lhs.false47, %land.lhs.true45
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  %input51 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %34 = load %struct._MIO*, %struct._MIO** %input51, align 8
  %tobool52 = icmp ne %struct._MIO* %34, null
  br i1 %tobool52, label %if.end68, label %if.then53

if.then53:                                        ; preds = %do.body50
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %input55 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %35 = load %struct._MIO*, %struct._MIO** %input55, align 8
  %tobool56 = icmp ne %struct._MIO* %35, null
  br i1 %tobool56, label %if.end66, label %if.then57

if.then57:                                        ; preds = %do.body54
  %fileName58 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 0
  %36 = load i8*, i8** %fileName58, align 8
  %call59 = call %struct._MIO* @getMio(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i1 zeroext false)
  %input60 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  store %struct._MIO* %call59, %struct._MIO** %input60, align 8
  %input61 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %37 = load %struct._MIO*, %struct._MIO** %input61, align 8
  %tobool62 = icmp ne %struct._MIO* %37, null
  br i1 %tobool62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.then57
  %err64 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 2
  store i8 1, i8* %err64, align 8
  br label %cleanup

if.end65:                                         ; preds = %if.then57
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %do.body54
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %do.body50
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  %arraydecay70 = getelementptr inbounds [4 x i32], [4 x i32]* %fallback, i64 0, i64 0
  %add.ptr71 = getelementptr inbounds i32, i32* %arraydecay70, i64 0
  %call72 = call i32 @tasteLanguage(%struct.getLangCtx* %glc, %struct.taster* getelementptr inbounds ([6 x %struct.taster], [6 x %struct.taster]* @eager_tasters, i64 0, i64 0), i32 1, i32* %add.ptr71)
  store i32 %call72, i32* %language, align 4
  br label %if.end73

if.end73:                                         ; preds = %do.end69, %lor.lhs.false47
  %38 = load i32, i32* %language, align 4
  %cmp74 = icmp ne i32 %38, -2
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end73
  br label %cleanup

if.end76:                                         ; preds = %if.end73
  %39 = load i8, i8* getelementptr inbounds (%struct.sOptionValues, %struct.sOptionValues* @Option, i32 0, i32 24), align 1
  %tobool77 = trunc i8 %39 to i1
  br i1 %tobool77, label %if.then78, label %if.end102

if.then78:                                        ; preds = %if.end76
  br label %do.body79

do.body79:                                        ; preds = %if.then78
  %input80 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %40 = load %struct._MIO*, %struct._MIO** %input80, align 8
  %tobool81 = icmp ne %struct._MIO* %40, null
  br i1 %tobool81, label %if.end97, label %if.then82

if.then82:                                        ; preds = %do.body79
  br label %do.body83

do.body83:                                        ; preds = %if.then82
  %input84 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %41 = load %struct._MIO*, %struct._MIO** %input84, align 8
  %tobool85 = icmp ne %struct._MIO* %41, null
  br i1 %tobool85, label %if.end95, label %if.then86

if.then86:                                        ; preds = %do.body83
  %fileName87 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 0
  %42 = load i8*, i8** %fileName87, align 8
  %call88 = call %struct._MIO* @getMio(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i1 zeroext false)
  %input89 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  store %struct._MIO* %call88, %struct._MIO** %input89, align 8
  %input90 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %43 = load %struct._MIO*, %struct._MIO** %input90, align 8
  %tobool91 = icmp ne %struct._MIO* %43, null
  br i1 %tobool91, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.then86
  %err93 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 2
  store i8 1, i8* %err93, align 8
  br label %cleanup

if.end94:                                         ; preds = %if.then86
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %do.body83
  br label %do.end96

do.end96:                                         ; preds = %if.end95
  br label %if.end97

if.end97:                                         ; preds = %do.end96, %do.body79
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  %arraydecay99 = getelementptr inbounds [4 x i32], [4 x i32]* %fallback, i64 0, i64 0
  %add.ptr100 = getelementptr inbounds i32, i32* %arraydecay99, i64 1
  %call101 = call i32 @tasteLanguage(%struct.getLangCtx* %glc, %struct.taster* getelementptr inbounds ([6 x %struct.taster], [6 x %struct.taster]* @eager_tasters, i64 0, i64 1), i32 5, i32* %add.ptr100)
  store i32 %call101, i32* %language, align 4
  br label %if.end102

if.end102:                                        ; preds = %do.end98, %if.end76
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %land.lhs.true, %lor.lhs.false39
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then92, %if.then75, %if.then63, %if.then34, %if.then23, %if.then
  %44 = load %struct.GetLanguageRequest*, %struct.GetLanguageRequest** %req.addr, align 8
  %type104 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %44, i32 0, i32 0
  %45 = load i32, i32* %type104, align 8
  %cmp105 = icmp eq i32 %45, 0
  br i1 %cmp105, label %land.lhs.true106, label %if.end113

land.lhs.true106:                                 ; preds = %cleanup
  %input107 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %46 = load %struct._MIO*, %struct._MIO** %input107, align 8
  %tobool108 = icmp ne %struct._MIO* %46, null
  br i1 %tobool108, label %if.then109, label %if.end113

if.then109:                                       ; preds = %land.lhs.true106
  %input110 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %47 = load %struct._MIO*, %struct._MIO** %input110, align 8
  %call111 = call %struct._MIO* @mio_ref(%struct._MIO* %47)
  %48 = load %struct.GetLanguageRequest*, %struct.GetLanguageRequest** %req.addr, align 8
  %mio112 = getelementptr inbounds %struct.GetLanguageRequest, %struct.GetLanguageRequest* %48, i32 0, i32 2
  store %struct._MIO* %call111, %struct._MIO** %mio112, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %land.lhs.true106, %cleanup
  br label %do.body114

do.body114:                                       ; preds = %if.end113
  %input115 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %49 = load %struct._MIO*, %struct._MIO** %input115, align 8
  %tobool116 = icmp ne %struct._MIO* %49, null
  br i1 %tobool116, label %if.then117, label %if.end121

if.then117:                                       ; preds = %do.body114
  %input118 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  %50 = load %struct._MIO*, %struct._MIO** %input118, align 8
  %call119 = call i32 @mio_free(%struct._MIO* %50)
  %input120 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %glc, i32 0, i32 1
  store %struct._MIO* null, %struct._MIO** %input120, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %do.body114
  br label %do.end122

do.end122:                                        ; preds = %if.end121
  %51 = load %struct.fileStatus*, %struct.fileStatus** %fstatus, align 8
  %tobool123 = icmp ne %struct.fileStatus* %51, null
  br i1 %tobool123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %do.end122
  %52 = load %struct.fileStatus*, %struct.fileStatus** %fstatus, align 8
  call void @eStatFree(%struct.fileStatus* %52)
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %do.end122
  %53 = load i8*, i8** %templateBaseName, align 8
  %tobool126 = icmp ne i8* %53, null
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end125
  %54 = load i8*, i8** %templateBaseName, align 8
  call void @eFree(i8* %54)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end125
  store i32 0, i32* %i, align 4
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc139, %if.end128
  %55 = load i32, i32* %language, align 4
  %cmp130 = icmp eq i32 %55, -2
  br i1 %cmp130, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond129
  %56 = load i32, i32* %i, align 4
  %cmp131 = icmp slt i32 %56, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond129
  %57 = phi i1 [ false, %for.cond129 ], [ %cmp131, %land.rhs ]
  br i1 %57, label %for.body132, label %for.end141

for.body132:                                      ; preds = %land.end
  %58 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %58 to i64
  %arrayidx134 = getelementptr inbounds [4 x i32], [4 x i32]* %fallback, i64 0, i64 %idxprom133
  %59 = load i32, i32* %arrayidx134, align 4
  store i32 %59, i32* %language, align 4
  %60 = load i32, i32* %language, align 4
  %cmp135 = icmp ne i32 %60, -2
  br i1 %cmp135, label %if.then136, label %if.end138

if.then136:                                       ; preds = %for.body132
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %language, align 4
  %call137 = call i8* @getLanguageName(i32 %62)
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i32 %61, i8* %call137)
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %for.body132
  br label %for.inc139

for.inc139:                                       ; preds = %if.end138
  %63 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %63, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond129

for.end141:                                       ; preds = %land.end
  %64 = load i32, i32* %language, align 4
  ret i32 %64
}

declare %struct._MIO* @mio_ref(%struct._MIO*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getPatternLanguage(i8* %baseName, %struct.getLangCtx* %glc, i32* %fallback) #0 {
entry:
  %baseName.addr = alloca i8*, align 8
  %glc.addr = alloca %struct.getLangCtx*, align 8
  %fallback.addr = alloca i32*, align 8
  store i8* %baseName, i8** %baseName.addr, align 8
  store %struct.getLangCtx* %glc, %struct.getLangCtx** %glc.addr, align 8
  store i32* %fallback, i32** %fallback.addr, align 8
  %0 = load i8*, i8** %baseName.addr, align 8
  %1 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %2 = load i32*, i32** %fallback.addr, align 8
  %call = call i32 @getSpecLanguageCommon(i8* %0, %struct.getLangCtx* %1, i32 (i8*, %struct.parserCandidate**)* @nominateLanguageCandidatesForPattern, i32* %2)
  ret i32 %call
}

declare i8* @baseFilenameSansExtensionNew(i8*, i8*) #1

declare %struct._MIO* @getMio(i8*, i8*, i1 zeroext) #1

declare void @mio_rewind(%struct._MIO*) #1

declare %struct.fileStatus* @eStat(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @tasteLanguage(%struct.getLangCtx* %glc, %struct.taster* %tasters, i32 %n_tasters, i32* %fallback) #0 {
entry:
  %retval = alloca i32, align 4
  %glc.addr = alloca %struct.getLangCtx*, align 8
  %tasters.addr = alloca %struct.taster*, align 8
  %n_tasters.addr = alloca i32, align 4
  %fallback.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %language = alloca i32, align 4
  %spec = alloca %struct.sVString*, align 8
  store %struct.getLangCtx* %glc, %struct.getLangCtx** %glc.addr, align 8
  store %struct.taster* %tasters, %struct.taster** %tasters.addr, align 8
  store i32 %n_tasters, i32* %n_tasters.addr, align 4
  store i32* %fallback, i32** %fallback.addr, align 8
  %0 = load i32*, i32** %fallback.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %fallback.addr, align 8
  store i32 -2, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_tasters.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %4, i32 0, i32 1
  %5 = load %struct._MIO*, %struct._MIO** %input, align 8
  call void @mio_rewind(%struct._MIO* %5)
  %6 = load %struct.taster*, %struct.taster** %tasters.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.taster, %struct.taster* %6, i64 %idxprom
  %taste = getelementptr inbounds %struct.taster, %struct.taster* %arrayidx, i32 0, i32 0
  %8 = load %struct.sVString* (%struct._MIO*)*, %struct.sVString* (%struct._MIO*)** %taste, align 8
  %9 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input1 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %9, i32 0, i32 1
  %10 = load %struct._MIO*, %struct._MIO** %input1, align 8
  %call = call %struct.sVString* %8(%struct._MIO* %10)
  store %struct.sVString* %call, %struct.sVString** %spec, align 8
  %11 = load %struct.sVString*, %struct.sVString** %spec, align 8
  %cmp2 = icmp ne %struct.sVString* null, %11
  br i1 %cmp2, label %if.then3, label %if.end13

if.then3:                                         ; preds = %for.body
  %12 = load %struct.taster*, %struct.taster** %tasters.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds %struct.taster, %struct.taster* %12, i64 %idxprom4
  %msg = getelementptr inbounds %struct.taster, %struct.taster* %arrayidx5, i32 0, i32 1
  %14 = load i8*, i8** %msg, align 8
  %15 = load %struct.sVString*, %struct.sVString** %spec, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %15, i32 0, i32 2
  %16 = load i8*, i8** %buffer, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8* %14, i8* %16)
  %17 = load %struct.sVString*, %struct.sVString** %spec, align 8
  %buffer6 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer6, align 8
  %19 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %20 = load i32*, i32** %fallback.addr, align 8
  %tobool7 = icmp ne i32* %20, null
  br i1 %tobool7, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then3
  %21 = load i32*, i32** %fallback.addr, align 8
  %22 = load i32, i32* %21, align 4
  %cmp8 = icmp eq i32 %22, -2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %23 = load i32*, i32** %fallback.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %23, %cond.true ], [ null, %cond.false ]
  %call9 = call i32 @getSpecLanguage(i8* %18, %struct.getLangCtx* %19, i32* %cond)
  store i32 %call9, i32* %language, align 4
  %24 = load %struct.sVString*, %struct.sVString** %spec, align 8
  call void @vStringDelete(%struct.sVString* %24)
  %25 = load i32, i32* %language, align 4
  %cmp10 = icmp ne i32 %25, -2
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %cond.end
  %26 = load i32, i32* %language, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %cond.end
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare void @eStatFree(%struct.fileStatus*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getSpecLanguageCommon(i8* %spec, %struct.getLangCtx* %glc, i32 (i8*, %struct.parserCandidate**)* %nominate, i32* %fallback) #0 {
entry:
  %spec.addr = alloca i8*, align 8
  %glc.addr = alloca %struct.getLangCtx*, align 8
  %nominate.addr = alloca i32 (i8*, %struct.parserCandidate**)*, align 8
  %fallback.addr = alloca i32*, align 8
  %language = alloca i32, align 4
  %candidates = alloca %struct.parserCandidate*, align 8
  %n_candidates = alloca i32, align 4
  %selector = alloca i8* (%struct._MIO*, i32*, i32)*, align 8
  %memStreamRequired = alloca i8, align 1
  %tmp_ = alloca %struct._MIO*, align 8
  store i8* %spec, i8** %spec.addr, align 8
  store %struct.getLangCtx* %glc, %struct.getLangCtx** %glc.addr, align 8
  store i32 (i8*, %struct.parserCandidate**)* %nominate, i32 (i8*, %struct.parserCandidate**)** %nominate.addr, align 8
  store i32* %fallback, i32** %fallback.addr, align 8
  %0 = load i32*, i32** %fallback.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %fallback.addr, align 8
  store i32 -2, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32 (i8*, %struct.parserCandidate**)*, i32 (i8*, %struct.parserCandidate**)** %nominate.addr, align 8
  %3 = load i8*, i8** %spec.addr, align 8
  %call = call i32 %2(i8* %3, %struct.parserCandidate** %candidates)
  store i32 %call, i32* %n_candidates, align 4
  %4 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %5 = load i32, i32* %n_candidates, align 4
  call void @verboseReportCandidate(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), %struct.parserCandidate* %4, i32 %5)
  %6 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %7 = load i32, i32* %n_candidates, align 4
  %call1 = call i32 @sortAndFilterParserCandidates(%struct.parserCandidate* %6, i32 %7)
  store i32 %call1, i32* %n_candidates, align 4
  %8 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %9 = load i32, i32* %n_candidates, align 4
  call void @verboseReportCandidate(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i64 0, i64 0), %struct.parserCandidate* %8, i32 %9)
  %10 = load i32, i32* %n_candidates, align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %11 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %11, i64 0
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  %12 = load i32, i32* %lang, align 8
  store i32 %12, i32* %language, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %n_candidates, align 4
  %cmp3 = icmp ugt i32 %13, 1
  br i1 %cmp3, label %if.then4, label %if.else50

if.then4:                                         ; preds = %if.else
  %14 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %15 = load i32, i32* %n_candidates, align 4
  %call5 = call i8* (%struct._MIO*, i32*, i32)* @commonSelector(%struct.parserCandidate* %14, i32 %15)
  store i8* (%struct._MIO*, i32*, i32)* %call5, i8* (%struct._MIO*, i32*, i32)** %selector, align 8
  %16 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %17 = load i32, i32* %n_candidates, align 4
  %call6 = call zeroext i1 @doesCandidatesRequireMemoryStream(%struct.parserCandidate* %16, i32 %17)
  %frombool = zext i1 %call6 to i8
  store i8 %frombool, i8* %memStreamRequired, align 1
  br label %do.body

do.body:                                          ; preds = %if.then4
  %18 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %18, i32 0, i32 1
  %19 = load %struct._MIO*, %struct._MIO** %input, align 8
  %tobool7 = icmp ne %struct._MIO* %19, null
  br i1 %tobool7, label %if.end20, label %if.then8

if.then8:                                         ; preds = %do.body
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  %20 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input10 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %20, i32 0, i32 1
  %21 = load %struct._MIO*, %struct._MIO** %input10, align 8
  %tobool11 = icmp ne %struct._MIO* %21, null
  br i1 %tobool11, label %if.end19, label %if.then12

if.then12:                                        ; preds = %do.body9
  %22 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %fileName = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %22, i32 0, i32 0
  %23 = load i8*, i8** %fileName, align 8
  %call13 = call %struct._MIO* @getMio(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i1 zeroext false)
  %24 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input14 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %24, i32 0, i32 1
  store %struct._MIO* %call13, %struct._MIO** %input14, align 8
  %25 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input15 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %25, i32 0, i32 1
  %26 = load %struct._MIO*, %struct._MIO** %input15, align 8
  %tobool16 = icmp ne %struct._MIO* %26, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then12
  %27 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %err = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %27, i32 0, i32 2
  store i8 1, i8* %err, align 8
  br label %fopen_error

if.end18:                                         ; preds = %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %do.body9
  br label %do.end

do.end:                                           ; preds = %if.end19
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body
  %28 = load i8, i8* %memStreamRequired, align 1
  %tobool21 = trunc i8 %28 to i1
  br i1 %tobool21, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end20
  %29 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input22 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %29, i32 0, i32 1
  %30 = load %struct._MIO*, %struct._MIO** %input22, align 8
  %call23 = call i8* @mio_memory_get_data(%struct._MIO* %30, i64* null)
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then25, label %if.end35

if.then25:                                        ; preds = %land.lhs.true
  %31 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input26 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %31, i32 0, i32 1
  %32 = load %struct._MIO*, %struct._MIO** %input26, align 8
  store %struct._MIO* %32, %struct._MIO** %tmp_, align 8
  %33 = load %struct._MIO*, %struct._MIO** %tmp_, align 8
  %call27 = call %struct._MIO* @mio_new_mio(%struct._MIO* %33, i64 0, i64 0)
  %34 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input28 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %34, i32 0, i32 1
  store %struct._MIO* %call27, %struct._MIO** %input28, align 8
  %35 = load %struct._MIO*, %struct._MIO** %tmp_, align 8
  %call29 = call i32 @mio_free(%struct._MIO* %35)
  %36 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input30 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %36, i32 0, i32 1
  %37 = load %struct._MIO*, %struct._MIO** %input30, align 8
  %tobool31 = icmp ne %struct._MIO* %37, null
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.then25
  %38 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %err33 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %38, i32 0, i32 2
  store i8 1, i8* %err33, align 8
  br label %fopen_error

if.end34:                                         ; preds = %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %land.lhs.true, %if.end20
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %39 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %selector, align 8
  %tobool37 = icmp ne i8* (%struct._MIO*, i32*, i32)* %39, null
  br i1 %tobool37, label %if.then38, label %if.else41

if.then38:                                        ; preds = %do.end36
  %40 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %selector, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i8* (%struct._MIO*, i32*, i32)* %40)
  %41 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %selector, align 8
  %42 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %input39 = getelementptr inbounds %struct.getLangCtx, %struct.getLangCtx* %42, i32 0, i32 1
  %43 = load %struct._MIO*, %struct._MIO** %input39, align 8
  %44 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %45 = load i32, i32* %n_candidates, align 4
  %call40 = call i32 @pickLanguageBySelection(i8* (%struct._MIO*, i32*, i32)* %41, %struct._MIO* %43, %struct.parserCandidate* %44, i32 %45)
  store i32 %call40, i32* %language, align 4
  br label %if.end42

if.else41:                                        ; preds = %do.end36
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0))
  br label %fopen_error

fopen_error:                                      ; preds = %if.else41, %if.then32, %if.then17
  store i32 -2, i32* %language, align 4
  br label %if.end42

if.end42:                                         ; preds = %fopen_error, %if.then38
  br label %do.body43

do.body43:                                        ; preds = %if.end42
  br label %do.end44

do.end44:                                         ; preds = %do.body43
  %46 = load i32*, i32** %fallback.addr, align 8
  %tobool45 = icmp ne i32* %46, null
  br i1 %tobool45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %do.end44
  %47 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %arrayidx47 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %47, i64 0
  %lang48 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx47, i32 0, i32 0
  %48 = load i32, i32* %lang48, align 8
  %49 = load i32*, i32** %fallback.addr, align 8
  store i32 %48, i32* %49, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %do.end44
  br label %if.end51

if.else50:                                        ; preds = %if.else
  store i32 -2, i32* %language, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.end49
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then2
  %50 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %51 = bitcast %struct.parserCandidate* %50 to i8*
  call void @eFree(i8* %51)
  store %struct.parserCandidate* null, %struct.parserCandidate** %candidates, align 8
  %52 = load i32, i32* %language, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nominateLanguageCandidatesForPattern(i8* %baseName, %struct.parserCandidate** %candidates) #0 {
entry:
  %baseName.addr = alloca i8*, align 8
  %candidates.addr = alloca %struct.parserCandidate**, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %spec = alloca i8*, align 8
  %specType = alloca i32, align 4
  store i8* %baseName, i8** %baseName.addr, align 8
  store %struct.parserCandidate** %candidates, %struct.parserCandidate*** %candidates.addr, align 8
  store i32 0, i32* %specType, align 4
  %0 = load i32, i32* @LanguageCount, align 4
  %call = call %struct.parserCandidate* @parserCandidateNew(i32 %0)
  %1 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  store %struct.parserCandidate* %call, %struct.parserCandidate** %1, align 8
  store i32 0, i32* %count, align 4
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %2, -2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %baseName.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call i32 @getPatternLanguageAndSpec(i8* %3, i32 %4, i8** %spec, i32* %specType)
  store i32 %call1, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %5, -2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %7 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  %8 = load %struct.parserCandidate*, %struct.parserCandidate** %7, align 8
  %9 = load i32, i32* %count, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %8, i64 %idxprom
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  store i32 %6, i32* %lang, align 8
  %10 = load i8*, i8** %spec, align 8
  %11 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  %12 = load %struct.parserCandidate*, %struct.parserCandidate** %11, align 8
  %13 = load i32, i32* %count, align 4
  %idxprom3 = zext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %12, i64 %idxprom3
  %spec5 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx4, i32 0, i32 1
  store i8* %10, i8** %spec5, align 8
  %14 = load i32, i32* %specType, align 4
  %15 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  %16 = load %struct.parserCandidate*, %struct.parserCandidate** %15, align 8
  %17 = load i32, i32* %count, align 4
  %inc6 = add i32 %17, 1
  store i32 %inc6, i32* %count, align 4
  %idxprom7 = zext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %16, i64 %idxprom7
  %specType9 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx8, i32 0, i32 2
  store i32 %14, i32* %specType9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %count, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @verboseReportCandidate(i8* %header, %struct.parserCandidate* %candidates, i32 %n_candidates) #0 {
entry:
  %header.addr = alloca i8*, align 8
  %candidates.addr = alloca %struct.parserCandidate*, align 8
  %n_candidates.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %header, i8** %header.addr, align 8
  store %struct.parserCandidate* %candidates, %struct.parserCandidate** %candidates.addr, align 8
  store i32 %n_candidates, i32* %n_candidates.addr, align 4
  %0 = load i8*, i8** %header.addr, align 8
  %1 = load i32, i32* %n_candidates.addr, align 4
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0), i8* %0, i32 %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_candidates.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %6 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %6, i64 %idxprom
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %lang, align 8
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i64 %idxprom1
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx2, i32 0, i32 0
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %name = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %11, i64 %idxprom3
  %specType = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx4, i32 0, i32 2
  %13 = load i32, i32* %specType, align 8
  %idxprom5 = zext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [4 x i8*], [4 x i8*]* @specTypeName, i64 0, i64 %idxprom5
  %14 = load i8*, i8** %arrayidx6, align 8
  %15 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %15, i64 %idxprom7
  %spec = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx8, i32 0, i32 1
  %17 = load i8*, i8** %spec, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0), i32 %4, i8* %10, i8* %14, i8* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @sortAndFilterParserCandidates(%struct.parserCandidate* %candidates, i32 %n_candidates) #0 {
entry:
  %retval = alloca i32, align 4
  %candidates.addr = alloca %struct.parserCandidate*, align 8
  %n_candidates.addr = alloca i32, align 4
  %highestSpecType = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.parserCandidate* %candidates, %struct.parserCandidate** %candidates.addr, align 8
  store i32 %n_candidates, i32* %n_candidates.addr, align 4
  %0 = load i32, i32* %n_candidates.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n_candidates.addr, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %3 = bitcast %struct.parserCandidate* %2 to i8*
  %4 = load i32, i32* %n_candidates.addr, align 4
  %conv = zext i32 %4 to i64
  call void @qsort(i8* %3, i64 %conv, i64 24, i32 (i8*, i8*)* @sortParserCandidatesBySpecType)
  %5 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %5, i64 0
  %specType = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %specType, align 8
  store i32 %6, i32* %highestSpecType, align 4
  store i32 1, i32* %r, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_candidates.addr, align 4
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %9, i64 %idxprom
  %specType4 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx3, i32 0, i32 2
  %11 = load i32, i32* %specType4, align 8
  %12 = load i32, i32* %highestSpecType, align 4
  %cmp5 = icmp eq i32 %11, %12
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %13 = load i32, i32* %r, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %r, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %14 = load i32, i32* %i, align 4
  %inc9 = add i32 %14, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %r, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i8* (%struct._MIO*, i32*, i32)* @commonSelector(%struct.parserCandidate* %candidates, i32 %n_candidates) #0 {
entry:
  %retval = alloca i8* (%struct._MIO*, i32*, i32)*, align 8
  %candidates.addr = alloca %struct.parserCandidate*, align 8
  %n_candidates.addr = alloca i32, align 4
  %selector = alloca i8* (%struct._MIO*, i32*, i32)**, align 8
  %i = alloca i32, align 4
  store %struct.parserCandidate* %candidates, %struct.parserCandidate** %candidates.addr, align 8
  store i32 %n_candidates, i32* %n_candidates.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %1, i64 0
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %lang, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx1, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 10
  %4 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  store i8* (%struct._MIO*, i32*, i32)** %4, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %5 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %cmp = icmp eq i8* (%struct._MIO*, i32*, i32)** %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i8* (%struct._MIO*, i32*, i32)* null, i8* (%struct._MIO*, i32*, i32)** %retval, align 8
  br label %return

if.end:                                           ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %6 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %7 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %6, align 8
  %tobool = icmp ne i8* (%struct._MIO*, i32*, i32)* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n_candidates.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %10, i64 %idxprom3
  %lang5 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx4, i32 0, i32 0
  %12 = load i32, i32* %lang5, align 8
  %13 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %14 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %13, align 8
  %call = call zeroext i1 @hasTheSameSelector(i32 %12, i8* (%struct._MIO*, i32*, i32)* %14)
  br i1 %call, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.body
  br label %for.end

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then6, %for.cond
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n_candidates.addr, align 4
  %cmp8 = icmp eq i32 %16, %17
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  %18 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %19 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %18, align 8
  store i8* (%struct._MIO*, i32*, i32)* %19, i8* (%struct._MIO*, i32*, i32)** %retval, align 8
  br label %return

if.end10:                                         ; preds = %for.end
  %20 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %incdec.ptr = getelementptr inbounds i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %20, i32 1
  store i8* (%struct._MIO*, i32*, i32)** %incdec.ptr, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* (%struct._MIO*, i32*, i32)* null, i8* (%struct._MIO*, i32*, i32)** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then9, %if.then
  %21 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %retval, align 8
  ret i8* (%struct._MIO*, i32*, i32)* %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesCandidatesRequireMemoryStream(%struct.parserCandidate* %candidates, i32 %n_candidates) #0 {
entry:
  %retval = alloca i1, align 1
  %candidates.addr = alloca %struct.parserCandidate*, align 8
  %n_candidates.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.parserCandidate* %candidates, %struct.parserCandidate** %candidates.addr, align 8
  store i32 %n_candidates, i32* %n_candidates.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n_candidates.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %2, i64 %idxprom
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %lang, align 8
  %call = call zeroext i1 @doesParserRequireMemoryStream(i32 %4)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

declare i8* @mio_memory_get_data(%struct._MIO*, i64*) #1

declare %struct._MIO* @mio_new_mio(%struct._MIO*, i64, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @pickLanguageBySelection(i8* (%struct._MIO*, i32*, i32)* %selector, %struct._MIO* %input, %struct.parserCandidate* %candidates, i32 %nCandidates) #0 {
entry:
  %retval = alloca i32, align 4
  %selector.addr = alloca i8* (%struct._MIO*, i32*, i32)*, align 8
  %input.addr = alloca %struct._MIO*, align 8
  %candidates.addr = alloca %struct.parserCandidate*, align 8
  %nCandidates.addr = alloca i32, align 4
  %lang = alloca i8*, align 8
  %cs = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* (%struct._MIO*, i32*, i32)* %selector, i8* (%struct._MIO*, i32*, i32)** %selector.addr, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store %struct.parserCandidate* %candidates, %struct.parserCandidate** %candidates.addr, align 8
  store i32 %nCandidates, i32* %nCandidates.addr, align 4
  %0 = load i32, i32* %nCandidates.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @eMalloc(i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %cs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nCandidates.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %4, i64 %idxprom
  %lang2 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %lang2, align 8
  %7 = load i32*, i32** %cs, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  store i32 %6, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %selector.addr, align 8
  %11 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %12 = load i32*, i32** %cs, align 8
  %13 = load i32, i32* %nCandidates.addr, align 4
  %call5 = call i8* %10(%struct._MIO* %11, i32* %12, i32 %13)
  store i8* %call5, i8** %lang, align 8
  %14 = load i32*, i32** %cs, align 8
  %15 = bitcast i32* %14 to i8*
  call void @eFree(i8* %15)
  %16 = load i8*, i8** %lang, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %17 = load i8*, i8** %lang, align 8
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0), i8* %17)
  %18 = load i8*, i8** %lang, align 8
  %call6 = call i32 @getNamedLanguage(i8* %18, i64 0)
  store i32 %call6, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end
  call void (i8*, ...) @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0))
  store i32 -2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @sortParserCandidatesBySpecType(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %ap = alloca %struct.parserCandidate*, align 8
  %bp = alloca %struct.parserCandidate*, align 8
  %la = alloca %struct.sParserDefinition*, align 8
  %lb = alloca %struct.sParserDefinition*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.parserCandidate*
  store %struct.parserCandidate* %1, %struct.parserCandidate** %ap, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.parserCandidate*
  store %struct.parserCandidate* %3, %struct.parserCandidate** %bp, align 8
  %4 = load %struct.parserCandidate*, %struct.parserCandidate** %ap, align 8
  %specType = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %4, i32 0, i32 2
  %5 = load i32, i32* %specType, align 8
  %6 = load %struct.parserCandidate*, %struct.parserCandidate** %bp, align 8
  %specType1 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %6, i32 0, i32 2
  %7 = load i32, i32* %specType1, align 8
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.parserCandidate*, %struct.parserCandidate** %ap, align 8
  %specType2 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %8, i32 0, i32 2
  %9 = load i32, i32* %specType2, align 8
  %10 = load %struct.parserCandidate*, %struct.parserCandidate** %bp, align 8
  %specType3 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %10, i32 0, i32 2
  %11 = load i32, i32* %specType3, align 8
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %if.then5, label %if.else10

if.then5:                                         ; preds = %if.else
  %12 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %13 = load %struct.parserCandidate*, %struct.parserCandidate** %ap, align 8
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %13, i32 0, i32 0
  %14 = load i32, i32* %lang, align 8
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %12, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %15 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %15, %struct.sParserDefinition** %la, align 8
  %16 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %17 = load %struct.parserCandidate*, %struct.parserCandidate** %bp, align 8
  %lang6 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %17, i32 0, i32 0
  %18 = load i32, i32* %lang6, align 8
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %16, i64 %idxprom7
  %def9 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx8, i32 0, i32 0
  %19 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def9, align 8
  store %struct.sParserDefinition* %19, %struct.sParserDefinition** %lb, align 8
  %20 = bitcast %struct.sParserDefinition** %la to i8*
  %21 = bitcast %struct.sParserDefinition** %lb to i8*
  %call = call i32 @compareParsersByName(i8* %20, i8* %21)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else10:                                        ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else10, %if.then5, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @hasTheSameSelector(i32 %lang, i8* (%struct._MIO*, i32*, i32)* %candidate_selector) #0 {
entry:
  %retval = alloca i1, align 1
  %lang.addr = alloca i32, align 4
  %candidate_selector.addr = alloca i8* (%struct._MIO*, i32*, i32)*, align 8
  %selector = alloca i8* (%struct._MIO*, i32*, i32)**, align 8
  store i32 %lang, i32* %lang.addr, align 4
  store i8* (%struct._MIO*, i32*, i32)* %candidate_selector, i8* (%struct._MIO*, i32*, i32)** %candidate_selector.addr, align 8
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %lang.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %selectLanguage = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 10
  %3 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selectLanguage, align 8
  store i8* (%struct._MIO*, i32*, i32)** %3, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %4 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %cmp = icmp eq i8* (%struct._MIO*, i32*, i32)** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.end
  %5 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %6 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %5, align 8
  %tobool = icmp ne i8* (%struct._MIO*, i32*, i32)* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %8 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %7, align 8
  %9 = load i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %candidate_selector.addr, align 8
  %cmp1 = icmp eq i8* (%struct._MIO*, i32*, i32)* %8, %9
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end3:                                          ; preds = %while.body
  %10 = load i8* (%struct._MIO*, i32*, i32)**, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  %incdec.ptr = getelementptr inbounds i8* (%struct._MIO*, i32*, i32)*, i8* (%struct._MIO*, i32*, i32)** %10, i32 1
  store i8* (%struct._MIO*, i32*, i32)** %incdec.ptr, i8* (%struct._MIO*, i32*, i32)*** %selector, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then2, %if.then
  %11 = load i1, i1* %retval, align 1
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.parserCandidate* @parserCandidateNew(i32 %count) #0 {
entry:
  %count.addr = alloca i32, align 4
  %candidates = alloca %struct.parserCandidate*, align 8
  %i = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* @LanguageCount, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 24
  %call = call i8* @eMalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.parserCandidate*
  store %struct.parserCandidate* %1, %struct.parserCandidate** %candidates, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @LanguageCount, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %4, i64 %idxprom
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  store i32 -2, i32* %lang, align 8
  %6 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %6, i64 %idxprom2
  %spec = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx3, i32 0, i32 1
  store i8* null, i8** %spec, align 8
  %8 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %8, i64 %idxprom4
  %specType = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx5, i32 0, i32 2
  store i32 0, i32* %specType, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.parserCandidate*, %struct.parserCandidate** %candidates, align 8
  ret %struct.parserCandidate* %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @getSpecLanguage(i8* %spec, %struct.getLangCtx* %glc, i32* %fallback) #0 {
entry:
  %spec.addr = alloca i8*, align 8
  %glc.addr = alloca %struct.getLangCtx*, align 8
  %fallback.addr = alloca i32*, align 8
  store i8* %spec, i8** %spec.addr, align 8
  store %struct.getLangCtx* %glc, %struct.getLangCtx** %glc.addr, align 8
  store i32* %fallback, i32** %fallback.addr, align 8
  %0 = load i8*, i8** %spec.addr, align 8
  %1 = load %struct.getLangCtx*, %struct.getLangCtx** %glc.addr, align 8
  %2 = load i32*, i32** %fallback.addr, align 8
  %call = call i32 @getSpecLanguageCommon(i8* %0, %struct.getLangCtx* %1, i32 (i8*, %struct.parserCandidate**)* @nominateLanguageCandidates, i32* %2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @nominateLanguageCandidates(i8* %key, %struct.parserCandidate** %candidates) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %candidates.addr = alloca %struct.parserCandidate**, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %spec = alloca i8*, align 8
  %specType = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store %struct.parserCandidate** %candidates, %struct.parserCandidate*** %candidates.addr, align 8
  store i8* null, i8** %spec, align 8
  store i32 0, i32* %specType, align 4
  %0 = load i32, i32* @LanguageCount, align 4
  %call = call %struct.parserCandidate* @parserCandidateNew(i32 %0)
  %1 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  store %struct.parserCandidate* %call, %struct.parserCandidate** %1, align 8
  store i32 0, i32* %count, align 4
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %2, -2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call i32 @getNameOrAliasesLanguageAndSpec(i8* %3, i32 %4, i8** %spec, i32* %specType)
  store i32 %call1, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %5, -2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %7 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  %8 = load %struct.parserCandidate*, %struct.parserCandidate** %7, align 8
  %9 = load i32, i32* %count, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %8, i64 %idxprom
  %lang = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx, i32 0, i32 0
  store i32 %6, i32* %lang, align 8
  %10 = load i8*, i8** %spec, align 8
  %11 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  %12 = load %struct.parserCandidate*, %struct.parserCandidate** %11, align 8
  %13 = load i32, i32* %count, align 4
  %idxprom3 = zext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %12, i64 %idxprom3
  %spec5 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx4, i32 0, i32 1
  store i8* %10, i8** %spec5, align 8
  %14 = load i32, i32* %specType, align 4
  %15 = load %struct.parserCandidate**, %struct.parserCandidate*** %candidates.addr, align 8
  %16 = load %struct.parserCandidate*, %struct.parserCandidate** %15, align 8
  %17 = load i32, i32* %count, align 4
  %inc6 = add i32 %17, 1
  store i32 %inc6, i32* %count, align 4
  %idxprom7 = zext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %16, i64 %idxprom7
  %specType9 = getelementptr inbounds %struct.parserCandidate, %struct.parserCandidate* %arrayidx8, i32 0, i32 2
  store i32 %14, i32* %specType9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %count, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @extractInterpreter(%struct._MIO* %input) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  %vLine = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %interpreter = alloca %struct.sVString*, align 8
  %lastSlash = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vLine, align 8
  %0 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  %1 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call1 = call i8* @readLineRaw(%struct.sVString* %0, %struct._MIO* %1)
  store i8* %call1, i8** %line, align 8
  store %struct.sVString* null, %struct.sVString** %interpreter, align 8
  %2 = load i8*, i8** %line, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 35
  br i1 %cmp2, label %land.lhs.true4, label %if.end16

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load i8*, i8** %line, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 33
  br i1 %cmp7, label %if.then, label %if.end16

if.then:                                          ; preds = %land.lhs.true4
  %7 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call9 = call %struct.sVString* @extractEmacsModeAtFirstLine(%struct._MIO* %7)
  store %struct.sVString* %call9, %struct.sVString** %interpreter, align 8
  %8 = load %struct.sVString*, %struct.sVString** %interpreter, align 8
  %tobool = icmp ne %struct.sVString* %8, null
  br i1 %tobool, label %if.end, label %if.then10

if.then10:                                        ; preds = %if.then
  %9 = load i8*, i8** %line, align 8
  %call11 = call i8* @strrchr(i8* %9, i32 47)
  store i8* %call11, i8** %lastSlash, align 8
  %10 = load i8*, i8** %lastSlash, align 8
  %cmp12 = icmp ne i8* %10, null
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %11 = load i8*, i8** %lastSlash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %12 = load i8*, i8** %line, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %12, i64 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %add.ptr14, %cond.false ]
  store i8* %cond, i8** %cmd, align 8
  %13 = load i8*, i8** %cmd, align 8
  %call15 = call %struct.sVString* @determineInterpreter(i8* %13)
  store %struct.sVString* %call15, %struct.sVString** %interpreter, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %if.end16

if.end16:                                         ; preds = %if.end, %land.lhs.true4, %land.lhs.true, %entry
  %14 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  call void @vStringDelete(%struct.sVString* %14)
  %15 = load %struct.sVString*, %struct.sVString** %interpreter, align 8
  ret %struct.sVString* %15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @extractZshAutoloadTag(%struct._MIO* %input) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call = call %struct.sVString* @extractMarkGeneric(%struct._MIO* %0, %struct.sVString* (i8*, i8*)* @determineZshAutoloadTag, i8* null)
  ret %struct.sVString* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @extractEmacsModeAtFirstLine(%struct._MIO* %input) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  %vLine = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %mode = alloca %struct.sVString*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vLine, align 8
  %0 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  %1 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call1 = call i8* @readLineRaw(%struct.sVString* %0, %struct._MIO* %1)
  store i8* %call1, i8** %line, align 8
  store %struct.sVString* null, %struct.sVString** %mode, align 8
  %2 = load i8*, i8** %line, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %line, align 8
  %call2 = call %struct.sVString* @determineEmacsModeAtFirstLine(i8* %3)
  store %struct.sVString* %call2, %struct.sVString** %mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  call void @vStringDelete(%struct.sVString* %4)
  %5 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %tobool = icmp ne %struct.sVString* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 0
  %7 = load i64, i64* %length, align 8
  %cmp3 = icmp eq i64 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.sVString*, %struct.sVString** %mode, align 8
  call void @vStringDelete(%struct.sVString* %8)
  store %struct.sVString* null, %struct.sVString** %mode, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %9 = load %struct.sVString*, %struct.sVString** %mode, align 8
  ret %struct.sVString* %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @extractEmacsModeLanguageAtEOF(%struct._MIO* %input) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  %mode = alloca %struct.sVString*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call = call i32 @mio_seek(%struct._MIO* %0, i64 -3000, i32 2)
  %1 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call1 = call %struct.sVString* @determineEmacsModeAtEOF(%struct._MIO* %1)
  store %struct.sVString* %call1, %struct.sVString** %mode, align 8
  %2 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %tobool = icmp ne %struct.sVString* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 0
  %4 = load i64, i64* %length, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.sVString*, %struct.sVString** %mode, align 8
  call void @vStringDelete(%struct.sVString* %5)
  store %struct.sVString* null, %struct.sVString** %mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.sVString*, %struct.sVString** %mode, align 8
  ret %struct.sVString* %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @extractVimFileType(%struct._MIO* %input) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  %filetype = alloca %struct.sVString*, align 8
  %ring = alloca [5 x %struct.sVString*], align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %prefix = alloca [3 x i8*], align 8
  %p = alloca i8*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store %struct.sVString* null, %struct.sVString** %filetype, align 8
  %0 = bitcast [3 x i8*]* %prefix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ([3 x i8*]* @__const.extractVimFileType.prefix to i8*), i64 24, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.sVString* @vStringNew()
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.sVString*], [5 x %struct.sVString*]* %ring, i64 0, i64 %idxprom
  store %struct.sVString* %call, %struct.sVString** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %4 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %4, 1
  store i32 %inc1, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [5 x %struct.sVString*], [5 x %struct.sVString*]* %ring, i64 0, i64 %idxprom2
  %5 = load %struct.sVString*, %struct.sVString** %arrayidx3, align 8
  %6 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call4 = call i8* @readLineRaw(%struct.sVString* %5, %struct._MIO* %6)
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %7, 5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %j, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %while.end
  %9 = load i32, i32* %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %j, align 4
  %10 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  store i32 4, i32* %j, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body
  store i32 0, i32* %k, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc33, %if.end9
  %11 = load i32, i32* %k, align 4
  %conv = zext i32 %11 to i64
  %cmp11 = icmp ult i64 %conv, 3
  br i1 %cmp11, label %for.body13, label %for.end35

for.body13:                                       ; preds = %for.cond10
  %12 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [5 x %struct.sVString*], [5 x %struct.sVString*]* %ring, i64 0, i64 %idxprom14
  %13 = load %struct.sVString*, %struct.sVString** %arrayidx15, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %13, i32 0, i32 2
  %14 = load i8*, i8** %buffer, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom16 = zext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %prefix, i64 0, i64 %idxprom16
  %16 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i8* @strstr(i8* %14, i8* %16)
  store i8* %call18, i8** %p, align 8
  %cmp19 = icmp ne i8* %call18, null
  br i1 %cmp19, label %if.then21, label %if.end32

if.then21:                                        ; preds = %for.body13
  %17 = load i32, i32* %k, align 4
  %idxprom22 = zext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %prefix, i64 0, i64 %idxprom22
  %18 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i64 @strlen(i8* %18)
  %19 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %call24
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc29, %if.then21
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = sext i8 %21 to i32
  %call27 = call i32 @isspace(i32 %conv26) #4
  %tobool = icmp ne i32 %call27, 0
  br i1 %tobool, label %for.body28, label %for.end30

for.body28:                                       ; preds = %for.cond25
  br label %for.inc29

for.inc29:                                        ; preds = %for.body28
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond25

for.end30:                                        ; preds = %for.cond25
  %23 = load i8*, i8** %p, align 8
  %call31 = call %struct.sVString* @determineVimFileType(i8* %23)
  store %struct.sVString* %call31, %struct.sVString** %filetype, align 8
  br label %for.end35

if.end32:                                         ; preds = %for.body13
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %24 = load i32, i32* %k, align 4
  %inc34 = add i32 %24, 1
  store i32 %inc34, i32* %k, align 4
  br label %for.cond10

for.end35:                                        ; preds = %for.end30, %for.cond10
  br label %do.cond

do.cond:                                          ; preds = %for.end35
  %25 = load i32, i32* %i, align 4
  %cmp36 = icmp eq i32 %25, 5
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.cond
  %26 = load i32, i32* %j, align 4
  %cmp38 = icmp ne i32 %26, 4
  br i1 %cmp38, label %land.rhs, label %land.end

cond.false:                                       ; preds = %do.cond
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %i, align 4
  %cmp40 = icmp ne i32 %27, %28
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false, %cond.true
  %29 = load %struct.sVString*, %struct.sVString** %filetype, align 8
  %tobool42 = icmp ne %struct.sVString* %29, null
  %lnot = xor i1 %tobool42, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %30 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ]
  br i1 %30, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  store i32 4, i32* %i, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc49, %do.end
  %31 = load i32, i32* %i, align 4
  %cmp44 = icmp sge i32 %31, 0
  br i1 %cmp44, label %for.body46, label %for.end51

for.body46:                                       ; preds = %for.cond43
  %32 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds [5 x %struct.sVString*], [5 x %struct.sVString*]* %ring, i64 0, i64 %idxprom47
  %33 = load %struct.sVString*, %struct.sVString** %arrayidx48, align 8
  call void @vStringDelete(%struct.sVString* %33)
  br label %for.inc49

for.inc49:                                        ; preds = %for.body46
  %34 = load i32, i32* %i, align 4
  %dec50 = add nsw i32 %34, -1
  store i32 %dec50, i32* %i, align 4
  br label %for.cond43

for.end51:                                        ; preds = %for.cond43
  %35 = load %struct.sVString*, %struct.sVString** %filetype, align 8
  %tobool52 = icmp ne %struct.sVString* %35, null
  br i1 %tobool52, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %for.end51
  %36 = load %struct.sVString*, %struct.sVString** %filetype, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 0
  %37 = load i64, i64* %length, align 8
  %cmp53 = icmp eq i64 %37, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true
  %38 = load %struct.sVString*, %struct.sVString** %filetype, align 8
  call void @vStringDelete(%struct.sVString* %38)
  store %struct.sVString* null, %struct.sVString** %filetype, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true, %for.end51
  %39 = load %struct.sVString*, %struct.sVString** %filetype, align 8
  ret %struct.sVString* %39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @extractPHPMark(%struct._MIO* %input) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  %0 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call = call %struct.sVString* @extractMarkGeneric(%struct._MIO* %0, %struct.sVString* (i8*, i8*)* @determinePHPMark, i8* null)
  ret %struct.sVString* %call
}

declare i8* @readLineRaw(%struct.sVString*, %struct._MIO*) #1

declare i8* @strrchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @determineInterpreter(i8* %cmd) #0 {
entry:
  %cmd.addr = alloca i8*, align 8
  %interpreter = alloca %struct.sVString*, align 8
  %p = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %cmd, i8** %cmd.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %interpreter, align 8
  %0 = load i8*, i8** %cmd.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %1 = load %struct.sVString*, %struct.sVString** %interpreter, align 8
  store %struct.sVString* %1, %struct.sVString** %vStringClear_s, align 8
  %2 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %3, i32 0, i32 2
  %4 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %call2 = call i32 @isspace(i32 %conv) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond3
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv6 = sext i8 %11 to i32
  %call7 = call i32 @isspace(i32 %conv6) #4
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond3
  %12 = phi i1 [ false, %for.cond3 ], [ %lnot, %land.rhs ]
  br i1 %12, label %for.body9, label %for.end13

for.body9:                                        ; preds = %land.end
  %13 = load %struct.sVString*, %struct.sVString** %interpreter, align 8
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv10 = sext i8 %15 to i32
  call void @vStringPut(%struct.sVString* %13, i32 %conv10)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8
  br label %for.cond3

for.end13:                                        ; preds = %land.end
  br label %do.cond

do.cond:                                          ; preds = %for.end13
  %17 = load %struct.sVString*, %struct.sVString** %interpreter, align 8
  %buffer14 = getelementptr inbounds %struct.sVString, %struct.sVString* %17, i32 0, i32 2
  %18 = load i8*, i8** %buffer14, align 8
  %call15 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0))
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %do.body, label %do.end18

do.end18:                                         ; preds = %do.cond
  %19 = load %struct.sVString*, %struct.sVString** %interpreter, align 8
  ret %struct.sVString* %19
}

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

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

declare void @vStringResize(%struct.sVString*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @extractMarkGeneric(%struct._MIO* %input, %struct.sVString* (i8*, i8*)* %determiner, i8* %data) #0 {
entry:
  %input.addr = alloca %struct._MIO*, align 8
  %determiner.addr = alloca %struct.sVString* (i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %vLine = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %mode = alloca %struct.sVString*, align 8
  store %struct._MIO* %input, %struct._MIO** %input.addr, align 8
  store %struct.sVString* (i8*, i8*)* %determiner, %struct.sVString* (i8*, i8*)** %determiner.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vLine, align 8
  %0 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  %1 = load %struct._MIO*, %struct._MIO** %input.addr, align 8
  %call1 = call i8* @readLineRaw(%struct.sVString* %0, %struct._MIO* %1)
  store i8* %call1, i8** %line, align 8
  store %struct.sVString* null, %struct.sVString** %mode, align 8
  %2 = load i8*, i8** %line, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sVString* (i8*, i8*)*, %struct.sVString* (i8*, i8*)** %determiner.addr, align 8
  %4 = load i8*, i8** %line, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call2 = call %struct.sVString* %3(i8* %4, i8* %5)
  store %struct.sVString* %call2, %struct.sVString** %mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  call void @vStringDelete(%struct.sVString* %6)
  %7 = load %struct.sVString*, %struct.sVString** %mode, align 8
  ret %struct.sVString* %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @determineZshAutoloadTag(i8* %modeline, i8* %data) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %modeline.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %modeline, i8** %modeline.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %modeline.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i64 8)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %modeline.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  %2 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %2 to i32
  %call1 = call i32 @isspace(i32 %conv) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %modeline.addr, align 8
  %call2 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0), i64 9)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** %modeline.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %4, i64 9
  %5 = load i8, i8* %add.ptr6, align 1
  %conv7 = sext i8 %5 to i32
  %call8 = call i32 @isspace(i32 %conv7) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %land.lhs.true5
  %6 = load i8*, i8** %modeline.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %6, i64 9
  %7 = load i8, i8* %add.ptr11, align 1
  %conv12 = sext i8 %7 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false10, %land.lhs.true5, %land.lhs.true
  %call15 = call %struct.sVString* @vStringNewInit(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0))
  store %struct.sVString* %call15, %struct.sVString** %retval, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false10, %lor.lhs.false
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @determineEmacsModeAtFirstLine(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %mode = alloca %struct.sVString*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store i8* %line, i8** %line.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %mode, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %call1 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0))
  store i8* %call1, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 3
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %call2 = call i32 @isspace(i32 %conv) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8
  %call3 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i64 5)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.end
  %7 = load i8*, i8** %p, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %7, i64 5
  store i8* %add.ptr7, i8** %p, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc13, %if.then6
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = sext i8 %9 to i32
  %call10 = call i32 @isspace(i32 %conv9) #4
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %for.body12, label %for.end15

for.body12:                                       ; preds = %for.cond8
  br label %for.inc13

for.inc13:                                        ; preds = %for.body12
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  br label %for.cond8

for.end15:                                        ; preds = %for.cond8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.end15
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv17 = sext i8 %12 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond16
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv20 = sext i8 %14 to i32
  %call21 = call zeroext i1 @isLanguageNameChar(i32 %conv20)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond16
  %15 = phi i1 [ false, %for.cond16 ], [ %call21, %land.rhs ]
  br i1 %15, label %for.body23, label %for.end27

for.body23:                                       ; preds = %land.end
  %16 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv24 = sext i8 %18 to i32
  call void @vStringPut(%struct.sVString* %16, i32 %conv24)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  br label %for.cond16

for.end27:                                        ; preds = %land.end
  br label %if.end59

if.else:                                          ; preds = %for.end
  %20 = load i8*, i8** %p, align 8
  %call28 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0))
  store i8* %call28, i8** %end, align 8
  %21 = load i8*, i8** %end, align 8
  %cmp29 = icmp eq i8* %21, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.else
  br label %out

if.end32:                                         ; preds = %if.else
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc43, %if.end32
  %22 = load i8*, i8** %p, align 8
  %23 = load i8*, i8** %end, align 8
  %cmp34 = icmp ult i8* %22, %23
  br i1 %cmp34, label %land.rhs36, label %land.end40

land.rhs36:                                       ; preds = %for.cond33
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv37 = sext i8 %25 to i32
  %call38 = call zeroext i1 @isLanguageNameChar(i32 %conv37)
  br label %land.end40

land.end40:                                       ; preds = %land.rhs36, %for.cond33
  %26 = phi i1 [ false, %for.cond33 ], [ %call38, %land.rhs36 ]
  br i1 %26, label %for.body41, label %for.end45

for.body41:                                       ; preds = %land.end40
  %27 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv42 = sext i8 %29 to i32
  call void @vStringPut(%struct.sVString* %27, i32 %conv42)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body41
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  br label %for.cond33

for.end45:                                        ; preds = %land.end40
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc51, %for.end45
  %31 = load i8*, i8** %p, align 8
  %32 = load i8, i8* %31, align 1
  %conv47 = sext i8 %32 to i32
  %call48 = call i32 @isspace(i32 %conv47) #4
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %for.body50, label %for.end53

for.body50:                                       ; preds = %for.cond46
  br label %for.inc51

for.inc51:                                        ; preds = %for.body50
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr52, i8** %p, align 8
  br label %for.cond46

for.end53:                                        ; preds = %for.cond46
  %34 = load i8*, i8** %p, align 8
  %call54 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i64 3)
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %for.end53
  br label %do.body

do.body:                                          ; preds = %if.then57
  %35 = load %struct.sVString*, %struct.sVString** %mode, align 8
  store %struct.sVString* %35, %struct.sVString** %vStringClear_s, align 8
  %36 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %36, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %37 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %37, i32 0, i32 2
  %38 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end58

if.end58:                                         ; preds = %do.end, %for.end53
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %for.end27
  %39 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %buffer60 = getelementptr inbounds %struct.sVString, %struct.sVString* %39, i32 0, i32 2
  %40 = load i8*, i8** %buffer60, align 8
  call void @toLowerString(i8* %40)
  br label %out

out:                                              ; preds = %if.end59, %if.then31, %if.then
  %41 = load %struct.sVString*, %struct.sVString** %mode, align 8
  ret %struct.sVString* %41
}

declare i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @isLanguageNameChar(i32 %c) #0 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 @isgraph(i32 %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %1, 39
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, 34
  br i1 %cmp1, label %if.then4, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp eq i32 %3, 59
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.then4
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

declare void @toLowerString(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isgraph(i32) #3

declare i32 @mio_seek(%struct._MIO*, i64, i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @determineEmacsModeAtEOF(%struct._MIO* %fp) #0 {
entry:
  %fp.addr = alloca %struct._MIO*, align 8
  %vLine = alloca %struct.sVString*, align 8
  %line = alloca i8*, align 8
  %headerFound = alloca i8, align 1
  %p = alloca i8*, align 8
  %mode = alloca %struct.sVString*, align 8
  %vStringClear_s = alloca %struct.sVString*, align 8
  store %struct._MIO* %fp, %struct._MIO** %fp.addr, align 8
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %vLine, align 8
  store i8 0, i8* %headerFound, align 1
  %call1 = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call1, %struct.sVString** %mode, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %0 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  %1 = load %struct._MIO*, %struct._MIO** %fp.addr, align 8
  %call2 = call i8* @readLineRaw(%struct.sVString* %0, %struct._MIO* %1)
  store i8* %call2, i8** %line, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %headerFound, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %3 = load i8*, i8** %line, align 8
  %call3 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0))
  store i8* %call3, i8** %p, align 8
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.sVString*, %struct.sVString** %mode, align 8
  store %struct.sVString* %4, %struct.sVString** %vStringClear_s, align 8
  %5 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %length = getelementptr inbounds %struct.sVString, %struct.sVString* %5, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %6 = load %struct.sVString*, %struct.sVString** %vStringClear_s, align 8
  %buffer = getelementptr inbounds %struct.sVString, %struct.sVString* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store i8 0, i8* %headerFound, align 1
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 5
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %call5 = call i32 @isspace(i32 %conv) #4
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.end
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond7
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %call12 = call zeroext i1 @isLanguageNameChar(i32 %conv11)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond7
  %16 = phi i1 [ false, %for.cond7 ], [ %call12, %land.rhs ]
  br i1 %16, label %for.body14, label %for.end18

for.body14:                                       ; preds = %land.end
  %17 = load %struct.sVString*, %struct.sVString** %mode, align 8
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv15 = sext i8 %19 to i32
  call void @vStringPut(%struct.sVString* %17, i32 %conv15)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body14
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8
  br label %for.cond7

for.end18:                                        ; preds = %land.end
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true, %while.body
  %21 = load i8, i8* %headerFound, align 1
  %tobool19 = trunc i8 %21 to i1
  br i1 %tobool19, label %land.lhs.true21, label %if.else25

land.lhs.true21:                                  ; preds = %if.else
  %22 = load i8*, i8** %line, align 8
  %call22 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0))
  store i8* %call22, i8** %p, align 8
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %land.lhs.true21
  store i8 0, i8* %headerFound, align 1
  br label %if.end29

if.else25:                                        ; preds = %land.lhs.true21, %if.else
  %23 = load i8*, i8** %line, align 8
  %call26 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i64 0, i64 0))
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.else25
  store i8 1, i8* %headerFound, align 1
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.else25
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %for.end18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct.sVString*, %struct.sVString** %vLine, align 8
  call void @vStringDelete(%struct.sVString* %24)
  %25 = load %struct.sVString*, %struct.sVString** %mode, align 8
  ret %struct.sVString* %25
}

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @determineVimFileType(i8* %modeline) #0 {
entry:
  %modeline.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %filetype_prefix = alloca [2 x i8*], align 8
  %filetype = alloca %struct.sVString*, align 8
  store i8* %modeline, i8** %modeline.addr, align 8
  %0 = bitcast [2 x i8*]* %filetype_prefix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ([2 x i8*]* @__const.determineVimFileType.filetype_prefix to i8*), i64 16, i1 false)
  %call = call %struct.sVString* @vStringNew()
  store %struct.sVString* %call, %struct.sVString** %filetype, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %1 = load i32, i32* %i, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %modeline.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %filetype_prefix, i64 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call2 = call i8* @strrstr(i8* %2, i8* %4)
  store i8* %call2, i8** %p, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc16

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %filetype_prefix, i64 0, i64 %idxprom5
  %6 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %6)
  %7 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %call7
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond8
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %call13 = call i32 @isalnum(i32 %conv12) #4
  %tobool = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond8
  %12 = phi i1 [ false, %for.cond8 ], [ %tobool, %land.rhs ]
  br i1 %12, label %for.body14, label %for.end

for.body14:                                       ; preds = %land.end
  %13 = load %struct.sVString*, %struct.sVString** %filetype, align 8
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv15 = sext i8 %15 to i32
  call void @vStringPut(%struct.sVString* %13, i32 %conv15)
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond8

for.end:                                          ; preds = %land.end
  br label %for.end17

for.inc16:                                        ; preds = %if.then
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end17:                                        ; preds = %for.end, %for.cond
  %18 = load %struct.sVString*, %struct.sVString** %filetype, align 8
  ret %struct.sVString* %18
}

declare i8* @strrstr(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sVString* @determinePHPMark(i8* %modeline, i8* %data) #0 {
entry:
  %retval = alloca %struct.sVString*, align 8
  %modeline.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %modeline, i8** %modeline.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %modeline.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i64 5)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct.sVString* @vStringNewInit(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0))
  store %struct.sVString* %call1, %struct.sVString** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store %struct.sVString* null, %struct.sVString** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load %struct.sVString*, %struct.sVString** %retval, align 8
  ret %struct.sVString* %1
}

declare zeroext i1 @stringListDeleteItemExtension(%struct.sPtrArray*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @installKeywordTable(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %keywordTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 18
  %4 = load %struct.keywordTable*, %struct.keywordTable** %keywordTable, align 8
  %cmp = icmp ne %struct.keywordTable* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %keywordCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 19
  %7 = load i32, i32* %keywordCount, align 8
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %keywordTable2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 18
  %9 = load %struct.keywordTable*, %struct.keywordTable** %keywordTable2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct.keywordTable, %struct.keywordTable* %9, i64 %idxprom3
  %name = getelementptr inbounds %struct.keywordTable, %struct.keywordTable* %arrayidx4, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load i32, i32* %language.addr, align 4
  %13 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %keywordTable5 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %13, i32 0, i32 18
  %14 = load %struct.keywordTable*, %struct.keywordTable** %keywordTable5, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds %struct.keywordTable, %struct.keywordTable* %14, i64 %idxprom6
  %id = getelementptr inbounds %struct.keywordTable, %struct.keywordTable* %arrayidx7, i32 0, i32 1
  %16 = load i32, i32* %id, align 8
  call void @addKeyword(i8* %11, i32 %12, i32 %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @installTagXpathTable(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagXpathTableTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 20
  %4 = load %struct.sTagXpathTableTable*, %struct.sTagXpathTableTable** %tagXpathTableTable, align 8
  %cmp = icmp ne %struct.sTagXpathTableTable* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagXpathTableCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 21
  %7 = load i32, i32* %tagXpathTableCount, align 8
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagXpathTableTable3 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 20
  %10 = load %struct.sTagXpathTableTable*, %struct.sTagXpathTableTable** %tagXpathTableTable3, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct.sTagXpathTableTable, %struct.sTagXpathTableTable* %10, i64 %idxprom4
  %count = getelementptr inbounds %struct.sTagXpathTableTable, %struct.sTagXpathTableTable* %arrayidx5, i32 0, i32 1
  %12 = load i32, i32* %count, align 8
  %cmp6 = icmp ult i32 %8, %12
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond2
  %13 = load i32, i32* %language.addr, align 4
  %14 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagXpathTableTable8 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %14, i32 0, i32 20
  %15 = load %struct.sTagXpathTableTable*, %struct.sTagXpathTableTable** %tagXpathTableTable8, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds %struct.sTagXpathTableTable, %struct.sTagXpathTableTable* %15, i64 %idxprom9
  %table = getelementptr inbounds %struct.sTagXpathTableTable, %struct.sTagXpathTableTable* %arrayidx10, i32 0, i32 0
  %17 = load %struct.sTagXpathTable*, %struct.sTagXpathTable** %table, align 8
  %18 = load i32, i32* %j, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct.sTagXpathTable, %struct.sTagXpathTable* %17, i64 %idx.ext
  call void @addTagXpath(i32 %13, %struct.sTagXpathTable* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %19 = load i32, i32* %j, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc12 = add i32 %20, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  %21 = load i32, i32* %language.addr, align 4
  call void @useXpathMethod(i32 %21)
  br label %if.end

if.end:                                           ; preds = %for.end13, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @installFieldDefinition(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %parser = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %parser, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %fieldTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 23
  %4 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fieldTable, align 8
  %cmp = icmp ne %struct.sFieldDefinition* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %fieldCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 24
  %7 = load i32, i32* %fieldCount, align 8
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %fieldTable2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 23
  %9 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fieldTable2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %9, i64 %idxprom3
  %11 = load i32, i32* %language.addr, align 4
  %call = call i32 @defineField(%struct.sFieldDefinition* %arrayidx4, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @installXtagDefinition(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %parser = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %parser, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %xtagTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 25
  %4 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xtagTable, align 8
  %cmp = icmp ne %struct.sXtagDefinition* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %xtagCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %6, i32 0, i32 26
  %7 = load i32, i32* %xtagCount, align 8
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser, align 8
  %xtagTable2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 25
  %9 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xtagTable2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %9, i64 %idxprom3
  %11 = load i32, i32* %language.addr, align 4
  %call = call i32 @defineXtag(%struct.sXtagDefinition* %arrayidx4, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @installTagRegexTable(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  %lang = alloca %struct.sParserDefinition*, align 8
  %i = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 0
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %3, %struct.sParserDefinition** %lang, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 16
  %5 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable, align 8
  %cmp = icmp ne %struct.tagRegexTable* %5, null
  br i1 %cmp, label %if.then, label %if.end40

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 17
  %8 = load i32, i32* %tagRegexCount, align 8
  %cmp1 = icmp ult i32 %6, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 16
  %10 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable2, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %10, i64 %idxprom
  %mline = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx, i32 0, i32 5
  %12 = load i8, i8* %mline, align 8
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %13 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %lregexControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %13, i32 0, i32 9
  %14 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock, align 8
  %15 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable4 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %15, i32 0, i32 16
  %16 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable4, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %16, i64 %idxprom5
  %regex = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx6, i32 0, i32 0
  %18 = load i8*, i8** %regex, align 8
  %19 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable7 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %19, i32 0, i32 16
  %20 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable7, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %20, i64 %idxprom8
  %name = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx9, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  %23 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable10 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %23, i32 0, i32 16
  %24 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable10, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %25 to i64
  %arrayidx12 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %24, i64 %idxprom11
  %kinds = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx12, i32 0, i32 2
  %26 = load i8*, i8** %kinds, align 8
  %27 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable13 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %27, i32 0, i32 16
  %28 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable13, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %29 to i64
  %arrayidx15 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %28, i64 %idxprom14
  %flags = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx15, i32 0, i32 3
  %30 = load i8*, i8** %flags, align 8
  %31 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable16 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %31, i32 0, i32 16
  %32 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable16, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %33 to i64
  %arrayidx18 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %32, i64 %idxprom17
  %disabled = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx18, i32 0, i32 4
  %34 = load i8*, i8** %disabled, align 8
  call void @addTagMultiLineRegex(%struct.lregexControlBlock* %14, i8* %18, i8* %22, i8* %26, i8* %30, i8* %34)
  br label %if.end

if.else:                                          ; preds = %for.body
  %35 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %lregexControlBlock19 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %35, i32 0, i32 9
  %36 = load %struct.lregexControlBlock*, %struct.lregexControlBlock** %lregexControlBlock19, align 8
  %37 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable20 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %37, i32 0, i32 16
  %38 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable20, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %39 to i64
  %arrayidx22 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %38, i64 %idxprom21
  %regex23 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx22, i32 0, i32 0
  %40 = load i8*, i8** %regex23, align 8
  %41 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable24 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %41, i32 0, i32 16
  %42 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable24, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom25 = zext i32 %43 to i64
  %arrayidx26 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %42, i64 %idxprom25
  %name27 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx26, i32 0, i32 1
  %44 = load i8*, i8** %name27, align 8
  %45 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable28 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %45, i32 0, i32 16
  %46 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable28, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom29 = zext i32 %47 to i64
  %arrayidx30 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %46, i64 %idxprom29
  %kinds31 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx30, i32 0, i32 2
  %48 = load i8*, i8** %kinds31, align 8
  %49 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable32 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %49, i32 0, i32 16
  %50 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable32, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %51 to i64
  %arrayidx34 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %50, i64 %idxprom33
  %flags35 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx34, i32 0, i32 3
  %52 = load i8*, i8** %flags35, align 8
  %53 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %tagRegexTable36 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %53, i32 0, i32 16
  %54 = load %struct.tagRegexTable*, %struct.tagRegexTable** %tagRegexTable36, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom37 = zext i32 %55 to i64
  %arrayidx38 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %54, i64 %idxprom37
  %disabled39 = getelementptr inbounds %struct.tagRegexTable, %struct.tagRegexTable* %arrayidx38, i32 0, i32 4
  %56 = load i8*, i8** %disabled39, align 8
  call void @addTagRegex(%struct.lregexControlBlock* %36, i8* %40, i8* %44, i8* %48, i8* %52, i8* %56)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %57 = load i32, i32* %i, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end40

if.end40:                                         ; preds = %for.end, %do.end
  ret void
}

declare void @initializeDependencies(%struct.sParserDefinition*, %struct.slaveControlBlock*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @lazyInitialize(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %def = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def1 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def1, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %def, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @doNothing, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 11
  %5 = load i32, i32* %method, align 8
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %do.end
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %call = call zeroext i1 @optlibIsDedicatedSubparser(%struct.sParserDefinition* %6)
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser3 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 8
  store void ()* @optlibRunBaseParser, void ()** %parser3, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser4 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %8, i32 0, i32 8
  store void ()* @findRegexTags, void ()** %parser4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %do.end
  ret void
}

declare void @addKeyword(i8*, i32, i32) #1

declare void @addTagXpath(i32, %struct.sTagXpathTable*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @useXpathMethod(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %method = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 11
  %4 = load i32, i32* %method, align 8
  %or = or i32 %4, 4
  store i32 %or, i32* %method, align 8
  ret void
}

declare i32 @defineField(%struct.sFieldDefinition*, i32) #1

declare i32 @defineXtag(%struct.sXtagDefinition*, i32) #1

declare void @addTagMultiLineRegex(%struct.lregexControlBlock*, i8*, i8*, i8*, i8*, i8*) #1

declare void @addTagRegex(%struct.lregexControlBlock*, i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @doNothing() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @optlibIsDedicatedSubparser(%struct.sParserDefinition* %def) #0 {
entry:
  %def.addr = alloca %struct.sParserDefinition*, align 8
  store %struct.sParserDefinition* %def, %struct.sParserDefinition** %def.addr, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 27
  %1 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies, align 8
  %tobool = icmp ne %struct.sParserDependency* %1, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %dependencies1 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 27
  %3 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies1, align 8
  %type = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def.addr, align 8
  %dependencies2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 27
  %6 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies2, align 8
  %data = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %6, i32 0, i32 2
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct.sSubparser*
  %direction = getelementptr inbounds %struct.sSubparser, %struct.sSubparser* %8, i32 0, i32 4
  %9 = load i32, i32* %direction, align 4
  %and = and i32 %9, 2
  %tobool3 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool3, %land.rhs ]
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @optlibRunBaseParser() #0 {
entry:
  call void @scheduleRunningBaseparser(i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sParserDefinition* @CTagsSelfTestParser() #0 {
entry:
  %def = alloca %struct.sParserDefinition*, align 8
  %call = call %struct.sParserDefinition* @parserNew(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i64 0, i64 0))
  store %struct.sParserDefinition* %call, %struct.sParserDefinition** %def, align 8
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %extensions = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 3
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @CTagsSelfTestParser.extensions, i64 0, i64 0), i8*** %extensions, align 8
  %1 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindTable = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %1, i32 0, i32 1
  store %struct.sKindDefinition* getelementptr inbounds ([8 x %struct.sKindDefinition], [8 x %struct.sKindDefinition]* @CTST_Kinds, i64 0, i64 0), %struct.sKindDefinition** %kindTable, align 8
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %kindCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 2
  store i32 8, i32* %kindCount, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 8
  store void ()* @createCTSTTags, void ()** %parser, align 8
  %4 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %invisible = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %4, i32 0, i32 22
  store i8 1, i8* %invisible, align 4
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %useMemoryStreamInput = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 13
  store i8 1, i8* %useMemoryStreamInput, align 1
  %6 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  ret %struct.sParserDefinition* %6
}

declare %struct.sParserDefinition* @AdaParser() #1

declare %struct.sParserDefinition* @AntParser() #1

declare %struct.sParserDefinition* @AsmParser() #1

declare %struct.sParserDefinition* @AspParser() #1

declare %struct.sParserDefinition* @AutoconfParser() #1

declare %struct.sParserDefinition* @AutoItParser() #1

declare %struct.sParserDefinition* @AutomakeParser() #1

declare %struct.sParserDefinition* @AwkParser() #1

declare %struct.sParserDefinition* @BasicParser() #1

declare %struct.sParserDefinition* @BetaParser() #1

declare %struct.sParserDefinition* @ClojureParser() #1

declare %struct.sParserDefinition* @CParser() #1

declare %struct.sParserDefinition* @CppParser() #1

declare %struct.sParserDefinition* @CPreProParser() #1

declare %struct.sParserDefinition* @CssParser() #1

declare %struct.sParserDefinition* @CsharpParser() #1

declare %struct.sParserDefinition* @CtagsParser() #1

declare %struct.sParserDefinition* @CobolParser() #1

declare %struct.sParserDefinition* @CUDAParser() #1

declare %struct.sParserDefinition* @DParser() #1

declare %struct.sParserDefinition* @DiffParser() #1

declare %struct.sParserDefinition* @DtdParser() #1

declare %struct.sParserDefinition* @DTSParser() #1

declare %struct.sParserDefinition* @DosBatchParser() #1

declare %struct.sParserDefinition* @EiffelParser() #1

declare %struct.sParserDefinition* @ElmParser() #1

declare %struct.sParserDefinition* @ErlangParser() #1

declare %struct.sParserDefinition* @FalconParser() #1

declare %struct.sParserDefinition* @FlexParser() #1

declare %struct.sParserDefinition* @FortranParser() #1

declare %struct.sParserDefinition* @GdbinitParser() #1

declare %struct.sParserDefinition* @GoParser() #1

declare %struct.sParserDefinition* @HtmlParser() #1

declare %struct.sParserDefinition* @IniconfParser() #1

declare %struct.sParserDefinition* @ITclParser() #1

declare %struct.sParserDefinition* @JavaParser() #1

declare %struct.sParserDefinition* @JavaPropertiesParser() #1

declare %struct.sParserDefinition* @JavaScriptParser() #1

declare %struct.sParserDefinition* @JsonParser() #1

declare %struct.sParserDefinition* @LdScriptParser() #1

declare %struct.sParserDefinition* @LispParser() #1

declare %struct.sParserDefinition* @LuaParser() #1

declare %struct.sParserDefinition* @M4Parser() #1

declare %struct.sParserDefinition* @ManParser() #1

declare %struct.sParserDefinition* @MakefileParser() #1

declare %struct.sParserDefinition* @MatLabParser() #1

declare %struct.sParserDefinition* @MyrddinParser() #1

declare %struct.sParserDefinition* @ObjcParser() #1

declare %struct.sParserDefinition* @OldCppParser() #1

declare %struct.sParserDefinition* @OldCParser() #1

declare %struct.sParserDefinition* @OcamlParser() #1

declare %struct.sParserDefinition* @PasswdParser() #1

declare %struct.sParserDefinition* @PascalParser() #1

declare %struct.sParserDefinition* @PerlParser() #1

declare %struct.sParserDefinition* @Perl6Parser() #1

declare %struct.sParserDefinition* @PhpParser() #1

declare %struct.sParserDefinition* @PodParser() #1

declare %struct.sParserDefinition* @ProtobufParser() #1

declare %struct.sParserDefinition* @PuppetManifestParser() #1

declare %struct.sParserDefinition* @PythonParser() #1

declare %struct.sParserDefinition* @PythonLoggingConfigParser() #1

declare %struct.sParserDefinition* @QemuHXParser() #1

declare %struct.sParserDefinition* @QtMocParser() #1

declare %struct.sParserDefinition* @RParser() #1

declare %struct.sParserDefinition* @RSpecParser() #1

declare %struct.sParserDefinition* @RexxParser() #1

declare %struct.sParserDefinition* @RobotParser() #1

declare %struct.sParserDefinition* @RpmSpecParser() #1

declare %struct.sParserDefinition* @RstParser() #1

declare %struct.sParserDefinition* @RubyParser() #1

declare %struct.sParserDefinition* @RustParser() #1

declare %struct.sParserDefinition* @SchemeParser() #1

declare %struct.sParserDefinition* @ShParser() #1

declare %struct.sParserDefinition* @SlangParser() #1

declare %struct.sParserDefinition* @SmlParser() #1

declare %struct.sParserDefinition* @SqlParser() #1

declare %struct.sParserDefinition* @SystemdUnitParser() #1

declare %struct.sParserDefinition* @TclParser() #1

declare %struct.sParserDefinition* @TclOOParser() #1

declare %struct.sParserDefinition* @TexParser() #1

declare %struct.sParserDefinition* @TTCNParser() #1

declare %struct.sParserDefinition* @VeraParser() #1

declare %struct.sParserDefinition* @VerilogParser() #1

declare %struct.sParserDefinition* @SystemVerilogParser() #1

declare %struct.sParserDefinition* @UCtagsAspellParser() #1

declare %struct.sParserDefinition* @VhdlParser() #1

declare %struct.sParserDefinition* @VimParser() #1

declare %struct.sParserDefinition* @WindResParser() #1

declare %struct.sParserDefinition* @YaccParser() #1

declare %struct.sParserDefinition* @YumRepoParser() #1

declare %struct.sParserDefinition* @ZephirParser() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @createCTSTTags() #0 {
entry:
  %i = alloca i32, align 4
  %line = alloca i8*, align 8
  %e = alloca %struct.sTagEntryInfo, align 8
  %lb = alloca i64, align 8
  %le = alloca i64, align 8
  %found_enabled_disabled = alloca [2 x i32], align 4
  %c = alloca i32, align 4
  %role = alloca i32, align 4
  %name = alloca i8*, align 8
  store i64 0, i64* %lb, align 8
  store i64 0, i64* %le, align 8
  %0 = bitcast [2 x i32]* %found_enabled_disabled to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call = call i8* @readLineFromInputFile()
  store i8* %call, i8** %line, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %3, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [8 x %struct.sKindDefinition], [8 x %struct.sKindDefinition]* @CTST_Kinds, i64 0, i64 %idxprom
  %letter = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %arrayidx3, i32 0, i32 1
  %6 = load i8, i8* %letter, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %4, %conv4
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %cmp7 = icmp ne i32 %7, 1
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %8 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %8, 64
  br i1 %cmp9, label %land.lhs.true11, label %if.end63

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %i, align 4
  %cmp12 = icmp eq i32 %9, 1
  br i1 %cmp12, label %if.then, label %if.end63

if.then:                                          ; preds = %land.lhs.true11, %land.lhs.true
  %10 = load i32, i32* %i, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb18
    i32 3, label %sw.bb20
    i32 4, label %sw.bb23
    i32 5, label %sw.bb25
    i32 6, label %sw.bb29
    i32 7, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load i32, i32* %i, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.110, i64 0, i64 0), i32 %11)
  %extensionFields = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeKindIndex = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields, i32 0, i32 5
  store i32 0, i32* %scopeKindIndex, align 4
  %extensionFields14 = getelementptr inbounds %struct.sTagEntryInfo, %struct.sTagEntryInfo* %e, i32 0, i32 11
  %scopeName = getelementptr inbounds %struct.anon, %struct.anon* %extensionFields14, i32 0, i32 6
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0), i8** %scopeName, align 8
  %call15 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.then
  %12 = load i32, i32* %i, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i64 0, i64 0), i32 %12)
  %call17 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then
  %13 = load i32, i32* %i, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.113, i64 0, i64 0), i32 %13)
  %call19 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.then
  %14 = load i64, i64* %lb, align 8
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %if.end, label %if.then21

if.then21:                                        ; preds = %sw.bb20
  %15 = load i32, i32* %i, align 4
  call void @initTagEntry(%struct.sTagEntryInfo* %e, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i64 0, i64 0), i32 %15)
  %call22 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %if.end

if.end:                                           ; preds = %if.then21, %sw.bb20
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then
  %call24 = call i64 @getInputLineNumber()
  store i64 %call24, i64* %lb, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then
  %call26 = call i64 @getInputLineNumber()
  store i64 %call26, i64* %le, align 8
  %16 = load i64, i64* %lb, align 8
  %add = add i64 %16, 1
  %17 = load i64, i64* %le, align 8
  %18 = load i64, i64* %lb, align 8
  %add27 = add i64 %18, 1
  %call28 = call i32 @makePromise(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i64 0, i64 0), i64 %add, i64 0, i64 %17, i64 0, i64 %add27)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.then, %if.then
  %19 = load i32, i32* %i, align 4
  %cmp30 = icmp eq i32 %19, 6
  %conv31 = zext i1 %cmp30 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %found_enabled_disabled, i64 0, i64 %idxprom32
  %20 = load i32, i32* %arrayidx33, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %20, 0
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.bb29
  store i32 -1, i32* %role, align 4
  %21 = load i32, i32* %i, align 4
  %cmp37 = icmp eq i32 %21, 6
  %22 = zext i1 %cmp37 to i64
  %cond = select i1 %cmp37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.116, i64 0, i64 0)
  store i8* %cond, i8** %name, align 8
  br label %if.end61

if.else:                                          ; preds = %sw.bb29
  %23 = load i32, i32* %i, align 4
  %cmp39 = icmp eq i32 %23, 6
  %conv40 = zext i1 %cmp39 to i32
  %idxprom41 = sext i32 %conv40 to i64
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %found_enabled_disabled, i64 0, i64 %idxprom41
  %24 = load i32, i32* %arrayidx42, align 4
  %inc43 = add nsw i32 %24, 1
  store i32 %inc43, i32* %arrayidx42, align 4
  %cmp44 = icmp eq i32 %24, 1
  br i1 %cmp44, label %if.then46, label %if.else53

if.then46:                                        ; preds = %if.else
  %25 = load i32, i32* %i, align 4
  %cmp47 = icmp eq i32 %25, 6
  %26 = zext i1 %cmp47 to i64
  %cond49 = select i1 %cmp47, i32 0, i32 0
  store i32 %cond49, i32* %role, align 4
  %27 = load i32, i32* %i, align 4
  %cmp50 = icmp eq i32 %27, 6
  %28 = zext i1 %cmp50 to i64
  %cond52 = select i1 %cmp50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i64 0, i64 0)
  store i8* %cond52, i8** %name, align 8
  br label %if.end60

if.else53:                                        ; preds = %if.else
  %29 = load i32, i32* %i, align 4
  %cmp54 = icmp eq i32 %29, 6
  %30 = zext i1 %cmp54 to i64
  %cond56 = select i1 %cmp54, i32 1, i32 1
  store i32 %cond56, i32* %role, align 4
  %31 = load i32, i32* %i, align 4
  %cmp57 = icmp eq i32 %31, 6
  %32 = zext i1 %cmp57 to i64
  %cond59 = select i1 %cmp57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.119, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.120, i64 0, i64 0)
  store i8* %cond59, i8** %name, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else53, %if.then46
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then36
  %33 = load i8*, i8** %name, align 8
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %role, align 4
  call void @initRefTagEntry(%struct.sTagEntryInfo* %e, i8* %33, i32 %34, i32 %35)
  %call62 = call i32 @makeTagEntry(%struct.sTagEntryInfo* %e)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end61, %sw.bb25, %sw.bb23, %if.end, %sw.bb18, %sw.bb16, %sw.bb
  br label %if.end63

if.end63:                                         ; preds = %sw.epilog, %land.lhs.true11, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %36 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %36, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @readLineFromInputFile() #1

declare i64 @getInputLineNumber() #1

declare void @hashTablePutItem(%struct.sHashTable*, i8*, i8*) #1

declare %struct.kindControlBlock* @allocKindControlBlock(%struct.sParserDefinition*) #1

declare %struct.slaveControlBlock* @allocSlaveControlBlock(%struct.sParserDefinition*) #1

declare %struct.lregexControlBlock* @allocLregexControlBlock(%struct.sParserDefinition*) #1

declare void @linkDependencyAtInitializeParsing(i32, %struct.sParserDefinition*, %struct.slaveControlBlock*, %struct.kindControlBlock*, %struct.sParserDefinition*, %struct.kindControlBlock*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_lang_def_flag_base_long(i8* %optflag, i8* %param, i8* %data) #0 {
entry:
  %optflag.addr = alloca i8*, align 8
  %param.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %flag_data = alloca %struct.preLangDefFlagData*, align 8
  %base = alloca i32, align 4
  store i8* %optflag, i8** %optflag.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.preLangDefFlagData*
  store %struct.preLangDefFlagData* %1, %struct.preLangDefFlagData** %flag_data, align 8
  %2 = load i8*, i8** %param.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %optflag.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.134, i64 0, i64 0), i8* %4)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %param.addr, align 8
  %call = call i32 @getNamedLanguage(i8* %5, i64 0)
  store i32 %call, i32* %base, align 4
  %6 = load i32, i32* %base, align 4
  %cmp2 = icmp eq i32 %6, -2
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load i8*, i8** %param.addr, align 8
  %8 = load i8*, i8** %optflag.addr, align 8
  call void (i32, i8*, ...) @error(i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.135, i64 0, i64 0), i8* %7, i8* %8)
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load i8*, i8** %param.addr, align 8
  %call6 = call i8* @eStrdup(i8* %9)
  %10 = load %struct.preLangDefFlagData*, %struct.preLangDefFlagData** %flag_data, align 8
  %base7 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %10, i32 0, i32 0
  store i8* %call6, i8** %base7, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @pre_lang_def_flag_direction_long(i8* %optflag, i8* %param, i8* %data) #0 {
entry:
  %optflag.addr = alloca i8*, align 8
  %param.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %flag_data = alloca %struct.preLangDefFlagData*, align 8
  store i8* %optflag, i8** %optflag.addr, align 8
  store i8* %param, i8** %param.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.preLangDefFlagData*
  store %struct.preLangDefFlagData* %1, %struct.preLangDefFlagData** %flag_data, align 8
  %2 = load i8*, i8** %optflag.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.preLangDefFlagData*, %struct.preLangDefFlagData** %flag_data, align 8
  %direction = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %3, i32 0, i32 1
  store i32 2, i32* %direction, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %optflag.addr, align 8
  %call1 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %5 = load %struct.preLangDefFlagData*, %struct.preLangDefFlagData** %flag_data, align 8
  %direction4 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %5, i32 0, i32 1
  store i32 1, i32* %direction4, align 8
  br label %if.end11

if.else5:                                         ; preds = %if.else
  %6 = load i8*, i8** %optflag.addr, align 8
  %call6 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.132, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %7 = load %struct.preLangDefFlagData*, %struct.preLangDefFlagData** %flag_data, align 8
  %direction9 = getelementptr inbounds %struct.preLangDefFlagData, %struct.preLangDefFlagData* %7, i32 0, i32 1
  store i32 3, i32* %direction9, align 8
  br label %if.end

if.else10:                                        ; preds = %if.else5
  br label %do.body

do.body:                                          ; preds = %if.else10
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @optlibFreeDep(i32 %lang, i1 zeroext %initialized) #0 {
entry:
  %lang.addr = alloca i32, align 4
  %initialized.addr = alloca i8, align 1
  %pdef = alloca %struct.sParserDefinition*, align 8
  %dep = alloca %struct.sParserDependency*, align 8
  store i32 %lang, i32* %lang.addr, align 4
  %frombool = zext i1 %initialized to i8
  store i8 %frombool, i8* %initialized.addr, align 1
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %lang.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %pdef, align 8
  %3 = load %struct.sParserDefinition*, %struct.sParserDefinition** %pdef, align 8
  %dependencyCount = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %3, i32 0, i32 28
  %4 = load i32, i32* %dependencyCount, align 8
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %pdef, align 8
  %dependencies = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 27
  %6 = load %struct.sParserDependency*, %struct.sParserDependency** %dependencies, align 8
  store %struct.sParserDependency* %6, %struct.sParserDependency** %dep, align 8
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %8 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %upperParser = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %8, i32 0, i32 1
  %9 = load i8*, i8** %upperParser, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i64 0, i64 0), i8* %9)
  %10 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %upperParser1 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %10, i32 0, i32 1
  %11 = load i8*, i8** %upperParser1, align 8
  call void @eFree(i8* %11)
  %12 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %upperParser2 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %12, i32 0, i32 1
  store i8* null, i8** %upperParser2, align 8
  %13 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %data = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %13, i32 0, i32 2
  %14 = load i8*, i8** %data, align 8
  call void @eFree(i8* %14)
  %15 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %data3 = getelementptr inbounds %struct.sParserDependency, %struct.sParserDependency* %15, i32 0, i32 2
  store i8* null, i8** %data3, align 8
  %16 = load %struct.sParserDependency*, %struct.sParserDependency** %dep, align 8
  %17 = bitcast %struct.sParserDependency* %16 to i8*
  call void @eFree(i8* %17)
  %18 = load %struct.sParserDefinition*, %struct.sParserDefinition** %pdef, align 8
  %dependencies4 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %18, i32 0, i32 27
  store %struct.sParserDependency* null, %struct.sParserDependency** %dependencies4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.sKindDefinition* @getKindForName(%struct.kindControlBlock*, i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @freeKdef(%struct.sKindDefinition* %kdef) #0 {
entry:
  %kdef.addr = alloca %struct.sKindDefinition*, align 8
  store %struct.sKindDefinition* %kdef, %struct.sKindDefinition** %kdef.addr, align 8
  %0 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %name = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %0, i32 0, i32 2
  %1 = load i8*, i8** %name, align 8
  call void @eFree(i8* %1)
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %description = getelementptr inbounds %struct.sKindDefinition, %struct.sKindDefinition* %2, i32 0, i32 3
  %3 = load i8*, i8** %description, align 8
  call void @eFree(i8* %3)
  %4 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef.addr, align 8
  %5 = bitcast %struct.sKindDefinition* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @resetLanguageKinds(i32 %language, i1 zeroext %mode) #0 {
entry:
  %language.addr = alloca i32, align 4
  %mode.addr = alloca i8, align 1
  %parser = alloca %struct.sParserObject*, align 8
  %i = alloca i32, align 4
  %kcb = alloca %struct.kindControlBlock*, align 8
  %kdef = alloca %struct.sKindDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  %frombool = zext i1 %mode to i8
  store i8 %frombool, i8* %mode.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 8
  %3 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  store %struct.kindControlBlock* %3, %struct.kindControlBlock** %kcb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %call = call i32 @countKinds(%struct.kindControlBlock* %5)
  %cmp = icmp ult i32 %4, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kcb, align 8
  %7 = load i32, i32* %i, align 4
  %call1 = call %struct.sKindDefinition* @getKind(%struct.kindControlBlock* %6, i32 %7)
  store %struct.sKindDefinition* %call1, %struct.sKindDefinition** %kdef, align 8
  %8 = load %struct.sKindDefinition*, %struct.sKindDefinition** %kdef, align 8
  %9 = load i8, i8* %mode.addr, align 1
  %tobool = trunc i8 %9 to i1
  call void @enableKind(%struct.sKindDefinition* %8, i1 zeroext %tobool)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.sVString* @vStringNewOrClearWithAutoRelease(%struct.sVString*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @enableLanguageKindLong(i32 %language, i8* %kindLong, i1 zeroext %mode) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindLong.addr = alloca i8*, align 8
  %mode.addr = alloca i8, align 1
  %result = alloca i8, align 1
  %def = alloca %struct.sKindDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %kindLong, i8** %kindLong.addr, align 8
  %frombool = zext i1 %mode to i8
  store i8 %frombool, i8* %mode.addr, align 1
  store i8 0, i8* %result, align 1
  %0 = load i32, i32* %language.addr, align 4
  %1 = load i8*, i8** %kindLong.addr, align 8
  %call = call %struct.sKindDefinition* @langKindLongOption(i32 %0, i8* %1)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %def, align 8
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  %cmp = icmp ne %struct.sKindDefinition* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  %4 = load i8, i8* %mode.addr, align 1
  %tobool = trunc i8 %4 to i1
  call void @enableKind(%struct.sKindDefinition* %3, i1 zeroext %tobool)
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %result, align 1
  %tobool1 = trunc i8 %5 to i1
  ret i1 %tobool1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @enableLanguageKind(i32 %language, i32 %kind, i1 zeroext %mode) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %mode.addr = alloca i8, align 1
  %result = alloca i8, align 1
  %def = alloca %struct.sKindDefinition*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i32 %kind, i32* %kind.addr, align 4
  %frombool = zext i1 %mode to i8
  store i8 %frombool, i8* %mode.addr, align 1
  store i8 0, i8* %result, align 1
  %0 = load i32, i32* %language.addr, align 4
  %1 = load i32, i32* %kind.addr, align 4
  %call = call %struct.sKindDefinition* @langKindDefinition(i32 %0, i32 %1)
  store %struct.sKindDefinition* %call, %struct.sKindDefinition** %def, align 8
  %2 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  %cmp = icmp ne %struct.sKindDefinition* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.sKindDefinition*, %struct.sKindDefinition** %def, align 8
  %4 = load i8, i8* %mode.addr, align 1
  %tobool = trunc i8 %4 to i1
  call void @enableKind(%struct.sKindDefinition* %3, i1 zeroext %tobool)
  store i8 1, i8* %result, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %result, align 1
  %tobool1 = trunc i8 %5 to i1
  ret i1 %tobool1
}

declare void @enableKind(%struct.sKindDefinition*, i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sKindDefinition* @langKindLongOption(i32 %language, i8* %kindLong) #0 {
entry:
  %language.addr = alloca i32, align 4
  %kindLong.addr = alloca i8*, align 8
  store i32 %language, i32* %language.addr, align 4
  store i8* %kindLong, i8** %kindLong.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %3 = load i8*, i8** %kindLong.addr, align 8
  %call = call %struct.sKindDefinition* @getKindForName(%struct.kindControlBlock* %2, i8* %3)
  ret %struct.sKindDefinition* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sKindDefinition* @langKindDefinition(i32 %language, i32 %flag) #0 {
entry:
  %language.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %kindControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 8
  %2 = load %struct.kindControlBlock*, %struct.kindControlBlock** %kindControlBlock, align 8
  %3 = load i32, i32* %flag.addr, align 4
  %call = call %struct.sKindDefinition* @getKindForLetter(%struct.kindControlBlock* %2, i32 %3)
  ret %struct.sKindDefinition* %call
}

declare void @kindColprintAddLanguageLines(%struct.colprintTable*, %struct.kindControlBlock*) #1

declare void @printKind(%struct.sKindDefinition*, i1 zeroext) #1

declare void @paramColprintAddParameter(%struct.colprintTable*, i32, %struct.sParameterHandlerTable*) #1

declare %struct.colprintTable* @colprintTableNew(i8*, ...) #1

declare %struct.colprintLine* @colprintTableGetNewLine(%struct.colprintTable*) #1

declare void @colprintLineAppendColumnCString(%struct.colprintLine*, i8*) #1

declare void @colprintLineAppendColumnVString(%struct.colprintLine*, %struct.sVString*) #1

declare i32 @putchar(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @xtagDefinitionDestroy(%struct.sXtagDefinition* %xdef) #0 {
entry:
  %xdef.addr = alloca %struct.sXtagDefinition*, align 8
  store %struct.sXtagDefinition* %xdef, %struct.sXtagDefinition** %xdef.addr, align 8
  %0 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef.addr, align 8
  %name = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %0, i32 0, i32 2
  %1 = load i8*, i8** %name, align 8
  call void @eFree(i8* %1)
  %2 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef.addr, align 8
  %description = getelementptr inbounds %struct.sXtagDefinition, %struct.sXtagDefinition* %2, i32 0, i32 3
  %3 = load i8*, i8** %description, align 8
  call void @eFree(i8* %3)
  %4 = load %struct.sXtagDefinition*, %struct.sXtagDefinition** %xdef.addr, align 8
  %5 = bitcast %struct.sXtagDefinition* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @fieldDefinitionDestroy(%struct.sFieldDefinition* %fdef) #0 {
entry:
  %fdef.addr = alloca %struct.sFieldDefinition*, align 8
  store %struct.sFieldDefinition* %fdef, %struct.sFieldDefinition** %fdef.addr, align 8
  %0 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef.addr, align 8
  %description = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %0, i32 0, i32 2
  %1 = load i8*, i8** %description, align 8
  call void @eFree(i8* %1)
  %2 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef.addr, align 8
  %name = getelementptr inbounds %struct.sFieldDefinition, %struct.sFieldDefinition* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  call void @eFree(i8* %3)
  %4 = load %struct.sFieldDefinition*, %struct.sFieldDefinition** %fdef.addr, align 8
  %5 = bitcast %struct.sFieldDefinition* %4 to i8*
  call void @eFree(i8* %5)
  ret void
}

declare i64 @numTagsAdded() #1

declare i32 @getLastPromise() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @setupLanguageSubparsersInUse(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %tmp = alloca %struct.sSubparser*, align 8
  %t = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 7
  %2 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  call void @setupSubparsersInUse(%struct.slaveControlBlock* %2)
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %3, i1 zeroext true)
  store %struct.sSubparser* %call, %struct.sSubparser** %tmp, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call1 = call i32 @getSubparserLanguage(%struct.sSubparser* %4)
  store i32 %call1, i32* %t, align 4
  %5 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  call void @enterSubparser(%struct.sSubparser* %5)
  %6 = load i32, i32* %t, align 4
  call void @setupLanguageSubparsersInUse(i32 %6)
  call void @leaveSubparser()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i1 @doesParserUseCork(%struct.sParserDefinition* %parser) #0 {
entry:
  %retval = alloca i1, align 1
  %parser.addr = alloca %struct.sParserDefinition*, align 8
  %tmp = alloca %struct.sSubparser*, align 8
  %r = alloca i8, align 1
  %t = alloca i32, align 4
  store %struct.sParserDefinition* %parser, %struct.sParserDefinition** %parser.addr, align 8
  store i8 0, i8* %r, align 1
  %0 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %useCork = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %0, i32 0, i32 12
  %1 = load i8, i8* %useCork, align 4
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %parser.addr, align 8
  %id = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %2, i32 0, i32 33
  %3 = load i32, i32* %id, align 4
  call void @pushLanguage(i32 %3)
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %4 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %4, i1 zeroext true)
  store %struct.sSubparser* %call, %struct.sSubparser** %tmp, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call1 = call i32 @getSubparserLanguage(%struct.sSubparser* %5)
  store i32 %call1, i32* %t, align 4
  %6 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %7 = load i32, i32* %t, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %6, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %8 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  %call2 = call zeroext i1 @doesParserUseCork(%struct.sParserDefinition* %8)
  br i1 %call2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  store i8 1, i8* %r, align 1
  br label %while.end

if.end4:                                          ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then3, %while.cond
  %call5 = call i32 @popLanguage()
  %9 = load i8, i8* %r, align 1
  %tobool6 = trunc i8 %9 to i1
  store i1 %tobool6, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

declare void @corkTagFile() #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @addParserPseudoTags(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %parser = alloca %struct.sParserObject*, align 8
  store i32 %language, i32* %language.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idx.ext
  store %struct.sParserObject* %add.ptr, %struct.sParserObject** %parser, align 8
  %2 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %pseudoTagPrinted = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %2, i32 0, i32 5
  %bf.load = load i8, i8* %pseudoTagPrinted, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %language.addr to i8*
  %call = call zeroext i1 @makePtagIfEnabled(i32 9, i8* %3)
  %4 = bitcast i32* %language.addr to i8*
  %call1 = call zeroext i1 @makePtagIfEnabled(i32 8, i8* %4)
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser, align 8
  %pseudoTagPrinted2 = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %5, i32 0, i32 5
  %bf.load3 = load i8, i8* %pseudoTagPrinted2, align 8
  %bf.clear4 = and i8 %bf.load3, -5
  %bf.set = or i8 %bf.clear4, 4
  store i8 %bf.set, i8* %pseudoTagPrinted2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @tagFilePosition(%struct._MIOPos*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @anonResetMaybe(%struct.sParserObject* %parser) #0 {
entry:
  %parser.addr = alloca %struct.sParserObject*, align 8
  store %struct.sParserObject* %parser, %struct.sParserObject** %parser.addr, align 8
  %0 = load %struct.sPtrArray*, %struct.sPtrArray** @parsersUsedInCurrentInput, align 8
  %1 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %2 = bitcast %struct.sParserObject* %1 to i8*
  %call = call zeroext i1 @ptrArrayHas(%struct.sPtrArray* %0, i8* %2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %anonymousIdentiferId = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %3, i32 0, i32 6
  store i32 0, i32* %anonymousIdentiferId, align 4
  %4 = load %struct.sPtrArray*, %struct.sPtrArray** @parsersUsedInCurrentInput, align 8
  %5 = load %struct.sParserObject*, %struct.sParserObject** %parser.addr, align 8
  %6 = bitcast %struct.sParserObject* %5 to i8*
  call void @ptrArrayAdd(%struct.sPtrArray* %4, i8* %6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @createTagsForFile(i32 %language, i32 %passCount) #0 {
entry:
  %language.addr = alloca i32, align 4
  %passCount.addr = alloca i32, align 4
  %lang = alloca %struct.sParserDefinition*, align 8
  %rescan = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store i32 %passCount, i32* %passCount.addr, align 4
  %0 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %1 = load i32, i32* %language.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %0, i64 %idxprom
  %def = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %arrayidx, i32 0, i32 0
  %2 = load %struct.sParserDefinition*, %struct.sParserDefinition** %def, align 8
  store %struct.sParserDefinition* %2, %struct.sParserDefinition** %lang, align 8
  store i32 0, i32* %rescan, align 4
  %3 = load i32, i32* %language.addr, align 4
  call void @resetInputFile(i32 %3)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32, i32* %language.addr, align 4
  call void @notifyLanguageRegexInputStart(i32 %4)
  call void @notifyInputStart()
  %5 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %parser = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %5, i32 0, i32 8
  %6 = load void ()*, void ()** %parser, align 8
  %cmp = icmp ne void ()* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %7 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %parser1 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %7, i32 0, i32 8
  %8 = load void ()*, void ()** %parser1, align 8
  call void %8()
  br label %if.end5

if.else:                                          ; preds = %do.end
  %9 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %parser2 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %9, i32 0, i32 9
  %10 = load i32 (i32)*, i32 (i32)** %parser2, align 8
  %cmp2 = icmp ne i32 (i32)* %10, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %11 = load %struct.sParserDefinition*, %struct.sParserDefinition** %lang, align 8
  %parser24 = getelementptr inbounds %struct.sParserDefinition, %struct.sParserDefinition* %11, i32 0, i32 9
  %12 = load i32 (i32)*, i32 (i32)** %parser24, align 8
  %13 = load i32, i32* %passCount.addr, align 4
  %call = call i32 %12(i32 %13)
  store i32 %call, i32* %rescan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  call void @notifyInputEnd()
  %14 = load i32, i32* %language.addr, align 4
  call void @notifyLanguageRegexInputEnd(i32 %14)
  %15 = load i32, i32* %rescan, align 4
  ret i32 %15
}

declare void @uncorkTagFile() #1

declare void @setTagFilePosition(%struct._MIOPos*) #1

declare void @setNumTagsAdded(i64) #1

declare void @breakPromisesAfter(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal %struct.sSubparser* @teardownLanguageSubparsersInUse(i32 %language) #0 {
entry:
  %language.addr = alloca i32, align 4
  %tmp = alloca %struct.sSubparser*, align 8
  %t = alloca i32, align 4
  store i32 %language, i32* %language.addr, align 4
  store %struct.sSubparser* null, %struct.sSubparser** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call = call %struct.sSubparser* @getNextSubparser(%struct.sSubparser* %0, i1 zeroext true)
  store %struct.sSubparser* %call, %struct.sSubparser** %tmp, align 8
  %cmp = icmp ne %struct.sSubparser* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  %call1 = call i32 @getSubparserLanguage(%struct.sSubparser* %1)
  store i32 %call1, i32* %t, align 4
  %2 = load %struct.sSubparser*, %struct.sSubparser** %tmp, align 8
  call void @enterSubparser(%struct.sSubparser* %2)
  %3 = load i32, i32* %t, align 4
  %call2 = call %struct.sSubparser* @teardownLanguageSubparsersInUse(i32 %3)
  call void @leaveSubparser()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.sParserObject*, %struct.sParserObject** @LanguageTable, align 8
  %5 = load i32, i32* %language.addr, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %4, i64 %idx.ext
  %slaveControlBlock = getelementptr inbounds %struct.sParserObject, %struct.sParserObject* %add.ptr, i32 0, i32 7
  %6 = load %struct.slaveControlBlock*, %struct.slaveControlBlock** %slaveControlBlock, align 8
  %call3 = call %struct.sSubparser* @teardownSubparsersInUse(%struct.slaveControlBlock* %6)
  ret %struct.sSubparser* %call3
}

declare void @setupSubparsersInUse(%struct.slaveControlBlock*) #1

declare zeroext i1 @makePtagIfEnabled(i32, i8*) #1

declare zeroext i1 @ptrArrayHas(%struct.sPtrArray*, i8*) #1

declare void @ptrArrayAdd(%struct.sPtrArray*, i8*) #1

declare void @resetInputFile(i32) #1

declare void @notifyInputStart() #1

declare void @notifyInputEnd() #1

declare %struct.sSubparser* @teardownSubparsersInUse(%struct.slaveControlBlock*) #1

declare zeroext i1 @openInputFile(i8*, i32, %struct._MIO*) #1

declare zeroext i1 @forcePromises() #1

declare void @makeFileTag(i8*) #1

declare void @closeInputFile() #1

declare void @vStringCatSWithEscapingAsPattern(%struct.sVString*, i8*) #1

declare %struct.sPtrArray* @ptrArrayNew(void (i8*)*) #1

declare void @ptrArrayDelete(%struct.sPtrArray*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cyclone" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.0 (https://github.com/holzschu/clang.git 0cfc630fbdb62e96720b611a57123ef3eb13e297) (https://github.com/holzschu/llvm.git 0d8a71e39b28502c24718f7e74b5acbcfe36dfe0)"}
