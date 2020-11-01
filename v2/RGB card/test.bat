@IF "%~1" == "" GOTO help

%1\applewin -log -d1 "%~dp0\Video-7 Apple II RGB Demo (Video-7, Inc.)(1984).dsk" -video-mode=rgb-videocard -rgb-card-type apple
%1\applewin -log -load-state "%~dp0\dazzledraw1.aws.yaml" -video-mode=rgb-videocard
%1\applewin -log -load-state "%~dp0\dragon_wars.aws.yaml" -video-mode=rgb-videocard
%1\applewin -log -load-state "%~dp0\AppleColorCard-slideshow-lake.aws.yaml" -video-mode=rgb-videocard
@ECHO Done v2 RGB card tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
