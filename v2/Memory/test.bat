@IF "%~1" == "" GOTO help

%1\applewin%2 -log -load-state "%~dp0\LC-RamWrite-Test.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\LC-RamWrite-Test-II+.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\LC-RamWrite-Test-II+Saturn.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\Saturn64.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\Saturn128.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\Saturn128-Bank3-2.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\II+_s0(LC)_s3(Saturn)-test1.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\II+_s0(LC)_s3(Saturn)-test2.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\II+_s0(Saturn)_s3(Saturn)-test1.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\II+_s0(Saturn)_s3(Saturn)-test2.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\IIee_s0(LC)_s3(Saturn)-test1.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\IIee_s0(LC)_s3(Saturn)-test2.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\RamWorks_r4.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\RamWorksIII-256KB.aws.yaml"
@ECHO Done v2 Memory tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test> [-x64]"

:end
