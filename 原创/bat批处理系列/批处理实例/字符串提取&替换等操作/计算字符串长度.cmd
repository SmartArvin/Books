@echo off & setlocal EnableDelayedExpansion
:: �����ַ����ĳ���
:: code by willsort 2006-3-30  CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=19819
:began
set mystr=
set /p mystr=����Ҫ���㳤�ȵ��ַ���(ֱ�ӻس��˳�):
if not defined mystr goto :eof
for /l %%i in (0,1,1000) do if "!mystr:~%%i,1!"=="" set strlen=%%i && goto :_endfor
:_endfor
::echo �ַ���:  "%mystr%"
echo ��  ��:  %strlen%
set strlen=
goto began

�÷�����ȱ���ǣ����ַ������ȳ���1000��ʱ�򣬽�����̽�⵽�����������ܽ��յĳ��Ⱥ��󻹲��ܳ���1000

����һ�ַ�����

@echo off
:: Based on willsort's codes code by JM 2006-10-9 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=19819
set mystr=
set /p mystr=����Ҫ���㳤�ȵ��ַ���(ֱ�ӻس��˳�):
if not defined mystr goto :eof
set count=0
setlocal enabledelayedexpansion
:intercept
set /a count+=1
for /f %%i in ("%count%") do if not "!mystr:~%%i,1!"=="" goto intercept
echo ��  ��:  %count%
pause
goto :eof

@echo off
:: code by 3742668 2006-3-29 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=19819
:began
set /p mystr=����Ҫ���㳤�ȵ��ַ���:
echo %mystr:~0,1% | findstr /i "q" 1>nul 2>nul && exit  rem ����q�˳�

call :bflen "%mystr%"       rem ���������bflen�����س��ȵ�����ret�С�
echo �ַ���:        "%mystr%"
echo ��  ��:        %ret%

goto began

:bflen        rem ���鷳����ʼ��Ҫ�����ó�����
set num=
set str=
set ret=
set str=%1
:len          rem �����ַ�������
set str=%str:~0,-1%
set /a num = %num% + 1
if defined str goto len
set /a ret = %num% - 2
set num=
goto :eof