@echo off
cls
:�б�ѡ��
@echo off
set :=::::::::::::::
set ����=jacksi(ʵ��������)
@title �б�ѡ��-%����%
@PROMPT jacksi
@color a
cls
echo.
echo.
echo.
echo                  1   �ָ�ר�� ------�ָ�һ�пɽ�ֹ�Ļָ�.      --��
echo                  2   ��ֹר�� ------��ֹһ�пɽ�ֹ�Ķ���.      --��
echo                  3   �����ֹ ------�Զ����ֹCMD��һЩ����.   --��
echo                  4   ĸ������ ------�������Ż�.                --˹

echo     -------------------------------------------------------------------------
echo                                   ��:����5Ȼ��س�=���̲�ɱ
echo                ֱ�ӻس�=ˢ��    jacksiȻ��س�=[�ܿ���˹����]   QȻ��س�=�˳�             
@set yslbxz=""
@set /p yslbxz=
if /I "%yslbxz%"=="1" goto �ָ�ר��
if /I "%yslbxz%"=="2" goto ��ֹר��
if /I "%yslbxz%"=="3" goto ��ֹCMD����
if /I "%yslbxz%"=="4" goto ĸ������
if /I "%yslbxz%"=="jacksi" start iexplore http://jacksi.tiandi.com
if /I "%yslbxz%"=="q" (exit)
goto �б�ѡ��





echo     ----------------------------1.�ָ�ר��----------------------------------->nul
:�ָ�ר��
title �ָ�ר��-%��%
cls
echo                           ����            ����
echo                         ��     �� �� ר ��    ��
echo     ----------------------------------------------------------------------
echo         %:%  �١��ҵĵ���-�Ҽ����� %:% �ָ� ::
echo         %:%  ��  ��������-�������� %:% ���� ::
echo         %:%  ��  �ҵĵ���-�Ҽ����� %:%      ::
echo         %:%  ��      ע �� ��      %:%      ::
echo         %:%  ��     �ļ���ѡ��     %:%      ::
echo         %:%  ��     ����������     %:%      ::
echo         %:%  ��        �Ҽ�        %:%      ::
echo         %:%  ��     ���������     %:%      ::
echo         %:%  ��        ע��        %:%      ::
echo         %:%  ��     ���������     %:%      ::
echo         %:%  ��      ��������      %:%      ::
echo         %:%  ��       ����̨       %:%      ::
echo         %:%  ��       IE����       %:%      ::
echo         %:%  ��      C  M   D      %:% ���� ::
echo         %:%  ��    INTERNET����    %:% �ָ� ::
echo         %:%  16      �����        %:%      ::
echo     ----------------------------------------------------------------------
echo                      ������������ı仯-��F5ˢ��.
echo     ----------------------------------------------------------------------

echo            �ָ�����Ҫ���������Ӧֵ. ��:����14Ȼ��س�=�ָ�ʹ��CMD.
echo               ���س�=ˢ�»ָ��б� G=�б�ѡ�� jacksi=�ܿ���˹ Q=�˳�

:jzzqzl1
@set jinzhi=""
@set /p jinzhi=
if /I "%jinzhi%"=="1" goto ��1
if /I "%jinzhi%"=="2" goto ��1
if /I "%jinzhi%"=="3" goto ��1
if /I "%jinzhi%"=="4" goto ��1
if /I "%jinzhi%"=="5" goto ��1
if /I "%jinzhi%"=="6" goto ��1
if /I "%jinzhi%"=="7" goto ��1
if /I "%jinzhi%"=="8" goto ��1
if /I "%jinzhi%"=="9" goto ��1
if /I "%jinzhi%"=="10" goto ��1
if /I "%jinzhi%"=="11" goto ��1
if /I "%jinzhi%"=="12" goto ��1
if /I "%jinzhi%"=="13" goto ��1
if /I "%jinzhi%"=="14" goto ��1
if /I "%jinzhi%"=="15" goto ��1
if /I "%jinzhi%"=="16" goto 16
if /I "%jinzhi%"=="g" goto �б�ѡ��
if /I "%jinzhi%"=="jacksi" start iexplore http://jacksi.tiandi.com
if /I "%jinzhi%"=="q" (EXIT)
goto �ָ�ר��

