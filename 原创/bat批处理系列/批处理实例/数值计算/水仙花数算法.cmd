@echo off
:: ����λ����ˮ�ɻ���
:: ��ν��ˮ�ɻ�����������abc=a*a*a+b*b*b+c*c*c������
echo.
echo         ��λ��ˮ�ɻ����У�
echo.
setlocal enabledelayedexpansion
for /l %%i in (1,1,9) do (
    for /l %%j in (0,1,9) do (
        for /l %%k in (0,1,9) do (
            set a=%%i
            set b=%%j
            set c=%%k
            set num1=!a!!b!!c!
            set /a num2=!a!*!a!*!a!+!b!*!b!*!b!+!c!*!c!*!c!
            if !num1! equ !num2! echo                !num1!
        )
    )
)
pause
goto :eof


����һ���㷨
@echo off
set Out=ˮ�ɻ�3.txt
title ˮ�ɻ�����λ����
echo ���ڼ���...
if exist %Out% del %Out%

set /a c=0

:loopc
if %c%==9 goto exit
set /a c=%c%+1
set /a b=0
set /a a=0
cls
echo ����� %c%/10
goto loopa

:loopb
if %b%==9 goto loopc
set /a b=%b%+1
set /a a=0
goto loopa

:loopa
if %a%==10 goto loopb
set /a num1=%c%*%c%*%c%+%b%*%b%*%b%+%a%*%a%*%a%
set /a num2=100*%c%+10*%b%+%a%
if %num1%==%num2% echo %num1%>>%Out%
REM echo %num2%>>%Out%
set /a a=%a%+1
goto loopa

:exit