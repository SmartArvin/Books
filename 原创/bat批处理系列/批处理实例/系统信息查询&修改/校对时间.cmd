@echo off
:: У��ʱ�䣬�ڲ�����time������������Ч
:: Code by ���ò��� 2006-10-27 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=24252
net stop w32time>nul 2>nul
net time /SETSNTP:time.windows.com>nul 
net start w32time>nul 