@echo off
:: ���㿪��
:: Ч�ʲ���ô��������ֻ���ڴ��������������������2^31-1�����־Ͳ�����
:: û�жԸ����Ŀ������д���
:: Code by JM 2007-3-15 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=28505

:Main
cls
set x=
set n=
set /p x=     �����뱻����������
set /p n=     �����뿪��������
set /a mod=%n%%%2

if %x% equ 1 (
    echo.
    echo      %x% �� %n% �η����� 1
    echo.
    pause
    goto Main
)

set /a quotient=x/n
set flag=

for /l %%i in (2,1,%quotient%) do (
    set num=%%i
    for /l %%j in (2,1,%n%) do (
        set /a num=%%i*!num!
    )
    if !num! equ %x% (
        echo.
        if %mod% equ 0 (
            echo      %x% �� %n% �η����� ��%%i
        ) else echo      %x% �� %n% �η����� %%i
        echo.
        set flag=1
        goto end
    )
)

:end
if not defined flag (
    echo.
    echo      %x% �� %n% �η�����������
    echo.
)
pause
goto Main