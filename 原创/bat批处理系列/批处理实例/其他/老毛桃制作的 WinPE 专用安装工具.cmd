@Echo Off
:: ��Դ�� ����������̳(bbs.wuyou.com)
COLOR 2F
Set Prog=��ë�������� WinPE ר�ð�װ����
Set L1=�������������q�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�r
Set L2=�������������U�������������������������������������U
Set L3=�������q�T�T�ȡ�%Prog%�� ���T�T�r
Set L4=�������U�����U�������������������������������������U�����U
Set L5=�������U�����t�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�s�����U
Set L6=�������U�������������������������������������������������U
Set L7=�������c�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�f
Set L8=�������U����Ȩ���У���ë�ҡ������������ǽ��������治�����U
Set L9=�������t�������������������������������������������������s
Title %Prog%
Set RP=RP
For %%I In (Z Y X W V U T S R Q P O N M L K J I H G F E D C) Do If Exist %%I:\BOOT.INI Set RP=%%I:
If %RP%==RP Goto NoSys
Set PEDIR=%RP%\MAOTAO
If Exist %PEDIR% Goto Err1
FIND /I "C:\MAOTAO" %RP%\BOOT.INI >NUL
If %Errorlevel%==0 Goto Err1
Goto Start

:Err1
CLS
Title %Prog%����ж��
Echo.
Echo %L1%
Echo %L2%
Echo %L3%
Echo %L4%
Echo %L5%
Echo %L6%
Echo �������U ���Ļ����к����Ѿ���װ�� WinPE �ˣ�������ô�죿�U
Echo %L6%
Echo �������U����[1] ж��ԭ�е� WinPE���������°�װ�����������U
Echo �������U����[2] ж��ԭ�е� WinPE�����Ҳ��ٰ�װ�����������U
Echo �������U����[Q] �˳���װ���������������������������������U
Echo %L6%
Echo %L7%
Echo %L8%
Echo %L9%
Echo.
Set Choice=
Set /P Choice=��������ѡ��Ҫ���еĲ��� (1/2/Q) ��Ȼ�󰴻س���
If %Choice%Choice==Choice Goto Err1
If Not '%Choice%'=='' SET Choice=%Choice:~0,1%
If /I '%Choice%'=='1' SET Choi=1&&GOTO UnInstall
If /I '%Choice%'=='2' GOTO UnInstall
If /I '%Choice%'=='Q' EXIT
Goto Err1
Exit

:UnInstall
If Exist %RP%\LDRXPE ATTRIB -S -H -R %RP%\LDRXPE&&Del %RP%\LDRXPE /Q>NUL
If Exist %RP%\WINNT.XPE ATTRIB -S -H -R %RP%\WINNT.XPE&&Del %RP%\WINNT.XPE /Q>NUL
If Exist %RP%\XPEMENU.INI ATTRIB -S -H -R %RP%\XPEMENU.INI&&Del %RP%\XPEMENU.INI /Q>NUL
If Exist %RP%\MTLDR.PE ATTRIB -S -H -R %RP%\MTLDR.PE&&Del %RP%\MTLDR.PE /Q>NUL
If Exist %RP%\MTLDR ATTRIB -S -H -R %RP%\MTLDR&&Del %RP%\MTLDR /Q>NUL
If Exist %RP%\���ó��� RD %RP%\���ó��� /S /Q>NUL
If Exist %RP%\MAOTAO RD %RP%\MAOTAO /S /Q>NUL
Attrib %RP%\BOOT.INI -S -H -R
If Exist %RP%\BOOT.BAK (
Attrib %RP%\BOOT.BAK -S -H -R
TYPE %RP%\BOOT.BAK|FIND /I /V "C:\MAOTAO">%RP%\BOOT.INI
) Else (
Copy %RP%\BOOT.INI %RP%\BOOT.BAK /Y>NUL
TYPE %RP%\BOOT.BAK|FIND /I /V "C:\MAOTAO">%RP%\BOOT.INI
)
Copy %RP%\BOOT.INI %RP%\BOOT.BAK /Y>NUL
If Exist %RP%\BOOT.BAK ATTRIB -S -H -R %RP%\BOOT.BAK&&Del %RP%\BOOT.BAK>NUL
Attrib %RP%\BOOT.INI +S +H +R
Title %Prog%����ж�����
If %Choi%Choi==1Choi (Echo.&&Echo.&&Echo��������ж����ɣ��밴�����׼����װ ������&&PAUSE>NUL&&Goto Start)
Echo.&&Echo.&&Echo��������ж����ɣ��밴������˳� ������
PAUSE>NUL
Exit

