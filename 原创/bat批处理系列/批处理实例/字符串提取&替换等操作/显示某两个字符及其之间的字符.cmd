::���������� af  ����ʾ
::a
::b
::c
::d
::e
::f
::ÿ����ĸռһ�а�``��֪�ܲ���ʵ��.. 

@echo off
:: Code by JM 2007-1-9 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26491
:begin
cls
set str=a b c d e f g h i j k l m n o p q r s t u v w x y z
set input=
set /p input=      ��������ĸ��Χ(��af)��
call set str=%%str:%input:~0,1%=-��%input:~0,1%%%
call set str=%%str:%input:~-1%=%input:~-1%��%%
for /f "tokens=2 delims=��" %%i in ("%str%") do set str=%%i
for %%i in (%str%) do echo %%i
pause
goto begin

@echo off
:: Code by JM 2007-1-9 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26491
set str=a b c d e f g h i j k l m n o p q r s t u v w x y z
:begin
cls
set flag=0
set var=
set input=
set /p input=      ��������ĸ��Χ(��af)��
for %%i in (%str%) do call :pickup %%i

:end
pause
goto begin

:pickup
if /i "%1"=="%input:~0,1%" set flag=1
if /i "%1"=="%input:~-1%" set flag=2
if %flag% equ 1 echo %1
if %flag% equ 2 echo %1&goto end
goto :eof

@echo off
:: �Ȱ��ַ�����ÿһ��Ԫ�ر��룬Ȼ����ת��
:: Code by youxi01 2007-1-9 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26491
setlocal enabledelayedexpansion

set str=a b c d e f g h i j k l m n o p q r s t u v w x y z
for %%i in (%str%) do set/a dec+=1 & set %%i=!dec! & set str!dec!=%%i
set en=
set /p en=��������ĸ��Χ(��af)��
set/a num1=!%en:~0,1%!,num2=!%en:~-1%!
for /l %%i in (%num1%,1,%num2%) do echo !str%%i!
pause>nul
goto :eof

@echo off
:: ͨ���Ƚ��ַ��ڲ�����Ĵ�С��ʵ�֣������Ժܴ�
:: Code by youxi01 2007-1-9 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26491
setlocal enabledelayedexpansion

set str=a b c d e f g h i j k l m n o p q r s t u v w x y z
set en=
set /p en=��������ĸ��Χ(��af)��
set str1=%en:~0,1%
set str2=%en:~-1%
for %%i in (%str%) do if %%i geq !str1! if %%i leq !str2! echo %%i
pause>nul
goto :eof

@echo off
:: ȱ�㣺�ٶȱȽ���
:: Code by PPdos 2007-1-9 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26491
:begin
set /p a="�Ϲ�� ���� :"
set str=a b c d e f g h i j k l m n o p q r s t u v w x y z
for %%i in (%str%) do echo %%i|findstr [%a:~0,1%-%a:~-1%]
pause
goto begin
