@IF "%~1" == "" GOTO help

attrib +r "%~dp0\HDD-small(write-protected).hdv"
%1\applewin -log -load-state "%~dp0\SmartPort-firmware.aws.yaml" -current-dir "%~dp0" -s7-empty-on-exit
@ECHO Done v2 SmartPort-firmware tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
