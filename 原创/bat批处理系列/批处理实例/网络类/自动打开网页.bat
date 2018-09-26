@ECHO OFF  
title 常用网址速查表 
echo 本批处理由欲望无限制作，转载请留下此信息
set /p CONVERT=   打开"批处理论坛(按b),百度网页(按p)" 
if "%CONVERT%"=="b" goto a
if "%CONVERT%"=="p" goto b
:a
START IEXPLORE http://bbs.verybat.cn
exit
:b
START IEXPLORE http://www.baidu.com