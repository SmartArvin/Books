@echo off
:: ==============================================================================================================================================================
:: OptimizeXP.cmd		Windows XP �Ż������������ļ���ԭ���ϱ��Ż�����Ҳ��������Windows 2003����
:: Version: 3.1
:: �����ˣ�Climbing��xclimbing@msn.com��QQ��653668��
:: �������ڣ�2003��11��1��
:: ����޸����ڣ�2004��8��17��
:: ���ѣ������б��������ļ�֮ǰ�����ͨ��һ�������ļ������ݣ�����ע��ȥ���㲻��Ҫ�ģ����������ϵͳ��ͻ�ģ����֡�
::       ����ɾ����һЩϵͳ�ļ�������Ż���������ʾ����ϵͳ��װ���̣��벻Ҫ��������ѡ��������ʶ����ļ��汾��
::       �Ż���ɺ������������������
:: �������������ڱ��������е������Ż�����(�󲿷ֶ��ڡ��ҵĵ��� -> ����Ҽ� -> ���ԡ������ã�������Щ���������б��Ż�����֮ǰ����)��
:: 	1. �ر�ϵͳ��ԭ���ܡ�
::	2. ��Ӳ�����м��λ�ý���һ��С�ķ��������Ƽ�1G���ϣ�2G���ڣ�������ڴ������������Ȼ��pagefile.sysת�Ƶ��÷����ϣ��趨Ϊ�̶���С��һ��Ϊ�ڴ��2��3����
::	   ��Ȼͬʱ��ϵͳ����(C:)��pagefile.sys����Ϊ�ޡ�
::	3. �༭������������TEMP��TMP�Ļ�������ָ������������ע��TEMP�������û�������ϵͳ�������֣�����ָ��ͬ��Ŀ¼����
::	4. ��ʼ -> ���� -> DRWTSN32��ȥ�����е�Dr. Watson���ѡ�
::   5. �޸�����ѡ���Ĭ�ϵĲ˵�����ʱʱ������Ϊ1����0��ͬʱ��������Ϣ�е��ڴ�ת������Ϊ���ޡ���
::	6. �����ù��������޸�������IDE�ӿڵĸ߼����ã���û�н��豸�Ľӿ���������Ϊ���ޡ��������豸�ĽӿڵĴ���ģʽ����Ϊ��DMA(������)����
:: =============================================================================================================================================================

:: ���ñ�����������ʱ��һЩ����������tempdirΪ��ʱ�Ĺ���Ŀ¼�������д��bakΪ����ע�����Ҫ�õ���Ŀ¼�������д
set tempdir=%temp%
set bak=f:\syssoft\system\regbak


:: �������������Ŀ¼��������Ӧ��Ŀ¼
if not exist %tempdir%\. md %tempdir%
if not exist %bak%\. md %bak%

:: ɾ��Windows��DllCache(%windir%\system32\dllcache)
sfc /purgecache

:: ɾ��%windir%Ŀ¼�µ�һЩ���ݣ�ע����Щ�����ǲ�����ɾ���ģ����ڼ��ȼ��ʣ�����ɾ��֮ǰ�����ݣ�
rd /s /q "%windir%\Downloaded Installations"
del /f /q /s "%windir%\Help\*.*"
del /f /q /s "%windir%\ime\CHTIME\*.*"
::del /f /q /s "%windir%\Media\*.*"
del /f /q /s "%windir%\system32\LogFiles\*.*"

:: ΢�������뷨
del /f /q /s "%windir%\system32\IME\CINTLGNT\*.*"

:: ΢��ƴ�����뷨
::del /f /q /s "%windir%\system32\IME\PINTLGNT\*.*"
::del /f /q /s "%windir%\system32\IMSC40A.IME"

:: ΢��ע�����뷨 
del /f /q /s "%windir%\system32\IME\TINTLGNT\*.*"

:: ����Windows�������뷨
for %%I in (chajei.ime CINTLGNT.IME dayi.ime imekr61.ime imjp81.ime MSCTFIME.IME phon.ime PINTLGNT.IME quick.ime romanime.ime TINTLGNT.IME unicdime.ime winar30.ime WINGB.IME winime.ime WINPY.IME WINSP.IME WINZM.IME) do if exist "%windir%\system32\%%I" del /f /q "%windir%\system32\%%I"

