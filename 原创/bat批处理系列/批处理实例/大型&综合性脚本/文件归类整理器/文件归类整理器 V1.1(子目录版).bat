@echo off
title �ļ�����������-test

::===================================================================================
:: Ŀ�ģ�
::
::     �Ե�ǰĿ¼����������Ŀ¼�µ��ļ����й��ࡣ
::
:: ��������
::
:: �����ڵ�ǰĿ¼������Ŀ¼�£��Ը��ļ�������ļ�������Ϊ�ļ��������ڸ��ļ�
:: ����Ŀ¼�½������� exe�ļ���rar�ļ� ֮����ļ��У���ͬ���͵��ļ��ƶ���
:: ��Ӧ���ļ����¡�
:: ��������Ժ����������ļ����ٴ����б��ű�ʱ������λ���Ѿ����ڶ�Ӧ���ļ��У�
:: ����������ļ������ڸ��ļ����£��������ڶ�Ӧ���ļ��У����½��ļ����Ա���
:: ���ļ���
::
:: ��һ�潫Ҫʵ�ֵĹ��ܣ�
::
:: ������ ���Ե�ǰĿ¼Ϊ��㣬ָ���������Ŀ¼��������
:: ������ ����ָ������������ļ���
::
:: ������ʷ��
::
:: 2006-12-16
::
:: ���������˶��Ѿ�������ļ���������Ĺ��ܣ���ΪV1.1��
::
:: 2006-12-15
::
:: ������ֻ������ǰĿ¼�²�ͬ�����ļ��Ļ����ϣ�д�����ܶԵ�ǰĿ¼����������Ŀ¼�µ�
:: ��ͬ�����ļ����в����Ĵ��룬��ΪV1.0��
::===================================================================================


set "file_route=%cd%"
for /f "delims=" %%i in ('dir /a-d /b /s /oe') do (
    set "nx_name=%%~nxi"
    call :build_dir %%~xi "%%~dpi"
    set file_type=%%~xi
    set "file_route=%%~dpi"
)
goto :eof

rem ======= ���ļ����ʹ����ļ��� =======
:build_dir
set types=%1
set route=%2
set types=%types:~1%
set "route=%route:~1,-1%"
set "cd_name=%route:~0,-1%"

rem ======= ��ȡ�ļ����ڵ�Ŀ¼�� =======
:get_cd_name
set "cd_name_tmp=%cd_name:\=%"
set "cd_name=%cd_name:*\=%"
if not "%cd_name%"=="%cd_name_tmp%" goto get_cd_name

:: ͨ���Ա��ļ���������Ŀ¼�����ж���Щ�ļ��Ѿ������
if "%cd_name%"=="%types%�ļ�" goto :eof

:: �ж��ļ�����λ���Ƿ����˱仯
if %2=="%file_route%" (set chang_dir=) else set chang_dir=yes&set file_type=

:: �ж�Ҫ������ļ��ǲ����������ļ�����
if "%route%%nx_name%"=="%~f0" (set file_self=yes) else set file_self=

:: �ж��ļ������Ƿ����˱仯
if "%1"=="%file_type%" (set same_type=yes) else set same_type=

if not defined chang_dir (
    if not defined file_self if not defined same_type md "%route%%types%�ļ�" 2>nul
    ) else (
    if not defined file_self if not defined same_type md "%route%%types%�ļ�" 2>nul
)
if not defined file_self move /-y "%route%\%nx_name%" "%route%%types%�ļ�"
goto :eof