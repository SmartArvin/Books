@echo off
:: ����һ�е����ָ��Ƶ�ǰ��һ�еĺ���,���ÿո�ֿ�
setlocal enabledelayedexpansion
for /f %%i in (test.txt) do (
    set /a count+=1
    set first=!second!
    set second=%%i
    if !count! gtr 1 echo !first! !second!
)
pause
