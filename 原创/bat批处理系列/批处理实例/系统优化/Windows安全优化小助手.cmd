@echo off

:: Code by pengfei 2007-2-13 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27677

mode con: cols=80 lines=25
if exist "%tmp%\win.reg" del /a /f "%tmp%\win.reg"
:index
title WIN��ȫ�Ż�С����  ����:ľ��ɭ  QQ:573381312
color 27
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������   Windows �� ȫ �� �� С �� ��   �������������������r
echo    ��                ��                                  ��                ��
echo    �� ���Ի���:XP    �t�����������������������������������s                ��
echo  W ��                                                                      ��W
echo  W �� �� ϵͳ�Ż�: ϵͳ��������; ����ϵͳ�Ż�; �ֶ��Ż�������; �����Ż�.   ��W
echo  W ��                                                                      ��W
echo  . �� �� ϵͳ��ȫ: ����ϵͳ��ȫ©���޲�; ����ǽ״̬����뿪��.             ��.
echo  C ��                                                                      ��C
echo  N �� �� ϵͳ�޸�: ����ϵͳ�����޸�; IE��ԭ��ʼ״̬; ϵͳ�����޸�.         ��N
echo  - ��                                                                      ��-
echo  D �� �� ϵͳ���ÿ�����Ч: ����explorerˢ��ע�����Ϣ, ��ĳЩ����������.   ��D
echo  O ��                                                                      ��O
echo  S �� ע��: С���ֵĴ󲿷ֹ��ܶ���ͨ������ע�������ɵ�, ������ĵ�����   ��S
echo  . ��       ��װ��ע����ع��ܵ����, ���ȹرջ���ѡ��ͬ���޸�.          ��.
echo  N ��       ��ɲ���������������Բ�����Ч.                                ��N
echo  E ��                                                                      ��E
echo  T �� �� ����ѡ�� ��                                                       ��T
echo    ��                                                                      ��
echo    ��    1.ϵͳ�Ż�  2.ϵͳ��ȫ  3.ϵͳ�޸�  4.ϵͳ���ÿ�����Ч  5.�˳�    ��
echo    �t�����������������������������������������������������������������������s
echo.
set start=
set /p start=    ����(1 2 3 4 5)�󰴻س���:
if "%start%"=="1" goto YH
if "%start%"=="2" goto AQ
if "%start%"=="3" goto XF
if "%start%"=="4" goto SX
if "%start%"=="5" goto :eof
if /i "%start%"=="q" goto :eof
goto index


:: ϵͳ�Ż�______________________________________________________________________
:YH
title ϵͳ�Ż�  ����:ľ��ɭ  QQ:573381312
color 1A
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������       ϵ    ͳ    ��    ��       �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� ��ȻWindowsδ��������Ҳ���Թ����ú�����,����������ϲ�������ھ��     ��
echo    �� �����������.                                                        ��
echo    ��                                                                      ��
echo    �� ����ϵͳ���û�о���ά��,Ӳ���ϵ������ļ�Խ��Խ��, ע�����ӷ��,   ��
echo    �� �ö���֮������ٶ�Խ��Խ��.                                          ��
echo    ��                                                                      ��
echo    �� ϵͳ�Ż����ܿ�����ȥ�ֶ����õķ���, ����򵥵ļ���������������Ż�   ��
echo    �� ����, ��Ҳ����д���"��ȫ�Ż�С����"�ĳ���.                          ��
echo    ��                                                                      ��
echo    �� �����Щ������ֻ�ǵ����Ż����õĿ�ʼ, ������Ӧ��ʹ��������������     ��
echo    �� ע���, ���������Ƭ��, ����������ٶȾͻ���߲���...                ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��                                                       ��
echo    ��                                                                      ��
echo    ��    1.ϵͳ�������� 2.�Ż�����ϵͳ 3.�Ż������� 4.�����Ż� 5.����      ��
echo    �t�����������������������������������������������������������������������s
echo.
set YH=
set /p YH=    ����(1 2 3 4 5 q=exit)�󰴻س���:
if "%YH%"=="1" goto yh1
if "%YH%"=="2" goto yh2
if "%YH%"=="3" goto yh3
if "%YH%"=="4" goto yh4
if "%YH%"=="5" goto index
if /i "%YH%"=="q"  goto :eof
goto YH

:yh1
set "say=                   ^|��  ��������������, ���Ե�...  ��  ��^|"
call :hint
del /s /f /q %systemdrive%\*.tmp >nul 2>nul 
del /s /f /q %systemdrive%\*.gid >nul 2>nul 
del /s /f /q %systemdrive%\*.chk >nul 2>nul 
del /s /f /q %systemdrive%\*.old >nul 2>nul 
del /s /f /q "%userprofile%\Local Settings\Temp\*.*" >nul 2>nul
del /s /f /q "%userprofile%\recent\*.*" >nul 2>nul
del /s /f /q "%userprofile%\cookies\*.*" >nul 2>nul
del /s /f /q "%userprofile%\Local Settings\History\*.*" >nul 2>nul
del /s /f /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" >nul 2>nul
del /s /f /q "%windir%\temp\*.*" >nul 2>nul
del /s /f /q "%windir%\prefetch\*.*" >nul 2>nul
set "say=                   ^|��    �����������!            ��  ��^|"
call :hint
echo.
echo.
set /p ii=     �����������......<nul
pause >nul 2>nul
goto YH

:yh2
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������      ��  ��  ��  ��  ϵ  ͳ      �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� ����ϵͳ�Ż����Լӿ쿪�ػ��ٶ�, �ͷ�ϵͳ��Դ. ���ϵͳ�����ٶ�.   ��
echo    ��                                                                      ��
echo    �� �� �����Ż�: �����Ҫʹ�������ھӺʹ�ӡ��������������ļ����.     ��
echo    ��                                                                      ��
echo    �� �� �м��Ż�: ��׼���˵����Ż�����, ����ʹ�ô�ѡ��.                   ��
echo    ��                                                                      ��
echo    �� �� �ռ��Ż�: ���˵��Եĳ����Ż�����,һ�㲻�Ƽ�ʹ��.                  ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��                                                       ��
echo    ��                                                                      ��
echo    ��    1. �����Ż�  2.�м��Ż�  3.�ռ��Ż�  4. ����                      ��
echo    ��                                                                      ��
echo    ��                                                                      ��
echo    ��                                                pengfei@cn-dos.net    ��
echo    �t�����������������������������������������������������������������������s
echo.
set yh2=
set /p yh2=    ����(1 2 3 4 q=exit)�󰴻س���:
if "%yh2%"=="1" goto win1
if "%yh2%"=="2" goto win2
if "%yh2%"=="3" goto win3
if "%yh2%"=="4" goto YH
if /i "%yh2%"=="q"  goto :eof
goto yh2