:��1
REG ADD HKCU\Software\Policies\Microsoft\MMC\{58221C67-EA27-11CF-ADCF-00AA00A80033} /v Restrict_Run /t REG_DWORD /d 0 /F >nul
compmgmt.msc
echo         %:%  �١��ҵĵ����Ҽ�-���� �ָ� :: OK
goto jinzhijs1
:��1
REG DELETE "HKCU\Software\Policies\Microsoft\Windows\Network Connections" /F >nul 4>nul 2>nul
echo [Version] >%temp%\Netman.inf
echo Signature="$WINDOWS NT$" >>%temp%\Netman.inf
echo [DefaultInstall.Services] >>%temp%\Netman.inf
echo AddService=Netman,,My_AddService_Name >>%temp%\Netman.inf
echo [My_AddService_Name] >>%temp%\Netman.inf
echo ServiceType=0x20 >>%temp%\Netman.inf
echo StartType=2 >>%temp%\Netman.inf
echo ErrorControl=1 >>%temp%\Netman.inf
echo ServiceBinary=%SystemRoot%\System32\svchost.exe -k netsvcs >>%temp%\Netman.inf
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 %temp%\Netman.inf >nul 4>nul 2>nul
net start netman >nul 4>nul 2>nul
del %temp%\Netman.inf
ncpa.cpl
echo         %:%  �ڡ���������-�������� �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NopropertiesMyComputer /t REG_DWORD /d 0 /F >nul
sysdm.cpl
echo         %:%  �ۡ��ҵĵ���-�Ҽ����� �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /F >nul
regedit
echo         %:%  �ܡ�    ע �� ��      �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 0 /F >nul
echo         %:%  �ݡ�   �ļ���ѡ��     �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoSetTaskbar /t REG_DWORD /d 0 /F >nul
echo         %:%  �ޡ�   ����������     �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewContextMenu /t REG_DWORD /d 0 /F >nul
echo         %:%  ��        �Ҽ�        �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /F >nul
taskmgr
echo         %:%  ��     ���������     �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoLogoff /t REG_DWORD /d 0 /F >nul
echo         %:%  ��        ע��        �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkstation /t REG_DWORD /d 0 /F >nul
echo         %:%  ��     ���������     �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableChangePassword /t REG_DWORD /d 0 /F >nul
echo         %:%  ��      ��������      �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Policies\Microsoft\MMC /v RestrictAuthorMode /t REG_DWORD /d 0 /F >nul
echo         %:%  ��       ����̨       �ָ� :: OK
goto jinzhijs1
:��1
REG ADD HKCU\Software\Policies\Microsoft\MMC /v RestrictAuthorMode /t REG_DWORD /d 0 /F >nul
echo         %:%  ��       IE����       �ָ� :: OK
echo    ע:�Ѿ��ָ���IE����,���ǻ��������������. ��:Ѹ��
goto jinzhijs1
:��1
REG ADD HKCU\Software\Policies\Microsoft\Windows\System\ /v DisableCMD /t REG_DWORD /d 0 /F >nul
echo         %:%  ��      C  M   D      �ָ� :: OK
goto jinzhijs1
:��1
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v GeneralTab /t REG_DWORD /d 0 /F >nul
  ::��ȫ
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v SecurityTab /t REG_DWORD /d 0 /F >nul
  ::��˽
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v PrivacyTab /t REG_DWORD /d 0 /F >nul
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v ContentTab /t REG_DWORD /d 0 /F >nul
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v ConnectionsTab /t REG_DWORD /d 0 /F >nul
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v ProgramsTab /t REG_DWORD /d 0 /F >nul
  ::�߼�
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v AdvancedTab /t REG_DWORD /d 0 /F >nul
echo         %:%  ��    INTERNET����    �ָ� :: OK
goto jinzhijs1
:16
REG ADD HKCU\Software\Policies\Microsoft\MMC\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}   /v Restrict_Run /t REG_DWORD /d 0 /F >nul
echo         %:%  16.����ԡ� ��ֹ :: OK
goto jinzhijs

