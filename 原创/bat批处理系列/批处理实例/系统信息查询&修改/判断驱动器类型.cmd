@echo off
:: ��Ȿ�ش��ڵ����������ж�����
:: fsutil����߱�����ԱȨ�޲��ܹ�����
:: code by pip modified by jm 2006-9-1��9-17
setlocal enabledelayedexpansion
for /f "delims=\" %%i in ('fsutil fsinfo drives^|find /v ""') do (
    set var=%%i
    set drive=!var:~-2!
    fsutil fsinfo drivetype !drive!|find /i "CD-ROM">nul && echo !drive!
)
pause
goto :eof

@echo off
:: code by 3742668 2006-12-6 CMD@XP
    set /p x=�����̷�:
    for /f "skip=1" %%i in ('wmic logicaldisk where "deviceid='%x%:'" get Description 2^>nul') do set type=%%i
    if not defined type set type=��������������!    
    echo %x%:�̵�����Ϊ: %type%
    pause>nul
goto :eof


�������������� info.txt ������ȡ�Ϳ����ж������ˣ��������ԱȨ��
:: code by 3742668 2006-12-6 CMD@XP
start msinfo32 /categories +componentsstoragedrives /report info.txt

