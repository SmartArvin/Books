@echo off
:: Code by zh159 2006-12-16 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25112 47¥
title IE ͨѶ¼
mode con cols=15 lines=1

::�������ݿ⼰���ɱ���ͼƬ
if not exist Tel\ md Tel>nul
if not exist Tel\Tel.db call :Tel.db
if exist Tel\bg.gif goto MinRun
mode con cols=50 lines=5
echo.
echo.  ����ʹ�� IE ͨѶ¼���������ݿ⼰���ɱ���ͼƬ��
echo.
echo.  ���Ե�. . .&ping -n 1 127.1>nul
echo str="47494638396101000400800000F0F0F0ECECEC2C0000000001000400000203041205003B">>debug.vbs
echo with wscript.stdout:r=vbcrlf:for i=1 to len(str) step 48:.write "e"+hex(256+(i-1)/2):for j=i to i+46 step 2:.write " "+mid(str,j,2):next:.write r:next>>debug.vbs
echo .write "rbx"+r+"0"+r+"rcx"+r+"24"+r+"n debug.tmp"+r+"w"+r+"q"+r:end with>>debug.vbs&&cscript //nologo debug.vbs|debug.exe>nul&&move/y debug.tmp "Tel\bg.gif"&del debug.vbs
start "" "%~nx0"&exit

:MinRun
::��С��������ʾ������
if exist "Temp.bat" goto Start
>Temp.bat echo start/min "" "%~nx0"^&exit
start/min Temp.bat&exit

:Start
del "Temp.bat">nul
mode con cols=15 lines=1
setlocal EnableDelayedExpansion

:Main
::���ð�����ɫ
set "button=border: 1 solid #9ab8f6;FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#10bfff,endColorStr=#007db2);cursor:hand;color:#ffffff;"
set "Pagebutton=border: 1 solid #9ab8f6;FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#10bfff,endColorStr=#007db2)"
set "Pagedisabled=border: 1 solid #b1b1b1;FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f5f5f5,endColorStr=#b1b1b1)"

set "title=IE ����������ͨѶ¼ - zh159 ����"
set ieheight=360
set Amount=0
for /f "skip=3 delims=" %%i in (Tel\Tel.db) do (
  if "%%i" == "-End-" set /a Amount+=1)

call :Event

>>%Temp%\Temp.vbs echo with ie.document
>>%Temp%\Temp.vbs echo .write "<html><title>IE ����������ͨѶ¼ - zh159 ����</title><meta http-equiv='Content-Type' content='text/html; charset=gbk'>"
>>%Temp%\Temp.vbs echo .write "<style type='text/css' id='css'>.button {font: 15px ����, Verdana;height:32px;width:100px;}</style>"
>>%Temp%\Temp.vbs echo .write "<body onload=sf() background='%cd:\=/%/Tel/bg.gif' bgcolor=#e3e5da scroll=no style='font-family:����;font-size:15px;'>"
>>%Temp%\Temp.vbs echo .write "<table align=center style='font-family:����_gb2312;font-size:24px;'><td><b>IE ����������ͨѶ¼</b></td></table>"
>>%Temp%\Temp.vbs echo .write "<table width=550 align=center style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#9ab8f6,endColorStr=#5a7dde)'><td align=left style='font-size:1px;'> </td></table>"
>>%Temp%\Temp.vbs echo .write "<table width=550 align=center borderColor=#698cc2 border=0 cellSpacing=1 cellpadding=8 style='font-size:15px;border:#5a7dde 2px solid;'>"
>>%Temp%\Temp.vbs echo .write "<tr><td align=center bgcolor=#698cc2 style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#9ab8f6,endColorStr=#5a7dde)' colspan=4><b><font style=font-size:18px;color:#ffffff;>= ��ӭʹ�� IE ����������ͨѶ¼ =</font><br><font style=color:#d0d0d0;><a title='�й�DOS������̳'>zh159@bbs.cn-dos.net</a>����<a title='��������ɫ-�ֻ�רҵ��̳'>zh159@bbs.blueshow.net</a></font></b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr align=left><td colspan=4> <b>�����ֱ�ӻس�[��ѯ/����]��ϵ��(����)��Ҳ���Դ��б�ѡȡ��ϵ�ˣ�</b><br>����: <input id=input value='�������������ϵ��������绰' onclick=this.value='' name='messageField' type=text title='������ϵ�˻�绰[������]�б��ѯ��' style='font-family:Tahoma,����;font-size:15px;border: 1px solid #698cc2;width:300;height:23;FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#dee8f4);color:#5a7dde'>��<select id=list name='messagePick' OnChange='messageReveal()' style='font-size:15px;border: 1px solid #698cc2;'>"
>>%Temp%\Temp.vbs echo .write "<option value=''>%Amount% λ��ϵ��"
call :List
>>%Temp%\Temp.vbs echo .write "</select> �б�</td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr align=center><td align=center width=25%%><input id=find type=submit class=button value='��ѯ/����' title='������ϵ�˻�绰����[��ѯ��/����]��ϵ��' style='font-family:����_gb2312;font-size:21px;width=110;%button%'></td><td align=center width=25%%><input id=All type=button class=button value='�鿴ȫ��' title='�鿴ͨѶ¼��������ϵ������' style='font-family:����_gb2312;font-size:21px;width=110;%button%'></td>"
>>%Temp%\Temp.vbs echo .write "<td align=center width=25%%><input id=SortTel type=button class=button value='����' title='��ͨѶ¼���ݿⰴ��ĸ˳���������' style='font-family:����_gb2312;font-size:21px;width=110;%button%'></td><td align=center width=25%%><input type=button class=button onClick='opener=null;window.close()' value='�˳�' title='�˳�����' style='font-family:����_gb2312;font-size:21px;width=110;%button%'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td align=center bgcolor=#698cc2 style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#d2def2,endColorStr=#9ab8f6);' colspan=4>��������: %Date:~0,10%</td></tr></table>"
>>%Temp%\Temp.vbs echo .write "<table width=550 align=center style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#5a7dde,endColorStr=#9ab8f6)'><td align=left style='font-size:1px;'> </td></table>"
>>%Temp%\Temp.vbs echo .write "<table width=560><td align=left style='font-family:����;font-size:15px;color=f00'><b>&nbsp;ע�⣺��Ҫʹ�á�^! ^& * < > \���ȵ��ֽ��ַ���<br>&nbsp;���������ܰ���F5����ˢ�½��棬������������а�������ʧЧ��</b></td><td align=right><input id=help type=button value='ʹ�ð���' title='�鿴������Ϣ' style='font-size:11px;width:60;height:18;%button%'></td></table>"
>>%Temp%\Temp.vbs echo .write "</body></html>"
>>%Temp%\Temp.vbs echo end with

