@echo off
:: �ų�ָ�����ļ��У�ɾ�������Ŀ¼
:: config.ini ����ļ��и�ʽΪ��,+Ҫ�ų����ļ�����+,
:: code by jm 2006-12-19

for /f "delims=" %%i in ('dir /ad /b') do findstr /i /c:",%%i," config.ini>nul||echo "%%i"
pause
goto :eof

@echo off
:: echo֮���ٹܵ���find�ķ����Ƚ���
set dir_=,program files,Documents and Settings,
for /f "delims=" %%i in ('dir /ad /b') do (
    echo "%dir_%"|find /i ",%%i,">nul||echo "%%i"
)
pause