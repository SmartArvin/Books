@echo off
title �ļ�����������

:: Ŀ�ģ�
::
:: �����Ե�ǰĿ¼�µĲ�ͬ�ļ����й������(��������Ŀ¼)
::
:: 2006-12-16 �޸���һ������

for /f "delims=" %%i in ('dir /a-d /b /oe') do (
    set "nx_name=%%~nxi"
    call :build_dir %%~xi
    set file_type=%%~xi

)
goto :eof

rem ======= ���ļ����ʹ����ļ��� =======
:build_dir
set types=%1
set types=%types:~1%

:: �ж�Ҫ������ļ��ǲ�������������
if "%nx_name%"=="%~nx0" (set file_self=yes&set file_type=) else set file_self=

:: �ж��ļ������Ƿ����˱仯
if "%file_type%"=="%1" (set same_type=yes) else set same_type=

if not defined file_self if not defined same_type md %types%�ļ� 2>nul
if not defined file_self move /-y "%nx_name%" %types%�ļ�
goto :eof