:jinzhijs1
gpupdate /force>nul
echo    ����������������������������������������������������������������������
echo                  ����:�������ָ��б�.ֱ�ӻس�����ˢ��Ŷ.
@set jinzhi=""
goto jzzqzl1






echo     ----------------------------2.��ֹר��----------------------------------->nul
:��ֹר��
@title ��ֹר��-%��%
cls
echo                           ����            ����
echo                         ��     �� ֹ ר ��    ��
echo     ----------------------------------------------------------------------
echo         %:%  �١��ҵĵ���-�Ҽ����� %:% ��ֹ ::
echo         %:%  ��  ��������-�������� %:% ���� ::
echo         %:%  ��  �ҵĵ���-�Ҽ����� %:%      ::
echo         %:%  ��      ע �� ��      %:%      ::
echo         %:%  ��     �ļ���ѡ��     %:%      ::
echo         %:%  ��     ����������     %:%      ::
echo         %:%  ��        �Ҽ�        %:%      ::
echo         %:%  ��     ���������     %:%      ::
echo         %:%  ��        ע��        %:%      ::
echo         %:%  ��     ���������     %:%      ::
echo         %:%  ��      ��������      %:%      ::
echo         %:%  ��       ����̨       %:%      ::
echo         %:%  ��       IE����       %:%      ::
echo         %:%  ��      C  M   D      %:% ���� ::
echo         %:%  ��    INTERNET����    %:% ��ֹ ::
echo         %:%  16      16.�����     %:%      ::
echo     ----------------------------------------------------------------------
echo                       ����������ı仯-��F5ˢ��.
echo     ----------------------------------------------------------------------

echo            ��ֹ����Ҫ���������Ӧֵ. ��:����14Ȼ��س�=��ֹʹ��CMD.
echo               ���س�=ˢ�½�ֹ�б� G=�б�ѡ�� jacksi=�ܿ���˹ Q=�˳�

:jzzqzl
@set jinzhi=""
@set /p jinzhi=
if /I "%jinzhi%"=="1" goto ��
if /I "%jinzhi%"=="2" goto ��
if /I "%jinzhi%"=="3" goto ��
if /I "%jinzhi%"=="4" goto ��
if /I "%jinzhi%"=="5" goto ��
if /I "%jinzhi%"=="6" goto ��
if /I "%jinzhi%"=="7" goto ��
if /I "%jinzhi%"=="8" goto ��
if /I "%jinzhi%"=="9" goto ��
if /I "%jinzhi%"=="10" goto ��
if /I "%jinzhi%"=="11" goto ��
if /I "%jinzhi%"=="12" goto ��
if /I "%jinzhi%"=="13" goto ��
if /I "%jinzhi%"=="14" goto ��
if /I "%jinzhi%"=="15" goto ��
if /I "%jinzhi%"=="16" goto 16
if /I "%jinzhi%"=="g" goto �б�ѡ��
if /I "%jinzhi%"=="jacksi" start iexplore http://jacksi.tiandi.com
if /I "%jinzhi%"=="q" (EXIT)
goto ��ֹר��

