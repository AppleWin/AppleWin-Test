@IF "%~1" == "" GOTO help

%1\applewin%2 -log -model apple2ee -60hz -d1 "%~dp0\ntsc-sather.apl"
@ECHO Done v2 File Format tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test> [-x64]"

:end
