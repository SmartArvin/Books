@echo off
rem ����������˲���/s ���ڵ���ע���ʱ����ȷ�ϡ�
echo ���ڰ�װ...
regedit.exe /s shell.reg
if exist c:\windows\system\Dxdiag.exe goto 98
xcopy C:\Docume~1\%USERNAME%\Mydocu~1\*.* D:\Personal\Mydocu~1\ /e /y
xcopy C:\Docume~1\%USERNAME%\Desktop\*.* D:\Personal\Desktop\ /e /y 
xcopy C:\Docume~1\%USERNAME%\����\*.* D:\Personal\Desktop\ /e /y 
xcopy C:\Docume~1\%USERNAME%\Favori~1\*.* D:\Personal\Favori~1\ /e /y 
goto end

:98
xcopy C:\Mydocu~1\*.* D:\Personal\Mydocu~1\ /e /y  
xcopy C:\WINDOWS\Desktop\*.* D:\Personal\Desktop\ /e /y 
xcopy C:\WINDOWS\Favori~1\*.* D:\Personal\Favori~1\ /e /y 

:end
del D:\Personal\Shell.reg >nul
del %0
echo ��װ��ϣ�
