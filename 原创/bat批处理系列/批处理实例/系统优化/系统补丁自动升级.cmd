@echo off
rem South China Agriculture University 
rem version 0.01

rem ʹ�ý���
rem ����:��ͼ�����Զ�����У��Windows Update������
rem �Ƚ��з����飬û�а�װ����Ļ����Ȱ�װ���������������޸�����

rem History
rem 2004-03-17 0.01b ȫУ����
echo [INFO] For Windows 2000,Windows XP,Windows 2003 only. 
echo [INFO] ֻ��Windows 2000,Windows XP,Windows 2003 ������
echo [INFO] For Normal user only (computer that runs every day)
set Server=0
rem Server=1
pause
cls

rem ������ʱ�ļ���
set mhnet=%temp%\mhnet
rmdir /S /Q %mhnet% 2>NUL 1>NUL
mkdir %mhnet%

rem ϵͳ���Ի����ж�
reg query HKLM\SYSTEM\CurrentControlSet\Control\Nls\Language >%mhnet%\Language.log
find "Default" %mhnet%\Language.log |find "0804" >NUL
IF NOT ERRORLEVEL 1 (
 set Language=Chinese
) else (
 set Language=English
)

if %Language%==Chinese (
 echo [INFO] ������רΪ����У�� Windows Automatic Updates ����
) else (
 echo [INFO] This will setup SCAU Windows Automatic Updates Services
)

start readme.txt

rem ��������ļ�������
call :AllFiles

rem �������NTϵ��
call :CheckSystem

rem ���ӵ�й���ԱȨ��
call :CheckAdmin

rem ���Automatic Updates�����Ƿ�������װ
call :CheckService

call :SCAURegImport


if %Language%==Chinese (
 echo [INFO] �������ۣ���ӭ�� bbs.scau.edu.cn NC��
 echo [INFO] �������
) else (
 echo [INFO] We welcome you to press your opinion on bbs.scau board:NC
 echo [INFO] Program Exit
)

pause
set mhnet=
set patchfile=
set downloadurl=
goto :eof
exit
:ends
rem ����������




rem *************************
rem *************************
rem ����:SCAURegImport
rem *************************
rem *************************
:SCAURegImport
ECHO [INFO] ����ע���(Backup Reg) %temp%
pushd %temp%
set BakFile1=AutoUpdateBak1.reg
set BakFile2=AutoUpdateBak2.reg
if exist %BakFile1% (
 ECHO [INFO] �Ѿ���װ�˱��������������ɾ��ԭ�б���
 PAUSE
 delete %BakFile1% /f /q >NUL 2>NUL
 delete %BakFile2% /f /q >NUL 2>NUL
)
popd

pushd %mhnet%
reg EXPORT "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" %BakFile1% 1>NUL
reg EXPORT "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate" %BakFile2% 1>NUL
move %BakFile1% %temp% >NUL
move %BakFile2% %temp% >NUL
set BakFile1=
set BakFile2=
popd

ECHO [INFO] ����ֹͣWindowsUpdate����(Stopping Update service)......
net stop wuauserv >NUL 2>NUL

ECHO [INFO] �����޸�ע������(Modifying Registry)......
ECHO Y |reg DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /va /f >NUL
reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate /v WUServer /t REG_SZ /d "http://sus.scau.edu.cn" /f >NUL
reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate /v WUStatusServer /t REG_SZ /d "http://sus.scau.edu.cn" /f >NUL
reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoRebootWithLoggedOnUsers /t REG_DWORD /d 1 /f >NUL
reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 0 /f >NUL
reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v RescheduleWaitTime /t REG_DWORD /d 1 /f >NUL
reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v ScheduledInstallDay /t REG_DWORD /d 0 /f >NUL
reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v UseWUServer /t REG_DWORD /d 1 /f >NUL



if %Server%==1 (
 ECHO [INFO] Automatic Updates Service installed for server
 reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 4 /f >NUL
 reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v ScheduledInstallTime /t REG_DWORD /d 11 /f >NUL
) else (
 ECHO [INFO] Automatic Updates Service installed for non-server
 reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 2 /f >NUL
 reg add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v ScheduledInstallTime /t REG_DWORD /d 12 /f >NUL
)