:win1
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������      �� �� ϵ ͳ �� �� �� ��     �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� �����Ż���Ŀ: ֹͣ��ر�һЩ���õķ���; ����XP�Ŀ��ػ�ʱ��;       ��
echo    ��    �ӿ���������ٶ�; �����ض����DLL�ļ�; ���׹ر�Dr.Watson����;     ��
echo    ��    ����Ӳ���Ż�; �����Ҽ��˵�ѡ��; ���ٳ�������ĵȴ�ʱ��;         ��
echo    ��    �Զ��ر�ֹͣ��Ӧ�ĳ���;ֹͣ����Windows XP����; ��������������;  ��
echo    ��    ���ô��󱨸浫�ڷ������ش���ʱ֪ͨ��; �û�ӭ���ڸ�����;           ��
echo    ��    �ӿ�˵������ٶ�;����IMAPi���̿�¼����; �Ż�CMOSʵʱʱ��...       ��
echo    ��                                                                      ��
echo    �� �� ͬʱ������Ӳ�̹���; �����ӡ������; ��445�˿�; �����ķ���Ҳ��� ��
echo    ��    Ҫ��, ����Ż���ĳЩϵͳ�����޷�ʹ��, �����"ϵͳ�޸�"������ָ�. ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��                                                       ��
echo    ��                                                                      ��
echo    ��    1. ȷ��  2. ����                                                  ��
echo    ��                                                                      ��
echo    �t�����������������������������������������������������������������������s
echo.
set win1=
set /p win1=    ����(1 2 q=exit)�󰴻س���:
if "%win1%"=="1" goto wina
if "%win1%"=="2" goto yh2
if /i "%win1%"=="q" goto :eof
goto win1
:wina
set "say=                   ^|��   �����Ż���, ���Ե�...   ��    ��^|"
call :hint
(echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "AutoEndTasks"=dword:00000001
echo "HungAppTimeout"="800"
echo "WaitToKillAppTimeout"="1200"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control]
echo "WaitToKillServiceTimeout"="800"
echo.
echo [HKEY_USERS\.DEFAULT\Control Panel\Desktop]
echo "AutoEndTasks"="1"
echo "HungAppTimeout"="800"
echo "WaitToKillAppTimeout"="1200"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
echo "EnablePrefetcher"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
echo "AlwaysUnloadDLL"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug]
echo "Auto"="0"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DrWatson]
echo "CreateCrashDump"=dword:00000000
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DrWatson]
echo "AppendToLogFile"=dword:00000000
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "MenuShowDelay"="0"
echo [HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics]
echo "MinAnimate"="0"
echo.
echo [HKEY_USERS\.DEFAULT\Control Panel\Desktop]
echo "FontSmoothing"="2"
echo "FontSmoothingType"=dword:00000002
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "HungAppTimeout"="300"
echo "WaitToKillAppTimeout"="800"
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "HungAppTimeout"="200"
echo "WaitToKillAppTimeout"="1000"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Vxd\BIOS]
echo "CPUPriority"=dword:00000001
echo "PCIConcur"=dword:00000001
echo "FastDRAM"=dword:00000001
echo "AGPConcur"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer]
echo "NoLowDiskSpaceChecks"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem]
echo "ConfigFileAllocSize"=dword:000001f4
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\CleanupWiz]
echo "NoRun"=dword:00000001 
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting]
echo "DoReport"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ImapiService]
echo "Start"=dword:00000004 
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Tour]
echo "RunCount"=dword:00000000               
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Cdrom]
echo "Autorun"=dword:00000001
echo.
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer]
echo "Link"=hex:00,00,00,00
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl]
echo "IRQ8Priority"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl]
echo "AutoReboot"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management]
echo "ClearPageFileAtShutdown"=dword:00000001
echo.
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers]
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To]
echo @="{7BA4C740-9E81-11CF-99D3-00AA004AE837}"
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To]
echo @="{C2FBB631-2971-11D1-A18c-00C04FD75D13}"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mnmsrvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upnphost]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Messenger]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FastUserSwitchingCompatibility]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TlntSvr]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysmonLog]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RDSessMgr]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LmHosts]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Alerter]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\helpsvc]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CiSvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SamSs]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HidServ]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSrv]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wscsvc]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\C-DillaCdaC11BA]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]
echo "AutoShareWKs"=dword:00000001
echo "AutoShareServer"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters]
echo "SMBDeviceEnabled"=dword:00000001)>"%tmp%\win.reg"
start /w regedit /s "%tmp%\win.reg"
del /a /f "%tmp%\win.reg"
set "say=                   ^|��    ��ϲ, �����Ż����!      ��  ��^|"
call :hint
echo.
echo.
set /p ii=     �����������......<nul
pause >nul 2>nul
goto YH

:win2
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������      �� �� ϵ ͳ �� �� �� ��     �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� �м��Ż���Ŀ: ֹͣ��ر�һЩ���õķ���; ����XP�Ŀ��ػ�ʱ��;       ��
echo    ��    ȡ���ػ�ʱ����ҳ���ļ�; �����ض����DLL�ļ�; �����Ҽ��˵�ѡ��;    ��
echo    ��    ����Ӳ���Ż�; ���׹ر�Dr.Watson����; ���ٳ�������ĵȴ�ʱ��;    ��
echo    ��    �Զ��ر�ֹͣ��Ӧ�ĳ���; �ӿ���������ٶ�; ��������������;       ��
echo    ��    ���ô��󱨸浫�ڷ������ش���ʱ֪ͨ��; ���ô���ʣ��ռ�͵ľ���;   ��
echo    ��    ֹͣ����Windows XP����; �û�ӭ���ڸ�����; �ӿ�˵������ٶ�;       ��
echo    ��    ����IMAPi���̿�¼����; �Ż�CMOSʵʱʱ��...                        ��
echo    ��                                                                      ��
echo    �� �� ���ռ��Ż����,�м��Ż���һЩ�����������Ҫ��ʱ��������, ������   ��
echo    ��    ��ֹ, ����Ż���ĳЩϵͳ�����޷�ʹ��, ��ѡ������Ż������"ϵͳ   ��
echo    ��    �޸�"������ָ�.                                                  ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��    1. ȷ��  2. ����                                   ��
echo    ��                                                                      ��
echo    �t�����������������������������������������������������������������������s
echo.
set win2=
set /p win2=    ����(1 2 q=exit)�󰴻س���:
if "%win2%"=="1" goto winb
if "%win2%"=="2" goto yh2
if /i "%win2%"=="q" goto :eof
goto win2
:winb
set "say=                   ^|��   �м��Ż���, ���Ե�...   ��    ��^|"
call :hint
(echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "AutoEndTasks"=dword:00000001
echo "HungAppTimeout"="800"
echo "WaitToKillAppTimeout"="1000"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control]
echo "WaitToKillServiceTimeout"="800"
echo.
echo [HKEY_USERS\.DEFAULT\Control Panel\Desktop]
echo "AutoEndTasks"="1"
echo "HungAppTimeout"="800"
echo "WaitToKillAppTimeout"="1000"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
echo "EnablePrefetcher"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
echo "AlwaysUnloadDLL"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug]
echo "Auto"="0"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DrWatson]
echo "CreateCrashDump"=dword:00000000
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DrWatson]
echo "AppendToLogFile"=dword:00000000
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "MenuShowDelay"="0"
echo [HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics]
echo "MinAnimate"="0"
echo.
echo [HKEY_USERS\.DEFAULT\Control Panel\Desktop]
echo "FontSmoothing"="2"
echo "FontSmoothingType"=dword:00000002
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "HungAppTimeout"="200"
echo "WaitToKillAppTimeout"="800"
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "HungAppTimeout"="200"
echo "WaitToKillAppTimeout"="1000"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Vxd\BIOS]
echo "CPUPriority"=dword:00000001
echo "PCIConcur"=dword:00000001
echo "FastDRAM"=dword:00000001
echo "AGPConcur"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer]
echo "NoLowDiskSpaceChecks"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem]
echo "ConfigFileAllocSize"=dword:000001f4
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\CleanupWiz]
echo "NoRun"=dword:00000001 
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting]
echo "DoReport"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ImapiService]
echo "Start"=dword:00000004 
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Tour]
echo "RunCount"=dword:00000000               
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Cdrom]
echo "Autorun"=dword:00000001
echo.
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer]
echo "Link"=hex:00,00,00,00
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl]
echo "IRQ8Priority"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl]
echo "AutoReboot"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management]
echo "ClearPageFileAtShutdown"=dword:00000000
echo.
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers]
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To]
echo @="{7BA4C740-9E81-11CF-99D3-00AA004AE837}"
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To]
echo @="{C2FBB631-2971-11D1-A18c-00C04FD75D13}"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mnmsrvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upnphost]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Messenger]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FastUserSwitchingCompatibility]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TlntSvr]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysmonLog]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RDSessMgr]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LmHosts]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Alerter]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\helpsvc]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CiSvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SamSs]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HidServ]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSrv]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time]
echo "Start"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wscsvc]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\C-DillaCdaC11BA]
echo "Start"=dword:00000004)>"%tmp%\win.reg"
start /w regedit /s "%tmp%\win.reg"
del /a /f "%tmp%\win.reg"
set "say=                   ^|��    ��ϲ, �м��Ż����!      ��  ��^|"
call :hint
echo.
echo.
set /p ii=     �����������......<nul
pause >nul 2>nul
goto YH

