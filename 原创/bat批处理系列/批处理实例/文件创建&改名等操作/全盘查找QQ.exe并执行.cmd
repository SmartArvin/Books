@echo off
:: ȫ�̲���qq.exe���ҵ�֮���ִ�в��˳�CMD����
:: code by jm 2006-9-14 CMD@XP
:: fsutil fsinfo drives �ó����Ľ����Ȼ�м��пո񣬵����������ǻس������߻��з������ã����Ի�Ҫ��find /v�����ˣ�����ֻ�õ���һ������
setlocal enabledelayedexpansion
for /f "delims=\" %%i in ('fsutil fsinfo drives^|find /v ""') do (
    set var=%%i
    set drive=!var:~-2!
    fsutil fsinfo drivetype !drive!|find "�̶�">nul && (
        for /f "tokens=*" %%j in ('dir /a-d /b /s !drive!\qq.exe 2^>nul') do if not "%%j"=="" start "" "%%j" && exit
    )    
)