rem �����Զ�����
ECHO [INFO] ���÷���Ϊ�Զ�����(Set service to automatic start)
reg add HKLM\SYSTEM\CurrentControlSet\Services\wuauserv /v Start /t REG_DWORD /d 2 /f >NUL
reg add HKLM\SYSTEM\CurrentControlSet\Services\BITS /v Start /t REG_DWORD /d 2 /f >NUL

ECHO [INFO] ������������WindowsUpdate����(Starting Update Service)......
net start bits >NUL 2>NUL 
net start wuauserv >NUL 2>NUL

goto :eof







rem *************************
rem *************************
rem ֹͣ/ɾ��������
rem *************************
rem *************************
:StopService
set SrvName=%1
net stop %SrvName% >NUL >NUL2
reg query HKLM\SYSTEM\CurrentControlSet\Services\\%SrvName% >NUL
if not errorlevel 1 (
 reg delete HKLM\SYSTEM\CurrentControlSet\Services\\%SrvName%  /f >NUL
) ELSE (
 if %Language%==Chinese (
  echo [FAIL] ϵͳ����: %SrvName% *û�ҵ�*
 ) else (
  echo [FAIL] System Service: %SrvName% Not Found
 )
)
goto :eof






rem *************************
rem *************************
rem �ж��Ƿ�NTϵ��ϵͳ��win9xϵͳ���˳�
rem *************************
rem *************************
:CheckSystem
if NOT %OS%==Windows_NT (
 if %Language%==Chinese (
  echo [INFO] ������רΪ����/Ӣ�İ汾��Win2000,WinXP,Win2003���
  echo [FAIL] Windows 95, Windows 98, Windows ME���û���������
  echo [INFO] �����˳���
 ) else (
  echo [INFO] Design for Win2k,WinXP,Win2003 with Chinese or English version only.
  echo [FAIL] Windows 95,Windows 98, Windows ME will not be troubled by this bug.
  echo [INFO] Thank you for checking. Please deliver this to someone who need it.
 )
 pause
 exit
) else (
 if %Language%==Chinese (
  echo [INFO] �û�ʹ�û���WindowsNT�ں˵�ϵͳ,
 ) else (
  echo [INFO] You are using a system based on WindowsNT kernel,
 )
)
goto :eof



rem *************************
rem *************************
rem �ж��Ƿ�NTϵ��ϵͳ��win9xϵͳ���˳�
rem *************************
rem *************************
:CheckAdmin
net user "%username%"  1> %mhnet%\ifadmin.log
rem �������ϵͳ����Ա
find "*Administrators " %mhnet%\ifadmin.log >NUL
IF ERRORLEVEL 1 (
 if %Language%==Chinese (
  echo [FAIL] �û�����ϵͳ����Ա���Ա ������ִ����Ӧ����
  echo [INFO] ��������㹻Ȩ�޵��û��������б�����
 ) else (
  echo [FAIL] This program require administrator right to continue
  echo [INFO] Please switch user and try again
 )
 pause
 exit
 goto :eof
) else (
 if %Language%==Chinese (
  echo [INFO] �û�����ϵͳ����Ա��,
 ) else (
  echo [INFO] You have got the right of administrator, 
 )
)
goto :eof






rem *************************
rem *************************
rem �Ƚ��в�����飬û�а�װ�����Ļ����Ȱ�װ���������������ٲ�ɱ����
rem *************************
rem *************************
:CheckService
rem if %Language%==Chinese (
rem  echo [INFO] ��� Automatic Updates 
rem ) else (
rem  echo [INFO] Checking Automatic Updates Service
rem )
rem �������ע���ֵ

reg query "HKLM\SYSTEM\CurrentControlSet\Services" >%mhnet%\Services.log
find "wuauserv" %mhnet%\Services.log >NUL

IF ERRORLEVEL 1 (
 rem ���ļ����δ��װAutomatic updates����
 call :InstallService
 pause
 exit
 rem ��ִֹ��
) ELSE (
rem  if %Language%==Chinese (
rem   echo [INFO] ע�������ʾ����ϵͳ�Ѿ���װ��wuauserv����
rem  ) else (
rem   echo [INFO] reg reports that your system has wuauserv service installed
rem  )
)
goto :eof







rem *************************
rem *************************
rem ���ע���ĳ\Runֵ
rem *************************
rem *************************
:CleanRun
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run\\%1 /f >NUL
goto :eof








