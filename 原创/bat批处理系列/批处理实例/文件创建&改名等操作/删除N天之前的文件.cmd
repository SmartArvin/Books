:: DateDel2.bat - ɾ��ָ��·����ָ��������ǰ�޸ĵ��ļ�
:: Will Sort - 2005-9-2 - CMD@WinXP
:: ע���������%1ָ������������Ϊ1��ǰ��Ϊ2����������
::           ����%1ָ���ļ�·����ʡ��ʱ������ǰ·��
:: �����㷨��Ritchie Lawrence, updated 2002-08-13. Version 1.1
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=16676

@echo off & setlocal ENABLEEXTENSIONS 
call :Date2Day %date:~0,10% sdays
set /a sdays-=%1
call :Day2Date %sdays% difdate
echo ��ɾ�� %cd% �� %difdate% ǰ���޸ĵ������ļ���
for /r %2 %%f in (*.*) do if "%%~tf" LEQ "%difdate%" echo "%%f"
goto :EOF

:Date2Day
setlocal ENABLEEXTENSIONS 
for /f "tokens=1-3 delims=/-, " %%a in ('echo/%1') do ( 
  set yy=%%a & set mm=%%b & set dd=%%c 
)
set /a dd=100%dd%%%100,mm=100%mm%%%100 
set /a z=14-mm,z/=12,y=yy+4800-z,m=mm+12*z-3,j=153*m+2 
set /a j=j/5+dd+y*365+y/4-y/100+y/400-2472633
endlocal&set %2=%j%&goto :EOF 

:Day2Date
setlocal ENABLEEXTENSIONS 
set /a i=%1,a=i+2472632,b=4*a+3,b/=146097,c=-b*146097,c/=4,c+=a 
set /a d=4*c+3,d/=1461,e=-1461*d,e/=4,e+=c,m=5*e+2,m/=153,dd=153*m+2,dd/=5 
set /a dd=-dd+e+1,mm=-m/10,mm*=12,mm+=m+3,yy=b*100+d-4800+m/10 
(if %mm% LSS 10 set mm=0%mm%)&(if %dd% LSS 10 set dd=0%dd%) 
endlocal&set %2=%yy%-%mm%-%dd%&goto :EOF 