:Start
CLS
Title %Prog%������װ
Echo.
Echo %L1%
Echo %L2%
Echo %L3%
Echo %L4%
Echo %L5%
Echo %L6%
Echo �������U ������ѡ��װ��ʽ���������������������������� �U
Echo %L6%
Echo �������U��������[1] ��ͨ��װ/���� �����������������������U
Echo �������U��������[2] Grub��װ/���� (֧�� MD5 ����) �������U
Echo �������U��������[3] Aero��װ/���� (֧������)�������������U
Echo �������U��������[Q] �˳���װ�����������������������������U
Echo %L6%
Echo %L7%
Echo �������U ע��: Aero ��װ��ֻ�ʺ�ϵͳ������(HD0,0)���� ���U
Echo %L7%
Echo %L8%
Echo %L9%
Echo.
Set Choice=
Set /P Choice=��������ѡ��Ҫ���еĲ��� (1/2/3/Q) ��Ȼ�󰴻س���
If %Choice%Choice==Choice Goto Start
If Not '%Choice%'=='' SET Choice=%Choice:~0,1%
If /I '%Choice%'=='1' GOTO Install
If /I '%Choice%'=='2' GOTO GInstall
If /I '%Choice%'=='3' GOTO AInstall
If /I '%Choice%'=='q' EXIT
Goto Start

:Install
Title %Prog%������ͨ��װ
If Not Exist %PEDIR% MD %PEDIR%>NUL
If Exist %RP%\LDRXPE ATTRIB -S -H -R %RP%\LDRXPE
If Exist %RP%\WINNT.XPE ATTRIB -S -H -R %RP%\WINNT.XPE
Echo.
Echo�����������ڸ����ļ������Ժ� ������
MyIns\MyIns.exe e MyIns\MyIns.dll -o%PEDIR% MAOTAO.BIN -r -y>NUL
MyIns\MyIns.exe e MyIns\MyIns.dll -o%RP%\ WINNT.XPE -r -y>NUL
Copy ..\WXPE\SETUPLDR.BIN %RP%\LDRXPE /Y>NUL
Copy ..\WINPE.IS_ %PEDIR% /Y>NUL
ATTRIB -S -H -R %RP%\BOOT.INI
If Exist %RP%\BOOT.BAK ATTRIB -S -H -R %RP%\BOOT.BAK
Copy %RP%\BOOT.INI %RP%\BOOT.BAK>NUL
TYPE %RP%\BOOT.BAK|FIND /I /V "C:\MAOTAO">%RP%\BOOT.INI
Echo C:\MAOTAO\MAOTAO.BIN="WinPE  By: ��ë��">>%RP%\BOOT.INI
XCOPY ..\���ó��� /E %RP%\���ó���\ /Y /R>NUL
If Exist %RP%\XPEMENU.INI ATTRIB -S -H -R %RP%\XPEMENU.INI
TYPE ..\XPEMENU.INI|FIND /I /V "��װ.EXE">%RP%\XPEMENU.INI
ATTRIB +S +H +R %RP%\LDRXPE
ATTRIB +S +H +R %RP%\WINNT.XPE
ATTRIB +S +H +R %RP%\BOOT.INI
ATTRIB +S +H +R %RP%\���ó��� /S /D
ATTRIB +S +H +R %RP%\MAOTAO /S /D
ATTRIB +S +H +R %RP%\MAOTAO\*.*
ATTRIB +S +H +R %RP%\XPEMENU.INI
Goto SUCCESS

