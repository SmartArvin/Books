::code by youxi01@cmd_xp
@echo off
title ��Ѷ�������ٶȲ�ѯ
setlocal enabledelayedexpansion
set/a time=1000
echo ===============================
echo ���ڼ�⣺sz.tencent.com
call :CheckServer sz.tencent.com
if %time% gtr %tmp% set/a time=%tmp% & set name=sz.tencent.com

For /L %%i in (2 1 9) do (
    echo.
    echo ===============================
    echo ���ڼ�⣺sz%%i.tencent.com
    call :CheckServer sz%%i.tencent.com
    if !time! gtr !tmp! set/a time=!tmp! & set name=sz%%i.tencent.com
    echo ===============================)

echo �ٶ�������%name% ʱ��Ϊ��%time% ms

pause>nul

:CheckServer IP
    set/a num=0
    for /f "tokens=5 delims=m=" %%i in ('ping -n 1 %1 ^|find "from"') do (
         set/a num+=1
         set/a tmp=%%i
         echo �ٶ�Ϊ��%%i ms)
    if %num% EQU 0 echo. & echo ��ʱ