>>%Temp%\Temp.vbs echo dim wmi
>>%Temp%\Temp.vbs echo set wnd=ie.document.parentwindow
>>%Temp%\Temp.vbs echo set id=ie.document.all
>>%Temp%\Temp.vbs echo id.find.onclick=getref("find")
>>%Temp%\Temp.vbs echo id.All.onclick=getref("All")
>>%Temp%\Temp.vbs echo id.SortTel.onclick=getref("SortTel")
>>%Temp%\Temp.vbs echo id.help.onclick=getref("help")

call :SleepCancel

>>%Temp%\Temp.vbs echo sub All
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo Wscript.Echo "All"
>>%Temp%\Temp.vbs echo end sub

>>%Temp%\Temp.vbs echo sub SortTel
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo Wscript.Echo "SortTel"
>>%Temp%\Temp.vbs echo end sub

>>%Temp%\Temp.vbs echo sub help
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo Wscript.Echo "help"
>>%Temp%\Temp.vbs echo end sub

>>%Temp%\Temp.vbs echo sub find
>>%Temp%\Temp.vbs echo ie.visible=0
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo with id
>>%Temp%\Temp.vbs echo if .input.value="�������������ϵ��������绰" then if not .list.value="" then Wscript.Echo .list.value
>>%Temp%\Temp.vbs echo if .input.value="" then if not .list.value="" then Wscript.Echo .list.value
>>%Temp%\Temp.vbs echo if .input.value="" then Wscript.Echo " "
>>%Temp%\Temp.vbs echo if not .input.value="" then if not .input.value="������������ϵ��������绰" then Wscript.Echo .input.value
>>%Temp%\Temp.vbs echo    exit sub
>>%Temp%\Temp.vbs echo end with
>>%Temp%\Temp.vbs echo end sub

set input=
for /f "delims=" %%i in ('"cscript //nologo %Temp%\Temp.vbs"') do (
  if "%%i" == "exit" del "%Temp%\Temp*.*"&exit
    set input=%%i
  if "!input!" == "All" goto All
  if "!input!" == "SortTel" goto SortTel
  if "!input!" == "help" goto help
  if "!input!" == "�������������ϵ��������绰" goto Remind
  if "!input!" == " " (goto Remind) else goto Info)

:Remind
>%Temp%\Temp.vbs echo intAnswer = Msgbox("��������ϵ��������绰�� ", vbExclamation , "���ѣ�")
%Temp%\Temp.vbs
goto Main