:GInstall
Title %Prog%�����߼���װ
If Not Exist %PEDIR% MD %PEDIR%>NUL
CLS
Echo ��������Ҫ�趨������
Echo ע�⣺������볬�� 2 ���ַ����Ҳ����пո�"\"�����ŵ������ַ�
Echo.
Set /P Pass1=�����룺
If %Pass1%Pass1==Pass1 Goto GInstall
Echo.
Echo.
Echo ����һ��������������
Echo.
Set /P Pass2=���ٴ����룺
If %Pass2%Pass2==Pass2 Goto GInstall
If Not %Pass2%==%Pass1% Echo.&&Echo ��������������벻һ�£�����������&&Echo �밴��������¿�ʼ��������&&PAUSE >NUL&&Goto GInstall
<nul Set/p=%Pass2%>%PEDIR%\MD5P.TMP
MD5.EXE %PEDIR%\MD5P.TMP %PEDIR%\MD5R.TXT>NUL
MyIns\MyIns.exe e MyIns\MyIns.dll -o%RP% MTLDR -r -y>NUL
MyIns\MyIns.exe e MyIns\MyIns.dll -o%PEDIR% MTLDR.BIN -r -y>NUL
For /f %%i In ('type %PEDIR%\md5r.txt') do echo password --md5 %%i>>%RP%\MTLDR
Echo fontfile /maotao/muifont.gz>>%RP%\MTLDR
Echo splashimage /maotao/bj2008.xpm.gz>>%RP%\MTLDR
Echo title WinPE  By: Maotao>>%RP%\MTLDR
For /f %%i In ('type %PEDIR%\md5r.txt') do echo password --md5 %%i>>%RP%\MTLDR
Copy /b %RP%\MTLDR+%PEDIR%\MTLDR.bin %RP%\MTLDR>NUL
Del %PEDIR%\MD5?.* /Q>NUL
Del %PEDIR%\MTLDR.bin /Q>NUL
Echo.
Echo ����������ɣ����μ��������룬������������� ������
PAUSE>NUL
If Exist %RP%\LDRXPE ATTRIB -S -H -R %RP%\LDRXPE
If Exist %RP%\WINNT.XPE ATTRIB -S -H -R %RP%\WINNT.XPE
If Exist %RP%\MTLDR ATTRIB -S -H -R %RP%\MTLDR
Echo.
Echo ���ڸ����ļ������Ժ� ������
MyIns\MyIns.exe e MyIns\MyIns.dll -o%PEDIR% BJ2008.XPM.GZ -r -y>NUL
MyIns\MyIns.exe e MyIns\MyIns.dll -o%PEDIR% muifont.gz -r -y>NUL
MyIns\MyIns.exe e MyIns\MyIns.dll -o%PEDIR%\ maotaog.bin -r -y>NUL
MyIns\MyIns.exe e MyIns\MyIns.dll -o%RP%\ WINNT.XPE -r -y>NUL
Ren %PEDIR%\maotaog.bin maotao.bin
Copy ..\WXPE\SETUPLDR.BIN %RP%\LDRXPE /Y>NUL
Copy ..\WINPE.IS_ %PEDIR% /Y>NUL
ATTRIB -S -H -R %RP%\BOOT.INI
If Exist %RP%\BOOT.BAK ATTRIB -S -H -R %RP%\BOOT.BAK
Copy %RP%\BOOT.INI %RP%\BOOT.BAK>NUL
TYPE %RP%\BOOT.BAK|FIND /I /V "��ë��">%RP%\BOOT.INI
Echo C:\MAOTAO\MAOTAO.BIN="WinPE  By: ��ë��">>%RP%\BOOT.INI
XCOPY ..\���ó��� /E %RP%\���ó���\ /Y /R>NUL
If Exist %RP%\XPEMENU.INI ATTRIB -S -H -R %RP%\XPEMENU.INI
TYPE ..\XPEMENU.INI|FIND /I /V "��װ.EXE">%RP%\XPEMENU.INI
ATTRIB +S +H +R %RP%\LDRXPE
ATTRIB +S +H +R %RP%\WINNT.XPE
ATTRIB +S +H +R %RP%\BOOT.INI
ATTRIB +S +H +R %RP%\MTLDR
ATTRIB +S +H +R %RP%\MAOTAO /S /D
ATTRIB +S +H +R %RP%\MAOTAO\*.*
ATTRIB +S +H +R %RP%\���ó��� /S /D
ATTRIB +S +H +R %RP%\XPEMENU.INI
Goto SUCCESS

