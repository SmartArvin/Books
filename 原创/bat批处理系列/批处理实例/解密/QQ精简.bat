@echo off
:: ��Դ������
if exist ����� do goto menu
md �����
set succeed=Ŀǰ�Ѿ�ѡ��ɹ����У�
:menu
cls
@echo.
@echo          QQ ���������ѡ��˵�
@echo     *********************************
@echo     *    1--��QQ���������          *
@echo     *    2--��QQ��ȫ���ġ�          *
@echo     *    3--��QQԶ��Э����          *
@echo     *    4--��QQ��Ƶ��Ƶ��          *
@echo     *    5--��QQԭ��������          *
@echo     *    6--��QQӲ��+Ⱥ����       *
@echo     *    7--��QQ��+�Զ���ͷ��     *
@echo     *    8--��QQ�Զ�����塿����    *
@echo     *    9--��QQ���              *
@echo     *    0--��QQ���š�              *
@echo     *    a--��QQ������              *
@echo     *    b--��QQ���ļ�������        *
@echo     *    x--���˳��˵���            *
@echo     *********************************
@echo     �����򷽰�������QQ2006���а汾
@echo.
@echo     %succeed%
@echo.
@echo     ����ݸ�������ѡ��ǰ����Ӧ�İ���
@echo.
@set /p choice=
if {%choice%}=={1} goto Lite1 else (
if {%choice%}=={2} goto Lite2 else (
if {%choice%}=={3} goto Lite3 else (
if {%choice%}=={4} goto Lite4 else (
if {%choice%}=={5} goto Lite5 else (
if {%choice%}=={6} goto Lite6 else (
if {%choice%}=={7} goto Lite7 else (
if {%choice%}=={8} goto Lite8 else (
if {%choice%}=={9} goto Lite9 else (
if {%choice%}=={0} goto Lite0 else (
if {%choice%}=={a} goto LiteA else (
if {%choice%}=={b} goto LiteB else (
goto LiteX
:Lite1
set succeed=%succeed%��QQ���������
REM ����汣�����ļ���
move Face �����
move NEWFACE �����
move NewSkins �����
md �����\Dat
move Dat\Find.gif �����\Dat
move Dat\GroupLayer.xml �����\Dat
move Dat\RsItemBot.gif �����\Dat
move Dat\SXingBmp.gif �����\Dat
move Dat\Tipbackground.bmp �����\Dat
move Dat\TipbackgroundBig.bmp �����\Dat
md �����\SkinBmp
move SkinBmp\button1.bmp �����\SkinBmp
move SkinBmp\button2.bmp �����\SkinBmp
move SkinBmp\button3.bmp �����\SkinBmp
move SkinBmp\button4.bmp �����\SkinBmp
REM ��¼�������
move QQ.exe �����
move QQBaseClassInDll.dll �����
move QQHelperDll.dll �����
move BasicCtrlDll.dll �����
move QQInfo.Dat �����
move LoginCtrl.dll �����
move npkcntc.dll �����
move npkpdb.dll �����
move QQMainFrame.dll �����
move QQRes.dll �����
move WizardCtrl.dll �����
move NewSkin.dll �����
move vbscript.dll �����
REM ���غ����б�
move CQQApplication.dll �����
REM ����Ⱥ���б�
move QQGroupMng.dll �����
move GroupLive.dll �����
move HostingMgr.dll �����
move default.Dat �����
move QQSpace.dll �����
REM �������ò˵���������Ϣ������
move QQConfigPlugin.dll �����
move QQMsgFriXMng.dll �����
move QQSettingCtrl.dll �����
move QQSysMsgMng.dll �����
move QQZip.dll �����
move SCCore.dll �����
REM �鿴������ϸ����
move QQAddr.dll �����
move QQPlugin.dll �����
REM ������������
move CameraDll.dll �����
move QQAllInOne.dll �����
move QQCustomFace.dll �����
move SCCore.dll �����
REM �ļ�����
move QQFileTransfer.dll �����
move LongConnection.dll �����
move GroupConnection.dll �����
REM ���ض�̬����
move ImageOle.dll �����
move QQZip.dll �����
REM �ʼ���ʾ
move MailSummary.dll �����
cls
goto menu
:Lite2
set succeed=%succeed%��QQ��ȫ���ġ�
move npkcrypt.sys �����
move npkcrypt.vxd �����
move npkcusb.sys �����
cls
goto menu
:Lite3
set succeed=%succeed%��Զ��Э����
move DShared.dll �����
move LongConnection.dll �����
move InPlus.dll �����
move tencent-proto2.dll �����
move tencent-proto1.dll �����
move tencent-comlib.dll �����
move VqqAllInOne.dll �����
cls
goto menu
:Lite4
set succeed=%succeed%��QQ��Ƶ��Ƶ��
REM ����Ƶ��
move audioengine.dll �����
move GIPSVoiceEngineDLL.dll �����
move LongConnection.dll �����
move tencent-comlib.dll �����
move tencent-proto1.dll �����
move tencent-proto2.dll �����
move VqqAllInOne.dll �����
move VqqModule.dll �����
move vqqset.dll �����
REM ����Ƶ������������Ƶ����������
move ACodec.dll �����
move AudioDevice.dll �����
move InPlus.dll �����
move VCodec.dll �����
move VideoDevice.dll �����
move vphone.dll �����
cls
goto menu
:Lite5
set succeed=%succeed%��QQԭ��������
move SOUND �����
cls
goto menu
:Lite6
set succeed=%succeed%��QQӲ��+Ⱥ����
move QQNetDisk.dll �����
move QQGroupDisk.dll �����
cls
goto menu
:Lite7
set succeed=%succeed%��QQ��+QQ�Զ���ͷ��
REM ��QQ�㡿
move QQAvatar.dll �����
move Dat\default_av_boy.gif �����\Dat
move Dat\default_av_boy_largess.gif �����\Dat
move Dat\default_av_girl.gif �����\Dat
move Dat\default_av_girl_largess.gif �����\Dat
REM ��QQ�Զ���ͷ��
move UserDefinedHead.dll �����
cls
goto menu
:Lite8
set succeed=%succeed%��QQ�Զ�����塿
move ContentTab.dll �����
move Content_Config.ini �����
cls
goto menu
:Lite9
set succeed=%succeed%��QQ���
md �����\QQPet
move QQPet.dll �����
move QQPet\QQPet.exe �����\QQPet
move QQPet\GdiPlus.dll �����\QQPet
move QQPet\QQPetCommunity.dll �����\QQPet
move QQPet\QQPetResDownload.dll �����\QQPet
cls
goto menu
:Lite0
set succeed=%succeed%��QQ���š�
move QQMMSXer.dll �����
move Dat\SmsMsgFail.gif �����\Dat
move Dat\SmsMsgSXing.gif �����\Dat
move Dat\SmsMsgSuccess.gif �����\Dat
cls
goto menu
:LiteA
set succeed=%succeed%��QQ������
move QQLiveUpdate.exe �����
cls
goto menu
:LiteB
set succeed=%succeed%��QQ���ļ���
move GdiPlus.dll �����
move InPlus.dll �����
move Mfc42.dll �����
move QQAPI.dll �����
move riched20.dll �����
move Riched32.dll �����
cls
goto menu
:LiteX
cls
@echo.
@echo.
@echo     ������� QQ ���������ѡ�� ���в�������������ļ��� ������桿 �в鿴��
@echo.
@echo     �Ƿ���Ҫɾ���˾����������ļ���ɾ�������� y ���������� n Ȼ��س��˳�������
@echo.
@set /p del=��Yes/No��
if {%del%}=={y} goto DEL
if {%del%}=={n} goto NODEL
:DEL
del %0
:NODEL
