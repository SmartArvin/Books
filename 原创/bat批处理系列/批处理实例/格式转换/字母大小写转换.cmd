@echo off
:: ��ĸ��Сдת��
:: ֻ��ʾ��Сдת��д
:: ��΢�޸�һ�´���Ϳ���ʵ�ִ�дתСд
:: �������뿴����һ���汾
:: Code by JM 2007-1-16 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26786

set str1=abcdefghijklmnopqrstuvwxyz
set str2=ABCDEFGHIJKLMNOPQRSTUVWXYZ

:main
cls
set str=
set /p str=    �������ַ���(�˳���ֱ�Ӱ��س�)��
if not defined str exit
cls
echo.
echo            ת��ǰ��"%str%"
echo.
for /l %%i in (0,1,25) do (
    call set char1=%%str1:~%%i,1%%
    call set char2=%%str2:~%%i,1%%
    call :change
)
echo ____________________________________________
echo.
echo            ת����"%str%"
echo.
echo                     �������������һ����ʾ...
pause>nul
goto main

:change
call set "str=%%str:%char1%=%char2%%%"
goto :eof

@echo off
:: Code by zh159 2007-1-16 CMD@XP
:: �����滻��䲻���ִ�Сд���ص�
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26786
:main
cls
set str=
set /p str=    �������ַ���(�˳���ֱ�Ӱ��س�)��
if not defined str exit
cls
echo.
echo            ת��ǰ��"%str%"
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set str=%%str:%%i=%%i%%
echo ____________________________________________
echo.
echo            ת����"%str%"
echo.
echo                     �������������һ����ʾ...
pause>nul
goto main