:AInstall
Title %Prog%�����߼���װ
If Not Exist %PEDIR% MD %PEDIR%>NUL
CLS
Echo ��������Ҫ�趨������
Echo ע�⣺������볬�� 2 ���ַ����Ҳ����пո�"\"�����ŵ������ַ�
Echo.
Set /P Pass1=�����룺
If %Pass1%Pass1==Pass1 Goto AInstall
Echo.
Echo.
Echo ����һ��������������
Echo.
Set /P Pass2=���ٴ����룺
If %Pass2%Pass2==Pass2 Goto AInstall
If Not %Pass2%==%Pass1% Echo.&&Echo ��������������벻һ�£�����������&&Echo �밴��������¿�ʼ��������&&PAUSE >NUL&&Goto AInstall
For /f %%i In (MyIns\Aero.sys) Do MyIns\MyIns.exe e MyIns\MyIns.dll -o%PEDIR% %%i -r -y>NUL
Ren %PEDIR%\maotao.bin avldr.xpe
Ren %PEDIR%\maotaoa.bin maotao.bin
<nul Set/p=%Pass2%>%PEDIR%\airL.gz
Copy /B %PEDIR%\airT.gz+%PEDIR%\airL.gz+%PEDIR%\airW.gz %PEDIR%\airmenu.ini>NUL&&Del %PEDIR%\air?.gz /Q>NUL>NUL
MyIns\MyIns.exe a -tGZip %PEDIR%\airmenu.gz %PEDIR%\airmenu.ini -w%PEDIR%>NUL&&Del %PEDIR%\airmenu.ini /Q>NUL&&Ren %PEDIR%\airmenu.gz airmenu.ini>NUL
Echo.
Echo ����������ɣ����μ��������룬������������� ������
PAUSE>NUL
If Exist %RP%\LDRXPE ATTRIB -S -H -R %RP%\LDRXPE
If Exist %RP%\WINNT.XPE ATTRIB -S -H -R %RP%\WINNT.XPE
Echo.
Echo ���ڸ����ļ������Ժ� ������
Copy ..\WXPE\SETUPLDR.BIN %RP%\LDRXPE /Y>NUL
Copy ..\WINPE.IS_ %PEDIR% /Y>NUL
MOVE %PEDIR%\MTLDR.PE %RP%\>NUL
MOVE %PEDIR%\WINNT.XPE %RP%\>NUL
ATTRIB -S -H -R %RP%\BOOT.INI
If Exist %RP%\BOOT.BAK ATTRIB -S -H -R %RP%\BOOT.BAK
Copy %RP%\BOOT.INI %RP%\BOOT.BAK>NUL
TYPE %RP%\BOOT.BAK|FIND /I /V "C:\MAOTAO">%RP%\BOOT.INI
Echo C:\MAOTAO\MAOTAO.BIN="WinPE  By: ��ë��">>%RP%\BOOT.INI
XCOPY ..\���ó��� /E %RP%\���ó���\ /Y /R>NUL
If Exist %RP%\XPEMENU.INI ATTRIB -S -H -R %RP%\XPEMENU.INI
TYPE ..\XPEMENU.INI|FIND /I /V "��װ.EXE">%RP%\XPEMENU.INI
ATTRIB +S +H +R %RP%\MTLDR.PE
ATTRIB +S +H +R %RP%\LDRXPE
ATTRIB +S +H +R %RP%\WINNT.XPE
ATTRIB +S +H +R %RP%\BOOT.INI
ATTRIB +S +H +R %RP%\MAOTAO /S /D
ATTRIB +S +H +R %RP%\MAOTAO\*.*
ATTRIB +S +H +R %RP%\���ó��� /S /D
ATTRIB +S +H +R %RP%\XPEMENU.INI
Goto SUCCESS

:NoSys
CLS
Echo �������Ļ�����û�а�װ����ϵͳŶ����ȷ�Ϻ���ִ�б���װ����
Echo.
Echo �밴������˳� ������
PAUSE >NUL
Exit

:SUCCESS
Title %Prog%������װ���
CLS
Echo �Ѿ��ɹ������� WinPE.IS_ ��װ������ %RP% �̡�
Echo.
Echo ϵͳ�����е� BOOT.INI ����Ϊ BOOT.BAK��
Echo.
Echo �������Ҫ����ҳ�����õ���ϵͳ������
Echo ֱ�ӽ� XPEMENU.INI �� ���ó��� �ļ��м��е�Ŀ�������Ŀ¼����
Echo.
Echo �밴������˳� ������
PAUSE >NUL
Exit