rem *************************
rem *************************
rem ֹͣ����ȫ����
rem *************************
rem *************************
:StopUnSafeSrv
rem net stop %1 >NUL
reg add HKLM\SYSTEM\CurrentControlSet\Services\\%1 /v Start /t REG_DWORD /d 0x3 /f >NUL
goto :eof








rem *************************
rem *************************
rem ��������ע����execute�ļ�����
rem *************************
rem *************************
:Regdefault
reg import regdefault.reg >NUL
goto :eof




rem *************************
rem *************************
rem ��װwuauserv��
rem *************************
rem *************************
:InstallService
rem reg query HKLM\SYSTEM\CurrentControlSet\Control\Nls\Language >%mhnet%\Language.log

rem ����ϵͳ
find "InstallLanguage" %mhnet%\Language.log |find "0804" >NUL
IF NOT ERRORLEVEL 1 (CALL :CNService ) 

rem Ӣ��ϵͳ
find "InstallLanguage" %mhnet%\Language.log |find "0409" >NUL
IF NOT ERRORLEVEL 1 (CALL :ENService ) 

rem �������԰����������԰�����call���ã�����ϣ������
if %Language%==Chinese (
 echo [FAIL] �㲢δʹ������/Ӣ�Ĳ���ϵͳ��
 echo [INFO] �����������ʾ��InstallLanguage��Default��ֵ,�뵽΢����վ������Ӧ����
 echo [INFO] �����˳�
) else (
 echo [FAIL] You are not using windows with Chinese/English language
 echo [INFO] We suggest you download the service from microsoft website.
 echo [INFO] Please write down the InstallLanguage & Default value for later use.
 echo [INFO] program terminated
)
find "InstallLanguage" %mhnet%\Languate.log
start http://www.microsoft.com/downloads/details.aspx?FamilyID=799432fb-c196-4f01-8cce-4f9ea58d6177&DisplayLang=en
rem ΢�����װ��ҳ
pause
exit
goto :eof







rem *************************
rem *************************
rem ���ķ�������ذ�װ
rem *************************
rem *************************
:CNService
set patchfile=WUAU22CHS.msi
set downloadurl=http://sus.scau.edu.cn/%patchfile%
call :Download
start %mhnet%\%patchfile%
if %Language%==Chinese (
 echo [INFO] ��װ�÷�����������ԣ������б�����
) else (
 echo [INFO] Restart your computer when Service installation is done. And run again.
)
pause
exit
goto :eof








rem *************************
rem *************************
rem Ӣ�ķ�������ذ�װ
rem *************************
rem *************************
:ENService
set patchfile=WUAU22ENU.msi
set downloadurl=http://sus.scau.edu.cn/%patchfile%
call :Download
start %mhnet%\%patchfile%
if %Language%==Chinese (
 echo [INFO] ��װ�÷�����������ԣ������б�����
) else (
 echo [INFO] Restart your computer when Service installation is done. And run again.
)
pause
exit
goto :eof









rem *************************
rem *************************
rem ��鲿���ļ�������
rem *************************
rem *************************
:AllFiles
if not exist reg.exe (
 echo [WARN] reg.exe NOT FOUND
 pause
 exit
) else (
 copy reg.exe %mhnet% /y >NUL
)

if not exist wget.exe (
 echo [WARN] wget.exe NOT FOUND
 pause
 exit
) else (
 copy wget.exe %mhnet% /y >NUL
)
goto :eof





rem *************************
rem *************************
rem ���ز�������%patchfile%�����ļ���
rem *************************
rem *************************
:Download
 if %Language%==Chinese (
  echo [INFO] �Զ����� %downloadurl%
 ) else (
  echo [INFO] Downloading %downloadurl%
 )
 pushd %mhnet%
 if exist %patchfile% (
  del %patchfile% /f /q >NUL 2>NUL
 )
 wget %downloadurl%
 IF NOT ERRORLEVEL 1 (
  if %Language%==Chinese (
   echo [INFO] ���سɹ���
  ) else (
   echo [INFO] Download Success
  )
 ) else (
  if %Language%==Chinese (
   echo [FAIL] ����ʧ�ܡ������˳�
  ) else (
   echo [FAIL] Download Failed. Terminated
  )
  pause
  exit
 )
 popd
goto :eof



rem ----- this is the end of this batch file -------
