@echo off
:: �������һ��<=127����������1,2,4,8,16,32,64�������ĺͱ�ʾ������ 
::
:: ���������ӣ� 
:: ����������1,��ô��Ҫ�Ľ����1=1 
:: ����������78,��ô��Ҫ�Ľ����78=2+4+8+64
::
:: Code by youxi01 2006-12-31
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26224

setlocal enabledelayedexpansion
echo ================================
echo.
echo        ����һ�����ֵļ���ʽ
echo ================================
set /P EN=������һ�����֣�

set /a var=%EN%
for %%i in (64 32 16 8 4 2 1) do (
    if !var! GEQ %%i (
         set /a var=!var!-%%i
         set str=!str!%%i+))

echo %str:~0,-1%=%EN%

pause>nul
