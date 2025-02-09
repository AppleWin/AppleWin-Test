@IF "%~1" == "" GOTO help

copy /y "%~dp0\..\Prince of Persia (Original 3.5 floppy for IIc+).po" "%~dp0\"
copy /y "%~dp0\..\GNR-FINAL.2mg.gz" "%~dp0\"
copy /y "%~dp0\..\Mockingboard\phasor1.dsk" "%~dp0\"
copy /y "%~dp0\..\Mockingboard\phasor2.dsk" "%~dp0\"
copy /y "%~dp0\..\Mockingboard\cybernoid.dsk" "%~dp0\"
copy /y "%~dp0\..\Mockingboard\mbtest-poll.po" "%~dp0\"

%1\applewin -log -h1 v2\CmdLineSwitches\Dummy-image.hdv.gz
%1\applewin -log -d1 v2\AS-S2.dsk -s7 empty -s7-empty-on-exit
%1\applewin -log -d1 v2\AS-S1.dsk -d2 "v2\AS-S2.dsk"
@REM
%1\applewin -log -d1 v2\CmdLineSwitches\Dummy-image.dsk.gz
%1\applewin -log -power-on
%1\applewin -log -h1 v2\CmdLineSwitches\Dummy-image.hdv.gz -s7-empty-on-exit
%1\applewin -log -power-on
@REM
copy /y "%~dp0\conftest-gm.ini" "%~dp0\conftest.ini"
%1\applewin -log -conf "%~dp0\conftest.ini" -d1 v2\CmdLineSwitches\Dummy-image.dsk.gz
%1\applewin -log -conf "%~dp0\conftest.ini" -power-on
%1\applewin -log -conf "%~dp0\conftest.ini" -h1 v2\CmdLineSwitches\Dummy-image.hdv.gz -s7-empty-on-exit
%1\applewin -log -conf "%~dp0\conftest.ini" -power-on
del "%~dp0\conftest.ini"
@REM
%1\applewin -log -model apple2ee -h1 "%~dp0\Prince of Persia (Original 3.5 floppy for IIc+).po" -h2 "%~dp0\GNR-FINAL.2mg.gz"
%1\applewin -log -model apple2ee -s5 diskii -s5d1 "%~dp0\phasor1.dsk" -s5d2 "%~dp0\phasor2.dsk" -s6d1 "%~dp0\cybernoid.dsk" -s6d2 "%~dp0\mbtest-poll.po" -s7 empty

del "%~dp0\Prince of Persia (Original 3.5 floppy for IIc+).po"
del "%~dp0\GNR-FINAL.2mg.gz"
del "%~dp0\phasor1.dsk"
del "%~dp0\phasor2.dsk"
del "%~dp0\cybernoid.dsk"
del "%~dp0\mbtest-poll.po"

@ECHO Done v2 cmd line switch tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
