@echo off
:: ���ܣ�
::     1�����ݺ����ѯ�Ա𡢳������ںͻ������ڵ�
::     2��15λ������18λ
::     3�����ݻ������ڵغͳ������������������֤����
::
::  ��֪bug��
::      1�������ⲻ�ϸ�
::      2������ID���ٶȽ���
::
:: Code by JM 2007-3-4 CMD@XP
:: ������1��http://www.cn-dos.net/forum/viewthread.php?tid=28127
:: ������2��http://bbs.wuyou.com/viewthread.php?tid=98403
::
:: ������ʷ��
::
:: 07.3.6
:: ����������15λ������18λʱʼ����ʾ�Ƿ�����Ĵ���

mode con lines=20 cols=50
title ���֤������Ϣ��ѯ��
setlocal enabledelayedexpansion

set check_num=10X98765432

:Main
cls
set flag=
set IDflag=
echo.&echo.&echo.&echo.
echo             1��ͨ��18λ�����ѯ������Ϣ
echo.
echo             2��15λ������18λ
echo.
echo             3������ָ�����������֤����
echo.&echo.&echo.
echo��__________________________________________________
echo.
set choice=
set /p choice=       �����빦�ܴ���(�˳���ֱ�ӻس�)��

if "%choice%"=="1" goto Get_Info
if "%choice%"=="2" goto UpDate
if "%choice%"=="3" goto Creat_ID
if defined choice goto Main
exit

:Get_Info
cls
echo.&echo.&echo.&echo.&echo.
set ID=
set /p ID=      ������18λ���֤���룺
call :Check_ID %ID%
if defined flag (
    call :PickUp_Info
) else call :ERR
echo                 �����������������...
pause>nul
goto Main

:UpDate
cls
echo.&echo.&echo.&echo.&echo.
set IDflag=15
set ID=
set /p ID=      ������15λ���֤���룺
set ID_15=%ID%
set ID=%ID:~0,6%19%ID:~6%
call :Check_ID %ID%
if defined flag (
    call :PickUp_Info
) else call :ERR
echo                 �����������������...
pause>nul
goto Main

:Creat_ID
cls
echo.&echo.
echo   ��������ֻ�ܼ������ؼ�����֮�ϵ���������������
echo.
echo   �������������˳�����룬�����������룬����ؼ�
echo.
echo   ���ÿո�ָ������磺�Ĵ�  �ɶ� ������ ����
echo.
echo   �Ĵ� ������ ���� �ɶ� ��
echo.
echo ���������ձ�����6λ���ֵĸ�ʽ�����磺20070130 ��
echo.
echo��__________________________________________________
echo.
set place=
set birthday=
set exp=
set /p place=������������ؼ��֣�
echo.
set /p birthday=  ������8λ��ʽ�ĳ������ڣ�
if "%birthday:~7,1%"=="" (call :ERR & pause & goto Main)
if not "%birthday:~0,8%"=="%birthday%" (call :ERR & pause & goto Main)
set /a day=1%birthday% 2>nul||(call :ERR & pause & goto Main)
if not "%day:~1%"=="%birthday%" (call :ERR & pause & goto Main)

cls
echo.&echo.
echo     ���������ĺ�����^(��;�ɰ� Ctrl^+C ��ִͣ��^)��
echo.
for %%i in (%place%) do set exp=!exp!.*%%i
for /f "tokens=1*" %%i in ('findstr "%exp:~2%" date.txt') do (
    set ID_place=%%i
    set ID_tmp=!ID_place:~0,1!
    for /l %%j in (1,1,9) do (
        if !ID_tmp! equ %%j call :IDs
    )
)
if not defined flag (
    echo.&echo.&echo.
    echo          ���ݿ��м��������ؼ���Ϊ %place% �ĵ�����
    echo.&echo.&echo.
)
echo                 �����������������...
pause>nul
goto Main

rem ==== �������Ƿ�Ϸ� ====
:Check_ID
set ID=%1
set ID_tmp=%1
if defined IDflag (
    if "%ID:~16,1%"=="" set flag=&goto :eof
    if not "%ID:~0,17%"=="%1" set flag=&goto :eof
) else (
    if "%ID:~17,1%"=="" set flag=&goto :eof
    if not "%ID:~0,18%"=="%1" set flag=&goto :eof
    if /i "%ID:~-1%"=="x" set ID_tmp=%ID:~0,-1%
)
set /a ID_tmp_1=1!ID_tmp:~0,6! 2>nul||(set flag=&goto :eof)
set /a ID_tmp_2=1!ID_tmp:~6,8! 2>nul||(set flag=&goto :eof)
set /a ID_tmp_3=1!ID_tmp:~14! 2>nul||(set flag=&goto :eof)
if not "!ID_tmp_1:~1!!ID_tmp_2:~1!!ID_tmp_3:~1!"=="!ID_tmp!" set flag=&goto :eof
set sum=0
set str_wi=7 9 10 5 8 4 2 1 6 3 7 9 10 5 8 4 2 1
for /l %%i in (0,1,16) do (
    set ai=!ID:~%%i,1!
    call :Get_Num %%i !str_wi!
    set /a product=!ai!*!wi! 2>nul
    set /a sum+=!product!
)
set /a mod=%sum%%%11
set last_num=!check_num:~%mod%,1!
if defined IDflag (
    set ID=%ID%%last_num%
    set flag=1
    goto :eof
)
if /i "%ID:~-1%"=="%last_num%" (
    set flag=1
) else set flag=
goto :eof

:Get_Num
:: ��ȡ %str_wi% �ж�Ӧλ���ϵ���ֵ
for /l %%i in (1,1,%1) do shift
set wi=%2
goto :eof

:PickUp_Info
set char=%ID:~-2,1%
set /a mod=%char%%%2
if %mod% equ 0 (
    set SEX=Ů
) else set SEX=��
for /f "tokens=1*" %%i in ('findstr "%ID:~0,6%" date.txt') do (
    set flag=exist
    cls
    echo.&echo.&echo.&echo.
    if defined IDflag (
        echo     ���֤���룺%ID_15%
        echo.
        echo     ��λ����룺%ID%
    ) else echo     ���֤���룺%ID%
    echo.
    echo     ��      ��      %SEX%
    echo.
    echo     �������ڣ�%ID:~6,4% �� %ID:~10,2% �� %ID:~12,2% ��
    echo.
    echo     �������ڵأ�%%j
    echo.&echo.&echo.&echo.
)
if not "%flag%"=="exist" call :ERR
goto :eof

rem ==== ���ɺϷ��ĺ��� ====
:IDs
for /l %%i in (0,1,999) do (
    for %%j in (0 1 2 3 4 5 6 7 8 9 X) do (
        set ID=00%%i%%j
        call :Check_ID %ID_place%%birthday%!ID:~-4!
        if defined flag echo                 %ID_place%%birthday%!ID:~-4!
    )
)
goto :eof

rem ==== ������ʾ ====
:ERR
echo.&echo.
echo                 �Ƿ�����
echo.&echo.&echo.
goto :eof