:Add
set "title=������ϵ��"
set ¼��ȡ��=ȡ��������ϵ��
set ¼��ȷ��=ȷ��������ϵ��
set ��¼����=¼������
set ieheight=550
set "����=%input%"
set "��Ƭ="
set "�ֻ����� 1="
set "�ֻ����� 2="
set "סլ�绰="
set "�칫�ҵ绰="
set "����="
set "�����ʼ�="
set "��ͥ��ַ="
set "�޸���Ƭ=��ϵ����Ƭ�������С: <b>170*200(px)</b><br><br>"
call :Event
call :Input
if "%input%" == "exit" goto Main
call :Newdb
if not "%Source%" == "" copy/y "%Source%" "%Photo%">nul
set input=%Name%

:Info
set "title=��ϵ������"
set line=
for /f "tokens=1,2,3* delims=:" %%i in ('findstr /nirc:"%input%" Tel\Tel.db') do (
  if "%%j" == "%input%" set line=%%i
  if "%%k" == "%input%" set line=%%i)
if not "%line%" == "" goto Extract

echo %input%|findstr "^[0-9]*$">nul &&goto NoRecord
>%Temp%\Temp.vbs echo set WshShell = WScript.CreateObject("WScript.Shell")
>>%Temp%\Temp.vbs echo intAnswer = MsgBox("û���ҵ���ϵ�ˡ�%input%���ļ�¼�����Ƿ�Ҫ������ϵ�ˡ�%input%���� ", vbExclamation + vbYesNo, "��ѯ�����")
>>%Temp%\Temp.vbs echo     If intAnswer = vbYes Then
>>%Temp%\Temp.vbs echo Wscript.Echo "Add"
>>%Temp%\Temp.vbs echo end if
>>%Temp%\Temp.vbs echo     If intAnswer = vbNo Then
>>%Temp%\Temp.vbs echo Wscript.Echo "Main"
>>%Temp%\Temp.vbs echo end if
for /f "delims=" %%i in ('"cscript //nologo %Temp%\Temp.vbs"') do goto %%i
goto Main

:NoRecord
>%Temp%\Temp.vbs echo intAnswer = Msgbox("û���ҵ� %input% �绰�ļ�¼�� ", vbExclamation , "��ѯ�����")
%Temp%\Temp.vbs
goto Main

:Extract
call :Sweep
for /f "skip=%line% tokens=1,2* delims=����[]" %%i in (Tel\Tel.db) do (
    if "%%i" == "-End-" goto Display
    set "%%i=%%j")

:Display
set ieheight=520
if not "%��Ƭ%" == "" (set "��Ƭ·��=<img src='%cd:\=/%/%��Ƭ:\=/%' height=220 border=1>") else set "��Ƭ·��=����Ƭ"
call :Event

>>%Temp%\Temp.vbs echo with ie.document
>>%Temp%\Temp.vbs echo .write "<html><title>��ϵ������</title>"
>>%Temp%\Temp.vbs echo .write "<body background='%cd:\=/%/Tel/bg.gif' bgcolor=#e3e5da scroll=no style='font-family:����;font-size:15px;'>"
>>%Temp%\Temp.vbs echo .write "<style type='text/css' id='css'>.index a:hover{color:#FFDD64;text-decoration: none;}"
>>%Temp%\Temp.vbs echo .write ".button {font: 15px ����, Verdana;border: 1px solid #698cc2;height: 24px;width:60%%;}</style>"
>>%Temp%\Temp.vbs echo .write "<table align=center style='font-family:����_gb2312;font-size:24px;'><td>��ϵ�� %����% ����</td></table>"
>>%Temp%\Temp.vbs echo .write "<table width=550 align=center border=1 cellSpacing=2 cellpadding=5 borderColor=#698cc2 style='font-size:15px;border:#698cc2 2px solid;'>"
>>%Temp%\Temp.vbs echo .write "<tr><td align=center bgcolor=#9fbfe3 style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#abc6e3)' colspan=3><b>��ϵ������</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td width=370 colspan=2>����: ������<b>%����%</b><br>¼������: ��<b>%¼������%</b></td><td align=center width=180 rowspan=7>%��Ƭ·��%</td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�ֻ����� 1: <b>%�ֻ����� 1%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�ֻ����� 2: <b>%�ֻ����� 2%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>סլ�绰: ��<b>%סլ�绰%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�칫�ҵ绰: <b>%�칫�ҵ绰%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>����: ������<b>%����%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�����ʼ�: ��<b>%�����ʼ�%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#abc6e3)' colspan=3>��ͥ��ַ: ��<b>%��ͥ��ַ%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "</table>"
>>%Temp%\Temp.vbs echo .write "<table width=550><td align=right><input id=Del type=button value='ɾ��' title='ɾ������ϵ��' style='font-size:13px;width:42;height:18;%button%'></td></table>"
>>%Temp%\Temp.vbs echo .write "<p align=center>"
>>%Temp%\Temp.vbs echo .write "<input id=Modify type=button value='�� ��' title='�޸ı���ϵ�˵�����' style='font-size:18px;%button%'>����<input type=submit onClick='opener=null;window.close()' value='�� ��' title='���������棨Ĭ�ϻس���' style='font-size:18px;%button%'>"
>>%Temp%\Temp.vbs echo .write "</body></html>"
>>%Temp%\Temp.vbs echo end with