:��
REG ADD HKCU\Software\Policies\Microsoft\MMC\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}   /v Restrict_Run /t REG_DWORD /d 1 /F >nul
echo         %:%  �١��ҵĵ����Ҽ�-���� ��ֹ :: OK
goto jinzhijs
:��
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Network Connections" /v NC_EnableAdminProhibits /t REG_DWORD /d 1 /F >nul
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Network Connections" /v NC_LanProperties /t REG_DWORD /d 1 /F >nul
echo         %:%  �ڡ���������-�������� ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NopropertiesMyComputer /t REG_DWORD /d 1 /F >nul
echo         %:%  �ۡ��ҵĵ���-�Ҽ����� ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /F >nul
echo         %:%  �ܡ�    ע �� ��      ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 1 /F >nul
echo         %:%  �ݡ�   �ļ���ѡ��     ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoSetTaskbar /t REG_DWORD /d 1 /F >nul
echo         %:%  �ޡ�   ����������     ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewContextMenu /t REG_DWORD /d 1 /F >nul
echo         %:%  ��        �Ҽ�        ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /F >nul
echo         %:%  ��     ���������     ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoLogoff /t REG_DWORD /d 1 /F >nul
echo         %:%  ��        ע��        ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkstation /t REG_DWORD /d 1 /F >nul
echo         %:%  ��     ���������     ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableChangePassword /t REG_DWORD /d 1 /F >nul
echo         %:%  ��      ��������      ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Policies\Microsoft\MMC /v RestrictAuthorMode /t REG_DWORD /d 1 /F >nul
echo         %:%  ��       ����̨       ��ֹ :: OK
goto jinzhijs
:��
REG ADD HKCU\Software\Policies\Microsoft\MMC /v RestrictAuthorMode /t REG_DWORD /d 3 /F >nul
echo         %:%  ��       IE����       ��ֹ :: OK
echo    ע:��Ȼ��ֹ��IE����,���ǻ��������������. ��:Ѹ��
goto jinzhijs
:��
REG ADD HKCU\Software\Policies\Microsoft\Windows\System\ /v DisableCMD /t REG_DWORD /d 2 /F >nul
echo         %:%  ��      C  M   D      ��ֹ :: OK
goto jinzhijs
:��
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v GeneralTab /t REG_DWORD /d 1 /F >nul
  ::��ȫ
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v SecurityTab /t REG_DWORD /d 1 /F >nul
  ::��˽
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v PrivacyTab /t REG_DWORD /d 1 /F >nul
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v ContentTab /t REG_DWORD /d 1 /F >nul
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v ConnectionsTab /t REG_DWORD /d 1 /F >nul
  ::����
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v ProgramsTab /t REG_DWORD /d 1 /F >nul
  ::�߼�
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v AdvancedTab /t REG_DWORD /d 1 /F >nul
echo         %:%  ��    INTERNET����    ��ֹ :: OK
goto jinzhijs
:16
REG ADD HKCU\Software\Policies\Microsoft\MMC\{8FC0B734-A0E1-11D1-A7D3-0000F87571E3}   /v Restrict_Run /t REG_DWORD /d 1 /F >nul
echo         %:%  16.����ԡ� ��ֹ :: OK
goto jinzhijs

:jinzhijs
gpupdate /force>nul
echo    ����������������������������������������������������������������������
echo                  ����:��������ֹ�б�.ֱ�ӻس�����ˢ��Ŷ.
goto jzzqzl



echo     ----------------------------3.�����ֹר��----------------------------------->nul
:��ֹCMD����
@title �����ֹ-%��%
cls
@echo off
reg add "HKLM\Software\Microsoft\Command Processor" /v AutoRun /t REG_EXPAND_SZ /d "%SystemRoot%\yszycmd.cmd" /f>nul 2>nul 4>nul
dir %SystemRoot%\yszycmd.cmd>nul 2>nul 4>nul
goto jzcmd2%ERRORLEVEL%
:jzcmd20
find /i "doskey"<%SystemRoot%\yszycmd.cmd>nul 2>nul 4>nul
goto jzcmd%ERRORLEVEL%
:jzcmd1
:jzcmd21
echo @echo off>  %SystemRoot%\yszycmd.cmd
echo doskey doskey =echo doskey�Ѿ���ֹ������Ҫ����ϵ����Ա.>> %SystemRoot%\yszycmd.cmd
:jzcmd0
echo,
echo,
echo              ��������Ҫ��ֹ��������:����DIRȻ��س�=DIR�����ֹʹ��
echo     -------------------------------------------------------------------------
echo                ֱ�ӻس�=ˢ�� ��G=�б�ѡ�� ��jacksi=�ܿ���˹  ��Q=�˳�
echo     -------------------------------------------------------------------------
echo       ��B=ȥ�����н�ֹ���� ��S=�鿴��ǰ��ֹ������ ��A=�Զ��岻Ҫ��ֹ������
echo     -------------------------------------------------------------------------
echo,
echo,
set jzcmd=
set /p jzcmd=
if /I "%jzcmd%"=="g" goto �б�ѡ��
if /I "%jzcmd%"=="jacksi" start iexplore http://jacksi.tiandi.com
if /I "%jzcmd%"=="" goto ��ֹCMD����
if /I "%jzcmd%"=="b" goto jzcmdbo
if /I "%jzcmd%"=="a" goto jzcmdzd
if /I "%jzcmd%"=="2" goto ��ֹCMD����
if /I "%jzcmd%"=="1" goto ��ֹCMD����
if /I "%jzcmd%"=="q" (exit)
if /I "%jzcmd%"=="s" goto jccmdck
%jzcmd% /?>nul 2>nul 4>nul
if /I "%ERRORLEVEL%"=="9009" goto cmdmy
find /i "%jzcmd%"<%SystemRoot%\yszycmd.cmd>nul 2>nul 4>nul
if /I "%ERRORLEVEL%"=="0" goto cmdyy
echo "%jzcmd%"|find /i" " >nul 2>nul 4>nul
if /I "%ERRORLEVEL%"=="0" goto cmdbb
echo doskey %jzcmd% =echo %jzcmd%�Ѿ���ֹ������Ҫ����ϵ����Ա.>> %SystemRoot%\yszycmd.cmd
goto jzcmdcg



