@echo off
:main
cls
echo.
echo.
echo          1.�����Զ����ü������,DNS,����,IP�ű�,IPX�ڲ������
echo.
echo          2.���̷������Զ�����
echo.
echo          3.������ͨ��·�л�������
echo.
echo          4.�˳��ű�
echo.
echo ������1,2,3��4,���������ַ�,����Ը�.


:restart1
set /p select=������:
set /a select=%select%-0
if %select%==1 goto ipdnsipx
if %select%==2 goto netghost
if %select%==3 goto dianxin
if %select%==4 goto endend
if %select% gtr 4 goto errorselect1

:ipdnsipx

cls
echo              -------------------------------------------------------
echo.
echo                                      ˵��
echo                      ����������Ը��ݲ�ͬʹ�ó��ϰ�����ʾ
echo                      ����IP,DNS(���֧������DNS),����,����
echo                      ����.�������������Ϣ�Ľű�����.
echo              -------------------------------------------------------

:restart5
color 0a
echo.
echo ������1����2,���������ַ�,����Ը�.
echo.
echo              1.�����Զ����ü������,DNS,����,IP�ű�,IPX�ڲ������
echo.
echo              2.�������˵�
echo.
set /p select=������:
set /a select=%select%-0
if %select%==1 goto config5 
if %select%==2 goto  main
if %select% gtr 2 goto errorselect5
:config5

echo ��ʼ�������ü������,����,DNS,IP,IPXЭ���ڲ�����ŵĽű�,�������ʾ�����Ҫ�Ĳ���
echo.

set ipaddr=192.168.0.
set mask1=254
set submask1=255.255.255.0
set qz=pc
set dns1=61.177.7.1
set dns2=192.168.0.254
echo Ĭ�ϼ������ǰ׺Ϊ:%qz%,IP��ַǰ���ֶ�Ϊ:%ipaddr%,����Ϊ:%ipaddr%%mask1%,��������Ϊ%submask1%,��һDNSΪ%dns1%,�ڶ�DNSΪ%DNS2%.�����޸��������Ϣ,��ע���������ʾ,������ʾ���뼴����������Ϣ���޸�.����,ֱ���ûس�����ʹ��Ĭ������.
echo.
set /p ipaddr=������IP��ַ��ǰ�����ֶ�����:192.168.0. һ��Ҫ���������ʽ����:
color 70
set /p mask1=�������������һ���ֶ�,����192.168.0.254�е�254:
color 71
set /p submask1=��������������,��ʽΪ255.255.255.0:
color 74
set /p qz=������������ǰ׺:
color 72
set /p dns1=�������һDNS��ַ��
color 73
set /p dns2=������ڶ�DNS��ַ��
color fc
echo �����������ýű�


echo @echo off>%systemroot%\ipconfig.bat
echo cls>>%systemroot%\ipconfig.bat
echo echo              --------------------------------------------------------->>%systemroot%\ipconfig.bat
echo echo                              QQ:66596854��ӭ����>>%systemroot%\ipconfig.bat
echo echo                              Mail:fan2800@hotmail.com>>%systemroot%\ipconfig.bat
echo echo.>>%systemroot%\ipconfig.bat
echo echo                                      ˵��>>%systemroot%\ipconfig.bat
echo echo                      �����������ʵ�ָ�����Ҫ�Զ�����IP��>>%systemroot%\ipconfig.bat
echo echo                      DNS�����أ��������,���֧������DNS>>%systemroot%\ipconfig.bat
echo echo                      ��������������Ϊwuliaodefei,���Ը���>>%systemroot%\ipconfig.bat
echo echo                      ��Ҫ�޸ı���PW���ı��������롣�޸���>>%systemroot%\ipconfig.bat
echo echo                      ���Լ���DNS�����أ��������.���Կ���>>%systemroot%\ipconfig.bat
echo echo                      ��������ע�͵ĵط�����������Ľ�β>>%systemroot%\ipconfig.bat
echo echo                      �����Լ�������������ʵ�ָ��๦�ܣ�>>%systemroot%\ipconfig.bat
echo echo                      ���磬����CS��CD-KEY���Զ���װ�����.>>%systemroot%\ipconfig.bat
echo echo              ------------------------------------------------------->>%systemroot%\ipconfig.bat

