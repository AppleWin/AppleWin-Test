@IF "%~1" == "" GOTO help

%1\applewin -log -load-state %~dp0\Boulderdash1-level-L1-bonus.aws
%1\applewin -log -load-state "%~dp0\Maniac Mansion(entrance-hall-near-clock).aws"
@ECHO Done v1 tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
