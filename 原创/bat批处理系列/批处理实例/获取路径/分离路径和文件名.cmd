:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23919

@echo off
:: ��ȡĳ��·����ʽ�ַ�����ָ���ڵ��ַ���
:: code by jm 2006-12-11 CMD@XP
set "str=c:\t est\abc.txt\cd &h\yes ! h"
for /f "tokens=2* delims=\" %%i in ("%str%") do echo "%%i\%%j"
pause
goto :eof

@echo off
:: ��ȡ��ǰĿ¼��
:: ��·���к��пո񡢸�̾�š���š�&��~��ʱ��Ҳ����ȷ��ȡ
set "cd_=%cd%"

:loop
set "cd_=%cd_:*\=%"
set "cd_tmp=%cd_:\=%"
if not "%cd_tmp%"=="%cd_%" goto loop
echo "%cd_%"
pause
goto :eof

@echo off
:: ��ȡĳ��·����ʽ�ַ�����ָ���ڵ��ַ���
:: ͨ��set��\�滻���������������Ŀո�Ȼ����for����ȡ
:: ͨ��forѭ������shift��ָ����ε��ַ�������%1
:: �÷����Ѿ��ܴ�����ո��·�������ͨ����
:: code by 3742668 2006-10-20 CMX@XP
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
:: ��ȡָ����ε��ļ�(��)��
:: ����һ��echo���Ի����κ�һ������
:: �п��ܻ��¼echo�ĵ�ǰ״̬
:: �ѵ�����ȥ����󼸸�\�ָ�������
:: code by 3742668 2006-10-20 CMD@XP
setlocal ENABLEDELAYEDEXPANSION
set str=c:\ab c\def\gh .exe
set num=3
for /l %%i in (1,1,%num%) do set "str=!str:*\=!"
echo %str:\=&& 2>nul echo%
pause


@echo off
:: ��ȡĳ��·����ʽ�ַ�����ָ���ڵ��ַ���
:: ͨ��set��\�滻���������������Ŀո�Ȼ����for����ȡ
:: �÷����߱��ϴ��ͨ���ԡ������˲��ܴ�����ո��·��
:: code by 3742668 2006-10-18 CMX@XP
set file=c:\abc\def\ghi.xyz
set file=%file:\=" "%
call :Get "%file%"
pause
goto :eof

:Get
for /f "tokens=3" %%i in (%*) do echo %%~i
goto :eof

@echo off
:: ��ȡ���һ��\֮����ַ���
:: ����set������\֮ǰ�������ַ�
:: �÷������ͨ���ԣ���չ֮����Ի�ȡ�����ε��ļ����������������һ��Ҫ��һ��
:: code by 3742668 2006-10-18
set file=c:\abc\def\hij.xyz
set str=%file%

:loop
set str=%str:*\=%
echo %str% | findstr /i "\\" >nul && goto loop
echo %file% ---^> %str%
pause

@echo off
:: ����·����ʽ�ַ��������һ��\ǰ�������
:: ͨ����ȡ���һ��\֮����ַ���������ļ���
:: ���㷨����յģ�Ҳ�������
:: code by jm 2006-10-5 CMD@XP
for /f "delims=" %%i in ("c:\te st\test.txt") do (
    set route=%%i
    set filename=
    call :separate
)
pause
goto :eof

:separate
if not "%route:~-1%"=="\" (
    set filename=%route:~-1%%filename%
    set route=%route:~0,-1%
    goto separate
    ) else (
    echo %filename% ����Ŀ¼��·��Ϊ %route:~0,-1%
)
goto :eof


����CMD�����ļ�����һ��©������ȡ�ļ���
(��©���������ǣ�ֻ�Ǽ򵥵ذ����һ��\����ַ��������ļ��������һ����ŵ����ļ�������չ���ķָ�����)
@echo off
:: code by 3742668  2006-10-18
    set file=c:\abc\efg\c
    call :Print "%file%"
pause
goto :eof

:Print
    echo %~nx1
goto :eof

@echo off
:: ͬ�������˸�©��
:: code by jm 2006-10-18
set file=c:\abc\efg\xxx.xxx
for "delims=" %%i in ("%file%") do echo %%~nxi
pause
goto :eof
