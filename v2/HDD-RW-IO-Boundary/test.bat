@IF "%~1" == "" GOTO help

%1\applewin%2 -log -load-state "%~dp0\HDD-RW-IO-Boundary.aws.yaml" -current-dir "%~dp0" -s7-empty-on-exit
@ECHO Done v2 HDD-RW-IO-Boundary tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test> [-x64]"

:end
