@echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://xmve.com /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t reg_sz /d http://xmve.com /f
echo.
cls
color a
echo.
echo.
echo        �� ϲ �㡣�� �� �� �� ֹ ˮ �� �� ҳ �� �� ��  http://xmve.com �� ����
echo.
echo        �� �� �� �� �� �� BAT �� �� ֵ�� л л!  ���治���֣������ǲ��Ǻܵ���
echo.
echo.
pause