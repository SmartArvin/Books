@echo off
:: �����д��3742668 �����޶���namejm www.cn-dos.net

::���ø�ʽ��
call :select "ip address" "ip"
call :select "Physical Address" "mac"
call :select "Default Gateway" "gateway"
call :select "DNS Servers" "dns"
call :select "Description" "netcard"

:: ��ʾЧ��
echo.
echo.
echo             �� ӭ ʹ �� �� �� ֹ ˮ �� �� �� �� �� Ϣ �� �� ��  
color a
echo.
echo.
echo.
echo               ����IP:%ip%
echo               ����MAC:%mac%
echo               ����DNS:%dns%
echo               ����IP:%gateway%
echo               ��������:%netcard%
ipconfig /all >d:\ipconfig.txt
echo.
echo                 �Ѿ�������Ϣ����D:\ipconfig.txt
echo 000000000000000000000000000000000000000000000000000000000000000000000
pause>nul
goto :eof

::**************************************************************
::              ����ipconfig�������ͨ�ú���
::**************************************************************
:select
    for /f "tokens=2 delims=:" %%i in ('ipconfig /all ^| findstr /i /c:%1') do if not "!%~2!" == "" set "%~2=%%i"
goto :eof