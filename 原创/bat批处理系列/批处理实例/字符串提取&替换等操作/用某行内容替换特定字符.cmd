@echo off
:: ��A.TXT�еĵ�һ���ַ�,�滻B.TXT�е�###�ַ�.
:: ����A.TXT�еĵڶ����ַ�,�滻B.TXT�е�@@@�ַ�.
::  ����
:: ���A.txt��M���к����ڵ�N����Ҫ�滻������S(M<N)�������S���滻B.txt�к��е�M���е�ƥ������
:: ���磺����A.txt�е�1�к����ڵڶ�����Ҫ�滻��@@@�������@@@�滻B.txt�к��е�һ�е�@@@��
:: ʹ�ø�ʽ��Ҫ�õ�M�е������滻S�����ڵ�M�е�λ���ϼ�һ�� call :_replace S
:: ����ڵ�N����û��Ҫ�滻�����ݣ���N�е�λ�ü� set num=N
setlocal enabledelayedexpansion
set num=0
call :_replace ###
call :_replace @@@
set num=3
call :_replace $$$
exit

:_replace
set /a num+=1
set char=%1
for /f "tokens=1,2* delims=:" %%i in ('findstr /n . A.txt') do if %%i equ %num% set str=%%j
for /f "delims=" %%i in (B.txt) do (
    set _str=%%i
    set "_str=!_str:%char%=%str%!"
    echo !_str!>>tmp.txt
)
move tmp.txt B.txt