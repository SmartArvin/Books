@echo off
:: ����ķ��������г����е�Ŀ¼֮��Ȼ���ս������У�ɾ����
:: �ؼ�����Ҫ�������Ŀ¼����ɾ
:: code by bagpipe 2006-12-29 CMD@XP

for /f "tokens=*" %%a in ('dir /b /ad /s "Ŀ��·��"^|sort /r') do rd "%%a" 2>nul
pause
goto :eof

@echo off
:: ˼·���о�����Ŀ¼(������Ŀ¼)·����Ȼ��ɾ����һ��·�����һ���ϵ��ļ��У�
:: ���������ɾ������ļ��У���ɾ����һ���ļ��У��������ɾ�����������һ������
:: ����ֱ����ǰĿ¼Ϊֹ���������ĳһ�ڲ���ɾ����������������ʼɾ����һ��·����
:: �������һ���ϵ��ļ��С�����˷�����
::
:: code by JM 2006-12-25 bbs.cn-dos.net CMD@XP

for /f "delims=" %%i in ('dir /ad /b /s') do call :rd_dir_empty "%%i"
goto :eof


rem ======= ɾ����Ŀ¼ =========
:rd_dir_empty
rd %1 2>nul||goto :eof
set dir_route=%1
for /f "delims=" %%i in (%dir_route%) do (
    set dir_route="%%~dpi"
    for /f "delims=" %%j in ('dir /ad /b "%%~dpi"')do rd "%%~dpi%%j" 2>nul||goto :eof
)
:: ��·������\ȥ�����Ա�set route_deepest="%%~dpi"��ȡ����һ��·��
if "%dir_route:~-2,1%"=="\" set dir_route="%dir_route:~1,-2%"
if /i not "%cd%"==%dir_route% call :rd_dir_empty %dir_route%
goto :eof
