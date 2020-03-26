@IF "%~1" == "" GOTO help

%1\applewin -log -load-state "%~dp0\A2.aws.yaml"
%1\applewin -log -load-state "%~dp0\A2+.aws.yaml"
%1\applewin -log -load-state "%~dp0\A2e.aws.yaml"
%1\applewin -log -load-state "%~dp0\A2e-enhanced.aws.yaml"
%1\applewin -log -videorom "%~dp0\Apple II+ - Pig Font Character Generator - 2716.bin" -load-state "%~dp0\A2+.aws.yaml"
%1\applewin -log -videorom "%~dp0\Apple IIe Video French Canadian - Enhanced - 2732.bin" -load-state "%~dp0\A2e-enhanced.aws.yaml"
%1\applewin -log -videorom "%~dp0\Apple IIe Video - Custom - French-US - Enhanced - 2764.bin" -load-state "%~dp0\A2e-enhanced.aws.yaml"
%1\applewin -log -videorom "%~dp0\VID-342-274A.bin" -load-state "%~dp0\A2e-enhanced.aws.yaml"
%1\applewin -log -rom "%~dp0\IIJPLUS.ROM" -videorom "%~dp0\JVIDEO.ROM" -load-state "%~dp0\A2+.aws.yaml"
%1\applewin -log -rom "%~dp0\Apple2e_EDM.rom" -load-state "%~dp0\A2e-enhanced-EDM.aws.yaml"
@ECHO Done v2 video ROM tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
