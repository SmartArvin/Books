@echo off
:: �������ɴ�С����
:: test.txt�е�����Ϊһ�����飺123,456,2,1,6����
:: ���ı���һ��һ�����֣�����:_sortһ�δ���Ϳ����ˣ����ǣ�
:: ��Ҫע����ǣ� findstr /v ^!max!$ test.txt �����ܹ��˵����һ������
:: �������һ���Ǹ����С�Ҳ����˵��findstr�����е�ʱ��ֻ��ʶ���зָ����ţ�
:: û���зָ����ţ�����Ϊ��һ�С�
:: code by jm 2006-10,4 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23577
copy test.txt test.bak>nul
cd.>test.txt
for /f %%i in (test.bak) do call :split "%%i,:"

setlocal enabledelayedexpansion
:_sort
for /f %%i in (test.txt) do (
    set /a max=%%i
    for /f %%j in (test.txt) do (
        set /a num=%%j
        if !num! gtr !max! (set max=!num!) else (set max=!max!)
    )
    echo !max!
    >test1.txt findstr /v ^!max!$ test.txt
    move test1.txt test.txt
    goto _sort
)
move test.bak test.txt
pause
goto :eof

:split
for /f "tokens=1* delims=," %%i in (%1) do (
    >>test.txt echo %%i
    if not "%%j"==":" call :split "%%j"
)
goto :eof

::ͨ���Դ������ļ���С�������ֽ�������
::code by 3742668 2006-10-4
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23577
fsutil file createnew %%i %%i���ִ���ٶ�̫��������for /l %%j in (1,1,%%i) do echo.>>%%i��佫ʹЧ�ʴ�Ϊ����(-jmע)
@echo off
    set numbers=%random% %random% %random% %random% %random% %random% %random% %random%
    echo ����ǰ����Ϊ: %numbers%
    md sort_tmp && pushd sort_tmp
    for %%i in (%numbers%) do fsutil file createnew %%i %%i >nul
    echo ��С��������:
    dir /os /b
    popd && rd /s /q sort_tmp
pause
goto :eof

ͨ�����ִ�С�ıȽ�������
����ԭ���� call :sort_ !str:%num%=! һ��ᵼ�³���
��Ϊ����ǰ����е�%num%���û�Ϊ��
���ĳ����ֵ��������ֵ�г��֣�ִ�н���ͻ�������
�޸ĺ��Ѿ��������������(�����м��������˿ո�)
�����ظ���ֵ��ʱ�򣬽�ֻ��ʾһ��
@echo off
::code by 3742668 2006-10-4 modified by jm 2007-1-7
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23577
setlocal enabledelayedexpansion
    set numbers=%random% %random% %random% %random% %random% %random% %random% %random%
    echo ����ǰ����Ϊ: %numbers%
    call :sort_ %numbers%
    echo ���������Ϊ: %ret%
pause
goto :eof

:sort_
    set num=%1
    set str= %* 
    for %%i in (%*) do if !num! gtr %%i set num=%%i
    set ret=%ret% %num%
    if not "!str: %num% =!"=="" call :sort_ !str: %num% =  !
goto :eof

@echo off
:: ��ֵ��Χ��1��2147483647֮��(��)
:: ����ֵ���ظ���ʱ�򣬽�ֻ��ʾһ��
:: Code by JM 2007-1-7 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23577
echo ����ǰ�����
findstr /n . test.txt
echo.
echo.
echo                           �����������...
pause>nul
echo.
echo ����������
setlocal enabledelayedexpansion
set num=0
set max=1
for /f "delims=" %%i in (test.txt) do (
    set /a num+=1
    call :sort_ %%i
    echo !num!:!str!
    set str=
)
echo.
pause
goto :eof

:sort_
set var= %* 
:loop
for %%i in (%var%) do if %%i gtr !max! set max=%%i
set var=!var: %max% =  !
set str=!str! %max%
set max=1
set tmp=%var: =%
if not "%tmp%"=="" call :loop %var%
goto :eof