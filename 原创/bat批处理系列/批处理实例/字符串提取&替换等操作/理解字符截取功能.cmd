::code by lxmxn @ cn-dos.net .
::Ŀ�ģ����������Ǹ��õ��������ַ���ȡ����.
::Date 2006-12-16 .
::˵�����еı�����ȡ֮��ֵΪ�գ�����������.
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25746
@echo off&setlocal EnableDelayedexpansion
::���ñ���var��ֵ��
set var=0123456789ABCDEF
call :begin
for /l %%a in (1,3,15) do (
    for /l %%b in (1,4,15) do (
        call :printf %%a %%b
    )
)
call :begin
for /l %%a in (1,4,15) do (
    for /l %%b in (-1,-3,-15) do (
        call :printf  %%a %%b
    )
)
call :begin
for /l %%a in (-2,-3,-15) do (
    for /l %%b in (1,4,15) do (
        call :printf  %%a %%b
    )
)
call :begin
for /l %%a in (-1,-4,-15) do (
    for /l %%b in (-2,-3,-15) do (
        call :printf  %%a %%b
    )
)
pause
endlocal&cls&echo.
echo ��ʾ�����ˣ�������˳�����
pause>nul
goto :eof

::��������
:printf
    echo %%var:~%1,%2%%        ��ȡ֮����ַ�Ϊ:        !var:~%1,%2!
    goto :eof

::������Ļ��
:begin
    echo\&pause&cls&echo.
    echo                         ����var��ֵΪ:        %var%
    echo.
    goto :eof