:: ɾ��Windowsϵͳ�����ϵ����������ļ�
if exist c:\io.sys attrib -s -r -h c:\io.sys
if exist c:\msdos.sys attrib -s -r -h c:\msdos.sys
if exist c:\io.sys del /f /q c:\io.sys
if exist c:\msdos.sys del /f /q c:\msdos.sys
del /f /q /s %windir%\temp\*.*
del /f /q /s %windir%\*.log
del /f /q /s %windir%\*.dmp
del /f /q /s %windir%\*.tmp
del /f /q /s %windir%\*.bak
del /f /q /s %windir%\Help\Tours\*.*
rd  /s /q    %windir%\Help\Tours
del /f /q /s %windir%\minidump\*.*
del /f /q /s %windir%\*.old
del /f /q /s %windir%\*.query
del /f /q    %windir%\*.txt
del /f /q /s "%userprofile%\Recent\*.*"
del /f /q /s "%userprofile%\NetHood\*.*"
del /f /q /s "%userprofile%\Local Settings\Application Data\*.*"

:: ɾ��Windows�򲹶�ʱ���µķ���װĿ¼��һ����%windir%Ŀ¼����$��ͷ��Ŀ¼��ɾ�������ݻ��¼��%tempdir%\rmlist.txt�У���ͬ
lmod > nul
dir /a/b %windir%\$*.* | lmod /l* rd /s /q %windir%\[] > %tempdir%\temp.bat
call %tempdir%\temp.bat
type %tempdir%\temp.bat > %tempdir%\Rmlist.txt
del %tempdir%\temp.bat

:: ɾ��%windir%\imeĿ¼�µ��ձ����������������뷨�ļ�
:: echo sfc /purgecache > %tempdir%\temp.bat
dir /a-d /s /b %windir%\ime\imjp8_1 %windir%\ime\imkr6_1 %windir%\ime\CHTIME | lmod /l* del /f /q [] >> %tempdir%\temp.bat
call %tempdir%\temp.bat
type %tempdir%\temp.bat >> %tempdir%\Rmlist.txt
del %tempdir%\temp.bat

:: ɾ��%windir%\PrefetchĿ¼�µ�Ԥ��ȡ�ļ�
del /f /q %windir%\Prefetch\*.*

:: Unregist Windows xp's zipfldr.dllȥ��zip�ļ��й���
:: �������裺����������������������ɺ�ǧ��Ҫ˫��zip�ļ�����������´�XP��zip�ļ��й��ܣ������̴�Winrar���������н������ļ����Ͷ�������WinRAR��
::regsvr32 /u /s zipfldr.dll

:: ����Windows XP������ʱ�䣬ͨ���޸�ע����е�PrefetchParameters������ԭֵΪ3��
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 5 /f

:: ����xp�Ŀ��ػ�������ɱ������ͽ��̵ĵȴ�ʱ�䣬ԭֵ�ֱ�Ϊ20000, 20000, 12000
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 1000 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 1000 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 200 /f

:: �رռ����ʱ�Զ���������Ӧ������ԭֵΪ0��
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d 1 /f

:: ���ݲ�ɾ��[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}]
:: �����ӿ�Windows XP��������ھ�
if not exist %bak%\restoreshare.reg regedit /e %bak%\restoreshare.reg "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}"
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}" /f


:: �ص�������Dr. Watson
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug" /v Auto /t REG_SZ /d 0 /f


:: ���ٿ�������ɨ��ȴ�ʱ��Ϊ0��
chkntfs /T:0

:: ����һЩû�õķ��������ʵ����������㲻Ҫȥ���ķ��񣬴󲿷���������з��������Ҫ����
:: Uninterruptible Power Supply
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UPS" /v Start /t REG_DWORD /d 4 /f

:: Alerter���������վ��������������벻Ҫ���ã�Internet�Ͻ������
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Alerter" /v Start /t REG_DWORD /d 4 /f