:win3
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������      �� �� ϵ ͳ �� �� �� ��     �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� �ռ��Ż���Ŀ: �ر�һЩ���õ�ϵͳ����; ȡ���ػ�ʱ����ҳ���ļ�;     ��
echo    ��    ����XP�Ŀ��ػ�ʱ��; �����ض����DLL�ļ�; ���׹ر�Dr.Watson����;   ��
echo    ��    ����Ӳ���Ż�; ���ٳ�������ĵȴ�ʱ��; �Զ��ر�ֹͣ��Ӧ�ĳ���;   ��
echo    ��    �ӿ���������ٶ�; ��ֹ������Զ�����; �����Ҽ��˵�ѡ��;           ��
echo    ��    ��������������; ��ֹCDROM�Զ�����; ���ô���ʣ��ռ�͵ľ���;    ��
echo    ��    ����CPU(512k)��������; �޸�AMD��������AGP�ڴ��ҳ����;            ��
echo    ��    ���ô��󱨸浫�ڷ������ش���ʱ֪ͨ��; ��������Windows XP����;     ��
echo    ��    �û�ӭ���ڸ�����; �ӿ�˵������ٶ�; ����IMAPi���̿�¼����;        ��
echo    ��    ͣ�ð�ȫ����, �Ż�CMOSʵʱʱ��...                                 ��
echo    ��                                                                      ��
echo    �� �� ����Ż���ĳЩϵͳ�����޷�ʹ��, ��ѡ���м��Ż������"ϵͳ�޸�"    ��
echo    ��    ������ָ�.                                                       ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��    1. ȷ��  2. ����                                   ��
echo    ��                                                                      ��
echo    �t�����������������������������������������������������������������������s
echo.
set win3=
set /p win3=    ����(1 2 q=exit)�󰴻س���:
if "%win3%"=="1" goto winc
if "%win3%"=="2" goto yh2
if /i "%win3%"=="q" goto :eof
goto win3
:winc
set "say=                   ^|��   �ռ��Ż���, ���Ե�...   ��    ��^|"
call :hint
(echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "AutoEndTasks"=dword:00000001
echo "HungAppTimeout"="500"
echo "WaitToKillAppTimeout"="800"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control]
echo "WaitToKillServiceTimeout"="800"
echo.
echo [HKEY_USERS\.DEFAULT\Control Panel\Desktop]
echo "AutoEndTasks"="1"
echo "HungAppTimeout"="500"
echo "WaitToKillAppTimeout"="800"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
echo "EnablePrefetcher"=dword:00000003
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
echo "AlwaysUnloadDLL"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug]
echo "Auto"="0"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DrWatson]
echo "CreateCrashDump"=dword:00000000
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DrWatson]
echo "AppendToLogFile"=dword:00000000
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "MenuShowDelay"="0"
echo [HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics]
echo "MinAnimate"="0"
echo.
echo [HKEY_USERS\.DEFAULT\Control Panel\Desktop]
echo "FontSmoothing"="2"
echo "FontSmoothingType"=dword:00000002
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "HungAppTimeout"="200"
echo "WaitToKillAppTimeout"="800"
echo.
echo [HKEY_CURRENT_USER\Control Panel\Desktop]
echo "HungAppTimeout"="200"
echo "WaitToKillAppTimeout"="1000"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Vxd\BIOS]
echo "CPUPriority"=dword:00000001
echo "PCIConcur"=dword:00000001
echo "FastDRAM"=dword:00000001
echo "AGPConcur"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer]
echo "NoLowDiskSpaceChecks"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem]
echo "ConfigFileAllocSize"=dword:000001f4
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\CleanupWiz]
echo "NoRun"=dword:00000001 
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting]
echo "DoReport"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ImapiService]
echo "Start"=dword:00000004 
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Tour]
echo "RunCount"=dword:00000000                 
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Cdrom]
echo "Autorun"=dword:00000000
echo.
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer]
echo "Link"=hex:00,00,00,00
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl]
echo "IRQ8Priority"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl]
echo "AutoReboot"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management]
echo "ClearPageFileAtShutdown"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management]
echo "DisablePagingExecutive"=dword:00000001
echo "SecondLevelDataCache"=dword:00000200
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management]
echo "LargePageMinimum"=dword:ffffffff
echo.
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers]
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To]
echo @="{7BA4C740-9E81-11CF-99D3-00AA004AE837}"
echo [HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To]
echo @="{C2FBB631-2971-11D1-A18c-00C04FD75D13}"
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mnmsrvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upnphost]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Messenger]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FastUserSwitchingCompatibility]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TlntSvr]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysmonLog]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RDSessMgr]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LmHosts]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Alerter]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\helpsvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CiSvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SamSs]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HidServ]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSrv]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wscsvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\C-DillaCdaC11BA]
echo "Start"=dword:00000004)>"%tmp%\win.reg"
start /w regedit /s "%tmp%\win.reg"
del /a /f "%tmp%\win.reg"
set "say=                   ^|��    ��ϲ, �ռ��Ż����!      ��  ��^|"
call :hint
echo.
echo.
set /p ii=     �����������......<nul
pause >nul 2>nul
goto YH

:yh3
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������      ��   ��   ��   ��   ��      �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� ���������: ����ϵͳ����ʱ, ��һЩ���⹦�ܵĳ�����Ҫ�������.     ��
echo    ��    ����������������Ҫ��������ĳ���ֻ��2-3��, �����Ķ�û�б�Ҫ���   ��
echo    ��    ����,������ռ��ϵͳ��Դ, ���������˲���ϵͳ�������ٶ�.          ��
echo    ��                                                                      ��
echo    �� �� Ҫ����ĵ���û��������;, ����ֻ��������������; һ����"���뷨",   ��
echo    ��    ��һ����"ɱ�����ʵʱ���"(�����װ�˷���ǽ,Ҳ�뱣��).            ��
echo    ��    ��ȷ�Ϻ�򿪵Ĵ�����ѡ��������ǩ, Ȼ�������뷨��ɱ�����������  ��
echo    ��    ��, ������������Ŀǰ��Ĺ���ȥ����ȷ��.                           ��
echo    ��                                                                      ��
echo    �� �� �����ǳ�������������:                                             ��
echo    ��                                                                      ��
echo    �� ����˹��==kav ����==RavTask ��ɽ==KAVStart ����==KV ���뷨==ctfmon   ��
echo    ��                                                                      �� 
echo    �� �� ����ѡ�� ��    1. ȷ��  2. ����                                   ��
echo    ��                                                                      ��
echo    �t�����������������������������������������������������������������������s
echo.
set yh3=
set /p yh3=    ����(1 2 q=exit)�󰴻س���:
if "%yh3%"=="1" (
  start "" msconfig.exe
  set /p ii=    �����������......<nul
  pause >nul 2>nul
  goto YH
)
if "%yh3%"=="2" goto YH
if /i "%yh3%"=="q" goto :eof
goto yh3

