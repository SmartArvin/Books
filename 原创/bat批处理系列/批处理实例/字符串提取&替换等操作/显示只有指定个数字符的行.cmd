@echo off
goto begin

����1:�ı��ļ���
����2:Ҫ��ʾ���е��ַ���(��ʡ)
����Ҫ��ӡa.txt�е��ַ���Ϊ4����:
print.bat a.txt 4
����ֱ�Ӱ�Ҫ������ļ��Ϸŵ��ű��ļ��ϣ�Ȼ����ʾ������
Ч�ʷǳ���
code by 3742668   2006-8-14

:begin
setlocal ENABLEDELAYEDEXPANSION
set var=%2
if "%var%" == "" set /p var=����Ҫ��ʾ���е��ַ���:
for /l %%i in (1,1,%var%) do set str=!str!.
findstr /x %str% %1
pause>nul
goto :eof

@echo off
:: ��ʾֻ��4���ַ����ı���
:: test.txt��ֻ�д���ĸ���޿ո��޿���
:: ��Ϊ��ȫ�Ľ���������Ч�ʵ���
:: code by jm 2006-8-14
for /f %%i in (test.txt) do (
    set str=%%i
    set var=%%i
    call :loop
    set num=0
)
pause
goto :eof

:loop
set var=%var:~0,-1%&& set /a num+=1
if not "%var%"=="" goto loop
if %num% equ 4 echo %str%
goto :eof

@echo off
:: ͨ����β�����ַ����жϣ�Ч�ʽϸ�
:: �ʺ����д��ո�����
:: ����������ַ���ֻ�жϵ�5λ���ַ�����������
:: code by 3742668
setlocal ENABLEDELAYEDEXPANSION
for /f "delims=" %%i in (test.txt) do (
    set str=b%%ie
    if not "!str:~5,1!" == "" if "!str:~6,1!" == "" echo. %%i
)
pause
goto :eof