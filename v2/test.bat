@IF "%~1" == "" GOTO help

%1\applewin -log -load-state %~dp0\archon_i.aws.yaml
%1\applewin -log -load-state %~dp0\A2.aws.yaml
%1\applewin -log -load-state %~dp0\A2+.aws.yaml
%1\applewin -log -load-state %~dp0\A2e.aws.yaml
%1\applewin -log -load-state %~dp0\A2e-enhanced.aws.yaml
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
@ECHO Done v2 tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