>>%Temp%\Temp.vbs echo dim wmi
>>%Temp%\Temp.vbs echo set wnd=ie.document.parentwindow
>>%Temp%\Temp.vbs echo set id=ie.document.all
>>%Temp%\Temp.vbs echo id.Modify.onclick=getref("Modify")
>>%Temp%\Temp.vbs echo id.Del.onclick=getref("Del")

call :SleepCancel

>>%Temp%\Temp.vbs echo sub Modify
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo Wscript.Echo "Modify"
>>%Temp%\Temp.vbs echo end sub

>>%Temp%\Temp.vbs echo sub Del
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo Wscript.Echo "Del"
>>%Temp%\Temp.vbs echo end sub

for /f "delims=" %%i in ('"cscript //nologo %Temp%\Temp.vbs"') do (
  if "%%i" == "exit" goto Main
  goto %%i)
goto Main

:Del
>%Temp%\Temp.vbs echo set WshShell = WScript.CreateObject("WScript.Shell")
>>%Temp%\Temp.vbs echo intAnswer = MsgBox("��ȷ��ɾ����ϵ��: %����% �� ", vbExclamation + vbYesNo, "���棡")
>>%Temp%\Temp.vbs echo     If intAnswer = vbYes Then
>>%Temp%\Temp.vbs echo end if
>>%Temp%\Temp.vbs echo     If intAnswer = vbNo Then
>>%Temp%\Temp.vbs echo Wscript.Echo "Info"
>>%Temp%\Temp.vbs echo end if
for /f "delims=" %%i in ('"cscript //nologo %Temp%\Temp.vbs"') do if not "%%i" == "" goto %%i
call :Deldb
if exist "%��Ƭ%" del/q "%��Ƭ%"
>%Temp%\Temp.vbs echo intAnswer = Msgbox("��ϵ�� %����% ��ɾ���� ", vbExclamation , "ɾ����")
%Temp%\Temp.vbs
goto Main

:Modify
set "title=�޸���ϵ�� %����% ����"
set ¼��ȡ��=ȡ���Ա���ϵ�����ϵ��޸�
set ¼��ȷ��=ȷ���Ա���ϵ�����ϵ��޸�
set ��¼����=�޸�����
set ieheight=550
set "�ֻ����� 1=%�ֻ����� 1:��=%"
set "�ֻ����� 2=%�ֻ����� 2:��=%"
set "סլ�绰=%סլ�绰:��=%"
set "�칫�ҵ绰=%�칫�ҵ绰:��=%"
set "����=%����:��=%"
set "�����ʼ�=%�����ʼ�:��=%"
set "��ͥ��ַ=%��ͥ��ַ:��=%"
if not "%��Ƭ%" == "" (set "�޸���Ƭ=&nbsp;<img src='%cd:\=/%/%��Ƭ:\=/%' height=220 border=1><br>�����޸������ѡȡ��Ƭ<br>") else set "�޸���Ƭ=����Ƭ<br><br>"
set AddN=No
set ModifyN=1
call :Event
call :Input
if "%input%" == "exit" set "input=%����%"&goto Info
if "%Source%" == "" (set "Photo=%��Ƭ%") else copy/y "%Source%" "%Photo%">nul
call :Deldb
call :Newdb
set "input=%Name%"
goto Info

:All
set "title=������ϵ������"
set ieheight=720
set start=1
set cease=20
set Page=0

:AllPage
set Count=1
set /a start=%start%+(%Page%)
set /a cease=%cease%+(%Page%)
call :Event
if %cease% LEQ 20 (set Updisabled=disabled&set "Upbutton=%Pagedisabled%") else set Updisabled=&set "Upbutton=%Pagebutton%"
if %cease% GTR %Amount% (set cease$=%Amount%) else set cease$=%cease%

>>%Temp%\Temp.vbs echo with ie.document
>>%Temp%\Temp.vbs echo .write "<html><title>������ϵ������</title>"
>>%Temp%\Temp.vbs echo .write "<body background='%cd:\=/%/Tel/bg.gif' bgcolor=#e3e5da style='font-family:����;font-size:15px;'>"
>>%Temp%\Temp.vbs echo .write "<style type='text/css' id='css'>.index a:hover{color:#FFDD64;text-decoration: none;}"
>>%Temp%\Temp.vbs echo .write ".button {font: 15px ����, Verdana;border: 1px solid #698cc2;height: 24px;width:60%%;}</style>"
>>%Temp%\Temp.vbs echo .write "<table align=center style='font-family:����_gb2312;font-size:24px;'><td>������ϵ������(%start%-%cease$%/%Amount%)</td></table>"

