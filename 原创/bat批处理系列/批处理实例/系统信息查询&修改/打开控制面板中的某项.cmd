@echo off
goto _run

XP�µĿ��������չ����

access.cpl  ��������ѡ��/����
appwiz.cpl  ��ӻ�ɾ������
bthprops.cpl
desk.cpl ��ʾ����/����
firewall.cpl Windows����ǽ
hdwwiz.cpl ���Ӳ����
igfxcpl.cpl �Կ��������/�豸
inetcpl.cpl Internet����/����
intl.cpl ���������ѡ��/����ѡ��
irprops.cpl
joy.cpl ��Ϸ������
main.cpl �������/��ť
mmsys.cpl ��������Ƶ�豸����/����
ncpa.cpl ��������
netsetup.cpl ���簲װ��
nusrmgr.cpl �û��ʻ�
nwc.cpl
odbccp32.cpl ODBC����Դ������/�û�DSN
powercfg.cpl ��Դѡ������/��Դʹ�÷���
QuickTime.cpl QuickTime����/ע��
sticpl.cpl ɨ���Ǻ������
sysdm.cpl ϵͳ����/����
telephon.cpl ��Ϣλ��
timedate.cpl ���ں�ʱ������/���ں�ʱ��
wscui.cpl Windows��ȫ����
wuaucpl.cpl �Զ�����

������start control *.cpl�ĸ�ʽ�򿪣����磺

:_run
start control sysdm.cpl



                 Rundll.exe�߼�Ӧ��

���ȣ���������Сʵ�飨�����ȱ����������ִ�еĳ�ʽ�Ľ������ 

�������ʼ����ʽ��Ms��Dos��ʽ��������Dos�Ӵ���Ȼ����롰rundll32.exe user.exe,restartwindows�����ٰ��»س�������ʱ�㽫�����������������ˣ�

��Ȼ��Rundll�Ĺ��ܾ���������������Ļ�������ʵ��Rundll�ߣ�����˼�壬ִ��DllҲ�����Ĺ��ܾ����������еķ�ʽ����Windows�Ķ�̬����⣬Rundll32.exe��Rundll.exe����������ǰ���Ǻ���32λ������⣬�������������16λ������⣬���ǵ������ʽ�ǡ� 

RUNDLL.EXE ���� 

����Ҫע�������

1.Dll�������в��ܺ��пո񣬱���õ���λ�c:\Program FilesĿ¼����Ҫ�����·���ĳ�c:\Progra��1��

2.Dll��������Dll��ڵ��Ķ��Ų����٣������ʽ�������Ҳ�������κ���Ѷ��

3.��������Ҫ��һ���Rundll�����������к�����ֵ������Dll������Win32API�е�GetUserName(), GetTextFace()�ȡ�

��Visual Basic�У��ṩ��һ��ִ���ⲿ��ʽ��ָ��Shell,��ʽΪ�� 

Shell �������С� 

��������Rundll32.exe�ú�Shellָ���ʹ����VB��ʽӵ���������������������޷�ʵ�ֵ�Ч������������Ϊ������ͳ�ķ�����Ҫ����VB�������Ƚ���һ��ģ�飬Ȼ��д��WinAPI����������������ڳ�ʽ�к��С�������ֻ��һ��: 

Shell ��rundll32.exe user.exe,restartwindows���͸㶨�ˣ�

ʵ���ϣ�Rundll32.exe�ں��и���Windows��������ϵͳѡ����������ص����ơ�

������: rundll32.exe shell32.dll,Control_RunDLL 

����: ��ʾ������� 

������: rundll32.exe shell32.dll,Control_RunDLL access.cpl,,1 

����: ��ʾ��������壭����ѡ����̡�ѡ���Ӵ� 

������: rundll32.exe shell32.dll,Control_RunDLL access.cpl,,2 

����: ��ʾ��������壭����ѡ�������ѡ���Ӵ� 

������: rundll32.exe shell32.dll,Control_RunDLL access.cpl,,3 

����: ��ʾ��������壭����ѡ���ʾ��ѡ���Ӵ� 

������: rundll32.exe shell32.dll,Control_RunDLL access.cpl,,4 

