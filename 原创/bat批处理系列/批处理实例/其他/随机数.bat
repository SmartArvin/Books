@echo off 
echo �����������������������ֵ,��1-100������100 
set /p s= 
echo ��������ʾ�ĸ��� 
set /p g= 
cls 
set count=0 
:loop 
set /a num=%random%%%%s%+1 
if not defined num%num% ( 
set num%num%=%num% 
set /a count+=1 
call echo %%num%% 
) 
if %count% lss %g% goto loop 

pause>nul
