@echo off
:: Ŀ�ģ�
:: ������ȡ·����ָ��������ַ���
:: ˼·��
::  ����ͨ��call�����β����shift����ȡ
:: 
:: Code by JM 2006-12-29 CMD@XP

set num=0
set layers=2
set "route=c:\a&bc\!dx\test dos\123.txt"
set "str=%route:\=" "%"
call :pick-up "%str%"
echo "%var:~0,-1%"
pause
goto :eof

:pick-up
set "var=%var%%~1\"
shift
set /a num+=1
if not "%~1"=="" if %num% leq %layers% goto pick-up
goto :eof