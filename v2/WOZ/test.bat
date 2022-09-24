@IF "%~1" == "" GOTO help

%1\applewin -log -d1 "%~dp0\Accolade's Comics - A.woz"
%1\applewin -log -d1 "%~dp0\Balance of Power(OptTiming0x20) - Disk 1, Side A.woz"
%1\applewin -log -d1 "%~dp0\Buzzard Bait (woz-a-day collection).zip"
%1\applewin -log -d1 "%~dp0\Glutton.zip"
%1\applewin -log -d1 "%~dp0\Gruds in Space side A.woz"
%1\applewin -log -d1 "%~dp0\Legacy of the Ancients - Side 1 - copy 2.woz"
%1\applewin -log -d1 "%~dp0\Run For It - Disk 1, Side A_wp.woz"
%1\applewin -log -d1 "%~dp0\Wasteland - Boot #1.woz"
%1\applewin -log -d1 "%~dp0\Wizardry III side B - boot.woz"
@ECHO Done v2 WOZ image tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