:yh4
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������       ��    ��    ��    ��       �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� ͨ�����Ĳ���ϵͳ�Ĳ���, ������ҳ�Ĵ򿪺��ļ�������.               ��
echo    ��                                                                      ��
echo    �� �� �Զ��Ż�: �ӿ�����������ٶ�; ��IE6����8�߳�����.                 ��
echo    ��                                                                      ��
echo    �� �� �ֶ��Ż�(�ֶ����΢��Կ��20%%���ٶ�����):  ѡ���ֶ��Ż�, �ڴ�  ��
echo    ��    �Ĵ���������ѡ��^>                                                 ��
echo    ��    ��������� --^> ����ģ�� --^> ���� --^> Qos ���ݰ��ƻ����� --^> �ұ�  ��
echo    ��    �����е����ƿɱ������� --^> ������ --^> ���������Ƹ�Ϊ1%% --^> ȷ��.  ��
echo    ��                                                                      ��
echo    �� ע��:  ��ѡ��δ���û��ѽ���,����ϵͳ����Ĭ��Ϊ����20%%�Ĵ���.         ��
echo    ��        ���Ա���ѡ�����ò�����ֵ����Ϊ1%%.                             ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��                                                       ��
echo    ��                                                                      ��
echo    ��    1. �Զ��Ż�  2.�ֶ��Ż�  3.����                                   ��
echo    �t�����������������������������������������������������������������������s
echo.
set yh4=
set /p yh4=    ����(1 2 3 q=exit)�󰴻س���:
if "%yh4%"=="1" (
  set "say=                   ^|��    �����Ż���, ���Ե�...  ��  ��  ^|"
  call :hint
  (
  echo Windows Registry Editor Version 5.00
  echo.
  echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}]
  echo.
  echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
  echo "MaxConnectionsPer1_0Server"=dword:00000008
  echo "MaxConnectionsPerServer"=dword:00000008
  )>"%tmp%\win.reg"
  start /w regedit /s "%tmp%\win.reg"
  del /a /f "%tmp%\win.reg"
  set "say=                   ^|��    ��ϲ, �����Ż����!    ��  ��  ^|"
  call :hint
  echo.
  echo.
  set /p ii=     �����������......<nul
  pause >nul 2>nul
  goto yh4
)
if "%yh4%"=="2" (
  start "" gpedit.msc
  set /p ii=    �����������......<nul
  pause >nul 2>nul
  goto YH
)
if "%yh4%"=="3" goto YH
if /i "%yh4%"=="q" goto :eof
goto yh4


:: ϵͳ��ȫ______________________________________________________________________
:AQ
title ϵͳ��ȫ  ����:ľ��ɭ  QQ:573381312
color 0A
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������       ϵ    ͳ    ��    ȫ       �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� �Զ��޲���ȫ©��: ȡ��Ĭ�Ϲ���; �ر�445�˿�; ����LSA��������, ��  ��
echo    ��    ֹ����������; ��ֹԶ���޸�ע���; ��ֹIE�Զ���װ���; �رմ��ڰ�  ��
echo    ��    ȫ©����ϵͳ����; ��鲢����ϵͳ���÷���ǽ��...                   ��
echo    ��                                                                      ��
echo    �� �� �ֶ��ر��Զ����Ź���: �Զ����Ź��ܿ�����˫���̷�ʱ����ָ���ļ�,   ��
echo    ��    ������ܱ���ಡ������, ÿ�ζ�����Ϊ����ļ��н�Ǳ���Ĳ�������.   ��
echo    ��    ��ȷ�Ϻ��ڴ򿪵Ĵ�������ѡ��^>                                     ��
echo    ��    ��������� --^> ����ģ�� --^> ϵͳ --^> �ұߵĴ�����ѡ��ر��Զ�     ��
echo    ��    ���� --^> ������ --^> ����������ѡ������������. --^> ȷ��.           ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��                                                       ��
echo    ��                                                                      ��
echo    ��    1. ��ȫ©���Զ��޲�   2. �ֶ��ر��Զ�����   3. ����               ��
echo    ��                                                                      ��
echo    ��                                           ����:ľ��ɭ  QQ:573381312  ��
echo    �t�����������������������������������������������������������������������s
echo.
set AQ=
set /p AQ=    ����(1 2 3 q=exit)�󰴻س���:
if "%AQ%"=="1" goto aq1
if "%AQ%"=="2" (
  start "" gpedit.msc
  set /p ii=    �����������......<nul
  pause >nul 2>nul
  goto index
)
if "%AQ%"=="3" goto index
if /i "%AQ%"=="q" goto :eof
goto AQ

:aq1
set "say=                   ^|��  ��ȫ©���޲���, ���Ե�...      ��^|"
call :hint
(echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]
echo "AutosafetyWKs"=dword:00000000
echo "AutosafetyServer"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]
echo "restrictanonymous"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters]
echo "SMBDeviceEnabled"=dword:00000000
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg]
echo "RemoteRegAccess"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions]
echo "NoJITSetup"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mnmsrvc]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Messenger]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TlntSvr]
echo "Start"=dword:00000004
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule]
echo "Start"=dword:00000004)>"%tmp%\win.reg"
start /w regedit /s "%tmp%\win.reg"
del /a /f "%tmp%\win.reg"
set "say=                   ^|��    ��ϲ, ��ȫ©���޲��ɹ�!  ��  ��^|"
call :hint
echo.
echo.
set /p ii=     �������������ǽ״̬......<nul
pause >nul 2>nul
net start | find "Windows Firewall/Internet Connection Sharing (ICS)" >nul 2>nul && set wall=1 || set wall=0
set wall_=1
if "%wall%"=="0" (
  net start "Windows Firewall/Internet Connection Sharing (ICS)" >nul 2>nul || (
    set wall_=0
    set "say=                   ^|��  �����쳣����, ����ǽ�޷�����!  ��^|"
    call :hint
    echo.
    echo.
    set /p ii=     �����������......<nul
    pause >nul 2>nul
  )
  (echo Windows Registry Editor Version 5.00
  echo.
  echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess]
  echo "Start"=dword:00000002)>"%tmp%\win.reg"
  start /w regedit /s "%tmp%\win.reg"
  del /a /f "%tmp%\win.reg"
) else (
  set "say=                   ^|��     ��ϲ, ����ǽ״̬����!       ��^|"
  call :hint
  echo.
  echo.
  set /p ii=     �����������......<nul
  pause >nul 2>nul
  goto AQ
)
if "%wall_%"=="1" (
  set "say=                   ^|��     ��ϲ, ����ǽ�ɹ�����!       ��^|"
  call :hint
  echo.
  echo.
  set /p ii=     �����������......<nul
  pause >nul 2>nul
)
goto AQ