:cmdmy
echo,
echo,
echo,
echo,
echo,
echo                            ��������������
echo                              �밴���������
pause >nul
goto ��ֹCMD����


:jzcmdcg
echo,
echo,
echo,
echo                      �Ѿ���ֹ-�밴���������
pause >nul
goto ��ֹCMD����

:cmdbb
echo,
echo,
echo                       ��������ո�.��������
echo                          �밴���������
pause >nul
goto ��ֹCMD����


:jccmdck
cls
echo                            �������Ѿ���ֹ������
echo,
echo,
for /f "skip=2 tokens=2" %%i in (%SystemRoot%\yszycmd.cmd) do echo           �����������������   %%i
echo     -------------------------------------------------------------------------
echo,
echo,
echo,
echo,
goto jzcmd0


:cmdyy
echo,
echo,
echo,
echo,
echo   ------------------�������Ѿ����ڽ�ֹ�б���,�����ν�ֹ--------------------
echo                               �밴���������
pause >nul
goto ��ֹCMD����


:jzcmdbo
cls
del %SystemRoot%\yszycmd.cmd
echo,
echo,
echo,
echo,
echo,
echo,
echo,
echo,
echo        ������������������Ѿ�ȥ�����н�ֹ��������������������
echo     -------------------------------------------------------------------------
echo           ������������������밴��������������������������
pause >nul
goto ��ֹCMD����


:jzcmdzd
cls
echo                            �������Ѿ���ֹ������
echo,
echo,
for /f "skip=2 tokens=2" %%i in (%SystemRoot%\yszycmd.cmd) do echo           �����������������   %%i
echo     -------------------------------------------------------------------------
echo,
echo,
echo,
echo,
echo                       ��������Ҫ�ӽ�ֹ�б���ȥ�������� 
echo                           G=���ؽ�ֹCMD���� Q=�˳�
set zcmdzd=
set /p zcmdzd=
if /I "%zcmdzd%"=="g" goto ��ֹCMD����
if /I "%zcmdzd%"=="q" (exit)
if /I "%zcmdzd%"=="" goto jzcmdzd
%zcmdzd% /?>nul 2>nul 4>nul
if /I "%ERRORLEVEL%"=="9009" goto cmdmy
find /i "%zcmdzd%"<%SystemRoot%\yszycmd.cmd>nul 2>nul 4>nul
if /I "%ERRORLEVEL%"=="1" goto jzcmdmy11
type %SystemRoot%\yszycmd.cmd|find /v /i "%zcmdzd%">%SystemRoot%\yszycmd1.cmd
del %SystemRoot%\yszycmd.cmd
ren %SystemRoot%\yszycmd1.cmd yszycmd.cmd
echo,
echo,
echo,
echo,
echo,
echo                          �Ѿ��ӽ�ֹ�б���ȥ��%zcmdzd%����
echo                                 �����������
pause >nul
goto jzcmdzd

:jzcmdmy11
echo,
echo,
echo,
echo,
echo                �������������ڽ�ֹ�б���-��ȷ����������
echo                                �����������
pause >nul
goto jzcmdzd

