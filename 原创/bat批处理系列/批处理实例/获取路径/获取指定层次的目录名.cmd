@echo off
:: ��ȡָ����ε�Ŀ¼��
:: Code by 3742668 2006-10-20
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23919
    set file=c:\ab c\def\gh .exe
    set file=%file:\=" "%
    call :Get 4 "%file%"
pause
goto :eof

:Get
    for /l %%i in (1,1,%1) do shift
    echo %~1
goto :eof

@echo off
:: ��ȡָ����ε�Ŀ¼��
:: ������cd����echo�Ϳ�������ʾ��
:: echo %str:\= && 2>nul cd % һ���У���cd����������������ȷִ�С�
:: �������ԭ���ǣ�
:: set "command=set i=3"
:: echo i��ֵ:%i% & pause
:: %command%
:: echo i��ֵ:%i% & pause

:: ���⣬echo %str:\= && 2>nul cd %����ȡ���е��ļ�������ʱ�����һλ�ǿո�
:: ����ȡ�ļ�����ʱ��û��������⣬���� echo %str:\=&& 2>nul cd % �Ϳ�����(ע�⣺�������&&ǰһ���пո�һ��û�пո�)�� 
:: ��������ļ���ʱ������ʾ��һ�У�ECHO ���ڴ�״̬��֮�����ʾ
:: Code by 3742668 2006-10-20
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23919
setlocal ENABLEDELAYEDEXPANSION
    set str=c:\ab c\def\gh .exe\
    set num=1
    for /l %%i in (1,1,%num%) do set "str=!str:*\=!"
    echo %str:\= && 2>nul cd %
pause
