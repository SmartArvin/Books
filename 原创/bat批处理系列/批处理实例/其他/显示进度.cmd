@echo off
:: ģ����ȣ���ʣ��ʱ�䡢����ɽ��ȡ�����������ʾ
:: code by bg 2006-10-8 CMD@XP
color 1f
title.
mode con lines=10
rem   ������ ����������
set work=0
set n=0
set mo=0
set number=0
rem  all������
set all=60
set time=%all%
:show

:check
if %number% GTR %mo% set num=%num%��&set /a mo=%mo%+1&goto check

:2

cls
echo  ���ȣ� %n% / %all%                                          ʣ��ʱ��:%time%��
echo.
echo. 
echo                                  ��� %work% %%%
echo.
if not "%num%"=="" echo       %num%
if not "%num%"=="" echo       %num%

if %work%==100 goto end

ping 127.1 -n 1 >nul
set /a n=%n%+1
set /a time=%all%-%n%
set /a work=(%n%)*100/(%all%)
set /a number=%work%/3
set /a number=%number%+1
goto show
endlocal

:end
endlocal
pause>nul
exit

@echo off
:: code by jm 2006-11-30 CMD@XP
set var=">"
set/p=���ڼ��أ� <nul
ping -n 2 127.1>nul
for /l %%i in (1,1,20) do (
    set/p=%var%<nul
    ping -n 2 127.1>nul
)
echo.
echo.
pause