@IF "%~1" == "" GOTO help

%1\applewin -log -load-state %~dp0\audit.aws.yaml
%1\applewin -log -load-state %~dp0\LC-RamWrite-Test.aws.yaml
%1\applewin -log -load-state %~dp0\Buttons_KeyData_AnyKeyDown-Test.aws.yaml -alt-enter=open-apple-enter
%1\applewin -log -load-state %~dp0\archon_i.aws.yaml
%1\applewin -log -load-state %~dp0\A2.aws.yaml
%1\applewin -log -load-state %~dp0\A2+.aws.yaml
%1\applewin -log -load-state %~dp0\A2e.aws.yaml
%1\applewin -log -load-state %~dp0\A2e-enhanced.aws.yaml
%1\applewin -log -load-state "%~dp0\A2e-internal-C4nn-with-mousecard-(self test).aws.yaml"
%1\applewin -log -load-state %~dp0\dazzledraw1-mouse-rom-page0.aws.yaml
%1\applewin -log -load-state %~dp0\dazzledraw1-mouse-rom-page6.aws.yaml
%1\applewin -log -load-state %~dp0\A2+-VideoModeSwitch.aws.yaml
%1\applewin -log -load-state %~dp0\A2e-enhanced-VideoModeSwitch.aws.yaml
%1\applewin -log -load-state %~dp0\arkanoid.aws.yaml
%1\applewin -log -load-state "%~dp0\AS-S1_Turn the disk over.aws.yaml"
%1\applewin -log -load-state "%~dp0\AS-S2_End credits.aws.yaml"
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
%1\applewin -log -load-state %~dp0\dazzledraw1.aws.yaml
%1\applewin -log -load-state %~dp0\FANTAVISION.aws.yaml
%1\applewin -log -load-state %~dp0\HDD-32MB.aws.yaml
%1\applewin -log -load-state %~dp0\phasor-fugue.aws.yaml
%1\applewin -log -load-state %~dp0\phasor-speech.aws.yaml
%1\applewin -log -load-state %~dp0\phasor-tone.aws.yaml
%1\applewin -log -load-state %~dp0\Pravets82.aws.yaml
%1\applewin -log -load-state %~dp0\Pravets8A.aws.yaml
%1\applewin -log -load-state %~dp0\Pravets8M.aws.yaml
%1\applewin -log -load-state "%~dp0\Prince of Persia.aws.yaml"
%1\applewin -log -load-state %~dp0\RamWorks_r4.aws.yaml
%1\applewin -log -load-state %~dp0\Tests-Various.aws.yaml
%1\applewin -log -load-state %~dp0\TK3000e.aws.yaml
%1\applewin -log -load-state "%~dp0\Gemstone Warrior.aws.yaml"
%1\applewin -log -load-state %~dp0\NoSlotClockTest.aws.yaml
%1\applewin -log -load-state "%~dp0\SSC-TCP-IN#2.aws.yaml"
%1\applewin -log -load-state "%~dp0\SSC-TCP-tx-rx-tcp.aws.yaml"
%1\applewin -log -d1 %~dp0\AS-S2.dsk -s7 empty
%1\applewin -log -d1 %~dp0\AS-S1.dsk -d2 "%~dp0\AS-S2.dsk"
%1\applewin -log -h1 %~dp0\GNR-FINAL.2mg.gz
%1\applewin -log -h1 "%~dp0\Prince of Persia (Original 3.5 floppy for IIc+).2mg" -h2 %~dp0\GNR-FINAL.2mg.gz
CALL v2\DiskFormat\test.bat %~1
@ECHO Done v2 tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
