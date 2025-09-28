@IF "%~1" == "" GOTO help

%1\applewin%2 -log -load-state "%~dp0\Boulderdash1-level-L1-bonus.aws"
@ECHO Done v1 tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test> [-x64]"

:end
