@echo off
:: code by jm 2006-11-11 modified by youxi01
:: ���޳�����λ�ò�ͬ��������ͬ�ļ�¼
echo.
echo 100���ڵĹ��������£�
echo.
setlocal enabledelayedexpansion
for /l %%i in (1,1,100) do (
    for /l %%j in (%%i,1,100) do (
        for /l %%k in (%%j,1,100) do (
            set /a a=%%i*%%i
            set /a b=%%j*%%j
            set /a c=%%k*%%k
            set /a sum=!a!+!b!
            if !sum! equ !c! echo %%i %%j %%k
        )
    )
)
pause