echo set sz=3 >>%systemroot%\ipconfig.bat
echo :pw>>%systemroot%\ipconfig.bat
echo set /p pw=���������룺>>%systemroot%\ipconfig.bat
echo set /a sz=%%sz%%-1 >>%systemroot%\ipconfig.bat
echo if %%pw%%==wuliaodefei goto config>>%systemroot%\ipconfig.bat
echo echo �������,����%%sz%%�λ���>>%systemroot%\ipconfig.bat
echo if %%sz%%==0 exit>>%systemroot%\ipconfig.bat
echo color ca >>%systemroot%\ipconfig.bat
echo goto pw>>%systemroot%\ipconfig.bat


echo :config>>%systemroot%\ipconfig.bat
echo cls>>%systemroot%\ipconfig.bat
echo color 0A>>%systemroot%\ipconfig.bat
echo echo ��ӭʹ��>>%systemroot%\ipconfig.bat
echo echo.>>%systemroot%\ipconfig.bat
echo cls>>%systemroot%\ipconfig.bat
echo :ipconfigstart>>%systemroot%\ipconfig.bat
echo set ip=0 >>%systemroot%\ipconfig.bat
echo set /p ip=������IP:>>%systemroot%\ipconfig.bat
echo if %%ip%%==0 goto errorip >>%systemroot%\ipconfig.bat
echo set /a ip=%%ip%%-0>>%systemroot%\ipconfig.bat

echo if %%ip%% lss 10 goto 1to9 >>%systemroot%\ipconfig.bat
echo if %%ip%% lss 100 goto 10to99>>%systemroot%\ipconfig.bat
echo if %%ip%% lss 255 goto 100to254>>%systemroot%\ipconfig.bat
echo if %%ip%% geq 255 goto error1>>%systemroot%\ipconfig.bat

echo :1to9>>%systemroot%\ipconfig.bat
echo set a=00>>%systemroot%\ipconfig.bat
echo goto ipconfig>>%systemroot%\ipconfig.bat


echo :10to99>>%systemroot%\ipconfig.bat
echo set a=00>>%systemroot%\ipconfig.bat
echo set /a a=%%a%%-0>>%systemroot%\ipconfig.bat
echo goto ipconfig>>%systemroot%\ipconfig.bat

echo :100to254>>%systemroot%\ipconfig.bat
echo set a=>>%systemroot%\ipconfig.bat

echo :ipconfig>>%systemroot%\ipconfig.bat
echo echo �����õļ������Ϊ��%qz%%%a%%%%ip%% IP��ַΪ��%ipaddr%%%ip%% ����Ϊ��%ipaddr%%mask1%>>%systemroot%\ipconfig.bat
echo echo ��ʼ���ü������>>%systemroot%\ipconfig.bat
echo color 1a >>%systemroot%\ipconfig.bat
echo reg add HKLM\system\currentcontrolset\control\computername\computername\ /v computername /t reg_sz /d %qz%%%a%%%%ip%% /f ^>nul>>%systemroot%\ipconfig.bat

echo reg add HKLM\system\currentcontrolset\services\tcpip\Parameters\ /v "NV Hostname" /t reg_sz /d %qz%%%a%%%%ip%% /f ^>nul>>%systemroot%\ipconfig.bat
echo echo ��������������>>%systemroot%\ipconfig.bat
echo set /a ip=%%ip%%-0>>%systemroot%\ipconfig.bat
echo echo ��ʼ����IP,����>>%systemroot%\ipconfig.bat
echo color 2a >>%systemroot%\ipconfig.bat
echo netsh interface ip set address "��������" source=static %ipaddr%%%ip%% %submask1% %ipaddr%%mask1% 1 ^>nul>>%systemroot%\ipconfig.bat

echo echo IP�������>>%systemroot%\ipconfig.bat
echo echo ��ʼ����DNS>>%systemroot%\ipconfig.bat
echo netsh interface ip set dns name="��������" source=static %dns1% primary ^>nul>>%systemroot%\ipconfig.bat
echo netsh interface ip add dns name="��������" %dns2% ^>nul>>%systemroot%\ipconfig.bat
echo echo DNS�������>>%systemroot%\ipconfig.bat
echo echo ��ʼ����IPXЭ���ڲ������>>%systemroot%\ipconfig.bat
echo color 3a >>%systemroot%\ipconfig.bat
echo reg add HKLM\SYSTEM\CurrentControlSet\Services\NwlnkIpx\Parameters /f /v VirtualNetworkNumber /t REG_DWORD /d %%ip%%>>%systemroot%\ipconfig.bat
echo echo IPXЭ���ڲ�������������>>%systemroot%\ipconfig.bat
echo echo ɾ��ע�����������>>%systemroot%\ipconfig.bat
echo reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f /v computerconfigscript >>%systemroot%/ipconfig.bat
echo echo ɾ��ע���������Ŀ���>>%systemroot%\ipconfig.bat