:cmdmy
echo,
echo,
echo,
echo,
echo                      ������Ĳ�������-��Ҫ���������Ŷ
echo                                �����������
pause >nul
goto jzcmdzd


echo     ----------------------------4.ĸ������----------------------------------->nul
:ĸ������
@title ĸ������-%��%
:whzq
cls
echo      ----------------------------------------------------------------------
echo             %:%  �١�ARP��������ƭ����    %:% 
echo             %:%  ��    ���𲡶�����       %:% 
echo             %:%  ��   �ر� Ĭ�� ����      %:%      
echo             %:%  ��    ���������ļ�       %:%     
echo             %:%  ��     ����IE����        %:%     
echo             %:%  ���ԣ���ϵͳ.�����ļ�����%:%   
echo             %:%  �� ���-�����Ҽ�����˵� %:%   
echo      ����������������������������������������������������������������������
echo                          ����������Ҫ�Ķ�Ӧֵ.
echo               ���س�=ˢ�»ָ��б� G=�б�ѡ�� jacksi=�ܿ���˹ Q=�˳�
:whzq1
gpupdate /force>nul
set whzq=""
set /p   whzq=
if /i  "%whzq%"=="1" goto arpff
if /i  "%whzq%"=="2" goto wjbdff
if /i  "%whzq%"=="3" goto gbgx
if /i  "%whzq%"=="4" goto qlwj
if /i  "%whzq%"=="5" goto ggie
if /i  "%whzq%"=="6" goto xywj
if /i  "%whzq%"=="7" goto qcyj
if /i  "%whzq%"=="jacksi" start iexplore http://jacksi.tiandi.com
if /i  "%whzq%"=="q" goto exit
if /i  "%whzq%"=="g" goto �б�ѡ��
goto whzq


::---------------------�١�ARP��������ƭ����---------------------
:arpff
 ::ʹwinpacpװ����.������ִ���ܵ�û��
md %windir%\system32\packet.dll  >nul 2>nul
md %windir%\system32\pthreadVC.dll >nul 2>nul
md %windir%\system32\wpcap.dll >nul 2>nul
md %windir%\system32\drivers\npf.sys >nul 2>nul
md %windir%\system32\npptools.dll >nul 2>nul
  ::ʹ������ӵ��ļ������û���ûȨ�޷���
echo y|cacls.exe %windir%\system32\packet.dll /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\system32\pthreadVC.dll /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\system32\wpcap.dll /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\system32\drivers\npf.sys /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\system32\npptools.dll /d system administrator guest >nul 1>nul
echo     ----------------------------------------------------------------------
echo                 �Ѿ���ӷ���ARP��ƭ������ִ���ܵȹ��ߵ��ļ�
goto whzq1


::---------------------��    ���𲡶�����---------------------
:wjbdff
md %windir%\Logo1_.exe  >nul 2>nul
md %windir%\rundl132.exe  >nul 2>nul
md %windir%\0Sy.exe  >nul 2>nul
md %windir%\vDll.dll  >nul 2>nul
md %windir%\1Sy.exe  >nul 2>nul
md %windir%\2Sy.exe  >nul 2>nul
md %windir%\rundll32.exe  >nul 2>nul
md %windir%\3Sy.exe  >nul 2>nul
md %windir%\5Sy.exe  >nul 2>nul
md %windir%\1.com  >nul 2>nul
md %windir%\exerouter.exe  >nul 2>nul
md %windir%\EXP10RER.com  >nul 2>nul
md %windir%\finders.com  >nul 2>nul
md %windir%\Shell.sys  >nul 2>nul
md %windir%\smss.exe  >nul 2>nul
echo y|cacls.exe %windir%\Logo1_.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\rundl132.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\0Sy.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\vDll.dll /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\1Sy.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\2Sy.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\rundll32.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\3Sy.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\5Sy.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\1.com /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\exerouter.exe /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\EXP10RER.com /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\finders.com /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\Shell.sys /d system administrator guest >nul 1>nul
echo y|cacls.exe %windir%\smss.exe /d system administrator guest >nul 1>nul
echo     ----------------------------------------------------------------------
echo                 �Ѿ���ӷ������𲡶����ļ�-���Ǳ���~.exe����û�취
goto whzq1

