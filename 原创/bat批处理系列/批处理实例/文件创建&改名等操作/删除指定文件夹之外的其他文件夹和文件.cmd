@echo off
:: ɾ��E�̸�Ŀ¼��ָ���ļ���֮��������ļ��к��ļ�
:: test.txt�ﱣ���в���·����ָ���ļ�������һ��һ����¼
:: �����test.txt�������E��֮��ķ���
:: code by jm 2006-12-25 CMD@XP
for /f "delims=" %%i in ('dir /a /b e:\') do (
    set flag=
    for /f "delims=" %%j in (test.txt) do if  /i "%%i"=="%%j" set flag=1
    if not defined flag del /a /f "e:\%%i" 2>nul||rd /s "e:\%%i" 2>nul
)
pause