@echo off
setlocal EnableDelayedExpansion
set _tmp_F_S=C:\_delay.vbs
set _tmp_F_F=C:\_tmp.tmp
set delay=50
set s1=����
set s2=�쿪��
set s3=����Ŀ���
set s4=�����赽�׿�������
set s5=�٣����ٲ��������������㣡��
echo if WScript.Arguments.count = 1 then WScript.Sleep CInt(WScript.Arguments(0)) end if>%_tmp_F_S%
if exist %_tmp_F_F% del %_tmp_F_F%
for /L %%i in (1,1,4) do (call :show %%s%%i%% && call :fail %%s%%i%%)
call :show %s5%
call :suc
if exist %_tmp_F_S% del %_tmp_F_S%
if exist %_tmp_F_F% del %_tmp_F_F%
ping -n 1 127.1>nul
goto :EOF

:show
if "%~1"=="" goto :EOF
set s=%1
set /p ans=%cd%^><nul
set /A len=0
:comp_len
echo %%s:~%len%,1%% | find "ECHO">nul && goto end_comp
set /A "len+=1"
goto comp_len
:end_comp
set /A "len-=1"
for /L %%i in (0,1,%len%) do (cscript //nologo %_tmp_F_S% %delay% && set /p ans=!s:~%%i,1!<nul)
cscript //nologo %_tmp_F_S% 500
echo.
echo %cd%^>%1>>%_tmp_F_F%
echo.>>%_tmp_F_F%
goto :EOF

:fail
echo '%1' �����ڲ����ⲿ���Ҳ���ǿ����еĳ���
echo ���������ļ���
echo.
echo '%1' �����ڲ����ⲿ���Ҳ���ǿ����еĳ���>>%_tmp_F_F%
echo ���������ļ���>>%_tmp_F_F%
echo.>>%_tmp_F_F%
goto :EOF

:suc
ping -n 1 127.1>nul
set eqq================================================================================
set gtr=^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>^>
echo                            Loading Windows 2000 ...>>%_tmp_F_F%
echo.>>%_tmp_F_F%
for /L %%i in (0,1,79) do (set /A new=2*%%i && type %_tmp_F_F% && echo !gtr:~0,%%i!!eqq:~%%i,80! && ping -n 1 127.1>nul && cls)
goto :EOF