for /f "skip=3 tokens=1,2* delims=����[]" %%i in (Tel\Tel.db) do (
    set List=%%i
  if !Count! GEQ %start% if !Count! LEQ %cease% if "!List:~-2!" == "::" call :Sweep
    set "%%i=%%j"
  if !Count! GEQ %start% if !Count! LEQ %cease% if "%%i" == "-End-" call :Indi
  if "%%i" == "-End-" set /a Count+=1
  if %Amount% GEQ !Count! (set Dodisabled=&set "Dobutton=%Pagebutton%") else set Dodisabled=disabled&set "Dobutton=%Pagedisabled%"
  if !Count! GTR %cease% goto AllAfter)

:AllAfter
>>%Temp%\Temp.vbs echo .write "<table align=center><td><input id=Up type=button value='��һҳ' title='�鿴��һҳ����' style='font-size:18px;color:#ffffff;%Upbutton%' %Updisabled%>����<input type=button onClick='opener=null;window.close()' value='�� ��' title='���������棨Ĭ�ϻس���' style='font-size:18px;%button%'>����<input id=Down type=submit value='��һҳ' title='�鿴��һҳ����' style='font-size:18px;color:#ffffff;%Dobutton%' %Dodisabled%></td></table>"
>>%Temp%\Temp.vbs echo .write "</body></html>"
>>%Temp%\Temp.vbs echo end with

>>%Temp%\Temp.vbs echo dim wmi
>>%Temp%\Temp.vbs echo set wnd=ie.document.parentwindow
>>%Temp%\Temp.vbs echo set id=ie.document.all
>>%Temp%\Temp.vbs echo id.Up.onclick=getref("Up")
>>%Temp%\Temp.vbs echo id.Down.onclick=getref("Down")

>>%Temp%\Temp.vbs echo sub Up
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo Wscript.Echo "-20"
>>%Temp%\Temp.vbs echo end sub

>>%Temp%\Temp.vbs echo sub Down
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo Wscript.Echo "20"
>>%Temp%\Temp.vbs echo end sub
call :SleepCancel

for /f "delims=" %%i in ('"cscript //nologo %Temp%\Temp.vbs"') do (
  if "%%i" == "exit" goto Main
  set Page=%%i&goto AllPage)

:List
set NumN=
for /f "skip=3 delims=" %%i in (Tel\Tel.db) do (
    set NameEnd=%%i
  for /f "tokens=1,2* delims=:" %%n in ("%%i") do (
  if "!NameEnd:~-2!" == "::" set /a NumN+=1&&>>%Temp%\Temp.VBS echo .write "<option value='%%n'>!NumN! - %%n"))
goto :eof

:Tel.db
>Tel\Tel.db echo ::�绰�����ݿ�
>>Tel\Tel.db echo --------------------------------------------------
>>Tel\Tel.db echo.
goto :eof

:Event
>%Temp%\Temp.vbs echo set WshShell = Wscript.CreateObject("Wscript.Shell")
>>%Temp%\Temp.vbs echo set ie=wscript.createobject("internetexplorer.application","event_") 
>>%Temp%\Temp.vbs echo ie.menubar=0
>>%Temp%\Temp.vbs echo ie.addressbar=0
>>%Temp%\Temp.vbs echo ie.toolbar=0
>>%Temp%\Temp.vbs echo ie.statusbar=0
>>%Temp%\Temp.vbs echo ie.resizable=0
>>%Temp%\Temp.vbs echo ie.width=600
>>%Temp%\Temp.vbs echo ie.height=%ieheight%
>>%Temp%\Temp.vbs echo ie.navigate "about:blank"
>>%Temp%\Temp.vbs echo ie.left=fix((ie.document.parentwindow.screen.availwidth-ie.width)/2)
>>%Temp%\Temp.vbs echo ie.top=fix((ie.document.parentwindow.screen.availheight-ie.height)/2)
>>%Temp%\Temp.vbs echo ie.visible=1
goto :eof

