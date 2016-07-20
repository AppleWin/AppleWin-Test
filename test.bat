@IF "%~1" == "" GOTO help

CALL v1\test.bat %~1
CALL v2\test.bat %~1
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
