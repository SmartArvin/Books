@echo off
:: 3742668 cn-dos.com

    echo �����Ⱥ͸߶�:
    echo ����: 3 3
    set /p s=
call :update %s%
pause
goto :eof

:update
setlocal ENABLEDELAYEDEXPANSION

    if %1 geq 40 echo ̫����! && goto :eof

    rem �����������ÿһ��ǰ��Ӧ�������Ŀո���
    set /a began = (40 - %1) / 2
    for /l %%i in (1,1,%began%) do set str=!str!��

    rem ������������һ�Шq��r֮��"��"������
    set /a num = %1 - 2
    for /l %%i in (1,1,%num%) do set str1=!str1!��
    
    rem ��ʾ��һ��
    echo %str%�q%str1%�r

    rem �������һ��
    set str2=%str%�t%str1%�s

    rem ��ʾ���˵�һ�к����һ�е��м����
    set str1=%str1:��=��%
    for /l %%i in (1,1,%2) do echo %str%��%str1%��

    echo %str2%    & rem ��ʾ���һ��
endlocal
goto :eof