::---------------------��   �ر� Ĭ�� ����---------------------
:gbgx
net share c$ /delete 2>nul
net share d$ /delete 2>nul
net share e$ /delete 2>nul
net share f$ /delete 2>nul
net share g$ /delete 2>nul
net share h$ /delete 2>nul
net share g$ /delete 2>nul
net share admin$ /delete 2>nul
net share i$ /delete 2>nul
echo Windows Registry Editor Version 5.00> c:/delshare.reg
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\LSA /v RestrictAnonymous /t REG_DWORD /d 1 /F >nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters /v AutoShareWks /t REG_DWORD /d 0 /F >nul
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters /v AutoShareServer /t REG_DWORD /d 0 /F >nul
echo     ----------------------------------------------------------------------
echo                               �Ѿ��ر�Ĭ�Ϲ���.
goto whzq1

::---------------------��    ���������ļ�---------------------
:qlwj
echo �������ϵͳ�����ļ������Ե�......
del /f /s /q %systemdrive%\*.tmp >nul 2>nul
del /f /s /q %systemdrive%\*._mp >nul 2>nul
del /f /s /q %systemdrive%\*.log >nul 2>nul
del /f /s /q %systemdrive%\*.gid >nul 2>nul
del /f /s /q %systemdrive%\*.chk >nul 2>nul
del /f /s /q %systemdrive%\*.old >nul 2>nul
del /f /s /q %systemdrive%\recycled\*.* >nul 2>nul
del /f /s /q %windir%\*.bak >nul 2>nul
del /f /s /q %windir%\prefetch\*.* >nul 2>nul
rd /s /q %windir%\temp & md %windir%\temp >nul 2>nul
del /f /q %userprofile%\cookies\*.* >nul 2>nul
del /f /q %userprofile%\recent\*.* >nul 2>nul
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" >nul 2>nul
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" >nul 2>nul
del /f /s /q "%userprofile%\recent\*.*" >nul 2>nul
echo     ----------------------------------------------------------------------
echo                               ϵͳ�����ļ��Ѿ��������.
goto whzq1

::---------------------��     ����IE���� ---------------------
:ggie
set yszy=""
echo    -------------------����������Ҫ��IE����.���ƽ�ȥҲ��-------------------
echo    -------------------     ֱ�ӻس�=ĸ��ר�� Q=�˳�    -------------------
set /p yszy=
if /i "%yszy%"=="""" (goto whzq)
if /i "%yszy%"=="q" (exit)
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /v "Window Title" /t REG_SZ /d "%yszy%" /F >nul
echo     ----------------------------------------------------------------------
echo                        IE�����Ѿ�����Ϊ %yszy%.
goto whzq1

::--------------------- ���ԣ���ϵͳ.�����ļ����� --------------------
:xywj
set yszy=""
echo           -------------------����X��ʾ ����Y����-------------------
echo    -------------------   ֱ�ӻس���������=ĸ��ר�� Q=�˳�   -------------------
set /p yszy=
if /i "%yszy%"=="""" (goto whzq)
if /i "%yszy%"=="x" (set xy=1  &set yszy=��ʾ  &goto xywj1)
if /i "%yszy%"=="y" (set xy=0  &set yszy=����  &goto xywj1)
if /i "%yszy%"=="q" (exit)
goto whzq
:xywj1
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v Hidden /t REG_DWORD /d %xy% /F >nul
echo     ----------------------------------------------------------------------
echo              ϵͳ������.�ļ�.�ļ����Ѿ� %yszy%.ˢ�¼��ɼ���״̬.
goto whzq1

::---------------------�� ���-�����Ҽ�����˵� --------------------
:qcyj
regsvr32 /u /s igfxpph.dll >nul 2>nul
reg delete HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers /f >nul
reg add HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\new /ve /d {D969A300-E7FF-11d0-A93B-00A0C90F2719} >nul
echo     ----------------------------------------------------------------------
echo                        ��������Ҽ��˵���������.
goto whzq1


