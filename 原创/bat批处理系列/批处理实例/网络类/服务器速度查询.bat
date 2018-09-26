::code by youxi01@cmd_xp
@echo off
title 腾讯服务器速度查询
setlocal enabledelayedexpansion
set/a time=1000
echo ===============================
echo 正在检测：sz.tencent.com
call :CheckServer sz.tencent.com
if %time% gtr %tmp% set/a time=%tmp% & set name=sz.tencent.com

For /L %%i in (2 1 9) do (
    echo.
    echo ===============================
    echo 正在检测：sz%%i.tencent.com
    call :CheckServer sz%%i.tencent.com
    if !time! gtr !tmp! set/a time=!tmp! & set name=sz%%i.tencent.com
    echo ===============================)

echo 速度最快的是%name% 时间为：%time% ms

pause>nul

:CheckServer IP
    set/a num=0
    for /f "tokens=5 delims=m=" %%i in ('ping -n 1 %1 ^|find "from"') do (
         set/a num+=1
         set/a tmp=%%i
         echo 速度为：%%i ms)
    if %num% EQU 0 echo. & echo 超时