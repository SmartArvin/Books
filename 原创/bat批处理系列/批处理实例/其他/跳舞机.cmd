@echo off
:: ģ���������ʾ�任��ͼ��
:: Code by JM 2007-1-14 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26672
mode con cols=40 lines=20
set str=���������I�J�L�K������������

:begin
for /l %%i in (1,1,9) do set n%%i=  
set /a num=%random%%%14
call set char=%%str:~%num%,1%%
set /a num=%random%%%9+1
set n%num%=%char%
call :result
goto begin

:result
cls
echo.
echo.
echo.
echo.
echo.
echo           �������Щ����Щ�����
echo           �� %n1% �� %n2% �� %n3% ��
echo           �������੤���੤����
echo           �� %n4% �� %n5% �� %n6% ��
echo           �������੤���੤����
echo           �� %n7% �� %n8% �� %n9% ��
echo           �������ة����ة�����
ping -n 2 127.1>nul
goto :eof