:Input
>>%Temp%\Temp.vbs echo with ie.document
>>%Temp%\Temp.vbs echo .write "<html><title>%title%</title><body background='%cd:\=/%/Tel/bg.gif' bgcolor=#e3e5da scroll=no style='font-family:����;font-size:15px;'>"
>>%Temp%\Temp.vbs echo .write "<style type='text/css' id='css'>"
>>%Temp%\Temp.vbs echo .write ".button {font: 15px ����, Verdana;border: 1px solid #698cc2;height: 24px;width:65%%;FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#dee8f4)}</style>"
>>%Temp%\Temp.vbs echo .write "<table align=center style='font-family:����_gb2312;font-size:24px;'><td>%title%</td></table>"
>>%Temp%\Temp.vbs echo .write "<table width=550 align=center border=1 cellSpacing=2 cellpadding=4 borderColor=#698cc2 style='font-size:15px;border:#698cc2 2px solid;'>"
>>%Temp%\Temp.vbs echo .write "<tr><td align=center bgcolor=#9fbfe3 style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#abc6e3)' colspan=3><b>��ϵ������</b></b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td width=370 colspan=2>����: ������<input class=button id=Name type=test value='%����%'><br>%��¼����%: ��<b><u>%Date:~0,10%</u></b></td><td align=center width=180 rowspan=7>%�޸���Ƭ%<input id=Photo type=file name='attach[]' title='���������ϵ�˵���Ƭ' style='font-size:15px;width:200px;height:24px;'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�ֻ����� 1: <input class=button id=Mobile1 type=test value='%�ֻ����� 1%'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�ֻ����� 2: <input class=button id=Mobile2 type=test value='%�ֻ����� 2%'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>סլ�绰: ��<input class=button id=Phone type=test value='%סլ�绰%'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�칫�ҵ绰: <input class=button id=Office type=test value='%�칫�ҵ绰%'</td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>����: ������<input class=button id=Fax type=test value='%����%'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�����ʼ�: ��<input class=button id=Email  type=test value='%�����ʼ�%'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=3>��ͥ��ַ: ��<input class=button id=Home type=test value='%��ͥ��ַ%' style='width:80%%;'></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td align=center bgcolor=#9fbfe3 style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#abc6e3)' colspan=3>��������: %Date:~0,10%</td></tr></table>"
>>%Temp%\Temp.vbs echo .write "<p align=center>"
>>%Temp%\Temp.vbs echo .write "<input id=confirm type=button value='ȷ ��' title='%¼��ȷ��%' style='font-size:18px;%button%'>����<input type=button onClick='opener=null;window.close()' value='ȡ ��' title='%¼��ȡ��%' style='font-size:18px;%button%'>"
>>%Temp%\Temp.vbs echo .write "</body></html>"
>>%Temp%\Temp.vbs echo end with

>>%Temp%\Temp.vbs echo dim wmi
>>%Temp%\Temp.vbs echo set wnd=ie.document.parentwindow
>>%Temp%\Temp.vbs echo set id=ie.document.all
>>%Temp%\Temp.vbs echo id.confirm.onclick=getref("confirm")
call :SleepCancel
>>%Temp%\Temp.vbs echo sub confirm
>>%Temp%\Temp.vbs echo ie.visible=0
>>%Temp%\Temp.vbs echo ie.quit
>>%Temp%\Temp.vbs echo with id
>>%Temp%\Temp.vbs echo if not .Name.value="" then Wscript.Echo "Name&",.Name.value
>>%Temp%\Temp.vbs echo if not .Photo.value="" then Wscript.Echo "Photo&",.Photo.value
>>%Temp%\Temp.vbs echo if not .Mobile1.value="" then Wscript.Echo "Mobile1&",.Mobile1.value
>>%Temp%\Temp.vbs echo if not .Mobile2.value="" then Wscript.Echo "Mobile2&",.Mobile2.value
>>%Temp%\Temp.vbs echo if not .Phone.value="" then Wscript.Echo "Phone&",.Phone.value
>>%Temp%\Temp.vbs echo if not .Office.value="" then Wscript.Echo "Office&",.Office.value
>>%Temp%\Temp.vbs echo if not .Fax.value="" then Wscript.Echo "Fax&",.Fax.value
>>%Temp%\Temp.vbs echo if not .Email.value="" then Wscript.Echo "Email&",.Email.value
>>%Temp%\Temp.vbs echo if not .Home.value="" then Wscript.Echo "Home&",.Home.value
>>%Temp%\Temp.vbs echo exit sub
>>%Temp%\Temp.vbs echo end with
>>%Temp%\Temp.vbs echo end sub

set input=&set Num=&set Name=&set Source=&set Photo=&set Mobile1=&set Mobile2=&set Phone=&set Office=&set Fax=&set Email=&set Home=

for /f "tokens=1,2* delims=&" %%i in ('"cscript //nologo %Temp%\Temp.vbs"') do (
    set /a Num+=1
  if "!Num!" == "1" if "%%i" == "exit" set input=%%i&goto :eof
    set "input=%%j"&&set "input=!input:~1!"
if not "%%i" == "Photo" (set "%%i=!input!") else set "Source=!input!"&&set "Photo=Tel\!Name!%%~xj")
set input=
goto :eof

:SleepCancel
>>%Temp%\Temp.vbs echo do while true
>>%Temp%\Temp.vbs echo wscript.sleep 500
>>%Temp%\Temp.vbs echo WshShell.AppActivate ("%title% - Microsoft Internet Explorer")
>>%Temp%\Temp.vbs echo loop
>>%Temp%\Temp.vbs echo sub event_onquit
>>%Temp%\Temp.vbs echo Wscript.Echo "exit"
>>%Temp%\Temp.vbs echo wscript.quit
>>%Temp%\Temp.vbs echo end sub
goto :eof