echo echo ϵͳ����30����Զ���������������Nȡ�����𣬲����Ժ��ֶ��������� >>%systemroot%\ipconfig.bat
echo start %%systemroot%%\system32\shutdown -r -t 30>>%systemroot%\ipconfig.bat
echo set /p restart1=>>%systemroot%\ipconfig.bat
echo if %%restart1%%==n start %%systemroot%%\system32\shutdown -a>>%systemroot%\ipconfig.bat
echo goto end>>%systemroot%\ipconfig.bat

echo :error1>>%systemroot%\ipconfig.bat
echo echo �������IPΥ����IP��ַʹ�ù����������Ҫ�������1--254֮�������>>%systemroot%\ipconfig.bat
echo goto ipconfigstart>>%systemroot%\ipconfig.bat

echo :errorip>>%systemroot%\ipconfig.bat
echo echo ��û������IP,����������>>%systemroot%\ipconfig.bat
echo goto ipconfigstart>>%systemroot%\ipconfig.bat
echo color fc >>%systemroot%\ipconfig.bat

echo :end>>%systemroot%\ipconfig.bat
echo rem 11��19�����>>%systemroot%\ipconfig.bat
echo exit>>%systemroot%\ipconfig.bat
echo ���ýű��������
echo ��������ע����������ű�
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f /v computerconfigscript /t REG_SZ /d %systemroot%\ipconfig.bat >nul
echo ע���������Ŀ������
echo 10�������Զ��˳���ֱ�ӹرճ����˳�
ping /n 15 127.0.0.1 >nul
exit


:errorselect5
echo ѡ�����,������ѡ��
goto restart5

:errorselect1
echo ѡ�����,������ѡ��
goto restart1


:netghost
color 0a
cls
echo              --------------------------------------------------------
echo.
echo                                      ˵��
echo                      ����������԰�Ҫ������GHOST��������
echo                      �����Ϣ,���Զ�����GHOSTSERVER����
echo                      �Է�������.��������ֻ֧�ֵ�����,��
echo                      ����������Ϊ"��������".�����������
echo                      �����û��ߴﲻ��Ԥ�ڵ�Ч��.�˽ű�Ϊ
echo                      �ֳ�ʹ�ð�,����ǰ������ֻ�Խű�����
echo                      ��������,�ű�����ʱ�������˳�ʱҲ��
echo                      ����Ԥ�ڵ�Ч��,ллʹ��
echo              -------------------------------------------------------
echo.
echo          1.��������GHOST������
echo.
echo          2.�Զ���ԭ��ǰ����
echo.
echo          3.�������˵�
echo.
echo ������1,2��3,���������ַ�,����Ը�.


:restart
set /p select=������:
set /a select=%select%-0
if %select%==1 goto config1 
if %select%==2 goto config2
if %select%==3 goto  main
if %select% gtr 3 goto errorselect

:config1
set /p ip1=�����뵱ǰGHOST��������Ҫʹ�õ�IP��ַ:
set /p mask1=�����뵱ǰGHOST��������Ҫʹ�õ���������:
echo @echo off >%systemroot%\netghost.bat
echo echo ���ݵ�ǰ���������� >>%systemroot%\netghost.bat
echo ipconfig /all ^>%systemroot%\ipconfigbackup.txt>>%systemroot%\netghost.bat
echo echo ��ǰ�������ñ������>>%systemroot%\netghost.bat
echo echo �����ǰDNS,��������>>%systemroot%\netghost.bat
echo netsh interface ip delete address "��������" gateway=all ^>nul >>%systemroot%\netghost.bat
echo netsh interface ip delete dns "��������" all ^>nul >>%systemroot%\netghost.bat
echo echo ���õ�ǰ�������� >>%systemroot%\netghost.bat
echo netsh interface ip set address "��������" source=static %ip1% %mask1% ^>nul >>%systemroot%\netghost.bat
echo echo ��ǰ����������� >>%systemroot%\netghost.bat
echo echo ����GHOST����˳��� >>%systemroot%\netghost.bat
echo start ghostsrv83.exe >>%systemroot%\netghost.bat
echo del %%systemroot%%\netghost.bat >>%systemroot%\netghost.bat
echo exit >>%systemroot%\netghost.bat
%systemroot%\netghost.bat
exit


