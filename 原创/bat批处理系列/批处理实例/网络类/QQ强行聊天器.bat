@echo off
title QQ强行聊天器 by:李源QQ:249973375      版权所有(C) 2007 盗版必究
color 1F
echo                  ....................................... 
echo                  . 本程序可用于任何QQ聊天              .
echo                  . QQ强行聊天器 by:李源QQ:249973375    .
echo                  . 使用说明 输入对方QQ后按回车就OK了!  .
echo                  .......................................
echo                          今天是%date%%time%
echo                            请先打开QQ!!
pause
echo              连接中,请稍候...
echo.
set,=========================================&for /l %%i in (1,1,40)do @call set/p= %%,:~%%i,1%%<nul&ping/n 1 127.1>nul
SET SEN=%A:~0,1%
SET SU=%A:~1,2%
echo 请输入对方QQ
:q
Set/p qq= 
start tencent://Message/?Uin=%qq%
echo ======完成======
pause
goto q