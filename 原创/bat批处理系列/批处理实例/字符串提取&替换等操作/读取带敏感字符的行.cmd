:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25570

@echo off
:: ��ͨ�� for+findstr ������Էֺſ�ͷ����
:: findstr /n .* ��delims=:�󣬻�����������е�ð��
:: ����!��&��.�����������Ҫ����
:: ���´������׼ȷ��ȡ��Щ�����ַ�
:: ����� setlocal ���ݹ�������(setlocal ����Ƕ�״�����15������ʱ�����������)
:: �ܼ������
:: code by jm 2006-12-12 thanks 3742668 CMD@XP
set num=0
for /f "delims=" %%i in ('findstr /n .* test.txt') do (
    set /a num+=1
    set "str=%%i"
    setlocal enabledelayedexpansion
    echo �� !num! �У� !str:*:=!
    endlocal
)
pause
goto :eof


@echo off
:: ����15������ʱ������� setlocal ���ݹ�������
:: code by 3742668 2006-12-11 CMD@XP
@echo off
    setlocal enabledelayedexpansion
    set num=
    for /f "eol= delims=" %%i in ('findstr .* a.txt') do (
        setlocal DISABLEDELAYEDEXPANSION
        set "tmpstr=%%i"
        setlocal enabledelayedexpansion
        set /a num += 1
        set "!num!=!tmpstr!"
    )
    for /l %%i in (1,1,%num%) do echo ��%%i��: !%%i!
    pause
exit /b 0

@echo off
:: ������ȷ��ȡ����̾�ŵ�����
:: code by jm 2006-12-11 CMD@XP 
set num=0
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('findstr /n .* test.txt') do (
    set /a num+=1
    set "str=%%i"
    echo �� !num! �У� !str:*:=!
)
pause
goto :eof

@echo off
:: ���Ҫ������������
:: code by jm 2006-12-11 CMD@XP 
set num=0
::setlocal enabledelayedexpansion
for /f "delims=" %%i in ('findstr /n .* test.txt') do (
    set /a num+=1
    set "str=%%i"
    call :display
)
pause
goto :eof

:display
echo �� %num% �У� "%str:*:=%"
goto :eof



test.txt������

:abc
::xy
;
;;;ef &
;:;
::;;
||
&

^
!<
!
%

"
""
'
test
abc
