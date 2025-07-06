@IF "%~1" == "" GOTO help

%1\applewin -log -load-state "%~dp0\irq-pending.aws.yaml"
%1\applewin -log -load-state "%~dp0\6522-one-shot.aws.yaml"
%1\applewin -log -load-state "%~dp0\SSI263-test.aws.yaml"
%1\applewin -log -load-state "%~dp0\Cybernoid.aws.yaml"
%1\applewin -log -load-state "%~dp0\Cybernoid2-Phasor.aws.yaml"
%1\applewin -log -load-state "%~dp0\Cybernoid-TimerAtC480.aws.yaml"
%1\applewin -log -load-state "%~dp0\Cybernoid(MBv3).aws.yaml"
%1\applewin -log -load-state "%~dp0\Cybernoid2(Phasorv3).aws.yaml"
%1\applewin -log -load-state "%~dp0\MB-Poll-IFR-Test.aws.yaml"
%1\applewin -log -load-state "%~dp0\MB-Poll-IFR-Test2.aws.yaml"
%1\applewin -log -load-state "%~dp0\phasor-fugue.aws.yaml"
%1\applewin -log -load-state "%~dp0\phasor-fugue(v9).aws.yaml"
%1\applewin -log -load-state "%~dp0\phasor-speech.aws.yaml"
%1\applewin -log -load-state "%~dp0\phasor-tone.aws.yaml"
%1\applewin -log -load-state "%~dp0\SSI263-4x_phonemes_playing_continuously.aws.yaml"
%1\applewin -log -load-state "%~dp0\SSI263-4x_phonemes_playing_continuously-alt.aws.yaml"
%1\applewin -log -load-state "%~dp0\SC01-2x_phonemes_playing_continuously.aws.yaml"

@ECHO Done v2 Mockingboard tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
