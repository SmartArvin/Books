@echo off
:: ������ת��Ϊ�����Сʱ���֡���ĸ�ʽ
:: Code by zh159 2007-1-16 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26758

:begin
cls
echo.
set input=
set /p input=  ����������(�˳���ֱ�Ӱ��س�)��
if not defined input exit
set /a SS=%input%%%60
set /a MM=%input%/60%%60
set /a HH=%input%/3600%%60
set /a DD=%input%/86400
echo.
echo   %DD% �� %HH% Сʱ %MM% �� %SS% ��
echo.
pause
goto begin

@echo off
:: Code by JM 2007-1-16 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26758

:begin_
cls
set /a D=0,H=0,M=0
set num=
set /p num=     ����������(�˳���ֱ�Ӱ��س�)��
if not defined num exit

call :transform D %num% 86400
call :transform H %num% 3600
call :transform M %num% 60

echo       %D% �� %H% Сʱ %M% �� %num% ��

pause
goto begin_

:transform
set /a %1=%2/%3
if %1 gtr 0 set /a num=%2-%3*%1
goto :eof

@echo off
:: Code by tao0610 2007-1-16 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26758
:start
setlocal
cls&echo.
set/p input=����������:
for /f "tokens=1,2 delims=." %%a in ("%input%") do set input=%%a&set input1=%%b
for /l %%a in (1,1,2) do set/a T%%a=input%%60,input/=60
set/a T3=input%%24,T4=input/24
set input1=%input1%0000
for /f "tokens=* delims=0" %%a in ("%input1:~0,4%") do set T0=%%a
echo/
if defined T0 (echo %T4% �� %T3% Сʱ %T2% �� %T1% �� %T0% ����
) else (echo %T4% �� %T3% Сʱ %T2% �� %T1% ��)
echo\
pause
endlocal
goto start
