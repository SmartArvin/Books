@echo off
title ������·��ѯ��-test
setlocal enabledelayedexpansion
goto begin

���ܣ�
������ ������·���ƣ���ʾ����·������վ�㼰�����ճ�ʱ�䣻
������ �����ϳ�վ����³�վ�㣬��ʾ��ֱ��ĳ��Σ�����ʾÿ����·��������վ�㼰��֮�������վ�㼰�����ճ�ʱ�䣻
������ �ɲ�ѯ������·

���̣�
����1�������ѯ����
    2���ж��������ͣ���Ϊ���֡�����+��ĸ�����ѯ���Σ��������֣����ѯվ����Ϣ��
����3������ѯ���Σ�������ʾ��������ʾ���²�ѯ��
����4������ѯվ�㣬���ȼ���Ƿ���ڴ�վ�㣻�������ڣ�����ʾ���ý��Ƶ�վ���ѯ�������ڸ�վ�㣬��ֱ����ֻ��ʾֱ���ֱ�����ѯ���ˣ����޻��ˣ�����ʾ���²�ѯ����ʱ���н��Ƶ���ֹվ�㹩ѡ��

code by JM 2006-10-17��11-17   CMD@XP
������http://www.cn-dos.net/forum/viewthread.php?tid=24668

:begin
cls
set input=
set /p input=�����복�λ��ϡ��³�վ�㣺
:: ����ֻ�����������ֻ�����+��ĸ���������Ϊ��վ��
echo %input%|findstr /r "^[0-9][0-9]*[a-zA-Z]*$">nul &&(
    call :get_line %input%
    echo !num!
    echo !_time!
    echo !line_info:~1,-1!
    goto end
)
call :find_station %input%

rem ========== ��ѯ���α��ƥ�����·��Ϣ ==========

:get_line
:: ��ȡҪ��ѯ�ĳ��α�����ڵ���
cls
set line=
for /f "tokens=1* delims=:" %%i in ('findstr /nr "^%1·��$" ������·.txt') do (
    set line=%%i
    if not "!line!"=="" goto get_block
)
goto no-item

rem ========== ��ѯֱ�﷽�� ==========

:find_station
:: ֻ����ͬʱ��������վ��
if "%2"=="" goto begin
if not "%3"=="" goto begin
find "-%1-" ������·.txt>nul||goto no-start
find "-%2-" ������·.txt>nul||goto no-end
cls
set line=
set str=
set var=
for /f "tokens=1* delims=:" %%i in ('findstr /n "\-%1\-" ������·.txt') do (
    set line=%%i
    set str=%%j
    set str=!str:-%2-=!
    if not "!str!"=="%%j" (
        set var=%%j
        set var=!var:-%1-=-��%1��-!
        set var=!var:-%2-=-��%2��-!
        call :pick-up %input% !var!
        call :type_nostop
    )
)
:: ���û�ҵ�ֱ����·�����ѯ���˷���
if "%var%"=="" call :transfer %input%

:end
pause
goto begin

rem ========== ��ѯ���˷��� ==========

:: ������·ֻ�ܲ鵽ƥ��ĵ�һ�������ܲ��������·
:transfer
set first_line=
set first_id=
set first_time=
set second_line=
set second_id=
set second_time=
set link=
for /f "tokens=1* delims=:" %%i in ('findstr /n "\-%1\-" ������·.txt') do (
    set first_line=%%i&set str_start=%%j
    set stations_start=!str_start:-= !
    for /f "tokens=1* delims=:" %%k in ('findstr /n "\-%2\-" ������·.txt') do (
        set second_line=%%k&set str_end=%%l
        set stations_end=!str_end:-= !
        for %%m in (!stations_start!) do (
            for %%n in (!stations_end!) do (
                if "%%m"=="%%n" (
                    set link=%%m
                    set /a line=!first_line!-2&&call :get_block
                    set first_id=!num!
                    set first_time=!_time!
                    set /a line=!second_line!-2&&call :get_block
                    set second_id=!num!
                    set second_time=!_time!
                    goto type_change
                )
            )
        )
    )
)
if "%link%"=="" goto no-change


rem ���������������������� �ӹ��� ����������������������

rem ========== ��ȡĳ����·��������Ϣ ==========
:get_block
set /a line-=1
set count=
for /f "skip=%line%" %%i in (������·.txt) do (
    set /a count+=1
    if !count! equ 1 set num=%%i
    if !count! equ 2 set _time=%%i
    if !count! equ 3 set line_info=%%i
    if !count! gtr 3 goto :eof
)

rem ========== ��ȡ�ϳ�վ�㵽�³�վ��֮�������վ�� ==========
:pick-up
for /f "tokens=2-4 delims=��" %%i in ("%3") do set var=%%i%%j%%k
:: �ж��������ֹ���� ������·.txt �е��Ⱥ�˳��
:: �Ծ����Ƿ�������ʾ�����Ϣ
for /f "tokens=1 delims=-" %%i in ("!var!") do if "%%i"=="%2" call :reverse
goto :eof

rem ========== ��ʾֱ�﷽����Ϣ ==========

:type_nostop
set /a line-=2
call :get_block
echo ���� %num:~0,-2% ·��(%_time%)��%var%
echo.
goto :eof

rem ========== ��ʾ���˷�����Ϣ ==========
:type_change
echo ������� %link%
echo.
set str_start=!str_start:-%1-=-��%1��-!
set str_start=!str_start:-%link%-=-��%link%��-!
echo �ȴ�� %first_id:~0,-2% ·�� %link% վ�³���Ȼ�󻻳� %second_id:~0,-2% ·���ɣ����˷���Ϊ��
echo.
call :pick-up %1 %link% %str_start%
echo %first_id:~0,-2%·(%first_time%)�� %var%
set str_end=!str_end:-%2-=-��%2��-!
set str_end=!str_end:-%link%-=-��%link%��-!
echo.
call :pick-up %1 %2 %str_end%
echo %second_id:~0,-2%·(%second_time%)�� %var%
echo _____________________________________________________________
goto :eof

rem ========== ������ʾվ����Ϣ ==========
:reverse
set var=%var:-= %
set str=
for %%i in (%var%) do set str=%%i-!str!
set var=%str:~0,-1%
goto :eof



rem ���������������������� ������Ϣ ����������������������

:no-start
cls
echo û���ҵ���Ϊ "%1" ���ϳ�վ��
pause
goto begin

:no-end
cls
echo û���ҵ���Ϊ "%2" ���³�վ��
pause
goto begin

:no-change
echo û���ҵ�ֱ����·��Ҳ�Ҳ���ֻתһ�γ��Ļ��˷���
pause
goto begin

:no-item
echo û���ҵ����α��Ϊ "%input%" �������Ϣ�������²���.
pause
goto begin