@echo off&setlocal enabledelayedexpansion
set a=���������������������������������������� 
set b=
color fc
mode con cols=52 lines=11
echo/&echo\
set/p=       ����������      ��q��r   �ҩ�������<nul&echo.
set/p=       ���쳤����  �� /���Ũ�\ �� �멧��Զ��<nul&echo.
set/p=       ���ؾé���      ��  ��     �㩧ӵ�Щ�<nul&echo.
set/p=       ��������     �Ұ���һ����    ��������<nul&echo.
set/p=        ������......<nul&echo.
set/p=<nul&echo.
for /l %%a in (1,1,19) do (
set /a d=%%a*2+6
call :pp %%a
)
pause>nul
:pp
set/p=      !a:~0,%1!<nul&set/p=!b:~0,%d%!<nul
ping -n 1 127.1>nul
goto :eof