:: Application Layer Gateway Service�������ʹ��xp�ķ���ǽ���벻Ҫ�����������
:: reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ALG" /v Start /t REG_DWORD /d 4 /f

:: Background Intelligent Transfer Service��Windows�Զ����»��õ�������񣬲��ܽ��á�
:: reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v Start /t REG_DWORD /d 4 /f

:: Indexing Service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CiSvc" /v Start /t REG_DWORD /d 4 /f

:: Cryptographic Services��XP����SP2ʱ���õ�������񣬲��ܽ��á�
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CryptSvc" /v Start /t REG_DWORD /d 1 /f

:: Error Reporting Service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ERSvc" /v Start /t REG_DWORD /d 4 /f

:: COM+ Event System����Ϊ�ֹ����������ý���
:: reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventSystem" /v Start /t REG_DWORD /d 3 /f

:: Fast User Switching Compatibility
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FastUserSwitchingCompatibility" /v Start /t REG_DWORD /d 4 /f

:: Help and Support
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\helpsvc" /v Start /t REG_DWORD /d 4 /f

:: IMAPI CD-Burning COM Service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ImapiService" /v Start /t REG_DWORD /d 4 /f

:: TCP/IP NetBIOS Helper
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LmHosts" /v Start /t REG_DWORD /d 4 /f

:: Messenger
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Messenger" /v Start /t REG_DWORD /d 4 /f

:: Network Location Awareness(NLA)�������ʹ��xp�ķ���ǽ���벻Ҫ�����������
:: reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Nla" /v Start /t REG_DWORD /d 4 /f

:: IPSEC Services
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v Start /t REG_DWORD /d 4 /f

:: Protected Storage 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ProtectedStorage" /v Start /t REG_DWORD /d 4 /f

:: Remote Access Connection Manager�������ʹ��xp�ķ���ǽ���벻Ҫ�����������
:: reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasMan" /v Start /t REG_DWORD /d 4 /f

:: Routing and Remote Access
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v Start /t REG_DWORD /d 4 /f

:: Remote Registry
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v Start /t REG_DWORD /d 4 /f

:: Security Accounts Manager
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SamSs" /v Start /t REG_DWORD /d 4 /f

:: Smart Card
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SCardSvr" /v Start /t REG_DWORD /d 4 /f

:: Secondary Logon
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon" /v Start /t REG_DWORD /d 4 /f

:: Shell Hardware Detection
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v Start /t REG_DWORD /d 4 /f

:: SSDP Disconvery Service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v Start /t REG_DWORD /d 4 /f

:: Telephony�������ʹ��xp�ķ���ǽ���벻Ҫ�����������
:: reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TapiSrv" /v Start /t REG_DWORD /d 4 /f

:: Distrubuted Link Tracking Client
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v Start /t REG_DWORD /d 4 /f

:: Upload Manager
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\uploadmgr" /v Start /t REG_DWORD /d 4 /f

:: Windows Time �����������̨������ʱ����������벻Ҫ����
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v Start /t REG_DWORD /d 4 /f

:: WebClient
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v Start /t REG_DWORD /d 4 /f

:: WMDM PMSP Service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMDM PMSP Service" /v Start /t REG_DWORD /d 4 /f

:: Portable Media Serial Number
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WmdmPmSp" /v Start /t REG_DWORD /d 4 /f

:: Wirless Zero Configuration
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WZCSVC" /v Start /t REG_DWORD /d 4 /f

:: ����3721������һЩ������վ
find /i "www.3721.net" %windir%\system32\drivers\etc\hosts > nul
if errorlevel 1 goto _AddHosts
goto _SkipAddHosts

:_AddHosts
echo 127.0.0.1 http://www.3721.net/ >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 3721.com  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 3721.net  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 cnsmin.3721.com  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 cnsmin.3721.net  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 download.3721.com  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 download.3721.net  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 www.3721.com  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 www.3721.net  >> %windir%\system32\drivers\etc\hosts
echo 127.0.0.1 bar.baidu.com  >> %windir%\system32\drivers\etc\hosts

:_SkipAddHosts

:_quit