:: ϵͳ�޸�______________________________________________________________________
:XF
title ϵͳ�޸�  ����:ľ��ɭ  QQ:573381312
color 1F
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������       ϵ    ͳ    ��    ��       �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� ����ϵͳ�����޸�: �ļ������޸�(com exe pif scr txt ini vbs...);   ��
echo    ��    �ָ���ʾ���ص��ļ����ļ���, ����ʧ��"�ļ���ѡ��"�һ���;           ��
echo    ��    �������ֹ���ʵ�����������; �������ֹ��IE���ع���;               ��
echo    ��    ɾ��IE���������.                                                 ��
echo    ��                                                                      ��
echo    �� �� IE�ָ���ʼ״̬: ������IE�ָ�����ʼ״̬(����! ����ֻ��IE��������   ��
echo    ��    ����ʱ��ʹ�ô˹���).                                              ��
echo    ��                                                                      ��
echo    �� �� С���ֹ����޸�: �޸�ʹ�ñ������Ż������������µ��Բ��ֹ����޷�  ��
echo    ��    ʹ�õ�����.                                                       ��
echo    ��                                                                      ��
echo    �� �� ����ѡ�� ��                                                       ��
echo    ��                                                                      ��
echo    ��    1.����ϵͳ�����޸�  2.IE�ָ���ʼ״̬  3.С���ֹ����޸�  4.����    ��
echo    ��                                                                      ��
echo    �t�����������������������������������������������������������������������s
echo.
set XF=
set /p XF=    ����(1 2 3 4 q=exit)�󰴻س���:
if "%XF%"=="1" goto xf1
if "%XF%"=="2" goto xf2
if "%XF%"=="3" goto xf3
if "%XF%"=="4" goto index
if /i "%XF%"=="q" goto :eof
goto XF

:xf1
set "say=                   ^|�� ����ϵͳ�����޸���, ���Ե�...   ��^|"
call :hint
(echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CLASSES_ROOT\batfile\shell\open\command]
echo @="\"%%1\" %%*"
echo.
echo [HKEY_CLASSES_ROOT\cmdfile\shell\open\command]
echo @="\"%%1\" %%*"
echo.
echo [HKEY_CLASSES_ROOT\comfile\shell\open\command]
echo @="\"%%1\" %%*"
echo.
echo [HKEY_CLASSES_ROOT\exefile\shell\open\command]
echo @="\"%%1\" %%*"
echo.
echo [HKEY_CLASSES_ROOT\piffile\shell\open\command]
echo @="\"%%1\" %%*"
echo.
echo [HKEY_CLASSES_ROOT\scrfile\shell\open\command]
echo @="\"%%1\" /S"
echo.
echo [HKEY_CLASSES_ROOT\txtfile\shell\open\command]
echo @=hex^(2^):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,\
echo   00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,4e,00,4f,00,\
echo   54,00,45,00,50,00,41,00,44,00,2e,00,45,00,58,00,45,00,20,00,25,00,31,00,00,\
echo   00
echo.
echo [HKEY_CLASSES_ROOT\inifile\shell\open\command]
echo @=hex^(2^):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,\
echo   00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,4e,00,4f,00,\
echo   54,00,45,00,50,00,41,00,44,00,2e,00,45,00,58,00,45,00,20,00,25,00,31,00,00,\
echo   00
echo.
echo [HKEY_CLASSES_ROOT\.vbs]
echo @="vbsfile"
echo.
echo [HKEY_CLASSES_ROOT\VBSFile\Shell\Open\Command]
echo @=hex^(2^):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,\
echo   00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,57,00,53,00,\
echo   63,00,72,00,69,00,70,00,74,00,2e,00,65,00,78,00,65,00,20,00,22,00,25,00,31,\
echo   00,22,00,20,00,25,00,2a,00,00,00
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\NOHIDDEN]
echo "CheckedValue"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\explorer\Advanced\Folder\Hidden\SHOWALL]
echo "CheckedValue"=dword:00000001
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
echo "hidden"=dword:00000001
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
echo "NoFolderOptions"=dword:00000000
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
echo "NoSetTaskbar"=dword:00000000
echo.
echo [-HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Extensions]
echo.
echo [-HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Extensions]
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3]
echo "1803"=dword:00000000
echo.
echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3]
echo "1803"=dword:00000000)>"%tmp%\win.reg"
start /w regedit /s "%tmp%\win.reg"
del /a /f "%tmp%\win.reg"
set "say=                   ^|�� ��ϲ, ����ϵͳ�����޸��ɹ�!       ^|"
call :hint
echo.
echo.
set /p ii=     �����������......<nul
pause >nul 2>nul
goto XF