����: ��ʾ��������壭����ѡ�����ѡ���Ӵ� 

������: rundll32.exe shell32.dll,Control_RunDLL access.cpl,,5 

����: ��ʾ��������壭����ѡ���ͳ��ѡ���Ӵ� 

������: rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl @1 

����: ִ�С�������壭�����Ӳ�塱�򵼡� 

������: rundll32.exe shell32.dll,SHHelpShortcuts_RunDLL AddPrinter 

����: ִ�С�������壭�����ӡ������򵼡� 

������: rundll32.exe shell32.dll,Control_RunDLL appwiz.cpl,,1 

����: ��ʾ ��������壭���/ɾ����ʽ����װ/ж�ء� ��塣 

������: rundll32.exe shell32.dll,Control_RunDLL appwiz.cpl,,2 

����: ��ʾ ��������壭���/ɾ����ʽ����װWindows�� ��塣 

������: rundll32.exe shell32.dll,Control_RunDLL appwiz.cpl,,3 

����: ��ʾ ��������壭���/ɾ����ʽ�������̡� ��塣 

������: rundll32.exe syncui.dll,Briefcase_Create 

����: �������Ͻ���һ���µġ��ҵĹ��İ����� 

������: rundll32.exe diskcopy.dll,DiskCopyRunDll 

����: ��ʾ��������Ӵ� 

������: rundll32.exe apwiz.cpl,NewLinkHere %1 

����: ��ʾ��������ݷ�ʽ���ĶԻ����������Ŀ�ݷ�ʽ��λ����%1���������� 

������: rundll32.exe shell32.dll,Control_RunDLL timedate.cpl,,0 

����: ��ʾ��������ʱ�䡱ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL timedate.cpl,,1 

����: ��ʾ��ʱ����ѡ���Ӵ��� 

������: rundll32.exe rnaui.dll,RnaDial [ĳ���������ӵ�����] 

����: ��ʾĳ���������ӵĲ����Ӵ�������Ѿ��������ӣ�����ʾĿǰ������״̬���Ӵ��� 

������: rundll32.exe rnaui.dll,RnaWizard 

����: ��ʾ���½��������ӡ��򵼵��Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,0 

����: ��ʾ����ʾ���ԣ�������ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,1 

����: ��ʾ����ʾ���ԣ�ө��������ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,2 

����: ��ʾ����ʾ���ԣ���ۡ�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,3 

����: ��ʾ��ʾ����ʾ���ԣ����ԡ�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,SHHelpShortcuts_RunDLL FontsFolder 

����: ��ʾWindows�ġ����塱�����С� 

������: rundll32.exe shell32.dll,Control_RunDLL main.cpl @3 

����: ͬ������ʾWindows�ġ����塱�����С� 

������: rundll32.exe shell32.dll,SHformatDrive 

����: ��ʾ��ʽ������Ի��� 

������: rundll32.exe shell32.dll,Control_RunDLL joy.cpl,,0 

����: ��ʾ��������壭��Ϸ��������һ�㡱ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL joy.cpl,,1 

����: ��ʾ��������壭��Ϸ�����������ס�ѡ���Ӵ��� 

������: rundll32.exe mshtml.dll,PrintHTML (HTML�ĵ�) 

����: ��ӡHTML�ĵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL mlcfg32.cpl 

����: ��ʾMicrosoft Exchangeһ��ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL main.cpl @0 

����: ��ʾ��������壭���� ѡ�� �� 

������: rundll32.exe shell32.dll,Control_RunDLL main.cpl @1 

����: ��ʾ ��������壭�������ԣ��ٶȡ�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL main.cpl @1,,1 

����: ��ʾ ��������壭�������ԣ����ԡ�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL main.cpl @2 

����: ��ʾWindows��ӡ����������С� 

������: rundll32.exe shell32.dll,Control_RunDLL main.cpl @3 

����: ��ʾWindows�����塱�����С� 

������: rundll32.exe shell32.dll,Control_RunDLL main.cpl @4 

����: ��ʾ��������壭���뷨���ԣ����뷨��ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL modem.cpl,,add 

����: ִ�С�����µ��ƽ�������򵼡� 