:config2
find /i "IP Address" %systemroot%\ipconfigbackup.txt >ipaddr.txt
for /f "skip=2 tokens=15" %%p in (ipaddr.txt) do set ipaddr=%%p
find /i "Subnet Mask" %systemroot%\ipconfigbackup.txt >subnetmask.txt
for /f "skip=2 tokens=15" %%b in (subnetmask.txt) do set sub=%%b
find /i "Default Gateway" %systemroot%\ipconfigbackup.txt >gateway.txt
for /f "skip=2 tokens=13" %%g in (gateway.txt) do set gate=%%g
find /i "DNS Servers" %systemroot%\ipconfigbackup.txt >dnss.txt
for /f "skip=2 tokens=15" %%d in (dnss.txt) do set dns1=%%d
for /f %%n in (%systemroot%\ipconfigbackup.txt) do set dns2=%%n
del ipaddr.txt
del subnetmask.txt
del gateway.txt
del dnss.txt
echo %ipaddr% %sub% %gate% %dns1% %dns2%
echo @echo off >%systemroot%\restore.bat
echo echo �ָ�IP,DNS,��������,�������� >>%systemroot%\restore.bat
echo netsh interface ip set address "��������" source=static %ipaddr% %sub% %gate% 1 ^>nul >>%systemroot%\restore.bat
echo netsh interface ip set dns name="��������" source=static %dns1% primary ^>nul >>%systemroot%\restore.bat
echo netsh interface ip add dns name="��������" %dns2% ^>nul >>%systemroot%\restore.bat
echo echo �ָ����>>%systemroot%\restore.bat
echo  del %%systemroot%%\restore.bat >>%systemroot%\restore.bat
echo exit >>%systemroot%\restore.bat
%systemroot%\restore.bat
exit

:errorselect
echo ѡ�����,������ѡ��
goto restart

:dianxin
color 0a
cls
echo              -------------------------------------------------------
echo.
echo                                      ˵��
echo                      ����������԰�Ҫ�����ý��е�������
echo                      ֮ͨ�����·�л�.��������ֻ֧�ֵ���
echo                      ����,������������Ϊ"��������".���
echo                      ���������û��ߴﲻ��Ԥ�ڵ�Ч��.
echo                      �˽ű�Ϊ�ֳ�ʹ�ð�,����ǰ������ֻ
echo                      �Խű�������������,�ű�����ʱ������
echo                      �˳�ʱҲ�ﲻ��Ԥ�ڵ�Ч��,ллʹ��                     
echo              -------------------------------------------------------
echo.
echo ������1����2,���������ַ�,����Ը�.
echo.
echo              1.���������ͨ��·�л�������
echo.
echo              2.�������˵�
echo.

:restart2
set /p select=������:
set /a select=%select%-0
if %select%==1 goto config3 
if %select%==2 goto  main
if %select% gtr 2 goto errorselect3

:config3
echo �ر�ע��:ʹ�ñ��ű��л������Ժ�,�������������濴�����ص�ַ�г���,����Ӱ��ʹ��,��ʱ�������������濴��������,�����κ����ã�����Ҫ���κβ���.
echo.
set /p gateway1=������Ҫ�л�������:
set /p dns1=������Ҫ�л���DNS��ַ:
echo @echo off >gatewaychange.bat
echo echo �л���,���Ե�.  >>gatewaychange.bat
echo netsh interface ip delete dns "��������" all ^>nul >>gatewaychange.bat
echo netsh interface ip set dns name="��������" source=static %dns1% primary ^>nul >>gatewaychange.bat
echo route delete 0.0.0.0 >>gatewaychange.bat
echo route add 0.0.0.0 mask 0.0.0.0 %gateway1% >>gatewaychange.bat
rem �����ﱾ�ű���ʵ����,�����л���������ͨ��·�Ľű��ļ�.ֻ�����ɽű��ļ������Զ�����,����ֻ��Ҫ�ű��ļ�Ȼ���Լ��������ɺ�Ľű��ļ�������ʹ��.
rem ������2��ǰ���rem�ַ�ɾ��,����ʵ�ּ�ʱ����·�л�(���������Ϣ����Զ��������ɵĽű�,����Ҫ�ٴ��������ɵĽű��Ϳ��������·�л�)
rem echo del gatewaychange.bat >>gatewaychange.bat
rem gatewaychange.bat
exit

:errorselect3
echo ѡ�����,������ѡ��
goto restart2




:endend
exit