:xf2
set "say=                   ^|��  IE��ʼ״̬�ָ���, ���Ե�...    ��^|"
call :hint
(echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
echo "NoUpdateCheck"=dword:00000001
echo "NoJITSetup"=dword:00000001
echo "Disable Script Debugger"="yes"
echo "Start Page"="www.hao123.com"
echo "NotifyDownloadComplete"="no"
echo "Enable AutoImageResize"="yes"
echo "Show_ChannelBand"="No"
echo "Anchor Underline"="yes"
echo "Cache_Update_Frequency"="Once_Per_Session"
echo "Display Inline Images"="yes"
echo "Do404Search"=hex:01,00,00,00
echo "Local Page"="C:\\WINDOWS\\system32\\blank.htm"
echo "Save_Session_History_On_Exit"="no"
echo "Show_FullURL"="no"
echo "Show_StatusBar"="yes"
echo "Show_ToolBar"="yes"
echo "Show_URLinStatusBar"="yes"
echo "Show_URLToolBar"="yes"
echo "Use_DlgBox_Colors"="yes"
echo "Search Page"="http://www.microsoft.com/isapi/redir.dll?prd=ie&ar=iesearch"
echo "FullScreen"="no"
echo "Window_Placement"=hex:2c,00,00,00,02,00,00,00,03,00,00,00,ff,ff,ff,ff,ff,ff,\
echo   ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ae,00,00,00,ae,00,00,00,b6,04,00,00,ad,03,00,\
echo   00
echo "Disable Display Inline Images"="no"
echo "Disable Display Inline Videos"="no"
echo "Display Inline Videos"="yes"
echo "Disable Play_Animations"="no"
echo "Disable Play_Background_Sounds"="no"
echo "Use FormSuggest"="yes"
echo "AddToFavoritesExpanded"=dword:00000001
echo "FormSuggest PW Ask"="no"
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\FeatureControl]
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN]
echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_LOCALMACHINE_LOCKDOWN\Settings]
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions]
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\ACCESSIBILITY]
echo "Text"="��������"
echo "PlugUIText"="@inetcplc.dll,-4746"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4497"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\ACCESSIBILITY\ALTTEXT]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="ʼ����չͼ���˵������"
echo "PlugUIText"="@inetcplc.dll,-4731"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Expand Alt Text"
echo "DefaultValue"="no"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50298"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\ACCESSIBILITY\MOVSYSCARET]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="�潹��(��ѡ��)�ĸ����ƶ�ϵͳ������"
echo "PlugUIText"="@inetcplc.dll,-4732"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Move System Caret"
echo "DefaultValue"="no"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50299"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE]
echo "Text"="���"
echo "PlugUIText"="@inetcplc.dll,-4745"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4482"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\AUTOAPPEND]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\AutoComplete"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Explorer\\AutoComplete"
echo "Text"="�� Web ��ַʹ�������Զ���ɹ���"
echo "PlugUIText"="@inetcplc.dll,-4852"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Append Completion"
echo "DefaultValue"="no"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50538"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\FAVINTELLI]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="���ø��Ի��ղؼв˵�"
echo "PlugUIText"="@inetcplc.dll,-4856"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="FavIntelliMenus"
echo "DefaultValue"="no"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50583"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\FORCE_OFFSCREEN]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="%%FORCE_OFFSCREEN_TEXT%%"
echo "PlugUIText"="@inetcplc.dll,-4866"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="Force Offscreen Composition"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50597"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\FRIENDLY_ERRORS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="��ʾ�Ѻ� http ������Ϣ"
echo "PlugUIText"="@inetcplc.dll,-4833"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Friendly http errors"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50537"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\FRIENDLY_URLS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer"
echo "Text"="��ʾ�Ѻõ� URL"
echo "PlugUIText"="@inetcplc.dll,-4734"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="Show_FullURL"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50111"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\FTPPASV]
echo "PlugUIText"="@inetcplc.dll,-4743"
echo "RegPath"="Software\\Microsoft\\Ftp"
echo "Text"="ʹ�ñ��� FTP (���ڷ���ǽ�� DSL ���ƽ�����ļ���)"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Use PASV"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50588"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\FTPUI]
echo "PlugUIText"="@inetcplc.dll,-4737"
echo "Text"="�� FTP վ�������ļ�����ͼ"
echo "RegPath"="Software\\Microsoft\\Ftp"
echo "Type"="checkbox"
echo "CheckedValue"="no"
echo "UncheckedValue"="yes"
echo "ValueName"="Use Web Based FTP"
echo "DefaultValue"="no"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50560"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\GOBUTTON]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="�ڵ�ַ������ʾ��ת������ť"
echo "PlugUIText"="@inetcplc.dll,-4840"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="ShowGoButton"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50536"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\IEUPDATECHECK]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="�Զ���� Internet Explorer ����"
echo "PlugUIText"="@inetcplc.dll,-4837"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000001
echo "DefaultValue"=dword:00000000
echo "ValueName"="NoUpdateCheck"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50503"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\IOD]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="���ü��輴װ(Internet Explorer)"
echo "PlugUIText"="@inetcplc.dll,-4836"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000001
echo "DefaultValue"=dword:00000000
echo "ValueName"="NoJITSetup"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50502"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\NOTIFYDOWNLOADCOMPLETE]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="������ɺ󷢳�֪ͨ"
echo "PlugUIText"="@inetcplc.dll,-4835"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="NotifyDownloadComplete"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50501"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\NSCSINGLEEXPAND]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="�رա���ʷ��¼���͡��ղؼС�������δʹ�õ��ļ���(��Ҫ��������)"
echo "PlugUIText"="@inetcplc.dll,-4838"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="NscSingleExpand"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50528"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\PT]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="����ҳ��ת��"
echo "PlugUIText"="@inetcplc.dll,-4829"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="Page_Transitions"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50242"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\REUSEWINDOWS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="����ʹ��������ݷ�ʽ�Ĵ���"
echo "PlugUIText"="@inetcplc.dll,-4861"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "DefaultValue"=dword:00000001
echo "ValueName"="AllowWindowReuse"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50582"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\SCHEDULED_UPDATES]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Webcheck"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Webcheck"
echo "Text"="�����ѻ���Ŀ���ƻ�ͬ��"
echo "PlugUIText"="@inetcplc.dll,-4736"
echo "Type"="checkbox"
echo "ValueName"="NoScheduledUpdates"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000001
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50527"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\SCRIPT_DEBUGGER]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="���ýű�����(����)"
echo "PlugUIText"="@xpsp2res.dll,-4892"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Disable Script Debugger"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50252"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\SCRIPT_DEBUGGER_IE]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="���ýű����� (Internet Explorer)"
echo "PlugUIText"="@xpsp2res.dll,-4891"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="DisableScriptDebuggerIE"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50252"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\SCRIPT_ERROR_CACHE]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="��ʾÿ���ű������֪ͨ"
echo "PlugUIText"="@inetcplc.dll,-4832"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Error Dlg Displayed On Every Error"
echo "DefaultValue"="no"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50526"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\SMOOTH_SCROLLING]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="ʹ��ƽ������"
echo "PlugUIText"="@inetcplc.dll,-4735"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="SmoothScroll"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50107"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\ULINKS]
echo "Text"="�����Ӽ��»��ߵķ�ʽ"
echo "PlugUIText"="@inetcplc.dll,-4828"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4482"
echo "HelpID"="iexplore.hlp#50243"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\ULINKS\ALWAYS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="ʼ��"
echo "PlugUIText"="@inetcplc.dll,-4825"
echo "Type"="radio"
echo "CheckedValue"="yes"
echo "ValueName"="Anchor Underline"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50243"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\ULINKS\HOVER]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="��ͣ"
echo "PlugUIText"="@inetcplc.dll,-4827"
echo "Type"="radio"
echo "CheckedValue"="hover"
echo "ValueName"="Anchor Underline"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50243"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\ULINKS\NEVER]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="�Ӳ�"
echo "PlugUIText"="@inetcplc.dll,-4826"
echo "Type"="radio"
echo "CheckedValue"="no"
echo "ValueName"="Anchor Underline"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50243"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\USEBHO]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="���õ������������չ(Ҫ��������)"
echo "PlugUIText"="@inetcplc.dll,-4874"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Enable Browser Extensions"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50606"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\USE_THEMES]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="����ҳ�ϵİ�ť�Ϳؼ������Ӿ���ʽ"
echo "PlugUIText"="@inetcplc.dll,-4873"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="UseThemes"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50604"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\UTF8]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="ʼ���� UTF-8 ���� URL (��Ҫ��������)"
echo "PlugUIText"="@inetcplc.dll,-4839"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000001
echo "ValueName"="UrlEncoding"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50535"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\BROWSE\WEBJIT]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="���ü��谲װ(����)"
echo "PlugUIText"="@inetcplc.dll,-4875"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000001
echo "DefaultValue"=dword:00000000
echo "ValueName"="NoWebJITSetup"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50618"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO]
echo "Text"="��ȫ"
echo "PlugUIText"="@inetcplc.dll,-4747"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4442"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\CACHE_FLUSH]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Cache"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Cache"
echo "Text"="�ر������ʱ��� Internet ��ʱ�ļ���"
echo "PlugUIText"="@inetcplc.dll,-4750"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000001
echo "ValueName"="Persistent"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50293"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\CACHE_PAGES]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="�������ܵ�ҳ����"
echo "PlugUIText"="@inetcplc.dll,-4749"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="DisableCachingOfSSLPages"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50127"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\CD_LMZ_LOCKDOWN]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main\\FeatureControl\\FEATURE_LOCALMACHINE_LOCKDOWN\\Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main\\FeatureControl\\FEATURE_LOCALMACHINE_LOCKDOWN\\Settings"
echo "Text"="�������� CD �Ļ�������ҵļ����������"
echo "PlugUIText"="@xpsp2res.dll,-5710"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="LOCALMACHINE_CD_UNLOCK"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\CERTREV]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WinTrust\\Trust Providers\\Software Publishing"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\WinTrust\\Trust Providers\\Software Publishing"
echo "Text"="��鷢���̵�֤���Ƿ���"
echo "PlugUIText"="@inetcplc.dll,-4761"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000200
echo "ValueName"="State"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "Mask"=dword:00000200
echo "HelpID"="iexplore.hlp#50184"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\CHECK_SIG]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Download"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Download"
echo "Text"="������صĳ����ǩ��"
echo "PlugUIText"="@inetcplc.dll,-4762"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="CheckExeSignatures"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50605"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\LMZ_LOCKDOWN]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main\\FeatureControl\\FEATURE_LOCALMACHINE_LOCKDOWN"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main\\FeatureControl\\FEATURE_LOCALMACHINE_LOCKDOWN"
echo "Text"="���������ڱ��ؼ��������������"
echo "PlugUIText"="@xpsp2res.dll,-5700"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000000
echo "UncheckedValue"=dword:00000001
echo "ValueName"="iexplore.exe"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\NEGOTIATE]
echo "DefaultValue"=dword:00000001
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="���ü��ɵ� Windows �����֤ (��Ҫ��������)"
echo "PlugUIText"="@inetcplc.dll,-4863"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="EnableNegotiate"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50592"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\P3PROFILE]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Security\\P3Global"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Security\\P3Global"
echo "Text"="���������ļ�����"
echo "PlugUIText"="@inetcplc.dll,-4756"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="Enabled"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50286"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\RUN_INV_SIG]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Download"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Download"
echo "Text"="����װ������Чǩ���� ActiveX �ؼ�"
echo "PlugUIText"="@xpsp2res.dll,-10505"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="RunInvalidSignatures"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"=""
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\SECURE]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="�ڰ�ȫ�ͷǰ�ȫģʽ֮��ת��ʱ��������"
echo "PlugUIText"="@inetcplc.dll,-4757"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="WarnonZoneCrossing"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50089"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\SITECERT]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="����Чվ��֤�鷢������"
echo "PlugUIText"="@inetcplc.dll,-4759"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="WarnonBadCertRecving"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50119"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\SSL2.0]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="SSL 2.0"
echo "PlugUIText"="@inetcplc.dll,-4752"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000008
echo "UncheckedValue"=dword:00000000
echo "ValueName"="SecureProtocols"
echo "DefaultValue"=dword:00000008
echo "HKeyRoot"=dword:80000001
echo "Mask"=dword:00000008
echo "HelpID"="iexplore.hlp#50128"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\SSL3.0]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="SSL 3.0"
echo "PlugUIText"="@inetcplc.dll,-4753"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000020
echo "UncheckedValue"=dword:00000000
echo "ValueName"="SecureProtocols"
echo "DefaultValue"=dword:00000020
echo "HKeyRoot"=dword:80000001
echo "Mask"=dword:00000020
echo "HelpID"="iexplore.hlp#50129"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\SSLREV]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="��������֤���Ƿ���(��Ҫ��������)"
echo "PlugUIText"="@inetcplc.dll,-4760"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="CertificateRevocation"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50550"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\SUBMIT]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="�ض����ύ�ı�ʱ��������"
echo "PlugUIText"="@inetcplc.dll,-4758"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="WarnOnPostRedirect"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50288"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\CRYPTO\TLS1.0]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="TLS 1.0"
echo "PlugUIText"="@inetcplc.dll,-4754"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000080
echo "UncheckedValue"=dword:00000000
echo "ValueName"="SecureProtocols"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "Mask"=dword:00000080
echo "HelpID"="iexplore.hlp#50511"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\HTTP]
echo "Text"="HTTP 1.1 ����"
echo "PlugUIText"="@inetcplc.dll,-4822"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4443"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\HTTP\GENABLE]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="ʹ�� HTTP 1.1"
echo "PlugUIText"="@inetcplc.dll,-4823"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="EnableHttp1_1"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50297"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\HTTP\PROXY]
echo "RegPath"="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"
echo "Text"="ͨ����������ʹ�� HTTP 1.1"
echo "PlugUIText"="@inetcplc.dll,-4824"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="ProxyHttp1.1"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50296"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\JAVA_VM]
echo "Text"="Microsoft VM"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4441"
echo "HelpID"="iexplore.hlp#50041"
echo "Type"="group"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\JAVA_VM\CONSOLE]
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Java VM"
echo "Text"="���� Java ����̨(��Ҫ������)"
echo "CheckedValue"=hex:01,00,00,00
echo "DefaultValue"=hex:00,00,00,00
echo "HelpID"="iexplore.hlp#50301"
echo "HKeyRoot"=hex:01,00,00,80
echo "RegPath"="SOFTWARE\\Microsoft\\Java VM"
echo "PlugUIText"="@vmhelper.dll,-4000"
echo "Type"="checkbox"
echo "UncheckedValue"=hex:00,00,00,00
echo "ValueName"="EnableJavaConsole"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\JAVA_VM\JIT]
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Java VM"
echo "Text"="���� Java JIT ������(��Ҫ������)"
echo "CheckedValue"=hex:01,00,00,00
echo "DefaultValue"=hex:01,00,00,00
echo "HelpID"="iexplore.hlp#50110"
echo "HKeyRoot"=hex:01,00,00,80
echo "RegPath"="SOFTWARE\\Microsoft\\Java VM"
echo "PlugUIText"="@vmhelper.dll,-4001"
echo "Type"="checkbox"
echo "UncheckedValue"=hex:00,00,00,00
echo "ValueName"="EnableJIT"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\JAVA_VM\LOGGING]
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Java VM"
echo "Text"="���� Java ��¼"
echo "CheckedValue"=hex:01,00,00,00
echo "DefaultValue"=hex:00,00,00,00
echo "HelpID"="iexplore.hlp#50109"
echo "HKeyRoot"=hex:01,00,00,80
echo "RegPath"="SOFTWARE\\Microsoft\\Java VM"
echo "PlugUIText"="@vmhelper.dll,-4002"
echo "Type"="checkbox"
echo "UncheckedValue"=hex:00,00,00,00
echo "ValueName"="EnableLogging"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA]
echo "Text"="��ý��"
echo "PlugUIText"="@inetcplc.dll,-4744"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,1312"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\ANIMAT]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="����ҳ�в��Ŷ���"
echo "PlugUIText"="@inetcplc.dll,-4741"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Play_Animations"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50176"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\AUTOIMAGERESIZE]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="�����Զ�ͼ���С����"
echo "PlugUIText"="@inetcplc.dll,-4871"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Enable AutoImageResize"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50598"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\MYPICS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="����ͼƬ������(Ҫ��������)"
echo "PlugUIText"="@inetcplc.dll,-4865"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Enable_MyPics_Hoverbar"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50596"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\PICTS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="��ʾͼƬ"
echo "PlugUIText"="@inetcplc.dll,-4742"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Display Inline Images"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50042"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\PLACEHOLDERS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="��ʾͼ������ռλ��"
echo "PlugUIText"="@inetcplc.dll,-4843"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="Show image placeholders"
echo "DefaultValue"=dword:00000000
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50559"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\SMART_DITHERING]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer"
echo "Text"="�Ż�ͼ�񶶶�"
echo "PlugUIText"="@inetcplc.dll,-4738"
echo "Type"="checkbox"
echo "CheckedValue"=dword:00000001
echo "UncheckedValue"=dword:00000000
echo "ValueName"="SmartDithering"
echo "DefaultValue"=dword:00000001
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50177"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\SOUNDS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="����ҳ�в�������"
echo "PlugUIText"="@inetcplc.dll,-4739"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Play_Background_Sounds"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50043"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\MULTIMEDIA\VIDEOS]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="����ҳ�в�����Ƶ"
echo "PlugUIText"="@inetcplc.dll,-4740"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Display Inline Videos"
echo "DefaultValue"="yes"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50044"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\PRINT]
echo "Text"="��ӡ"
echo "PlugUIText"="@inetcplc.dll,-4769"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4447"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\PRINT\BACKGROUND]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="��ӡ������ɫ��ͼ��"
echo "PlugUIText"="@inetcplc.dll,-4770"
echo "Type"="checkbox"
echo "CheckedValue"="yes"
echo "UncheckedValue"="no"
echo "ValueName"="Print_Background"
echo "DefaultValue"="no"
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50191"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\SEARCHING]
echo "Text"="�ӵ�ַ��������"
echo "PlugUIText"="@inetcplc.dll,-4771"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4483"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\SEARCHING\AUTOSEARCH]
echo "Text"="����ʱ"
echo "PlugUIText"="@inetcplc.dll,-4844"
echo "Type"="group"
echo "Bitmap"="C:\\WINDOWS\\system32\\inetcpl.cpl,4483"
echo "HelpID"="iexplore.hlp#50041"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\SEARCHING\AUTOSEARCH\DISPLAY_AND_GO]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="��ʾ�����Ȼ��ת�������Ƶ�վ��"
echo "PlugUIText"="@inetcplc.dll,-4845"
echo "Type"="radio"
echo "CheckedValue"=dword:00000006
echo "ValueName"="AutoSearch"
echo "DefaultValue"=dword:00000005
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50570"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\SEARCHING\AUTOSEARCH\JUST_DISPLAY]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="ֻ������������ʾ���"
echo "PlugUIText"="@inetcplc.dll,-4847"
echo "Type"="radio"
echo "CheckedValue"=dword:00000004
echo "ValueName"="AutoSearch"
echo "DefaultValue"=dword:00000005
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50573"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\SEARCHING\AUTOSEARCH\JUST_GO]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="ת�������Ƶ�վ��"
echo "PlugUIText"="@inetcplc.dll,-4846"
echo "Type"="radio"
echo "CheckedValue"=dword:00000005
echo "ValueName"="AutoSearch"
echo "DefaultValue"=dword:00000005
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50571"
echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\AdvancedOptions\SEARCHING\AUTOSEARCH\NO_SEARCH]
echo "RegPath"="SOFTWARE\\Microsoft\\Internet Explorer\\Main"
echo "RegPoliciesPath"="SOFTWARE\\Policies\\Microsoft\\Internet Explorer\\Main"
echo "Text"="���ӵ�ַ��������"
echo "PlugUIText"="@inetcplc.dll,-4848"
echo "Type"="radio"
echo "CheckedValue"=dword:00000000
echo "ValueName"="AutoSearch"
echo "DefaultValue"=dword:00000005
echo "HKeyRoot"=dword:80000001
echo "HelpID"="iexplore.hlp#50572")>"%tmp%\win.reg"
start /w regedit /s "%tmp%\win.reg"
del /a /f "%tmp%\win.reg"
regsvr32 /s Shdocvw.dll >nul 2>nul
regsvr32 /s Oleaut32.dll >nul 2>nul
regsvr32 /s Actxprxy.dll >nul 2>nul
regsvr32 /s Mshtml.dll >nul 2>nul
regsvr32 /s Urlmon.dll >nul 2>nul
regsvr32 /s browseui.dll >nul 2>nul
set "say=                   ^|��  ��ϲ, IE�ָ���ʼ״̬�ɹ�!      ��^|"
call :hint
echo.
echo.
set /p ii=     �����������......<nul
pause >nul 2>nul
goto XF

