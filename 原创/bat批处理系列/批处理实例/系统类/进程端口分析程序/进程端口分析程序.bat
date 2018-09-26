::code by youxi01@xp_cmd,2007-3-28
::初始
@echo off
setlocal enabledelayedexpansion
color 1f
title 进程使用端口分析程序

:初始定义
set "space=                   "

::定义初始进程
::在这里你可以加入你认为安全的进程
if not exist ProcessList.ini (
echo System
echo smss.exe
echo csrss.exe
echo winlogon.exe
echo services.exe
echo lsass.exe
echo svchost.exe
echo spoolsv.exe
echo Explorer.EXE

echo realsched.exe
echo SOUNDMAN.EXE
echo ctfmon.exe
echo QQ.exe
echo TIMPlatform.exe

echo alg.exe
echo Qzone.exe
echo Maxthon.exe
echo TTPlayer.exe
echo conime.exe
echo QQPlayerSvr.exe
echo NOTEPAD.EXE
echo cmd.exe
echo tasklist.exe
echo wmiprvse.exe)>>ProcessList.ini
for /f %%i in (ProcessList.ini) do set "%%i=A"

echo                               ╭─────╮
echo           ╭─────────┤ 程序说明 ├────────╮
echo           │                  ╰─────╯                │
echo           │   本程序能够检测当前计算机正在运行进程所使用的 │
echo           │                                                │
echo           │端口，并能够对非常见进程提出警示 //             │ 
echo           ╰────────────────────────╯
echo.
echo            正在查询，请稍等...
echo          ╔═════════════════════════╗
echo          ║ 进程名              标识类型    协议类型   端口  ║
echo          ║ _________________________________________________║

::查询进程的PID号
::提取进程的PID号，并将其值设置为该进程的 名称
for /f "skip=4 tokens=1,2" %%i in ('tasklist') do set %%j=%%i

::查询以TCP协议使用的端口
call :QueryPort TCP 5
echo          ║ _________________________________________________║
call :QueryPort UDP 4
echo          ╚═════════════════════════╝
echo           按任意键继续...
pause>nul
if !num! GTR 0 (goto :NO) else goto :OK

:NO
echo.
echo           【评估】你的计算机可能存在风险
echo.
echo           以下进程为未定义进程，并正在使用端口通信，可能为木马 ^>^>
echo           ____________________________________________________
for /l %%i in (1 1 %num%) do  (
    if not defined !UnPro%%i! echo !UnPro%%i! && set !UnPro%%i!=A )
goto :exit

:OK
echo.
echo           【评估】你的计算机看起来似乎是安全的。
echo           ____________________________________________________

:exit
pause>nul
exit

::查询端口类型"函数"
::函数说明：
REM PortType 为协议类型，可以为TCP，也可以为UDP
REM Num 为参数号，TCP协议中的第五个参数为PID号，而UDP的则为第四个。

:QueryPort PortType Num
    for /f "skip=4 tokens=2,%2" %%i in ('netstat -ano -p %1') do (
        call :LineUp "║ !%%j!" 21 Pro 
        for /f "tokens=2 delims=:" %%a in ("%%i") do set Port=%%a
        if /I defined !%%j! (set ProType=→正常) else (
             set ProType=未定义
             set/a num+=1
             set UnPro!num!=!%%j! 
           )
        call :LineUp !ProType! 8 ProType
        call :LineUp %1 10 PortType
        call :LineUp !Port! 6 Port
        echo          !Pro! !ProType! !PortType! !Port!║
      )
    goto :eof

::对齐目标
::函数说明：
REM OBJ 为对齐要操作的对象；Len为对齐操作的长度；Name为返回的变量名。
:LineUp OBJ Len Name
    set obj=%~1%space%
    set %3=!obj:~0,%2!