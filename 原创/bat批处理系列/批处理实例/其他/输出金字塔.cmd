:: Code by JM 2007-2-20  CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27765

:: ��������һ��
@echo off
set num=5
setlocal enabledelayedexpansion
for /l %%i in (1,2,10) do (
    for /l %%j in (1,1,!num!) do set /p= <nul
    set /a num-=1
    for /l %%j in (1,1,%%i) do set /p=*<nul
    echo.
)
pause
exit

:: ������������
@echo off
setlocal enabledelayedexpansion
for /l %%i in (1,1,10) do (
    set /a num=10-%%i
    for /l %%j in (1,1,!num!) do set /p= <nul
    for /l %%j in (1,1,%%i) do set /p=��<nul
    echo.
)
pause
exit

:: ��������һ��
@echo off
setlocal enabledelayedexpansion
for /l %%i in (9,-2,1) do (
    set /a num+=1
    for /l %%j in (1,1,!num!) do set /p= <nul
    for /l %%j in (1,1,%%i) do set /p=*<nul
    echo.
)
pause
exit

:: ����������
@echo off
setlocal enabledelayedexpansion
for /l %%i in (10,-1,1) do (
    set /a num+=1
    for /l %%j in (1,1,!num!) do set /p= <nul
    for /l %%j in (1,1,%%i) do set /p=��<nul
    echo.
)
pause
exit

:: ����������
@echo off
:: Code by JM 2007-3-20 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=24951  117¥
setlocal enabledelayedexpansion
for /l %%i in (1,1,9) do (
    for /l %%j in (9,-1,%%i) do set /p= <nul
    for /l %%k in (1,1,%%i) do set /p=%%k<nul
    set /a num=%%i-1
    for /l %%l in (!num!,-1,1) do set /p=%%l<nul
    echo.
)
pause