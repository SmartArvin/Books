@echo off
:: 10����ת��Ϊ16����
:: code by 3742668 2006-6-28 CMD@XP
set /p Դ��=����ʮ��������:
set /a Դ��=%Դ��% || goto :eof

:dosomething
    set /a ���� = %Դ��% %% 16
    set /a Դ�� /= 16
    call :ת�� %����% 
    set ����=%ret%
    set ������=%����%%������%
    if %Դ��% lss 16 goto end
goto dosomething

:ת��
    set ret=
    if "%1" == "10" set ret=A
    if "%1" == "11" set ret=B
    if "%1" == "12" set ret=C
    if "%1" == "13" set ret=D
    if "%1" == "14" set ret=E
    if "%1" == "15" set ret=F
    if %1 lss 10 set ret=%1
goto :eof

:end
call :ת�� %Դ��%
set Դ��=%ret%
if "%Դ��%" == "0" set Դ��=
echo  0x%Դ��%%������% 
set ret=
set Դ��=
set ����=
set ������=
pause>nul
goto :eof

@echo off
:: Code by 0401 2007-1-6 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26399
setlocal enabledelayedexpansion
set hexstr=0 1 2 3 4 5 6 7 8 9 A B C D E F
set d=0
for %%i in (%hexstr%) do (set d!d!=%%i&set/a d+=1)
set/p scanf=����ȷ����������Ϊ[2147483647]����������Ҫת����ʮ��������
if not defined scanf exit/b
set dec=%scanf%
call :d2h
if not defined hex set hex=0
echo %dec% ��ʮ������Ϊ��0x%hex%
pause>nul
exit/b

:d2h
if %scanf% equ 0 exit/b
set/a tscanf=%scanf%"&"15
set/a scanf">>="4
set hex=!d%tscanf%!!hex!
goto :d2h