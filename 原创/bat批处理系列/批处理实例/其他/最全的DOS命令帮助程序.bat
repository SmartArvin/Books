@echo off
color 0e
:ks
cls
echo      ==========================
echo        ��ӭʹ���������������
echo      %DATE%  ��by��ʫ��Ʈ�㣩
echo      ==========================
echo.
echo      �����������ѯ������������?
echo       ��q���˳���h��������
echo.
set /p lc= ������
if %lc%==q goto e
if %lc%==h help
%lc% /? >a.txt

if errorlevel 1 goto no
if errorlevel 0 goto yes

:yes
start a.txt
goto ks

:no
echo      ==========================================
echo �Ҳ�����Ҫ���������������������������
echo      =========================================
del a.txt
pause
call %0


:e
del a.txt
exit
