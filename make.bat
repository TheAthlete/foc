@IF "%1"=="clean" GOTO :CLEAN
@IF "%1"=="linux" GOTO :LINUX

@IF NOT EXIST __WIN_BlackBox GOTO ENDIF1
	@MOVE BlackBox __LIN_BlackBox >NUL
	@MOVE __WIN_BlackBox BlackBox >NUL
:ENDIF1

@IF NOT EXIST Host\Mod\__WIN_Args.Mod GOTO ENDIF2
	@MOVE Host\Mod\Args.Mod Host\Mod\__LIN_Args.Mod >NUL
	@MOVE Host\Mod\__WIN_Args.Mod Host\Mod\Args.Mod >NUL
:ENDIF2

@IF NOT EXIST Host\Mod\__WIN_Files.Mod GOTO ENDIF3
	@MOVE Host\Mod\Files.Mod Host\Mod\__LIN_Files.Mod >NUL
	@MOVE Host\Mod\__WIN_Files.Mod Host\Mod\Files.Mod >NUL
:ENDIF3

@IF NOT EXIST Freeoberon\Mod\__WIN_LinkerProxy.Mod GOTO ENDIF4
	@MOVE Freeoberon\Mod\LinkerProxy.Mod Freeoberon\Mod\__LIN_LinkerProxy.Mod >NUL
	@MOVE Freeoberon\Mod\__WIN_LinkerProxy.Mod Freeoberon\Mod\LinkerProxy.Mod >NUL
:ENDIF4

@IF NOT EXIST __WIN_BlackBox GOTO ENDIF1
	@MOVE BlackBox __LIN_BlackBox >NUL
	@MOVE __WIN_BlackBox BlackBox >NUL
:ENDIF1

@IF NOT EXIST Host\Mod\__WIN_Args.Mod GOTO ENDIF2
	@MOVE Host\Mod\Args.Mod Host\Mod\__LIN_Args.Mod >NUL
	@MOVE Host\Mod\__WIN_Args.Mod Host\Mod\Args.Mod >NUL
:ENDIF2

@IF NOT EXIST Host\Mod\__WIN_Files.Mod GOTO ENDIF3
	@MOVE Host\Mod\Files.Mod Host\Mod\__LIN_Files.Mod >NUL
	@MOVE Host\Mod\__WIN_Files.Mod Host\Mod\Files.Mod >NUL
:ENDIF3

@IF NOT EXIST Freeoberon\Mod\__WIN_LinkerProxy.Mod GOTO ENDIF4
	@MOVE Freeoberon\Mod\LinkerProxy.Mod Freeoberon\Mod\__LIN_LinkerProxy.Mod >NUL
	@MOVE Freeoberon\Mod\__WIN_LinkerProxy.Mod Freeoberon\Mod\LinkerProxy.Mod >NUL
:ENDIF4

@SET BBEXE=BlackBox\BlackBoxInterp.exe
@IF NOT EXIST %BBEXE% GOTO :ERRNOBB
@SET runc=%BBEXE% /USE .

@ECHO ConsCompiler.Compile('Freeoberon\Mod', 'Config.Mod') | %runc%
@ECHO ConsCompiler.Compile('Dev\Mod', 'CPM.Mod') | %runc%
@ECHO ConsCompiler.Compile('Dev\Mod', 'Linker.Mod') | %runc%
@ECHO ConsCompiler.Compile('Host\Mod', 'Files.Mod') | %runc%
@ECHO ConsCompiler.Compile('System\Mod', 'Args.Mod') | %runc%
@ECHO ConsCompiler.Compile('Host\Mod', 'Args.Mod') | %runc%
@ECHO ConsCompiler.Compile('Freeoberon\Mod', 'Scanner.Mod') | %runc%
@ECHO ConsCompiler.Compile('Freeoberon\Mod', 'Errors.Mod') | %runc%
@ECHO ConsCompiler.Compile('Freeoberon\Mod', 'Compiler.Mod') | %runc%
@ECHO ConsCompiler.Compile('Freeoberon\Mod', 'LinkerProxy.Mod') | %runc%
@ECHO ConsCompiler.Compile('Freeoberon\Mod', 'Linker.Mod') | %runc%
@ECHO ConsCompiler.Compile('Freeoberon\Mod', 'Main.Mod') | %runc%
@ECHO DevLinker.Link dos foc.exe := Kernel$+ Files HostEnv Log HostFiles Math Strings Dates Unicode Meta Dialog Services Fonts Ports Utf Stores Converters Sequencers Models Printers Views Controllers Properties Printing Mechanisms Containers Documents Windows Console StdInterpreter HostConsole HostRegistry HostFonts HostWindows HostDates HostDialog StdDialog HostLang TextModels TextRulers TextSetters TextViews TextControllers TextMappers StdApi StdCmds StdLinks HostTextConv Args HostArgs StdLog ConsLog StdCFrames Controls DevCommanders FreeoberonConfig DevLinker DevMarkers FreeoberonConfig DevCPM DevCPT DevCPB DevCPS DevCPP DevCPE DevCPH DevCPL486 DevCPC486 DevCPV486 DevSelectors DevCompiler FreeoberonScanner FreeoberonLinkerProxy FreeoberonLinker FreeoberonErrors FreeoberonCompiler FreeoberonMain | %runc%

