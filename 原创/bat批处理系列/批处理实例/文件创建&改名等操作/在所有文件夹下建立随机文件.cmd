@echo off
:: ��ÿ���ļ����½���һ�� �����-fly-�����.txt ���ı�
:: code by jm 2006-9-17 CMD@XP
cd.>list.txt
set current_dir=%cd%
setlocal enabledelayedexpansion
for /f "delims=\" %%i in ('fsutil fsinfo drives^|find /v ""') do (
    set var=%%i
    set drive=!var:~-2!
    fsutil fsinfo drivetype !drive!|find "�̶�">nul && call :creat !drive!
)
pause
goto :eof

:creat
cd /d %1\
for /r %%i in (.) do (
    set root=%%i
    set root=!root:~0,-2!
    call :random_
    echo !root!\!num1!-fly-!num2!.txt>>"%current_dir%\list.txt"
)
endlocal
goto :eof

:random_
set num1=%random%
set num2=%random%
goto :eof