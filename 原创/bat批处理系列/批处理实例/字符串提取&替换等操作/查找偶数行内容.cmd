@echo off
:: ����ż��������
:: code by hitme
set n=0
for /f "delims=" %%i in (test.txt) do set /a n+=1
for /l %%i in (1,2,%n%) do (
    findstr /n "." test.txt|findstr /r "^%%i:">>tmp.txt
)
for /f "tokens=1* delims=:" %%i in (tmp.txt) do echo %%j>>end.txt
del tmp.txt
start end.txt

goto :eof

��һ�ַ���
:: ��������ʱ�ļ��������ٶ�Ҫ��ö�
:: findstr�������.*�����ڿ��е�λ�û���ʾ"ECHO ���ڹر�״̬��"��
:: �����.���򲻻��ӡ����
:: code by jm CMD@XP 2006-7-29
@echo off
cd.>result.txt
setlocal enabledelayedexpansion
for /f "tokens=1* delims=:" %%i in ('findstr /n "." test.txt') do (
    set num=%%i
    call :mod
    if !mod! equ 0 echo %%j>>result.txt
)
start result.txt
goto :eof

:mod
set /a mod=%num%%%2
goto :eof

����һ�δ����ԼӸ��죬�Ϳ���ȥ���ı��еĿ���
@echo off
cd.>tmp.txt
for /f "tokens=1* delims=:" %%i in ('findstr /n "." test.txt') do (echo %%j>>tmp.txt)
cd.>result.txt
:: ���ı��еĿ���������δ֪����ʱ(����ҳ�и��ƹ���������������)��
:: ���ڿ��д���ʾ"ECHO ���ڹر�״̬��"�����´�����ɾ����������
findstr /v "\<ECHO ���ڹر�״̬��\>" tmp.txt>>result.txt
del /q tmp.txt
start result.txt