@ECHO OFF  
title ������ַ�ٲ�� 
echo ������������������������ת�������´���Ϣ
set /p CONVERT=   ��"��������̳(��b),�ٶ���ҳ(��p)" 
if "%CONVERT%"=="b" goto a
if "%CONVERT%"=="p" goto b
:a
START IEXPLORE http://bbs.verybat.cn
exit
:b
START IEXPLORE http://www.baidu.com