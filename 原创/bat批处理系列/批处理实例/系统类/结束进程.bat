@echo off
echo                      方便结束无法结束的进程
title                           结束进程
color fc
echo                       请选择结束的方法
set tm1=%time:~0,2%
set tm2=%time:~3,2%
set tm3=%time:~6,2%
echo                    北京时间：%tm1%点%tm2%分%tm3%秒
echo                  输入 1 后按回车键，结束常见的进程
echo                  输入 2 后按回车键, 结束困难的进程
echo                  输入 3 后按回车键，选择退出
echo                  欢迎加入非常批处理
echo                  网站:bbs.verybat.cn
echo                                           by：星云
echo.
@set /p start=请选择 (1、2、3=退出) 后按回车键:
if "%start%"=="1" goto 1
if "%start%"=="2" goto 2 
if "%start%"=="3" goto 3
:1
start taskmgr.exe
set/p a=请输入结束进程的名字(不要输入进程后面的.exe):
taskkill /f /im %a%.exe
@taskkill /f /im taskmgr.exe
cls
echo 已经结束完....
pause>nul
exit
:2
start taskmgr.exe
set/p a=请输入结束进程的名字(不要输入进程后面的.exe):
ntsd -c q -pn %a%.exe
@taskkill /f /im taskmgr.exe
cls
echo 已经结束完....
pause>nul
exit
:3
exit