@IF "%~1" == "" GOTO help

%1\applewin -log -debugger-auto-run DbgAutoRun1.txt -load-state "%~dp0\Debugger-prefix-breakpoints.aws.yaml" -current-dir "%~dp0" -s7-empty-on-exit
%1\applewin -log -debugger-auto-run DbgAutoRun2.txt -load-state "%~dp0\Debugger-prefix-breakpoints.aws.yaml" -current-dir "%~dp0" -s7-empty-on-exit
%1\applewin -log -debugger-auto-run DbgAutoRun3.txt -load-state "%~dp0\Debugger-prefix-breakpoints.aws.yaml" -current-dir "%~dp0" -s7-empty-on-exit
@ECHO Done v2 Debugger prefix breakpoints
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
