@echo off
:: Code by JM 2006-7-21 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=21989
dir /a /b "Ŀ���ļ���"|findstr .>nul&& echo ���ļ� || echo û���ļ�
pause
goto :eof

@echo off
:: ̽����ļ���
:: Code by jm 2007-1-5 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25398
set flag=
for /f %%i in ('dir /a /b "Ŀ���ļ���"') do set flag=1
if defined flag (echo �ļ��зǿ�) else echo ���Ǹ����ļ���
pause
goto :eof