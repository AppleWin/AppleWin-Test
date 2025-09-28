@IF "%~1" == "" GOTO help

copy /y "%~dp0\zero.dsk" "%~dp0\test0.dsk"
copy /y "%~dp0\zero.nib" "%~dp0\test0.nib"
copy /y "%~dp0\wozv1-gm.woz" "%~dp0\wozv1.woz"
copy /y "%~dp0\wozv2-gm.woz" "%~dp0\wozv2.woz"
%1\applewin%2 -log -load-state "%~dp0\ProDOS_format_auth_dsk.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\ProDOS_format_auth_nib.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\ProDOS_format_auth_woz2.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\ProDOS_format_enh_dsk.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\ProDOS_format_enh_nib.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\ProDOS_format_enh_woz1.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\ProDOS_format_enh_woz2.aws.yaml"
copy /y "%~dp0\zero.dsk" "%~dp0\test0.dsk"
copy /y "%~dp0\zero.nib" "%~dp0\test0.nib"
copy /y "%~dp0\wozv1-gm.woz" "%~dp0\wozv1.woz"
copy /y "%~dp0\wozv2-gm.woz" "%~dp0\wozv2.woz"
%1\applewin%2 -log -load-state "%~dp0\DOS3.3_init_auth_dsk.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.3_init_auth_nib.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.3_init_auth_woz2.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.3_init_enh_dsk.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.3_init_enh_nib.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.3_init_enh_woz1.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.3_init_enh_woz2.aws.yaml"
copy /y "%~dp0\zero.nib" "%~dp0\test0.nib"
copy /y "%~dp0\wozv1-gm.woz" "%~dp0\wozv1.woz"
copy /y "%~dp0\wozv2-gm.woz" "%~dp0\wozv2.woz"
%1\applewin%2 -log -load-state "%~dp0\DOS3.2.1_init_enh_nib.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.2.1_init_enh_woz1.aws.yaml"
%1\applewin%2 -log -load-state "%~dp0\DOS3.2.1_init_enh_woz2.aws.yaml"
del "%~dp0\test0.dsk"
del "%~dp0\test0.nib"
del "%~dp0\wozv1.woz"
del "%~dp0\wozv2.woz"
@ECHO Done v2 Disk Format tests
@GOTO end

:help
@ECHO %0 "<path to AppleWin under test> [-x64]"

:end
