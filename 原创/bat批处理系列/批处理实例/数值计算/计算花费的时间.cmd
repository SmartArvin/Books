@echo off
:: �ж�һ���ű�ִ���������Ҫ��ʱ��
:: ��ȡ��ʼʱ�䣬Ȼ���ڼ���������ʱ��ȡ����ʱ��
:: ����ʱ�䶼�ֱ���ȡСʱ���ֺ�����
:: �ֱ��Сʱ�������������������в���
:: ��Ҫ��08��09�����������в���
:: ע�⣺set /a num=�ĸ�ʽֻ�ܴ�����λ�����Ƿ��λΪ0������Ƕ�λ��
::       Ҫȥ��λ������0�Ļ���Ҫ��ѭ�����Ը�λ�Ƿ�Ϊ0�����ڸ�λ��1Ȼ��
::       �ټ�ȥ1000֮������ֵķ���
:: code by JM 2006-9-5��10 CMD@XP ��лpengfei����
set time_begin=%time:~0,-3%
echo �ű���ʼ����ʱ���� %time_begin%
:: С��10��Сʱ��ǰ�пո�Ҫ��ȥ�ո����
for /f "tokens=1,2,3 delims=:" %%i in ("%time_begin%") do (
    set /a hour_b=%%i
    set /a munite_b=%%j
    set /a second_b=%%k
)
pause
set time_end=%time:~0,-3%
for /f "tokens=1,2,3 delims=:" %%i in ("%time_end%") do (
    set /a hour_e=%%i
    set /a munite_e=%%j
    set /a second_e=%%k
)
call :time_lapse
echo �ű��������е�ʱ���� %time_end%
echo �������� %hour_% Сʱ %munite_% �� %second_% ��
pause>nul
goto :eof

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

����һ�ַ���(Code by Pengfei)��
@echo off
::11:08:25.45
:: ���г����ʱ��ͳ��
set _time_start=%time%
set /a hour_start=%_time_start:~0,2%
set /a minute_start=1%_time_start:~3,2%-100
set /a second_start=1%_time_start:~6,2%-100
echo %time%
echo %hour_start%
echo %minute_start%
echo %second_start%
pause
:: ���������ʱ��ͳ��
set _time_end=%time%
set /a hour_end=%_time_end:~0,2%
set /a minute_end=1%_time_end:~3,2%-100
set /a second_end=1%_time_end:~6,2%-100
echo %time%
echo %hour_end%
echo %minute_end%
echo %second_end%
pause

:: ��������
if %second_end% lss %second_start% (
    set /a second_end=%second_end%+60
    set /a minute_end=%minute_end%-1
)
set /a second=%second_end%-%second_start%

:: ���������
if %minute_end% lss %minute_start% (
    set /a minute_end=%minute_end%+60
    set /a hour_end=%hour_end%-1
)
set /a minute=%minute_end%-%minute_start%

:: ����Сʱ��
if %hour_end% lss %hour_start% (
    set /a hour_end=%hour_end%+24
)
set /a hour=%hour_end%-%hour_start%

echo %hour%:%minute%:%second%
pause