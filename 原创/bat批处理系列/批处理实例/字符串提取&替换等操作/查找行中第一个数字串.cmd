@echo off
:: �������� <input name=id value=1842 type=hidden> �ļ�¼��
:: �ĵ�һ�����ִ�
:: ͨ��̽��ÿһ���ַ�����������ȡ������Ч��ʮ�ֵ���
:: code by jm 2006-10-16 CMD@XP
set num=0
setlocal enabledelayedexpansion
for /f "delims=" %%i in (input.txt) do call :intercept "%%i"
echo value=%str_%
pause
goto :eof

:intercept
set str=%1
set str=%str:~2,-2%
if not "%str%"=="" echo. "%str:~0,1%"|findstr "[0-9]">nul && (
    set num=1&set str_=!str_!%str:~0,1%&&call :intercept " !str:~1! ")||(
    if %num% equ 0 call :intercept " !str:~1! "
)
goto :eof

���κεķ������������ַ�ǰ���ϵ�����ȡ value= �������ֵ���ٶȷǳ���
���ܴ�������input type=hidden name=id VALUE=465974855 <input type=hidden name=id value="1820988170"><input type=hidden name=id value=1008964101>
���ַ���
@echo off
setlocal enabledelayedexpansion
FOR /f "delims=" %%i in (input.txt) do (
    set "t=%%i"
    set "t=!t:<= !"
    set "t=!t:>= !"
    set "t=!t:&= !"
    set "t=!t:|= !"
    call :sub !t !
)
pause
goto :eof

:sub
if "%1" == "" exit /b
if "%F%" == "1" echo %1 &set F=0
if "%1" == "value" set F=1
shift
goto sub
