@echo off

:: �Ź���ĺ��壺
:: ������һ���������ߣ�����Ϊ�磬����Ϊ�㡣
:: ������֮�����ǰ�1��9�ų��������У�����б��������Ӷ�����15
:: Code by jm 2007-1-12 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26647

title �Ź���
mode con cols=40 lines=20
set n1=0
set n5=5
setlocal enabledelayedexpansion

:begin
cls
set str= 1 2 3 4 6 7 8 9
set /a n1+=1
if %n1% gtr 9 exit
call :intercept %n1%
set /a n9=15-%n1%-%n5%
call :intercept %n9%
for %%i in (%str%) do (
    set flag=
    set n2=%%i
    set str_tmp=%str%
    call :intercept !n2!
    set /a n8=15-!n2!-!n5!
    set /a n3=15-!n1!-!n2!
    set /a n7=15-!n8!-!n9!
    set /a n4=15-!n1!-!n7!
    set /a n6=15-!n3!-!n9!
    for %%j in (!n3! !n4! !n6! !n7! !n8!) do call :intercept %%j
    if not "!str!"=="" set flag=1
    set /a sum1=!n3!+!n5!+!n7!
    set /a sum2=!n4!+!n5!+!n6!
    if !sum1! equ 15 if !sum1! equ !sum2! if not defined flag call :result
    set str=!str_tmp!
)
goto begin

:intercept
set str=!str: %1=!
goto :eof

:result
cls
echo.
echo.
echo.
echo            �������Щ����Щ�����
echo            �� %n1%  �� %n2%  �� %n3%  ��
echo            �������੤���੤����
echo            �� %n4%  �� %n5%  �� %n6%  ��
echo            �������੤���੤����
echo            �� %n7%  �� %n8%  �� %n9%  ��
echo            �������ة����ة�����
echo.
echo ________________________________________
echo.
echo             ���������ʾ��һ��
pause>nul
goto :eof