@XCOPY/S/Q/Y/I Code BlackBox\Code >NUL
@XCOPY/S/Q/Y/I Dev BlackBox\Dev >NUL
@XCOPY/S/Q/Y/I Dev2 BlackBox\Dev2 >NUL
@XCOPY/S/Q/Y/I Freeoberon BlackBox\Freeoberon >NUL
@XCOPY/S/Q/Y/I Host BlackBox\Host >NUL
@XCOPY/S/Q/Y/I System BlackBox\System >NUL
@XCOPY/S/Q/Y/I Sym BlackBox\Sym >NUL

@GOTO :ENDPROG

:CLEAN
@RMDIR/S/Q Freeoberon\Code 2>NUL
@RMDIR/S/Q Freeoberon\Sym 2>NUL
@RMDIR/S/Q System\Code 2>NUL
@RMDIR/S/Q System\Sym 2>NUL
@RMDIR/S/Q Host\Code 2>NUL
@RMDIR/S/Q Host\Sym 2>NUL
@RMDIR/S/Q Dev\Code 2>NUL
@RMDIR/S/Q Dev\Sym 2>NUL
@RMDIR/S/Q Dev2\Code 2>NUL
@RMDIR/S/Q Dev2\Sym 2>NUL
@RMDIR/S/Q Code 2>NUL
@RMDIR/S/Q Sym 2>NUL
@DEL/Q foc.exe 2>NUL

@GOTO :ENDPROG

:LINUX

@IF NOT EXIST __LIN_BlackBox GOTO ENDIF1
	@MOVE BlackBox __WIN_BlackBox >NUL
	@MOVE __LIN_BlackBox BlackBox >NUL
:ENDIF1

@IF NOT EXIST Host\Mod\__LIN_Args.Mod GOTO ENDIF2
	@MOVE Host\Mod\Args.Mod Host\Mod\__WIN_Args.Mod >NUL
	@MOVE Host\Mod\__LIN_Args.Mod Host\Mod\Args.Mod >NUL
:ENDIF2

@IF NOT EXIST Host\Mod\__LIN_Files.Mod GOTO ENDIF3
	@MOVE Host\Mod\Files.Mod Host\Mod\__WIN_Files.Mod >NUL
	@MOVE Host\Mod\__LIN_Files.Mod Host\Mod\Files.Mod >NUL
:ENDIF3

@IF NOT EXIST Freeoberon\Mod\__LIN_LinkerProxy.Mod GOTO ENDIF4
	@MOVE Freeoberon\Mod\LinkerProxy.Mod Freeoberon\Mod\__WIN_LinkerProxy.Mod >NUL
	@MOVE Freeoberon\Mod\__LIN_LinkerProxy.Mod Freeoberon\Mod\LinkerProxy.Mod >NUL
:ENDIF4

@IF NOT EXIST __LIN_BlackBox GOTO ENDIF1
	@MOVE BlackBox __WIN_BlackBox >NUL
	@MOVE __LIN_BlackBox BlackBox >NUL
:ENDIF1

@IF NOT EXIST Host\Mod\__LIN_Args.Mod GOTO ENDIF2
	@MOVE Host\Mod\Args.Mod Host\Mod\__WIN_Args.Mod >NUL
	@MOVE Host\Mod\__LIN_Args.Mod Host\Mod\Args.Mod >NUL
:ENDIF2

@IF NOT EXIST Host\Mod\__LIN_Files.Mod GOTO ENDIF3
	@MOVE Host\Mod\Files.Mod Host\Mod\__WIN_Files.Mod >NUL
	@MOVE Host\Mod\__LIN_Files.Mod Host\Mod\Files.Mod >NUL
:ENDIF3

@IF NOT EXIST Freeoberon\Mod\__LIN_LinkerProxy.Mod GOTO ENDIF4
	@MOVE Freeoberon\Mod\LinkerProxy.Mod Freeoberon\Mod\__WIN_LinkerProxy.Mod >NUL
	@MOVE Freeoberon\Mod\__LIN_LinkerProxy.Mod Freeoberon\Mod\LinkerProxy.Mod >NUL
:ENDIF4

@GOTO :ENDPROG

:ERRNOBB

@ECHO BlackBox executable file not found: %BBEXE%

:ENDPROG