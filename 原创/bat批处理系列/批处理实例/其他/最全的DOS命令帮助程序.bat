@echo off
color 0e
:ks
cls
echo      ==========================
echo        欢迎使用批处理帮助程序
echo      %DATE%  （by：诗酒飘零）
echo      ==========================
echo.
echo      请输入你想查询的批处理命令?
echo       （q键退出；h键帮助）
echo.
set /p lc= ★命令★：
if %lc%==q goto e
if %lc%==h help
%lc% /? >a.txt

if errorlevel 1 goto no
if errorlevel 0 goto yes

:yes
start a.txt
goto ks

:no
echo      ==========================================
echo 找不到你要的批处理命令，请检查后重新输入命令！
echo      =========================================
del a.txt
pause
call %0


:e
del a.txt
exit
