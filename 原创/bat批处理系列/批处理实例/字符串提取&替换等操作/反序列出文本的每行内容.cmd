@echo off
:: �����г��ı���ÿ������
:: ���ܴ���˫����
:: code by jm 2006-10-5 Modified on 2007-3-13 CMD@XP
for /f "delims=" %%i in (test.txt) do (
    set "str=%%i"
    set var=
    call :intercept
)
pause
goto :eof

:intercept
if not "%str%"=="" (
    set "var=%str:~0,1%%var%"
    set "str=%str:~1%"
    goto intercept
    ) else (
    echo "%var%"
)
goto :eof