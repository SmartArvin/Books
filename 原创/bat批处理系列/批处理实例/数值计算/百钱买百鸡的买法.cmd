@echo off
:: ��100��Ǯ�򼦣��۸�����:��:5$, ĸ:3$, С:1$��ֻ��һ���������򷨣�
:: Code by JM 2007-1-6 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27488
setlocal enabledelayedexpansion
for /l %%i in (0,1,20) do (
    for /l %%j in (0,1,33) do (
        for /l %%k in (0,2,100) do (
            set /a money=5*%%i+3*%%j+%%k/2
            set /a chook=%%i+%%j+%%k
            if !money! equ !chook! if !money! equ 100 (
                set /a num+=1
                echo !num!: %%i+%%j+%%k
            )
        )
    )
)
echo.
echo      ��Ǯ��ټ������� %num% ���򷨡�
echo.
pause