@echo off
:: ���������滻�ַ���
:: ��������ð��ʱ���׵��ʼ�ļ�������ð��(���������Խ��)
:: ������Էֺſ�ͷ����
:: ������ȷ�����̾��(��Ϊ�����˱����ӳ�)
:: code by jm modify on 2006-11-1
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=22033

set file=
set /p file=  ���Ҫ������ļ����������ڣ�
set "file=%file:"=%"
for %%i in ("%file%") do set "file=%%~fi"
echo.
set replaced=
set /p replaced= �����뼴�����滻�����ݣ�
echo.
set all=
set /p all=  �������滻�ַ�����
cd.>"%file%_tmp.txt"
setlocal enabledelayedexpansion
for /f "tokens=1* delims=:" %%i in ('findstr /n .* "%file%"') do (
    set str=%%j
    if not "!str!"=="" set "str=!str:%replaced%=%all%!"
    >>"%file%_tmp.txt" echo.!str!
)
copy "%file%" "%file%_bak.txt" >nul 2>nul
move "%file%_tmp.txt" "%file%"
start "" "%file%"