@echo off
:: ��ĳ��Ŀ¼������txt�е����е��ĸ��������
:: code by jm 2006-9-9 CMD@XP
set num=0
setlocal enabledelayedexpansion
:: ��ʵ��skip=2������ͷ���е�Ч�ʸ���
for %%i in (*.txt) do (
    set file=%%i
    for /f "tokens=1* delims=:" %%j in ('findstr /n . !file!') do (
        set var=%%k
        if %%j equ 3 (set num_=!var:~4,1!)&& set /a num=!num!+!num_!
    )
)
echo   ��Ӻ�Ľ���� %num%
pause
goto :eof

@echo off
:: ��ĳ��Ŀ¼������txt�ļ��е�ʮ�е����е��������
:: code by jm 2006-9-9 CMD@XP
setlocal enabledelayedexpansion
for %%i in (*.txt) do (
    set file=%%i
    set count=0
    for /f "skip=9 tokens=3" %%j in (!file!) do (
       set /a count+=1
       if !count! equ 1 set /a sum+=%%j
    )
)
echo   ��Ӻ�Ľ���� %sum%
pause