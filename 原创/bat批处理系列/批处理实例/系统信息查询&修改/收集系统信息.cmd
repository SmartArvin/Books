@echo off
:: code by 3742668 2006-9-23 CMD@XP
setlocal ENABLEDELAYEDEXPANSION
:start
    call :getinfo
    :loop
        ping 127.1 -n 1 2>nul 1>nul
        if "%diskfree%" == "" goto loop
    call :write
    start info.html
goto :eof

::**************************************************************
::                         �ɼ���Ϣ
::**************************************************************
:getinfo
    echo ���ڲɼ���Ϣ�����Ժ�...
    call :select "ip address" "ip"
    call :select "Physical Address" "mac"
    call :select "Default Gateway" "gateway"
    call :select "DNS Servers" "dns"
    call :select "Description" "netcard"
    for /f "delims=" %%i in ('ver') do set "osver=%%i"
    for /f "delims=" %%i in ('wmic logicaldisk where "Description='���ع̶�����'" get caption^,freespace ^| findstr /v /i "caption"') do set "diskfree=!diskfree!%%ikb^^<br^^>"
goto :eof


::**************************************************************
::              ����ipconfig�������ͨ�ú���
::**************************************************************
:select
    for /f "tokens=2 delims=:" %%i in ('ipconfig /all ^| findstr /i /c:%1') do if "!%~2!" == "" set "%~2=%%i"
goto :eof

::**************************************************************
::                     ������ҳ��ʽ�ļ�
::**************************************************************
:write
>info.html echo ^<html^>^<center^>^<font size=10^>�������Ϣ^</font^>
>>info.html echo ^<p^>������%date%^<p^>
>>info.html echo ^<table width="40%%" border=1 bgcolor="darkcyan"^>
>>info.html echo ^<tr^>^<td width="25%%"^>�û���:^</td^>^<td^>%username%^</td^>^</tr^>
>>info.html echo ^<tr^>^<td width="25%%"^>�������:^</td^>^<td^>%userdomain%^</td^>^</tr^>
>>info.html echo ^<tr^>^<td width="25%%"^>IP��ַ:^</td^>^<td^>%ip%^</td^>^</tr^>
>>info.html echo ^<tr^>^<td width="25%%"^>MAC��ַ:^</td^>^<td^>%mac%^</td^>^</tr^>
>>info.html echo ^<tr^>^<td width="25%%"^>���ص�ַ:^</td^>^<td^>%gateway%^</td^>^</tr^>
>>info.html echo ^<tr^>^<td width="25%%"^>DNS:^</td^>^<td^>%dns%^</td^>^</tr^>
>>info.html echo ^<tr^>^<td width="25%%"^>Ӳ��^<br^>ʣ��^<br^>�ռ�^</td^>^<td^>%diskfree%^</td^>^</tr^>
>>info.html echo ^</table^>^<table width="40%%" border=1 bgcolor="darkcyan"^>
>>info.html echo ^<tr^>^<td^>^<font size=5^>���Ĳ���ϵͳ�汾��Ϊ:^</font^>^</td^>^</tr^>
>>info.html echo ^<tr^>^<td^>^<font size=4^>%osver%^</font^>^</td^>^</tr^>
>>info.html echo ^<tr^>^<td^>^<font size=5^>�����ͺ�:^</font^>^</td^>^</tr^>
>>info.html echo ^<tr^>^<td^>^<font size=4^>%netcard%^</font^>^</td^>^</tr^>
>>info.html echo ^</table^>^</center^>^</html^>
goto :eof