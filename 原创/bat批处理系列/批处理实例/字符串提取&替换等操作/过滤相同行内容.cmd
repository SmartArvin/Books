@echo off
:: mode con lines=25
:: ��������˼·��
:: �Ƚ��������е�����
:: ���ǰ����������ȣ�����������в���ȣ���ȡ�ڶ��е����ݷ���repetition.txt
:: ���ѭ��
:: ����for֮��
:: ������һ�к͵����ڶ���������ȣ�������һ�����ݷ���repetition.txt
:: �����for��repetition.txt�����ж�����Ϣ����ԭ�ļ��а���Щ��Ϣ���˵�
:: ���׵Ŀո񽫱����ԣ����н�����ɾ��(�Ҳ�����ͳ������)
:: Ч�ʾ��˵ظ�

:: ���ܴ���ķ����У�
:: �ܵ�����:|
:: ���ӷ��ţ�&��&&��||
:: �ض�����ţ�<��<<��>��>>
:: ת����ţ�^
:: �����ַ���"��;��:��\(�����������ǿ��Ե�)

:: �׶ˣ�
:: findstr���������������ַ���(�����Ƕ��٣�)

:: Code by JM,Thanks to NaturalJ0
:: build on 2006-9-4��2006-9-
:: ��Ҫ���ƻ��߿����Ĺ��ܣ�
:: �����õ���ʱ�ļ��Ĵ���ͳ�Ʊ����˵�����������ʱ����ʾ����Ӧ�����ļ�����
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=18996

cls
title ��ͬ�����ݹ�����-������...
call :blank
call :blank
echo                          ���ڴ��������ĵȴ�...
:: ������ʼʱ����
set time_begin=%time:~0,-3%
for /f "tokens=1,2,3 delims=:" %%i in ("%time_begin%") do (
    set /a hour_b=%%i
    set /a munite_b=%%
    set /a second_b=%%
)

set lines_total=0
set count_same=0
>sort.txt sort<test.txt
cd.>repetition.txt
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in (sort.txt) do (
    set first=!second!
    set second=!third!
    set third=%%i
    set /a lines_total+=1
    call :comp_
)
:: ��%second%δȡ��ֵ��ʱ��Ҫ����repetition.txt��¼echo��״̬
if not "%second%"=="" if "%second%"=="%third%" >>repetition.txt echo %third%&& set /a count_same+=1
:: û���ظ������򲻶�ԭ�ļ������˴���
findstr . repetition.txt>nul||(del /q repetition.txt & goto :result)
copy test.txt test.bak>nul
for /f "tokens=*" %%i in (repetition.txt) do (
    findstr /v "\<%%i\>" test.txt>>tmp.txt
    del /q test.txt
    ren tmp.txt test.txt
)
:result
for /f "tokens=*" %%i in (test.txt) do (
    set /a lines_spare+=1
)
if "%lines_spare%"=="" set lines_spare=0
:: ���ı����ݳ���3�У��Ҵ�������ͬ�����Ŀո�Ϊ���ݵ���ʱ
:: repetition.txt���¼echo��״̬���ᵼ��ͳ�Ʋ�׼ȷ
:: ���Ի�Ҫ��ͨ���Ƚϴ���ǰ�������Ƿ���ͬ��У��ͳ������
if "%lines_total%"=="%lines_spare%" (del /q repetition.txt&set count_same=0)
set /a lines_del=%lines_total%-%lines_spare%
cls
title ��ͬ�����ݹ�����-���˽��
call :blank
echo ��������������������������������������������������������������������������������
echo                   ԭ�ļ����� %lines_total% ��;���� %count_same% ���ظ���¼.(δ�������)
echo                   �������ļ���ʣ %lines_spare% ��.(δ�������)
echo                   ��ɾ���������ܼ� %lines_del% ��

rem ======���㻨�ѵ�ʱ��========
set time_end=%time:~0,-3%
for /f "tokens=1,2,3 delims=:" %%i in ("%time_end%") do (
    set /a hour_e=%%
    set /a munite_e=%%j
    set /a second_e=%%k
)
call :time_lapse
echo                   ��ʱ�� %hour_% Сʱ %munite_% �� %second_% ��.
echo.
echo                   test.txtΪ�������ļ���test.bakΪԭʼ�ļ��ı���
echo                   sort.txtΪԭʼ�ļ����ݵ������ļ�������Ժܷ����
echo               �鿴�ı������ظ�����ظ������
echo                   repetitionΪ�ظ��е����ݣ��������У���ԭʼ�ı�û
echo               ���ظ��У�����ļ�������.
echo ��������������������������������������������������������������������������������
call :blank
echo                                                                 ��������˳�...
pause>nul
goto :eof

:comp_
:: ��%second%������������ȫ��ȡ����ֵ��ʱ��Ҫ����repetition.txt��¼echo��״̬
if not "%first%"=="" (
  if not "%second%"=="" (
    if "%second%"=="%first%" (
      if not "%second%"=="%third%" >>repetition.txt echo %second%&& set /a count_same+=1
    )
  )
)
goto :eof

rem =====�������г��򻨷ѵ�ʱ��========
:time_lapse
:: һ��Ҫ���� ��=>����=>Сʱ ��˳�����
if %second_e% lss %second_b% (
    set /a munite_e=%munite_e%-1
    set /a second_e=%second_e%+60
)
set /a second_=%second_e%-%second_b%
if %munite_e% lss %munite_b% (
    set /a hour_e=%hour_e%-1
    set /a munite_e=%munite_e%+60
)
set /a munite_=%munite_e%-%munite_b%
if %hour_e% lss %hour_b% (
    set /a hour_e=%hour_e%+24
)
set /a hour_=%hour_e%-%hour_b%
goto :eof

:blank
echo.
echo.
echo.
echo.
goto :eof