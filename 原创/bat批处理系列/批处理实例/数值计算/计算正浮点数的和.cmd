@echo off
:: �ֱ����������������С��������ȡ����
:: ���������ڸ�λ��0���룬С�������ڵ�λ��0��䣬ʹ������������λ���Զ���
:: �Ѳ������ȥ��С����󣬴����һλ��ʼ����λ����������λ���ĺͣ�����9����θ�λ��1
:: ���㵽��һλ֮�󣬻�ԭС�����λ�ã��͵õ�����������ӵĽ��
:: ���磺Ҫ���� 4567.5+5.6789������������Ϊ45675000+00056789��Ȼ��λ���ӷ�����
:: �����Ͽ��Լ���Nλ����ͻ����17λ�����ƣ����ǲ����ܼ���λ������2^32-1�����֣����һ���
:: CMD�±���ֵ���ȵ�����
:: code by JM 2006-10�� CMD@XP

:: ��Ҫ���Ǵ���������������ϵ������

:main
cls
echo.
echo               Ҫ����ĳ�������ֵĺͣ���ֱ���ûس�
echo.
echo                     �˳������� e
echo.
set num1=0.0
set times=0
set expression=

:input_loop
set num2=
set sum_=
set /a times+=1
set /p num2=        ������� %times% ������
if /i "%num2%"=="e" exit
if "%num2%"=="" goto result
if "%num2:~0,1%"=="." set num2=0%num2%
call :input_check "%num2%" num2
set expression=%expression%+%num2%

setlocal enabledelayedexpansion
for /f "tokens=1-4 delims=." %%i in ("%num1%.%num2%") do (
    set int1=%%i
    set int2=%%k
    set dec1=%%j
    set dec2=%%l
    call :get_length int1 %%i
    call :get_length int2 %%k
    call :get_length dec1 %%j
    call :get_length dec2 %%l
    call :add_zero
    call :sum
    goto input_loop
)

:input_check
rem =========== ��������Ƿ���ȷ =========== 
echo %1|findstr "\.">nul||set %~2=%~1.0
for /f "tokens=1* delims=." %%i in (%1) do (
    echo %%i%%j|findstr "^[0-9]*$">nul || (set /a times-=1&goto input_loop)
)
goto :eof    

:get_length
rem =========== ������������ֵĳ��� ===========
set count=0
:intercept
set /a count+=1
for /f %%i in ("%2") do (
    set var=%%i
    if not "!var:~%count%,1!"=="" goto intercept
    set %1_length=!count!
)
goto :eof

:add_zero
rem =========== �ֱ����������ֺ�С���������0�ַ��� ===========
:: ����λ����������������0����
set /a int_length_diff=%int1_length%-%int2_length%
set int_length_diff=%int_length_diff:-=%
call :creat_zero int_zero %int_length_diff%
if %int1_length% gtr %int2_length% (
    set int2=%int_zero%%int2%
    set int_length_max=%int1_length%
    ) else (
    set int1=%int_zero%%int1%
    set int_length_max=%int2_length%
)
:: ����λ������С��������0����
set /a dec_length_diff=%dec1_length%-%dec2_length%
set dec_length_diff=%dec_length_diff:-=%
call :creat_zero dec_zero %dec_length_diff%
if %dec1_length% gtr %dec2_length% (
    set dec2=%dec2%%dec_zero%
    set dec_length_max=%dec1_length%
    ) else (
    set dec1=%dec1%%dec_zero%
    set dec_length_max=%dec2_length%
)
goto :eof

:creat_zero
rem =========== ���������ַ������ȵĲ��죬������Ӧ���ȵ�0�ַ��� ===========
set zero=
for /l %%i in (1,1,%2) do set zero=!zero!0
set %1=%zero%
goto :eof

:sum
rem =========== ��λ���������ĺ� ===========
:: ��ȡ�������ֺ�С���������������
set num1_new=%int1%%dec1%
set num2_new=%int2%%dec2%
set /a length_total=%int_length_max%+%dec_length_max%
set switch=0
set sum_tmp=
for /l %%i in (1,1,%length_total%) do (
    set /a sum_tmp=!num1_new:~-%%i,1!+!num2_new:~-%%i,1!+!switch!
    if !sum_tmp! gtr 9 (
        set /a sum_tmp=!sum_tmp!-10
        set switch=1
        ) else (
        set switch=0
    )
    set sum_=!sum_tmp!!sum_!
)
:: ����С����
set sum_=!sum_:~0,-%dec_length_max%!.!sum_:~-%dec_length_max%!
:: �ж������λʱ�Ƿ��λ
if %switch% equ 1 (
    set num1=1%sum_%
    ) else (
    set num1=%sum_%
)
goto :eof

:result
if "%expression%"=="" set /a times-=1&goto input_loop
echo.
echo   %expression:~1%=%num1%
echo.
pause
goto main