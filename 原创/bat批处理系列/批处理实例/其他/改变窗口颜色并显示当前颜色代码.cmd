:: �ı䴰����ɫ����ʾ��ǰ��ɫ����
@echo off

:: Code by JM 2007-1-14 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26707

for %%i in (0 1 2 3 4 5 6 7 8 9 a b c d e f) do (
    for %%j in (0 1 2 3 4 5 6 7 8 9 a b c d e f) do (
        if %%i neq %%j (
            cls
            echo ��ǰ��ɫ�����ǣ�color %%i%%j
            color %%i%%j
            pause
        )
    )
)
exit

@echo off

:: Code by JM 2007-1-14 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26707

setlocal enabledelayedexpansion
set str=0123456789abcdef

for /l %%i in (0,1,15) do (
    for /l %%j in (0,1,15) do (
        if %%i neq %%j (
            cls
            echo ��ǰ��ɫ�����ǣ�color !str:~%%i,1!!str:~%%j,1!
            color !str:~%%i,1!!str:~%%j,1!
            pause
        )
    )
)
exit