@echo off
:: ��ʾ�����û��ʺ���Ϣ
:: code by jm 2006-11-25
cd.>netuser.txt
for /f "skip=4 tokens=1-3" %%i in ('net user') do (
    if not "%%i"=="����ɹ���ɡ�" net use %%i>>netuser.txt 2>nul
    if not "%%j"=="" net user %%j>>netuser.txt 2>nul
    if not "%%k"=="" net user %%k>>netuser.txt 2>nul
)
start netuser.txt
ping -n 2 127.1>nul
del netuser.txt