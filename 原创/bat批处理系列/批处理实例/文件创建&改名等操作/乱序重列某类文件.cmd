@echo off
:: �����ȡ�ļ���
:: û�п��ǵ������ַ�������
:: Code by ���κ� 2006-7-27 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=22128
@echo off
if "%1" NEQ "$" (
        for /f "tokens=1,2 delims=:" %%a in ('"%~0" $^|sort') do @echo %%b
) else for /f "delims=" %%i in ('dir /b /a-d') do @call :sub %%i
goto :EOF

:sub
echo %random%:%*
goto :EOF

@echo off & setlocal
:: Code by willsort 2006-7-8 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=22128
dir %1 /a/s/w/-c | findstr "���ļ�">temp.txt
for /f %%i in (temp.txt) do set filenum=%%i
echo.FileNum:%filenum%
if exist temp.txt del temp.txt
goto :eof

@echo off
:: Code by zh159 2006-12-10 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=22128
for /f "delims=" %%i in ('dir/a-d/b *.mp3') do call set $%%random%%$%%i=$
for /f "tokens=1,2* delims=$=" %%i in ('set $') do echo %%j
pause
goto :eof



@echo off
:: �����ȡ�ļ���
:: Ч�ʵ���
:: dir �м���/-c�ܽ������еĶ���ȥ��
:: ע��delims=�����пո�
::   code by jm CMD@XP 2006-7-27
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=22128

if exist list.txt del /q list.txt
if exist num.txt del /q num.txt
echo �Ѿ��б����Ŀ��ţ�>num.txt
set _time=1
for /f "tokens=1 delims= " %%i in ('dir "Ҫ�������ļ���\*.mp3"^|find "���ļ�"') do set max=%%i
:loop
set num=%random:~-3%
set /a num=1%num%-1000
if %num% leq 0 goto loop
if %num% gtr %max% goto loop
for /f %%i in (num.txt) do if %%i equ %num% goto loop
for /f "tokens=1,2* delims=:" %%i in ('dir /a-d /b "Ҫ�������ļ���\*.mp3"^|findstr /n .') do (
  if %%i equ %num% (
    echo %%i>>num.txt & echo %%j>>list.txt && set /a _time+=1 && if %_time% lss %max% goto loop
  )
)
del /q num.txt
start list.txt
goto :eof

@echo off
:: Code by 3742668 2006-12-10 CMD@XP Ҫ���ļ������ƶȲ���̫��
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=22128
    set /a num=%random% %% 4 + 1
    dir /b /a-d | sort /+%num%
pause
exit /b 0