:Newdb
>>Tel\Tel.db echo.%Name%:%Mobile1%::
if not "%Name%" == "" >>Tel\Tel.db echo.������������[%Name%]
if not "%Photo%" == "" >>Tel\Tel.db echo.��Ƭ��������[%Photo%]
if not "%Mobile1%" == "" >>Tel\Tel.db echo.�ֻ����� 1��[%Mobile1%]
if not "%Mobile2%" == "" >>Tel\Tel.db echo.�ֻ����� 2��[%Mobile2%]
if not "%Phone%" == "" >>Tel\Tel.db echo.סլ�绰����[%Phone%]
if not "%Office%" == "" >>Tel\Tel.db echo.�칫�ҵ绰��[%Office%]
if not "%Fax%" == "" >>Tel\Tel.db echo.���棺������[%Fax%]
if not "%Email%" == "" >>Tel\Tel.db echo.�����ʼ�����[%Email%]
if not "%Home%" == "" >>Tel\Tel.db echo.��ͥ��ַ����[%Home%]
>>Tel\Tel.db echo.¼�����ڣ���[%Date:~0,10%]
>>Tel\Tel.db echo.-End-
>>Tel\Tel.db echo.
goto :eof

:Deldb
move/y Tel\Tel.db Tel\TelBak.db
call :Tel.db
set Delete=echo
for /f "skip=3 delims=" %%i in (Tel\TelBak.db) do (
  for /f "tokens=1* delims=:" %%n in ("%%i") do (
  if "%%n" == "%����%" set Delete=rem
    >>Tel\Tel.db !Delete! %%i
  if "%%i" == "-End-" >>Tel\Tel.db !Delete!.&&set Delete=echo))
goto :eof

:Sweep
set "����="
set "��Ƭ="
set "�ֻ����� 1=��"
set "�ֻ����� 2=��"
set "סլ�绰=��"
set "�칫�ҵ绰=��"
set "����=��"
set "�����ʼ�=��"
set "��ͥ��ַ=��"
goto :eof

:Indi
if not "%��Ƭ%" == "" (set "��Ƭ·��=<img src='%cd:\=/%/%��Ƭ:\=/%' height=200 border=1>") else set "��Ƭ·��=����Ƭ"
>>%Temp%\Temp.vbs echo .write "<table width=530 align=center border=1 cellSpacing=2 cellpadding=5 borderColor=#698cc2 title='ֱ�ӻس��鿴��һҳ' style='font-size:15px;border:#698cc2 2px solid;'>"
>>%Temp%\Temp.vbs echo .write "<tr><td align=center bgcolor=#9fbfe3 style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#abc6e3)' colspan=3><b>��ϵ�� %����% ����</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td width=370 colspan=2>����: ������<b>%����%</b><br>¼������: ��<b>%¼������%</b></td><td align=center width=180 rowspan=7>%��Ƭ·��%</td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�ֻ����� 1: <b>%�ֻ����� 1%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�ֻ����� 2: <b>%�ֻ����� 2%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>סլ�绰: ��<b>%סլ�绰%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�칫�ҵ绰: <b>%�칫�ҵ绰%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>����: ������<b>%����%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td colspan=2>�����ʼ�: ��<b>%�����ʼ�%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "<tr><td style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#f8f8fa,endColorStr=#abc6e3)' colspan=3>��ͥ��ַ: ��<b>%��ͥ��ַ%</b></td></tr>"
>>%Temp%\Temp.vbs echo .write "</table><table align=center>- %Count% -</table><br><br>"
goto :eof

:SortTel
>%Temp%\Temp.vbs echo set WshShell = WScript.CreateObject("WScript.Shell")
>>%Temp%\Temp.vbs echo intAnswer = MsgBox("�Ƿ�Ҫ��ͨѶ¼���ݿ�������� ", vbExclamation + vbYesNo, "���棡")
>>%Temp%\Temp.vbs echo     If intAnswer = vbYes Then
>>%Temp%\Temp.vbs echo Wscript.Echo "SortTemp"
>>%Temp%\Temp.vbs echo end if
>>%Temp%\Temp.vbs echo     If intAnswer = vbNo Then
>>%Temp%\Temp.vbs echo Wscript.Echo "Main"
>>%Temp%\Temp.vbs echo end if
for /f "delims=" %%i in ('"cscript //nologo %Temp%\Temp.vbs"') do goto %%i
goto Main

:SortTemp
move/y Tel\Tel.db Tel\SortTel.db
for /f "skip=3 delims=" %%i in (Tel\SortTel.db) do (
    set NameEnd=%%i
  if "!NameEnd:~-2!" == "::" for /f "tokens=1,2* delims=:" %%n in ("%%i") do set $%%n=$)