:
:xf3
cls
echo                      �q�����������������������������������r
echo                      ��                                  ��
echo    �q������������������      ϵ  ͳ  ��  ��  ��  ��      �������������������r
echo    ��                ��                                  ��                ��
echo    ��                �t�����������������������������������s                ��
echo    ��                                                                      ��
echo    �� �� 1. �޸����������޷����ʱ������ܹ����ӡ��������.                ��
echo    ��                                                                      ��
echo    �� �� 2. �޸�vbs�ű����д���,�޷��������������.                        ��
echo    ��                                                                      ��
echo    �� �� 3. �޸������������û����ʾ�û���������.                          ��
echo    ��                                                                      ��
echo    �� �� 4. �޸����ػ�ʱû������������.                                    ��
echo    ��                                                                      ��
echo    �� �� 5. �޸������ļ�����ʧ������.                                      ��
echo    ��                                                                      ��
echo    �� �� 6. ����ע���.                                                    ��
echo    ��                                                                      ��
echo    �� �� �������� ��                                                       ��
echo    ��                                                                      ��
echo    ��    ����ͬʱѡ�����޸���Ŀ(1 2 3 4 5 6), �м��ÿո���.  7. ����   ��
echo    �t�����������������������������������������������������������������������s
echo.
set xf3=
set rehab=
set num=0
set /p xf3=    ����(1-6 q=exit)�󰴻س���:
if /i "%xf3%"=="q" goto :eof
if /i "%xf3%"=="7" goto XF
set "say=                   ^|��  ϵͳ�����޸���, ���Ե�...      ��^|"
call :hint
echo Windows Registry Editor Version 5.00>"%tmp%\win.reg"
for %%i in (%xf3%) do (
    for %%j in (1 2 3 4 5 6) do (
        if "%%i"=="%%j" call :xf3%%j
    )
)
start /w regedit /s "%tmp%\win.reg"
del /a /f "%tmp%\win.reg"
for %%i in (%rehab%) do set /a num+=1
if "%num%"=="0" (
    set "say=                   ^|��  ��������, û���޸��κ���Ŀ!    ��^|"
    goto show
)
set rehab=%rehab% !
:plus
if %num% lss 6 (
    set "rehab=%rehab%  "
    set /a num+=1
    goto plus
)
set "say=                   ^|��  �ɹ��޸���Ŀ%rehab%       ^|"
:show
call :hint
echo.
echo.
set /p ii=     �����������......<nul
pause >nul 2>nul
goto XF

