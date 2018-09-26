::什么是回显？就是指运行批处理文件时，每条批处理命令；关闭回显就是不显示命令内容
::eg:  C:\Users\YZH\Desktop\bat_test>echo hello,World!!!


::输出当前是echo off还是echo on
::echo

::关闭单行回显
::@

::从本行开始关闭回显
::@echo off 

::从下一行开始关闭回显
::echo off

::从本行开始打开回显 
@echo on

::从下一行开始打开回显 
::echo on

::输出一个回车键（换行）
::echo.
echo hello,World!!!
pause