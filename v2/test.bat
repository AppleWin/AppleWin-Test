@IF "%~1" == "" GOTO help

%1\applewin -log -load-state %~dp0\audit-A2.aws.yaml
%1\applewin -log -load-state %~dp0\audit-A2-LC.aws.yaml
%1\applewin -log -load-state %~dp0\audit-A2+-LC.aws.yaml
%1\applewin -log -load-state %~dp0\audit-A2+-Saturn.aws.yaml
%1\applewin -log -load-state %~dp0\audit-A2e.aws.yaml
%1\applewin -log -load-state %~dp0\audit-A2e-enhanced.aws.yaml
CALL "v2\Video ROM\test.bat" %~1
%1\applewin -log -load-state %~dp0\irq-pending.aws.yaml
%1\applewin -log -load-state %~dp0\6522-one-shot.aws.yaml
%1\applewin -log -load-state %~dp0\SSI263-test.aws.yaml
%1\applewin -log -load-state %~dp0\SmartPort-page-cross.aws.yaml
%1\applewin -log -load-state %~dp0\Buttons_KeyData_AnyKeyDown-Test.aws.yaml -alt-enter=open-apple-enter
%1\applewin -log -load-state %~dp0\archon_i.aws.yaml -video-mode=rgb-monitor -video-style=no-vertical-blend
%1\applewin -log -load-state %~dp0\archon_i.aws.yaml -video-mode=rgb-monitor -video-style=vertical-blend
%1\applewin -log -load-state "%~dp0\A2e-internal-C4nn-with-mousecard-(self test).aws.yaml"
%1\applewin -log -load-state %~dp0\dazzledraw1-mouse-rom-page0.aws.yaml
%1\applewin -log -load-state %~dp0\dazzledraw1-mouse-rom-page6.aws.yaml
%1\applewin -log -load-state %~dp0\A2+-VideoModeSwitch.aws.yaml
%1\applewin -log -load-state %~dp0\A2e-enhanced-VideoModeSwitch.aws.yaml
%1\applewin -log -load-state %~dp0\arkanoid.aws.yaml
%1\applewin -log -load-state "%~dp0\AS-S1_Turn the disk over.aws.yaml"
%1\applewin -log -load-state "%~dp0\AS-S2_End credits.aws.yaml"
%1\applewin -log -d1 %~dp0\OMT.dsk -60hz
%1\applewin -log -load-state %~dp0\OMT-PAL.aws.yaml
%1\applewin -log -load-state %~dp0\AZTEC.aws.yaml
%1\applewin -log -load-state %~dp0\CPM2.2(56k)-1.aws.yaml
%1\applewin -log -load-state %~dp0\CPM2.2(56k)-2-mbasic.aws.yaml
%1\applewin -log -load-state %~dp0\CPM2.2(56k)-3-GR-A2+.aws.yaml
%1\applewin -log -load-state %~dp0\Cybernoid.aws.yaml
%1\applewin -log -load-state %~dp0\Cybernoid2-Phasor.aws.yaml
%1\applewin -log -load-state %~dp0\Cybernoid-TimerAtC480.aws.yaml
%1\applewin -log -load-state %~dp0\Cybernoid(MBv3).aws.yaml
%1\applewin -log -load-state %~dp0\Cybernoid2(Phasorv3).aws.yaml
%1\applewin -log -load-state %~dp0\MB-Poll-IFR-Test.aws.yaml
%1\applewin -log -load-state %~dp0\MB-Poll-IFR-Test2.aws.yaml
%1\applewin -log -load-state %~dp0\dazzledraw1.aws.yaml -video-mode=rgb-monitor
%1\applewin -log -load-state %~dp0\dragon_wars.aws.yaml -video-mode=rgb-monitor
%1\applewin -log -load-state %~dp0\FANTAVISION.aws.yaml
%1\applewin -log -load-state %~dp0\HDD-32MB.aws.yaml
%1\applewin -log -load-state %~dp0\phasor-fugue.aws.yaml
%1\applewin -log -load-state %~dp0\phasor-speech.aws.yaml
%1\applewin -log -load-state %~dp0\phasor-tone.aws.yaml
%1\applewin -log -load-state %~dp0\Pravets82.aws.yaml
%1\applewin -log -load-state %~dp0\Pravets8A.aws.yaml
%1\applewin -log -load-state %~dp0\Pravets8M.aws.yaml
%1\applewin -log -load-state "%~dp0\Prince of Persia.aws.yaml"
%1\applewin -log -load-state %~dp0\Tests-Various.aws.yaml
%1\applewin -log -load-state %~dp0\TK3000e.aws.yaml
%1\applewin -log -load-state "%~dp0\Gemstone Warrior.aws.yaml"
%1\applewin -log -load-state "%~dp0\Sherwood Forest.aws.yaml"
%1\applewin -log -load-state %~dp0\Ultima-V.aws.yaml
%1\applewin -log -load-state %~dp0\NoSlotClockTest.aws.yaml
%1\applewin -log -load-state %~dp0\AppleColorCard-slideshow-lake.aws.yaml -video-mode=rgb-monitor
%1\applewin -log -load-state "%~dp0\SSC-TCP-IN#2.aws.yaml"
%1\applewin -log -load-state "%~dp0\SSC-TCP-tx-rx-tcp.aws.yaml"
%1\applewin -log -load-state "%~dp0\SSC-COM2-tx-rx-tcp.aws.yaml"
%1\applewin -log -h1 %~dp0\Dummy-image.hdv.gz
%1\applewin -log -d1 %~dp0\AS-S2.dsk -s7 empty -s7-empty-on-exit
%1\applewin -log -d1 %~dp0\AS-S1.dsk -d2 "%~dp0\AS-S2.dsk"
@REM
%1\applewin -log -d1 %~dp0\Dummy-image.dsk.gz
%1\applewin -log -power-on
%1\applewin -log -h1 %~dp0\Dummy-image.hdv.gz -s7-empty-on-exit
%1\applewin -log -power-on
@REM
copy /y %~dp0\conftest-gm.ini %~dp0\conftest.ini
%1\applewin -log -conf %~dp0\conftest.ini -d1 %~dp0\Dummy-image.dsk.gz -d2 "%~dp0\AS-S2.dsk"
%1\applewin -log -conf %~dp0\conftest.ini -power-on
%1\applewin -log -conf %~dp0\conftest.ini -h1 %~dp0\Dummy-image.hdv.gz -s7-empty-on-exit
%1\applewin -log -conf %~dp0\conftest.ini -power-on
@REM
%1\applewin -log -h1 "%~dp0\Prince of Persia (Original 3.5 floppy for IIc+).2mg" -h2 %~dp0\GNR-FINAL.2mg.gz
%1\applewin -log -model apple2ee -s5 diskii -s5d1 %~dp0\phasor1.dsk -s5d2 %~dp0\phasor2.dsk -s6d1 %~dp0\cybernoid.dsk -s6d2 %~dp0\mbtest-poll.po -s7 empty
CALL v2\Memory\test.bat %~1
CALL v2\DiskFormat\test.bat %~1
@ECHO Done v2 tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
