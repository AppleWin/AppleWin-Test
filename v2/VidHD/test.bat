@IF "%~1" == "" GOTO help

%1\applewin -log -load-state "%~dp0\SHR-AppleII-64K-Skyfox.aws.yaml"
@ECHO Done v2 VidHD card tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