������: rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl,,0 

����: ��ʾ��������壭��ý�����ԣ���Ƶ������ҳ�� 

������: rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl,,1 

����: ��ʾ��������壭��ý�����ԣ���Ƶ������ҳ�� 

������: rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl,,2 

����: ��ʾ��������壭��ý�����ԣ�MIDI������ҳ�� 

������: rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl,,3 

����: ��ʾ��������壭��ý�����ԣ�CD���֡�����ҳ�� 

������: rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl,,4 

����: ��ʾ��������壭��ý�����ԣ��豸������ҳ�� 

������: rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl @1 

����: ��ʾ��������壭������ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL netcpl.cpl 

����: ��ʾ��������壭��·��ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL odbccp32.cpl 

����: ��ʾODBC32���Ϲ���ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,OpenAs_RunDLL 

����: ��ʾָ������(driveath ilename)�ġ��򿪷�ʽ���Ի��� 

������: rundll32.exe shell32.dll,Control_RunDLL password.cpl 

����: ��ʾ��������壭���롱ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL powercfg.cpl 

����: ��ʾ��������壭��Դ�������ԡ�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,SHHelpShortcuts_RunDLL 

PrintersFolder 

����: ��ʾWindows��ӡ����������С�(ͬrundll32.exe shell32.dll,Control_RunDLLmain.cpl @2) 

������: rundll32.exe shell32.dll,Control_RunDLL intl.cpl,,0 

����: ��ʾ��������壭�����������ԣ��������á�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL intl.cpl,,1 

����: ��ʾ��������壭�����������ԣ����֡�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL intl.cpl,,2 

����: ��ʾ��������壭�����������ԣ����ҡ�ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL intl.cpl,,3 

����: ��ʾ��������壭�����������ԣ�ʱ�䡱ѡ���Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL intl.cpl,,4 

����: ��ʾ��������壭�����������ԣ����ڡ�ѡ���Ӵ��� 

������: rundll32.exe desk.cpl,InstallScreenSaver [ө������������] 

����: ��ָ����ө��������������ΪWindows������������ʾө�����������Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,0 

����: ��ʾ��������壭ϵͳ���ԣ���ͳ�������Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,1 

����: ��ʾ��������壭ϵͳ���ԣ��豸�������������Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,2 

����: ��ʾ��������壭ϵͳ���ԣ�Ӳ�����õ����������Ӵ��� 

������: rundll32.exe shell32.dll,Control_RunDLL sysdm.cpl,,3 

����: ��ʾ��������壭ϵͳ���ԣ����ܡ������Ӵ��� 

������: rundll32.exe user.exe,restartwindows 

����: ǿ�йر����г�ʽ������������ 

������: rundll32.exe user.exe,exitwindows 

����: ǿ�йر����г�ʽ���ػ��� 

������: rundll32.exe shell32.dll,Control_RunDLL telephon.cpl 

����: ��ʾ���������ԡ�ѡ���Ӵ� 

������: rundll32.exe shell32.dll,Control_RunDLL themes.cpl 

����: ��ʾ��������ּ��ѡ����� 

��Ȼ����ֹ��VisualBasic����Delphi.VisualC++��������ʽ�������Ҳ����ͨ�������ⲿ����ķ�����ʹ��Rundll����Щ���ܣ����巽������Ͳ�����ϸ�����ˡ�����ʹ��Rundll,һ����ʹ��ĳ�ʽ����������ɣ��ﵽ�°빦����Ч���� 

<�ػ���ݷ�ʽ>

(1). ������հ�λ�ð�����Ҽ� -> <�½�> -> ѡ<��ݷ�ʽ>

(2). ��<ָ����>���� rundll.exe user.exe,exitwindows

(3). ��<ѡ���ݷ�ʽ ������>����<�ر�Window>������Ҫ������ -> ��<���> 

<����������ݷ�ʽ>

(1). �ظ����� (1)

(2). ��<ָ����>���� rundll.exe user.exe,restartwindowsexec

(3). ��<ѡ���ݷ�ʽ������>����<��������Restart>������Ҫ������ -> ��<���> RUN - > cmd ����command 