:xf31
(echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver]
echo "Start"=dword:00000002
echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]
echo "AutoShareWKs"=dword:00000001
echo "AutoShareServer"=dword:00000001
echo.
echo [HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\NetBT\Parameters]
echo "SMBDeviceEnabled"=dword:00000001)>>"%tmp%\win.reg"
set rehab=%rehab% 1
goto :eof

:xf32
regsvr32 /s WSHom.Ocx >nul 2>nul
regsvr32 /s scrrun.dll >nul 2>nul
regsvr32 /s "C:\Program Files\Common Files\System\ado\msado15.dll" >nul 2>nul
set rehab=%rehab% 2
goto :eof

:xf33
(echo.
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService]
echo "Start"=dword:00000002)>>"%tmp%\win.reg"
set rehab=%rehab% 3
goto :eof

:xf34
(echo.
echo [HKEY_CURRENT_USER\Control Panel\Sound]
echo "Beep"="yes"
echo "ExtendedSounds"="yes")>>"%tmp%\win.reg"
set rehab=%rehab% 4
goto :eof

:xf35
(echo.
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\DelegateFolders\{59031a47-3f72-44a7-89c5-5595fe6b30ee}])>>"%tmp%\win.reg"
set rehab=%rehab% 5
goto :eof

:xf36
(echo.
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]
echo "DisableRegistryTools"=dword:00000000)>>"%tmp%\win.reg"
set rehab=%rehab% 6
goto :eof


:: ϵͳ���ÿ�����Ч______________________________________________________________
:SX
title ϵͳ���ÿ�����Ч  ����:ľ��ɭ  QQ:573381312
color F0
set "say=                   ^|��  ����ˢ��ϵͳ����, ���Ե�...      ^|"
call :hint
tasklist | find /i "explorer.exe" >nul 2>nul && taskkill /f /im explorer.exe >nul 2>nul
ping 127.1 -n 2 >nul 2>nul
start "" "%windir%\explorer.exe"
"%windir%\system32\gpupdate.exe" >nul 2>nul
set "say=                   ^|��  ��ϲ, �ɹ�ˢ��ϵͳ����!        ��^|"
call :hint
echo.
echo.
set /p ii=     ��������˳�......<nul
pause >nul 2>nul
goto :eof


:hint
cls
echo.
echo ����          ��������            \\\^|/// 
echo ����������          ��         \\��.-.-��// 
echo  ��������          ��         ��(��.@.@��) 
echo                    +-------oOOo-----(_)-----oOOo---------+   
echo                    ^|������ ������������������������������^|
echo %say%
echo                    ^|�������������������������������� ����^|     
echo                    +----------oooO-------Oooo------------+  
goto :eof
