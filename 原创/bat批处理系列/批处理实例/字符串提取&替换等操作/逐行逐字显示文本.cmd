@echo off
:: ���������Ķ��ı�
:: ���ܴ��������ַ�
:: �Ѱ��˫���Ż��ɿո񣬰ѵȺŻ��ɡ����������������ַ�
:: �ܴ����ԷֺŴ�ͷ����
:: �ܼ���unicode��ʽ���ı�
:: ÿ��֮���һ����ʾ
:: Code by JM 2007-2-2 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=24889

:: �汾һ��

for /f "delims= eol=" %%i in ('type %1') do (
    set "str=%%i"
    call set "str=%%str:"= %%"
    call :pickup
)
pause
goto :eof

:pickup
ping -n 1 127.1>nul
if "%str:~0,1%"=="=" set "str=��%str:~1%"
set /p "=%str:~0,1%"<nul
set "str=%str:~1%"
if defined str goto pickup
echo.&echo.
goto :eof

:: �汾����
@echo off
:: ��汾һ�ļ�������
::���� 1�����ܴ���unicode�ı�
:: ����2��ÿ��֮�䲻��ǿ�м��Ͽ��У�������ԭ����ʾ����
for /f "delims= eol=" %%i in ('findstr /n .* %1') do (
    set "str=%%i"
    call set "str=%%str:"= %%"
    call set "str=%%str:*:=%%"
    call :pickup
)
echo.
pause
goto :eof

:pickup
if not defined str echo.&goto :eof
if "%str:~0,1%"=="=" set "str=��%str:~1%"
set /p "=%str:~0,1%"<nul
ping -n 1 127.1>nul
set "str=%str:~1%"
if defined str goto pickup
echo.
goto :eof

:: �汾����
@echo off&setlocal ENABLEDELAYEDEXPANSION
:: ����ȷʶ��unicode��ʽ���ı�
:: ���ܴ��������ַ�
:: ���ܴ����ԷֺŴ�ͷ����
:: ����ı��еĸ�̾������
:: ʵ���ϣ�SET A="%1"��goto end �ı�ʾ�Ǵ����
:: Code by lxmxn 2006-11-19 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=24889
FOR /F "DELIMS=" %%A IN ('type %1') DO (CALL;:__;"%%A")
endlocal&PAUSE&goto :EOF

::��ʾ�ַ��Ӻ���������������������������-
:__
        SET A="%1"
        SET B=0
        if "%A%"=="" goto end
        :BEGIN
        IF NOT "!A:~%B%,1!"=="" (
                SET/P=!A:~%B%,1!<NUL
                PING 127.1 -N 1 >NUL
                SET/A B+=1
                GOTO BEGIN
        ) else (
        :end
        echo/&echo\
        )