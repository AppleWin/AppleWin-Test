@IF "%~1" == "" GOTO help

copy /y %~dp0\zero.dsk %~dp0\test0.dsk
copy /y %~dp0\zero.nib %~dp0\test0.nib
%1\applewin -log -load-state %~dp0\ProDOS_format_auth_dsk.aws.yaml
%1\applewin -log -load-state %~dp0\ProDOS_format_auth_nib.aws.yaml
%1\applewin -log -load-state %~dp0\ProDOS_format_enh_dsk.aws.yaml
%1\applewin -log -load-state %~dp0\ProDOS_format_enh_nib.aws.yaml
copy /y %~dp0\zero.dsk %~dp0\test0.dsk
copy /y %~dp0\zero.nib %~dp0\test0.nib
%1\applewin -log -load-state %~dp0\DOS3.3_init_auth_dsk.aws.yaml
%1\applewin -log -load-state %~dp0\DOS3.3_init_auth_nib.aws.yaml
%1\applewin -log -load-state %~dp0\DOS3.3_init_enh_dsk.aws.yaml
%1\applewin -log -load-state %~dp0\DOS3.3_init_enh_nib.aws.yaml
del %~dp0\test0.dsk
del %~dp0\test0.nib
@ECHO Done v2 Disk Format tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test>"

:end