call :Tel.db
for /f "delims=$=" %%i in ('set $^|Sort') do (
    set input=%%i
    call :ExecuteSort)
>%Temp%\Temp.vbs echo intAnswer = Msgbox("ͨѶ¼���ݿ�������ϣ� ", vbExclamation , "��ɣ�")
%Temp%\Temp.vbs
goto Main
:ExecuteSort
set line=
for /f "tokens=1,2* delims=:" %%i in ('findstr /nirc:"%input%" Tel\SortTel.db') do (
  if "%%j" == "%input%" set /a line=%%i-1)
if "%line%" == "" goto :eof
for /f "skip=%line% delims=" %%i in (Tel\SortTel.db) do (
    >>Tel\Tel.db echo %%i
  if "%%i" == "-End-" >>Tel\Tel.db echo.&goto :eof)

:Help
set ieheight=500
call :Event
>>%Temp%\Temp.vbs echo with ie.document
>>%Temp%\Temp.vbs echo .write "<html><head><meta http-equiv='Content-Type' content='text/html; charset=gb_2312-80'>"
>>%Temp%\Temp.vbs echo .write "<title>IE ����������ͨѶ¼������Ϣ</title><style>em {color: #ffffff;font-style: normal;}</style></head>"
>>%Temp%\Temp.vbs echo .write "<body scroll=no style='FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=1,startColorStr=#5a7dde,endColorStr=#9ab8f6);'>"
>>%Temp%\Temp.vbs echo .write "<table align=center border=0 cellpadding=3 cellspacing=0 width=98%% style='font-family:����;font-size:15px;color:#000000;'><td>"
>>%Temp%\Temp.vbs echo .write "<p align=center style='font-size:18px;'><em><b>IE ����������ͨѶ¼������Ϣ</b></em>"
>>%Temp%\Temp.vbs echo .write "<p><em><b>1�� ���ܰ���F5����ˢ�½��棬������������а�������ʧЧ��ֻ�ܵ���رմ��ڰ���������������ϵͳ�� IE ������ VBS �ű�֮������⣩������"
>>%Temp%\Temp.vbs echo .write "<br>������ IE �������롢�����Ӧ������IE ����رպ������������ VBS �ű���ȡ��Ϣʱ����ʱ����һ������ʾ��Ӧ�ٶȻ�����������Ҳ���������� VBS �ű�֮������⡣</b></em>"
>>%Temp%\Temp.vbs echo .write "<p>2�� ������������������ֱ�ӻس�<b>[��ѯ/����]</b>��ϵ��<b>(����)</b>��Ҳ���Դ��б�ѡȡ��ϵ�ˣ�"
>>%Temp%\Temp.vbs echo .write "<p>3�� �����������봿�����ж�Ϊ��һ�ֻ����루Ŀǰֻ���жϵ�һ�ֻ����룩�����ݿ��ڴ��ڸõ�һ�ֻ�����ͻ���ʾ����ϵ�����ϣ�"
>>%Temp%\Temp.vbs echo .write "<br>����������������������ַ�ʱ��������ݿ��ڴ��ڸ���ϵ�ˣ��Զ���ʾ����ϵ�����ϣ�������ݿ��ڲ����ڸ���ϵ�ˣ����Զ�ѯ���Ƿ�Ҫ������ϵ�ˡ�"
>>%Temp%\Temp.vbs echo .write "<p>4�� �س���Ĭ��Ϊ��<em><b>������</b></em>>[��ѯ/����]��<em><b>��ϵ������</b></em>>���������棻<em><b>������ϵ������</b></em>>�鿴��һҳ��ϵ�����ϡ�"
>>%Temp%\Temp.vbs echo .write "<p><table width=98%%><td align=right style='font-size:15px;'><em><b>by-zh159</b></em> <input type=submit onClick='opener=null;window.close()' value='�ر�' name='button' title='ֱ�ӻس��رձ�������Ϣ' style='font-family:����;font-size:15px;border: 1 solid #9ab8f6;FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#10bfff,endColorStr=#007db2);cursor:hand;color:#ffffff;'></td></table>"
>>%Temp%\Temp.vbs echo .write "</td></table></body>"
>>%Temp%\Temp.vbs echo end with

>>%Temp%\Temp.vbs echo dim wmi
>>%Temp%\Temp.vbs echo set wnd=ie.document.parentwindow
>>%Temp%\Temp.vbs echo set id=ie.document.all

>>%Temp%\Temp.vbs echo sub event_onquit
>>%Temp%\Temp.vbs echo wscript.quit
>>%Temp%\Temp.vbs echo end sub

start %Temp%\Temp.vbs
ping -n 2 127.1>nul
goto :Main
