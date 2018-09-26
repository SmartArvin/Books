@echo off
title 各种病毒清理专杀
echo ******************************************************************************
echo *                      *
echo *      欢迎使用 ☆华夏☆ 常见病毒专杀      *
echo *                      *
echo ******************************************************************************
echo.
color 0A
echo 说明:
echo.
echo 本作品是结合了许多经典的各种病毒专杀写成的
echo.
echo 主要是方便新手们学习
echo.
echo 让华夏黑客联盟(www.hxhack.com)的所有会员和菜菜们都能够学到好的黑客技术
echo.
echo 为了大家的梦想一起努力，请不要放弃自己的梦想。 ^-^
echo.
echo.希望大家能够喜欢~
echo.
echo 华夏黑客联盟(www.hxhack.com)
echo.
echo 请按回车键
pause>nul
cls
echo *****************************************************************************
echo *                      *
echo *        选 择 杀 毒 的 方 式        *
echo *                      *
echo *****************************************************************************
echo.
echo.
echo 输入 1 后按回车键, 专杀熊猫烧香.
echo 输入 2 后按回车键, 清理熊猫烧香内存病毒.
echo 输入 3 后按回车键, 专杀金威病毒.
echo 输入 4 后按回车键, sxs病毒专杀.bat.
echo 输入 5 后按回车键, 清除灰鸽子2.0.
echo 输入 6 后按回车键, 防病毒.
echo 输入 7 后按回车键, viking专杀.
echo 输入 8 后按回车键, 清理U盘病毒和保护.
echo 输入 9 后按回车键, 冲击波专杀.
echo 输入 10 后按回车键, 修复IE.
echo 输入 11 后按回车键, 熊猫烧香变种spcolsv专杀.
echo 输入 12 后按回车键, autorun病毒免疫.
echo 输入 13 后按回车键, 可屏蔽网址的批处理.
echo 输入 14 后按回车键, 强行聊QQ.
echo 输入 15 后按回车键, 清理流氓插件.
echo 输入 16 选择退出
echo.
@set /p start=请选择 (1、2、3、4、5、6、7、8、9、10、11、12、13、14、15、16=退出) 后按回车键: 
if "%start%"=="1" goto 1
if "%start%"=="2" goto 2 
if "%start%"=="3" goto 3 
if "%start%"=="4" goto 4
if "%start%"=="5" goto 5
if "%start%"=="6" goto 6
if "%start%"=="7" goto 7
if "%start%"=="8" goto 8 
if "%start%"=="8" goto 9
if "%start%"=="10" goto 10
if "%start%"=="11" goto 11
if "%start%"=="12" goto 12
if "%start%"=="13" goto 13 
if "%start%"=="14" goto 14
if "%start%"=="15" goto 15
if "%start%"=="16" goto 16
if "%start%"=="17" goto 17
if "%start%"=="18" goto 18
if "%start%"=="19" goto 19
:1 
@echo off 
title 清除熊猫烧香病工具 God God.10Mb.cN 
@echo 清除熊猫烧香病工具 
@echo 
@echo 
@echo 
@echo 
pause 

if exist %windir%\rundl132.exe echo ☆☆☆发现有熊猫烧香病毒! ☆☆☆ 
if exist %windir%\logo_1.exe echo ☆☆☆发现有熊猫烧香病毒! ☆☆☆ 
if exist %Windir%\system32\drivers\spoclsv.exe echo ☆☆☆嘿嘿！！熊猫烧香你还想跑!!☆☆☆ 
@echo 正在杀进程里的病毒,请稍等......... 
tskill logo_1 
tskill rundl132 
tskill zt 
tskill wow 
tskill logo1_ 
tskill Ravmon 
tskill Eghost 
tskill Mailmon 
tskill KAVPFW 
tskill IPARMOR 
tskill Ravmond 
tskill spoclsv 
tskill SVCHQST 
tskill devgt 
tskill sxs 
taskkill /f /im 0sy.exe 
taskkill /f /im 1sy.exe 
taskkill /f /im 2sy.exe 
taskkill /f /im 3sy.exe 
taskkill /f /im 4sy.exe 
taskkill /f /im 5sy.exe 
taskkill /f /im 6sy.exe 
taskkill /f /im 7sy.exe 
taskkill /f /im 8sy.exe 
taskkill /f /im 9sy.exe 
taskkill /f /im spoclsv.exe 
taskkill /f /im SVCHQST 
taskkill /f /im devgt.exe 
taskkill /f /im sxs.exe 
echo 正在查找熊猫烧香病毒,请稍等......... 
del d:\_desktop.ini /f/s/q/a 
del c:\Program Files\_desktop.ini 
del %Windir%\MickNew\MickNew.dll 
del %Windir%\MH_FILE\MH_DLL.dll 
del %Windir%\_desktop.ini 
del %Windir%\TODAYZTKING\TODAYZTKING.DLL 
del %Windir%\system32\drivers\spoclsv.exe 
attrib -h -r -s c:\sxs.exe 
del c:\sxs.exe 
del c:\setup.exe 
attrib -h -s -r c:\autorun.inf 
del c:\autorun.inf 
attrib -h -r -s d:\sxs.exe 
del d:\sxs.exe 
del d:\setup.exe 
attrib -h -s -r d:\autorun.inf 
del d:\autorun.inf 
attrib -h -r -s e:\sxs.exe 
del e:\sxs.exe 
del e:\setup.exe 
attrib -h -s -r e:\autorun.inf 
del e:\autorun.inf 
attrib -h -r -s f:\sxs.exe 
del f:\sxs.exe 
del f:\setup.exe 
attrib -h -s -r f:\autorun.inf 
del f:\autorun.inf 
attrib -h -r -s g:\sxs.exe 
del g:\sxs.exe 
del g:\setup.exe 
attrib -h -s -r g:\autorun.inf 
del g:\autorun.inf 
attrib -h -s -r h:\sxs.exe 
del h:\sxs.exe 
del h:\setup.exe 
attrib -h -s -r h:\autorun.inf 
del h:\autorun.inf 
attrib -h -s -r i:\sxs.exe 
del i:\sxs.exe 
del i:\setup.exe 
attrib -h -s -r i:\autorun.inf 
del i:\autorun.inf 
attrib -h -s -r i:\sxs.exe 
del j:\sxs.exe 
del j:\setup.exe 
attrib -h -s -r g:\autorun.inf 
del j:\autorun.inf 
del %windir%\system\Logo1_.exe 
del %windir%\rundl132.exe 
del %windir%\vDll.dll 
del %windir%\Dll.dll 
del %windir%{topic_info}Sy.exe 
del %windir%\1Sy.exe 
del %windir%\2Sy.exe 
del %windir%\3Sy.exe 
del %windir%\5Sy.exe 
del %windir%\1.com 
echo 正在删注册表的病毒...... 
echo Windows Registry Editor Version 5.00> c:\aa.reg 
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]>> c:\aa.reg 
echo "qdoxjq"=->> c:\aa.reg 
echo "ctfmon"=->> c:\aa.reg 
echo "svcshare"=->> c:\aa.reg 
echo "myZt3"=->> c:\aa.reg 
echo "myMh2"=->> c:\aa.reg 
echo "SVOHOST"=- >> c:\aa.reg 
echo "sxs"=->> c:\aa.reg 
echo Nowing using the registry file to chang the system default properties. 
regedit /s c:\aa.reg 
echo Deleting the temprotarily files. 
del c:\aa.reg 
echo 正在修改被病毒感染的注册表...... 
echo Windows Registry Editor Version 5.00> c:\delshare.reg 
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>> c:\delshare.reg 
echo "RegPath"="Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced">> c:\delshare.reg 
echo "Text"="@shell32.dll,-30500">> c:\delshare.reg 
echo "Type"="radio">> c:\delshare.reg 
echo "CheckedValue"=dword:00000001>> c:\delshare.reg 
echo "ValueName"="Hidden">> c:\delshare.reg 
echo "DefaultValue"=dword:00000002>> c:\delshare.reg 
echo "HKeyRoot"=dword:80000001>> c:\delshare.reg 
echo "HelpID"="shell.hlp#51105">> c:\delshare.reg 
echo Nowing using the registry file to chang the system default properties. 
regedit /s c:\delshare.reg 
echo Deleting the temprotarily files. 
del c:\delshare.reg 
echo Windows Registry Editor Version 5.00> c:\cc.reg 
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows]>> c:\cc.reg 
echo "DebugOptions"="2048">> c:\cc.reg 
echo "Documents"="">> c:\cc.reg 
echo "DosPrint"="no">> c:\cc.reg 
echo "load"=->> c:\cc.reg 
echo "NetMessage"="no">> c:\cc.reg 
echo "NullPort"="None">> c:\cc.reg 
echo "Programs"="com exe bat pif cmd">> c:\cc.reg 
echo "Device"="">> c:\cc.reg 
echo Nowing using the registry file to chang the system default properties. 
regedit /s c:\cc.reg 
echo Deleting the temprotarily files. 
del c:\cc.reg 
@echo -God QQ9746093-请重新启动!!---- 
goto type
:2
call 清除熊猫内存病毒.bat
:3 
@echo off
title 清除威金（logo_1,熊猫烧香）病毒最新变种工具
@echo 清除VIKING病毒最新变种工具
@echo -------------------------------------------------------
@echo by:zero MYQQ：36766812
@echo 
@echo VIKLIG病毒，专杀工具,请复制此代码 保存为.bat后缀的批处理文件双击运行即可.
@echo --------------------------------------------------------
pause>nul

if exist %windir%\rundl132.exe echo ---病毒警报，发现有威金病毒
if exist %windir%\logo_1.exe echo ---病毒警报，发现有威金病毒
rem 杀viking进程
tskill logo_1
tskill rundl132
tskill zt
tskill wow
tskill logo1_ 
tskill Ravmon 
tskill Eghost 
tskill Mailmon 
tskill KAVPFW 
tskill IPARMOR 
tskill Ravmond 
taskkill /f /im 0sy.exe 
taskkill /f /im 1sy.exe 
taskkill /f /im 2sy.exe 
taskkill /f /im 3sy.exe 
taskkill /f /im 4sy.exe 
taskkill /f /im 5sy.exe 
taskkill /f /im 6sy.exe 
taskkill /f /im 7sy.exe 
taskkill /f /im 8sy.exe 
taskkill /f /im 9sy.exe 


rem 删除木马
del d:\_desktop.ini /f/s/q/a
del c:\Program Files\_desktop.ini
del %Windir%\MickNew\MickNew.dll
del %Windir%\MH_FILE\MH_DLL.dll 
del %Windir%\_desktop.ini
del %Windir%\TODAYZTKING\TODAYZTKING.DLL
attrib -h -r -s c:\go.exe 
del c:\go.exe 
del c:\setup.exe
attrib -h -s -r c:\autorun.inf 
del c:\autorun.inf 
attrib -h -r -s d:\go.exe 
del d:\go.exe 
del d:\setup.exe
attrib -h -s -r d:\autorun.inf 
del d:\autorun.inf 
del e:\setup.exe
attrib -h -r -s e:\go.exe 
del e:\go.exe 
attrib -h -s -r e:\autorun.inf 
del e:\autorun.inf 
attrib -h -r -s f:\autorun.inf
del f:\go.exe 
del f:\setup.exe
attrib -h -s -r f:\autorun.inf 
del f:\autorun.inf 
attrib -h -r -s g:\go.exe 
del g:\go.exe 
del g:\setup.exe
attrib -h -s -r g:\autorun.inf 
del g:\autorun.inf 
del h:\go.exe 
del h:\setup.exe
attrib -h -s -r g:\autorun.inf 
del h:\autorun.inf 
del i:\go.exe 
attrib -h -s -r g:\autorun.inf 
del i:\autorun.inf
del i:\setup.exe
del j:\go.exe 
attrib -h -s -r g:\autorun.inf 
del j:\autorun.inf 
del j:\setup.exe
del %windir%\system\Logo1_.exe
del %windir%\rundl132.exe
del %windir%\vDll.dll
del %windir%\Dll.dll
del %windir%\0Sy.exe
del %windir%\1Sy.exe
del %windir%\2Sy.exe
del %windir%\3Sy.exe
del %windir%\5Sy.exe
del %windir%\1.com
@echo ^_^ 报告老大，VIKING已经全都被处死 


@echo 真累哈,再给你的系统免疫下,不需要的话请直接退出
pause
//免疫系统
echo > %windir%\Logo1_.exe
echo > %windir%\rundl132.exe
echo > %windir%\0Sy.exe
echo > %windir%\vDll.dll
echo > %windir%\1Sy.exe
echo > %windir%\2Sy.exe
echo > %windir%\rundll32.exe
echo > %windir%\3Sy.exe
echo > %windir%\5Sy.exe
echo > %windir%\1.com
echo > %windir%\exerouter.exe
echo > %windir%\EXP10RER.com
echo > %windir%\finders.com
echo > %windir%\Shell.sys
echo > %windir%\kill.exe
echo > %windir%\sws.dll
echo > %windir%\sws32.dll
echo > %windir%\uninstall\rundl132.exe
echo > %windir%\SVCHOST.exe
echo > %windir%\WINLOGON.exe
echo > %windir%\RUNDLL32.EXE
echo > C:\"Program Files"\svchost.exe
echo > C:\"Program Files"\"Internet Explorer"\svchost.exe
echo > %windir%\Download\svchost.exe
echo > %windir%\system32\wldll.dll

attrib %windir%\Logo1_.exe +s +r +h
attrib %windir%\rundl132.exe +s +r +h
attrib %windir%\0Sy.exe +s +r +h
attrib %windir%\vDll.dll +s +r +h
attrib %windir%\1Sy.exe +s +r +h
attrib %windir%\2Sy.exe +s +r +h
attrib %windir%\rundll32.exe +s +r +h
attrib %windir%\3Sy.exe +s +r +h
attrib %windir%\5Sy.exe +s +r +h
attrib %windir%\1.com +s +r +h
attrib %windir%\exerouter.exe +s +r +h
attrib %windir%\EXP10RER.com +s +r +h
attrib %windir%\finders.com +s +r +h
attrib %windir%\Shell.sys +s +r +h
attrib %windir%\kill.exe +s +r +h
attrib %windir%\sws.dll +s +r +h
attrib %windir%\sws32.dll +s +r +h
attrib %windir%\uninstall\rundl132.exe +s +r +h
attrib %windir%\SVCHOST.exe +s +r +h
attrib %windir%\WINLOGON.exe +s +r +h
attrib %windir%\RUNDLL32.EXE +s +r +h
attrib C:\"Program Files"\svchost.exe +s +r +h
attrib C:\"Program Files"\"Internet Explorer"\svchost.exe +s +r +h
attrib %windir%\Download\svchost.exe +s +r +h
attrib %windir%\system32\wldll.dll +s +r +h
net share c$ /del 
net share d$ /del 
net share e$ /del 
net share f$ /del 
net share admin$ /del 
net share ipc$ /del 
cls
@echo -------------------------------------
@echo viking已经全部被我杀完拉,哈,厉害吧
@echo 系统已经成功免疫!
@echo 谢谢你的使用,请重启您的电脑!
@echo -------------------------------------

pause
禁止Viking病毒运行补丁.reg
Windows Registry Editor Version 5.00 

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer] 
"DisallowRun"=dword:00000001 

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\DisallowRun] 

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun] 
"**delvals."=" " 
"1"="0Sy.exe" 
"2"="1.com" 
"3"="1Sy.exe" 
"4"="2Sy.exe" 
"5"="3Sy.exe" 
"6"="5Sy.exe" 
"7"="dll.dll" 
"8"="logo1_.exe" 
"9"="rundl132.exe" 
"10"="vdll.dll"


:4 
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo    █  SVCHOST病毒专杀 █
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::停止正在运行的SXS.EXE和SVOHOST.EXE进程，请稍侯......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
TASKKILL /F /T /IM SXS.EXE
TASKKILL /F /T /IM SVOHOST.EXE 
TASKKILL /F /T /IM ROSE.EXE
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::恢复注册表中不给设置显示隐藏文件的项目,请稍侯
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>>SHOWALL.reg
ECHO "CheckedValue"=->>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>>SHOWALL.reg
ECHO "CheckedValue"=dword:00000001>>SHOWALL.reg

@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::删除系统目录下的SXS.EXE、SVOHOST.EXE和WINSCOK.DLL文件,请稍侯......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ATTRIB -R -H -S -A %SystemRoot%\System32\SXS.EXE
ATTRIB -R -H -S -A %SystemRoot%\System32\SVOHOST.EXE
ATTRIB -R -H -S -A %SystemRoot%\System32\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %SystemRoot%\System32\SXS.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\System32\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\System32\WINSCOK.DLL

ATTRIB -R -H -S -A %SystemRoot%\SXS.EXE
ATTRIB -R -H -S -A %SystemRoot%\SVOHOST.EXE
ATTRIB -R -H -S -A %SystemRoot%\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %SystemRoot%\SXS.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\WINSCOK.DLL

ATTRIB -R -H -S -A %SystemRoot%\System\SXS.EXE
ATTRIB -R -H -S -A %SystemRoot%\System\SVOHOST.EXE
ATTRIB -R -H -S -A %SystemRoot%\System\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %SystemRoot%\System\SXS.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\System\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\System\WINSCOK.DLL

ATTRIB -R -H -S -A %SystemRoot%\System32\dllcache\SXS.EXE
ATTRIB -R -H -S -A %SystemRoot%\System32\dllcache\SVOHOST.EXE
ATTRIB -R -H -S -A %SystemRoot%\System32\dllcache\WINSCOK.DLL
DEL /F /Q /A -R -H -S -A %SystemRoot%\System32\dllcache\SXS.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\System32\dllcache\SVOHOST.EXE
DEL /F /Q /A -R -H -S -A %SystemRoot%\System32\dllcache\WINSCOK.DLL

@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::删除每个分区下的SXS.EXE和AUTORUN.INF文件，请稍侯.......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FOR %%a IN ( C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T: U: V: W: X: Y: Z: ) DO ATTRIB -R -H -S -A %%a\SXS.EXE & DEL /F /Q /A -R -H -S -A %%a\SXS.EXE & ATTRIB -R -H -S -A %%a\AUTORUN.INF & DEL /F /Q /A -R -H -S -A %%a\AUTORUN.INF

@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::删除注册表中自启动项，请稍侯......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO Windows Registry Editor Version 5.00>SoundMam.reg

ECHO [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SoundMam]>>SoundMam.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>SoundMam.reg
ECHO "SoundMam"=->>SoundMam.reg

REGEDIT /S SoundMam.reg

DEL /F /Q SoundMam.reg



REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
pause>nul
:5 
@echo off
copy c:\windows\system32\service.exe C:\service.exe 
c:\service -u GrayPigeonServer 
c:\service -u "Windows Update" 
attrib -R -A -S -H %Windir%\G.DLL 
del %Windir%\G.DLL 
attrib -R -A -S -H %Windir%\G.EXE 
del %Windir%\G.EXE 
attrib -R -A -S -H %Windir%\G_Hook.DLL 
del %Windir%\G_Hook.DLL
attrib -R -A -S -H %Windir%\GKey.DLL 
del %Windir%\GKey.DLL  
pause


:6
@echo off
echo.>C:\Autorun.inf
echo.>D:\Autorun.inf
echo.>E:\Autorun.inf
echo.>F:\Autorun.inf
echo.>G:\Autorun.inf
echo.>H:\Autorun.inf
echo.>I:\Autorun.inf
echo.>J:\Autorun.inf
echo.>K:\Autorun.inf
echo.>L:\Autorun.inf
echo.>M:\Autorun.inf
echo.>N:\Autorun.inf
echo.>O:\Autorun.inf
echo.>P:\Autorun.inf
echo.>Q:\Autorun.inf
echo.>R:\Autorun.inf
echo.>S:\Autorun.inf
echo.>T:\Autorun.inf
echo.>U:\Autorun.inf
echo.>V:\Autorun.inf
echo.>W:\Autorun.inf
echo.>X:\Autorun.inf
echo.>Y:\Autorun.inf
echo.>Z:\Autorun.inf
@attrib C:\autorun.inf +s +h +r >nul
@attrib D:\autorun.inf +s +h +r >nul
@attrib E:\autorun.inf +s +h +r >nul
@attrib F:\autorun.inf +s +h +r >nul
@attrib G:\autorun.inf +s +h +r >nul
@attrib H:\autorun.inf +s +h +r >nul
@attrib I:\autorun.inf +s +h +r >nul
@attrib J:\autorun.inf +s +h +r >nul
@attrib K:\autorun.inf +s +h +r >nul
@attrib L:\autorun.inf +s +h +r >nul
@attrib M:\autorun.inf +s +h +r >nul
@attrib N:\autorun.inf +s +h +r >nul
@attrib O:\autorun.inf +s +h +r >nul
@attrib P:\autorun.inf +s +h +r >nul
@attrib Q:\autorun.inf +s +h +r >nul
@attrib R:\autorun.inf +s +h +r >nul
@attrib S:\autorun.inf +s +h +r >nul
@attrib T:\autorun.inf +s +h +r >nul
@attrib U:\autorun.inf +s +h +r >nul
@attrib V:\autorun.inf +s +h +r >nul
@attrib W:\autorun.inf +s +h +r >nul
@attrib X:\autorun.inf +s +h +r >nul
@attrib Y:\autorun.inf +s +h +r >nul
@attrib Z:\autorun.inf +s +h +r >nul
@ECHO Y|cacls C:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls D:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls E:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls F:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls G:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls H:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls I:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls J:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls K:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls L:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls M:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls N:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls O:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls P:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls Q:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls R:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls S:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls T:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls U:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls V:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls W:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls X:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls Y:\autorun.inf /p everyone:n >nul
@ECHO Y|cacls Z:\autorun.inf /p everyone:n >nul
echo.> %windir%\Logo1_.exe
echo.> %windir%\rundl132.exe
echo.> %windir%\0Sy.exe
echo.> %windir%\vDll.dll
echo.> %windir%\1Sy.exe
echo.> %windir%\2Sy.exe
echo.> %windir%\rundll32.exe
echo.> %windir%\3Sy.exe
echo.> %windir%\4Sy.exe
echo.> %windir%\5Sy.exe
echo.> %windir%\6Sy.exe
echo.> %windir%\7Sy.exe
echo.> %windir%\8Sy.exe
echo.> %windir%\9Sy.exe
echo.> %windir%\1.com
echo.> %windir%\exerouter.exe
echo.> %windir%\EXP10RER.com
echo.> %windir%\finders.com
echo.> %windir%\Shell.sys
echo.> %windir%\smss.exe
echo.> %windir%\kill.exe
echo.> %windir%\sws.dll
echo.> %windir%\sws32.dll
echo.> %windir%\dll.dll
echo.> %windir%\11.exe
echo.> %windir%\gold.com
echo.> %windir%\system32\msdll.dll
echo.> %windir%\system32\nmhxy.dll
echo.> %windir%\g0ld.com
echo.> %windir%\veevrg.exe
@attrib %windir%\Logo1_.exe +s +h +r >nul
@attrib %windir%\rundl132.exe +s +h +r >nul
@attrib %windir%\0Sy.exe +s +h +r >nul
@attrib %windir%\vDll.dll +s +h +r >nul
@attrib %windir%\1Sy.exe +s +h +r >nul
@attrib %windir%\2Sy.exe +s +h +r >nul
@attrib %windir%\rundll32.exe +s +h +r >nul
@attrib %windir%\3Sy.exe +s +h +r >nul
@attrib %windir%\4Sy.exe +s +h +r >nul
@attrib %windir%\5Sy.exe +s +h +r >nul
@attrib %windir%\6Sy.exe +s +h +r >nul
@attrib %windir%\7Sy.exe +s +h +r >nul
@attrib %windir%\8Sy.exe +s +h +r >nul
@attrib %windir%\9Sy.exe +s +h +r >nul
@attrib %windir%\1.com +s +h +r >nul
@attrib %windir%\exerouter.exe +s +h +r >nul
@attrib %windir%\EXP10RER.com +s +h +r >nul
@attrib %windir%\finders.com +s +h +r >nul
@attrib %windir%\Shell.sys +s +h +r >nul
@attrib %windir%\smss.exe +s +h +r >nul
@attrib %windir%\kill.exe +s +h +r >nul
@attrib %windir%\sws.dll +s +h +r >nul
@attrib %windir%\sws32.dll +s +h +r >nul
@attrib %windir%\dll.dll +s +h +r >nul
@attrib %windir%\11.exe +s +h +r >nul
@attrib %windir%\gold.com +s +h +r >nul
@attrib %windir%\system32\msdll.dll +s +h +r >nul
@attrib %windir%\system32\nmhxy.dll +s +h +r >nul
@attrib %windir%\g0ld.com +s +h +r >nul
@attrib %windir%\veevrg.exe +s +h +r >nul
@ECHO Y|cacls %windir%\Logo1_.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\rundl132.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\0Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\vDll.dll /p everyone:n >nul
@ECHO Y|cacls %windir%\1Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\2Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\rundll32.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\3Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\4Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\5Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\6Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\7Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\8Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\9Sy.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\1.com /p everyone:n >nul
@ECHO Y|cacls %windir%\exerouter.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\EXP10RER.com /p everyone:n >nul
@ECHO Y|cacls %windir%\finders.com /p everyone:n >nul
@ECHO Y|cacls %windir%\Shell.sys /p everyone:n >nul
@ECHO Y|cacls %windir%\smss.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\kill.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\sws.dll /p everyone:n >nul
@ECHO Y|cacls %windir%\sws32.dll /p everyone:n >nul
@ECHO Y|cacls %windir%\dll.dll /p everyone:n >nul
@ECHO Y|cacls %windir%\11.exe /p everyone:n >nul
@ECHO Y|cacls %windir%\gold.com /p everyone:n >nul
@ECHO Y|cacls %windir%\system32\msdll.dll /p everyone:n >nul
@ECHO Y|cacls %windir%\system32\nmhxy.dll /p everyone:n >nul
@ECHO Y|cacls %windir%\g0ld.com /p everyone:n >nul
@ECHO Y|cacls %windir%\veevrg.exe /p everyone:n >nul
del c:\_desktop.ini /q/s/f/a
del d:\_desktop.ini /q/s/f/a
del e:\_desktop.ini /q/s/f/a
del f:\_desktop.ini /q/s/f/a
net share c$ /d
net share d$ /d
net share e$ /d
net share F$ /d
net share G$ /d
net share h$ /d
net share i$ /d
net share j$ /d
net share admin$ /d
net share ipc$ /d
@echo end 

:7 
@ECHO OFF
del c:\winnt\logo1_.exe 
del c:\windows\logo1_.exe 
del c:\winnt\0sy.exe
del c:\windows\0sy.exe
del c:\winnt\1sy.exe
del c:\windows\1sy.exe
del c:\winnt\2sy.exe
del c:\windows\2sy.exe
del c:\winnt\3sy.exe
del c:\windows\3sy.exe
del c:\winnt\4sy.exe
del c:\windows\4sy.exe
del c:\winnt\rundl132.exe
del c:\windows\rundl132.exe
net share c$ /d 
net share d$ /d
net share e$ /d
net share F$ /d
net share G$ /d
net share h$ /d
net share i$ /d
net share j$ /d
net share admin$ /d
net share ipc$ /d
del c:\winnt\logo1_.exe 
del c:\windows\logo1_.exe
del c:\windows\vdll.dll
del c:\winnt\vdll.dll
del c:\winnt\kill.exe
del c:\windows\kil.exe
del c:\winnt\sws32.dll
del c:\windows\sws32.dll
del c:\winnt\rundl132.exe
del c:\windows\rundl132.exe
echo.
echo.
echo.
echo. *****************************
echo.
echo. 正在查毒...请不要关闭......
echo.
echo. *****************************
echo.
echo.
echo.
echo.
ping 127.0.0.1 -n 5 
del c:\winnt\logo1_.exe 
del c:\windows\logo1_.exe
del c:\windows\vdll.dll
del c:\winnt\vdll.dll
del c:\winnt\kill.exe
del c:\windows\kil.exe
del c:\winnt\sws32.dll
del c:\windows\sws32.dll
del c:\winnt\rundl132.exe
del c:\windows\rundl132.exe
echo.
echo.
echo.
echo. *****************************
echo.
echo. 正在查毒...请不要关闭......
echo.
echo. *****************************
echo.
echo.
echo.
echo.
ping 127.0.0.1 -n 5 
del c:\winnt\logo1_.exe 
del c:\windows\logo1_.exe
del c:\windows\vdll.dll
del c:\winnt\vdll.dll
del c:\winnt\kill.exe
del c:\windows\kil.exe
del c:\winnt\sws32.dll
del c:\windows\sws32.dll
del c:\windows\0sy.exe
del c:\winnt\1sy.exe
del c:\windows\1sy.exe
del c:\winnt\2sy.exe
del c:\windows\2sy.exe
del c:\winnt\3sy.exe
del c:\windows\3sy.exe
del c:\winnt\4sy.exe
del c:\windows\4sy.exe
del c:\winnt\rundl132.exe
del c:\windows\rundl132.exe
del C:\winnt\Logo1_.exe
del C:\winnt\rundl132.exe
del C:\winnt\bootconf.exe
del C:\winnt\kill.exe
del C:\winnt\sws32.dll
del C:\winnt\dll.dll
del C:\winnt\vdll.dll
del C:\winnt\system32\ShellExt\svchs0t.exe 

del C:\Program Files\Internet Explorer\0SY.exe 
del C:\Program Files\Internet Explorer\1SY.exe 
del C:\Program Files\Internet Explorer\2sy.exe 
del C:\Program Files\Internet Explorer\3sy.exe 
del C:\Program Files\Internet Explorer\4sy.exe 
del C:\Program Files\Internet Explorer\5sy.exe 
del C:\Program Files\Internet Explorer\6SY.exe 
del C:\Program Files\Internet Explorer\7sy.exe 
del C:\Program Files\Internet Explorer\8sy.exe 
del C:\Program Files\Internet Explorer\9sy.exe 


del C:\winnt\system32\Logo1_.exe
del C:\winnt\system32\rundl132.exe
del C:\winnt\system32\bootconf.exe
del C:\winnt\system32\kill.exe
del C:\winnt\system32\sws32.dll

del C:\windows\Logo1_.exe
del C:\windows\rundl132.exe
del C:\windows\bootconf.exe
del C:\windows\kill.exe
del C:\windows\sws32.dll
del C:\windows\dll.dll
del C:\windows\vdll.dll
del C:\windows\system32\ShellExt\svchs0t.exe 
del C:\windows\system32\Logo1_.exe
del C:\windows\system32\rundl132.exe
del C:\windows\system32\bootconf.exe
del C:\windows\system32\kill.exe
del C:\windows\system32\sws32.dll

del c:\_desktop.ini /f/s/q/a
del d:\_desktop.ini /f/s/q/a
del e:\_desktop.ini /f/s/q/a
del f:\_desktop.ini /f/s/q/a
del g:\_desktop.ini /f/s/q/a
del h:\_desktop.ini /f/s/q/a
del i:\_desktop.ini /f/s/q/a
del j:\_desktop.ini /f/s/q/a
del k:\_desktop.ini /f/s/q/a

:8
@echo off
title 清除autorun.inf
color 0A
@echo 黑客联盟：bbs.cnhacker.com
@attrib c:\autorun.inf -r -s -h
@attrib d:\autorun.inf -r -s -h
@attrib e:\autorun.inf -r -s -h
@attrib f:\autorun.inf -r -s -h
@attrib g:\autorun.inf -r -s -h
@attrib c:\*.exe -r -s -h
@attrib d:\*.exe -r -s -h
@attrib e:\*.exe -r -s -h
@attrib f:\*.exe -r -s -h
@attrib g:\*.exe -r -s -h
cls
if exist c:\autorun.inf goto 1
if exist d:\autorun.inf goto 1
if exist e:\autorun.inf goto 1
if exist f:\autorun.inf goto 1
if exist g:\autorun.inf goto 1
IF not ERRORLEVEL 0 goto 2
:2
echo 恭喜你计算机无毒！~
echo 黑客联盟是学习的好东西！~
pause>nul
goto end
:1
echo 开始全面清理病毒
del c:\autorun.inf /f/s/q/a
del d:\autorun.inf /f/s/q/a
del e:\autorun.inf /f/s/q/a
del f:\autorun.inf /f/s/q/a
del g:\autorun.inf /f/s/q/a
del c:\auto*.inf  /a/q/f
del c:\sxs.exe  /a/q/f
del c:\pagefile.pif /a/q/f
del c:\_desktop.ini /a/q/f
del c:\command.com  /a/q/f
del c:\logo1_exe  /a/q/f
del c:\SWS32.DLL  /a/q/f
del c:\KILL.EXE  /a/q/f
del c:\SWS.DLL  /a/q/f
del c:\rose.exe  /a/q/f
del c:\logo_1.exe  /a/q/f
del c:\*sy.exe  /a/q/f
del d:\auto*.inf  /a/q/f
del d:\sxs.exe  /a/q/f
del d:\pagefile.pif /a/q/f
del d:\_desktop.ini /a/q/f
del d:\command.com  /a/q/f
del d:\logo1_exe  /a/q/f
del d:\SWS32.DLL  /a/q/f
del d:\KILL.EXE  /a/q/f
del d:\SWS.DLL  /a/q/f
del d:\rose.exe  /a/q/f
del d:\logo_1.exe  /a/q/f
del d:\*sy.exe  /a/q/f
del e:\auto*.inf  /a/q/f
del e:\sxs.exe  /a/q/f
del e:\pagefile.pif /a/q/f
del e:\_desktop.ini /a/q/f
del e:\command.com  /a/q/f
del e:\logo1_exe  /a/q/f
del e:\SWS32.DLL  /a/q/f
del e:\KILL.EXE  /a/q/f
del e:\SWS.DLL  /a/q/f
del e:\rose.exe  /a/q/f
del e:\logo_1.exe  /a/q/f
del e:\*sy.exe  /a/q/f
del f:\auto*.inf  /a/q/f
del f:\sxs.exe  /a/q/f
del f:\pagefile.pif /a/q/f
del f:\_desktop.ini /a/q/f
del f:\command.com  /a/q/f
del f:\logo1_exe  /a/q/f
del f:\SWS32.DLL  /a/q/f
del f:\KILL.EXE  /a/q/f
del f:\SWS.DLL  /a/q/f
del f:\rose.exe  /a/q/f
del f:\logo_1.exe  /a/q/f
del f:\*sy.exe  /a/q/f
del g:\auto*.inf  /a/q/f
del g:\sxs.exe  /a/q/f
del g:\pagefile.pif /a/q/f
del g:\_desktop.ini /a/q/f
del g:\command.com  /a/q/f
del g:\logo1_exe  /a/q/f
del g:\SWS32.DLL  /a/q/f
del g:\KILL.EXE  /a/q/f
del g:\SWS.DLL  /a/q/f
del g:\rose.exe  /a/q/f
del g:\logo_1.exe  /a/q/f
del g:\*sy.exe  /a/q/f
@echo 加强你计算机预防autorun.inf
c:
cd\
md autorun.inf
cd autorun.inf
md 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件..\
echo 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件 >U盘防病毒说明.txt
echo U盘对病毒的传播要借助autorun.inf文件。病毒首先把自身复制到u盘,然后创建一个autorun.inf，当你在插入U盘或者双击u盘时，autorun.inf中的设置会运行u盘中的病毒.我们只要可以阻止autorun.inf文件的创建，那么U盘上就算有病毒也只能躺着睡大觉了。大家可能也想到这个，但是不管给autorun.inf设置了什么属性，病毒都会更改它。我提到的方法就是，在根目录下，删除autorun.inf文件。然后，根目下建立一个文件夹，名字就叫autorun.inf。这样一来，因为在同一目录下，同名的文件和文件夹不能共存的原理，在autorun.inf文件夹里面创建一个带.的文件夹，使得病毒无法删除autorun.inf文件夹，病毒就无能为力，创建不了autorun.inf文件了。以后就算中毒，病毒也不会运行，从而达到了防止中毒的目的，目前这种方法是非常有效的。 >>U盘防病毒说明.txt
echo by xxsz >>U盘防病毒说明.txt
echo 更多精彩文章，请访问华夏黑客联盟(www.hxhack.com) >>U盘防病毒说明.txt

cd\
copy \autorun.inf\U盘防病毒说明.txt %1
echo rd \autorun.inf\华夏黑客联盟(www.hxhack.com)U盘防病毒自动运行文件..\ >删除U盘防病毒.cmd
echo del \autorun.inf\U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo del U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo cd\ >>删除U盘防病毒.cmd
echo attrib -r -a -s -h autorun.inf >>删除U盘防病毒.cmd
echo rd autorun.inf >>删除U盘防病毒.cmd
echo del 删除U盘防病毒.cmd /q >>删除U盘防病毒.cmd

@REM 删除原来病毒在其它盘留下的自动运行
d:
cd\
md autorun.inf
cd autorun.inf
md 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件..\
echo 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件 >U盘防病毒说明.txt
echo U盘对病毒的传播要借助autorun.inf文件。病毒首先把自身复制到u盘,然后创建一个autorun.inf，当你在插入U盘或者双击u盘时，autorun.inf中的设置会运行u盘中的病毒.我们只要可以阻止autorun.inf文件的创建，那么U盘上就算有病毒也只能躺着睡大觉了。大家可能也想到这个，但是不管给autorun.inf设置了什么属性，病毒都会更改它。我提到的方法就是，在根目录下，删除autorun.inf文件。然后，根目下建立一个文件夹，名字就叫autorun.inf。这样一来，因为在同一目录下，同名的文件和文件夹不能共存的原理，在autorun.inf文件夹里面创建一个带.的文件夹，使得病毒无法删除autorun.inf文件夹，病毒就无能为力，创建不了autorun.inf文件了。以后就算中毒，病毒也不会运行，从而达到了防止中毒的目的，目前这种方法是非常有效的。 >>U盘防病毒说明.txt
echo by xxsz >>U盘防病毒说明.txt
echo 更多精彩文章，请访问华夏黑客联盟(www.hxhack.com) >>U盘防病毒说明.txt

cd\
copy \autorun.inf\U盘防病毒说明.txt %1
echo rd \autorun.inf\华夏黑客联盟(www.hxhack.com)U盘防病毒自动运行文件..\ >删除U盘防病毒.cmd
echo del \autorun.inf\U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo del U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo cd\ >>删除U盘防病毒.cmd
echo attrib -r -a -s -h autorun.inf >>删除U盘防病毒.cmd
echo rd autorun.inf >>删除U盘防病毒.cmd
echo del 删除U盘防病毒.cmd /q >>删除U盘防病毒.cmd

@REM 删除原来病毒在其它盘留下的自动运行
e:
cd\
md autorun.inf
cd autorun.inf
md 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件..\
echo 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件 >U盘防病毒说明.txt
echo U盘对病毒的传播要借助autorun.inf文件。病毒首先把自身复制到u盘,然后创建一个autorun.inf，当你在插入U盘或者双击u盘时，autorun.inf中的设置会运行u盘中的病毒.我们只要可以阻止autorun.inf文件的创建，那么U盘上就算有病毒也只能躺着睡大觉了。大家可能也想到这个，但是不管给autorun.inf设置了什么属性，病毒都会更改它。我提到的方法就是，在根目录下，删除autorun.inf文件。然后，根目下建立一个文件夹，名字就叫autorun.inf。这样一来，因为在同一目录下，同名的文件和文件夹不能共存的原理，在autorun.inf文件夹里面创建一个带.的文件夹，使得病毒无法删除autorun.inf文件夹，病毒就无能为力，创建不了autorun.inf文件了。以后就算中毒，病毒也不会运行，从而达到了防止中毒的目的，目前这种方法是非常有效的。 >>U盘防病毒说明.txt
echo by xxsz >>U盘防病毒说明.txt
echo 更多精彩文章，请访问华夏黑客联盟(www.hxhack.com) >>U盘防病毒说明.txt

cd\
copy \autorun.inf\U盘防病毒说明.txt %1
echo rd \autorun.inf\华夏黑客联盟(www.hxhack.com)U盘防病毒自动运行文件..\ >删除U盘防病毒.cmd
echo del \autorun.inf\U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo del U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo cd\ >>删除U盘防病毒.cmd
echo attrib -r -a -s -h autorun.inf >>删除U盘防病毒.cmd
echo rd autorun.inf >>删除U盘防病毒.cmd
echo del 删除U盘防病毒.cmd /q >>删除U盘防病毒.cmd

@REM 删除原来病毒在其它盘留下的自动运行
f:
cd\
md autorun.inf
cd autorun.inf
md 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件..\
echo 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件 >U盘防病毒说明.txt
echo U盘对病毒的传播要借助autorun.inf文件。病毒首先把自身复制到u盘,然后创建一个autorun.inf，当你在插入U盘或者双击u盘时，autorun.inf中的设置会运行u盘中的病毒.我们只要可以阻止autorun.inf文件的创建，那么U盘上就算有病毒也只能躺着睡大觉了。大家可能也想到这个，但是不管给autorun.inf设置了什么属性，病毒都会更改它。我提到的方法就是，在根目录下，删除autorun.inf文件。然后，根目下建立一个文件夹，名字就叫autorun.inf。这样一来，因为在同一目录下，同名的文件和文件夹不能共存的原理，在autorun.inf文件夹里面创建一个带.的文件夹，使得病毒无法删除autorun.inf文件夹，病毒就无能为力，创建不了autorun.inf文件了。以后就算中毒，病毒也不会运行，从而达到了防止中毒的目的，目前这种方法是非常有效的。 >>U盘防病毒说明.txt
echo by xxsz >>U盘防病毒说明.txt
echo 更多精彩文章，请访问华夏黑客联盟(www.hxhack.com) >>U盘防病毒说明.txt

cd\
copy \autorun.inf\U盘防病毒说明.txt %1
echo rd \autorun.inf\华夏黑客联盟(www.hxhack.com)U盘防病毒自动运行文件..\ >删除U盘防病毒.cmd
echo del \autorun.inf\U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo del U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo cd\ >>删除U盘防病毒.cmd
echo attrib -r -a -s -h autorun.inf >>删除U盘防病毒.cmd
echo rd autorun.inf >>删除U盘防病毒.cmd
echo del 删除U盘防病毒.cmd /q >>删除U盘防病毒.cmd

@REM 删除原来病毒在其它盘留下的自动运行
g:
cd\
md autorun.inf
cd autorun.inf
md 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件..\
echo 中国黑客联盟(bbs.cnhacker.com)U盘防病毒自动运行文件 >U盘防病毒说明.txt
echo U盘对病毒的传播要借助autorun.inf文件。病毒首先把自身复制到u盘,然后创建一个autorun.inf，当你在插入U盘或者双击u盘时，autorun.inf中的设置会运行u盘中的病毒.我们只要可以阻止autorun.inf文件的创建，那么U盘上就算有病毒也只能躺着睡大觉了。大家可能也想到这个，但是不管给autorun.inf设置了什么属性，病毒都会更改它。我提到的方法就是，在根目录下，删除autorun.inf文件。然后，根目下建立一个文件夹，名字就叫autorun.inf。这样一来，因为在同一目录下，同名的文件和文件夹不能共存的原理，在autorun.inf文件夹里面创建一个带.的文件夹，使得病毒无法删除autorun.inf文件夹，病毒就无能为力，创建不了autorun.inf文件了。以后就算中毒，病毒也不会运行，从而达到了防止中毒的目的，目前这种方法是非常有效的。 >>U盘防病毒说明.txt
echo by xxsz >>U盘防病毒说明.txt
echo 更多精彩文章，请访问华夏黑客联盟(www.hxhacke.com) >>U盘防病毒说明.txt

cd\
copy \autorun.inf\U盘防病毒说明.txt %1
echo rd \autorun.inf\华夏黑客联盟(www.hxhack.com )U盘防病毒自动运行文件..\ >删除U盘防病毒.cmd
echo del \autorun.inf\U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo del U盘防病毒说明.txt /q >>删除U盘防病毒.cmd
echo cd\ >>删除U盘防病毒.cmd
echo attrib -r -a -s -h autorun.inf >>删除U盘防病毒.cmd
echo rd autorun.inf >>删除U盘防病毒.cmd
echo del 删除U盘防病毒.cmd /q >>删除U盘防病毒.cmd

@REM 删除原来病毒在其它盘留下的自动运行
@echo 开始修改部分注册表
@reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL" /v CheckedValue /t reg_dword /d 00000001 /f >nul
cls
@已经完全清理和修改！~如果还有注册表部分没修复
请下载360安全卫士 进行修复！~

pause>nul

:9
@echo off
pulist | finde "avserve">avserve.txt & for /f "tokens=2" %%i in(avserve.txt) do @pskill %%i
attrib -r -s -h %systemroot%\system32\avserve.exe

:10
@echo off
cls
echo.
echo.
echo      修复 IE 组件注册
echo.
echo  华夏黑客联盟！华夏黑客联盟顷情奉贤
echo.
echo  本程序用于修复浏览器无法打开二级页面等故障。
echo.
echo  按任意键开始修复……
color 0A
pause>nul
echo.
echo.
echo  正在修复，这个过程可能需要几分钟，请稍候……
rundll32.exe advpack.dll /DelNodeRunDLL32 %systemroot%\System32\dacui.dll
rundll32.exe advpack.dll /DelNodeRunDLL32 %systemroot%\Catroot\icatalog.mdb
regsvr32 /s comcat.dll
regsvr32 /s asctrls.ocx
regsvr32 /s oleaut32.dll
regsvr32 /s shdocvw.dll /I
regsvr32 /s shdocvw.dll
regsvr32 /s browseui.dll
regsvr32 /s browseui.dll /I
regsvr32 /s msrating.dll
regsvr32 /s mlang.dll
regsvr32 /s hlink.dll
regsvr32 /s mshtml.dll
regsvr32 /s mshtmled.dll
regsvr32 /s urlmon.dll
regsvr32 /s plugin.ocx
regsvr32 /s sendmail.dll
regsvr32 /s mshtml.dll /i
regsvr32 /s scrobj.dll
regsvr32 /s corpol.dll
regsvr32 /s jscript.dll
regsvr32 /s msxml.dll
regsvr32 /s imgutil.dll
regsvr32 /s cryptext.dll
regsvr32 /s inseng.dll
regsvr32 /s iesetup.dll /i
regsvr32 /s cryptdlg.dll
regsvr32 /s actxprxy.dll
regsvr32 /s dispex.dll
regsvr32 /s occache.dll
regsvr32 /s iepeers.dll
regsvr32 /s urlmon.dll /i
regsvr32 /s cdfview.dll
regsvr32 /s webcheck.dll
regsvr32 /s mobsync.dll
regsvr32 /s pngfilt.dll
regsvr32 /s licmgr10.dll
regsvr32 /s hhctrl.ocx
regsvr32 /s inetcfg.dll
regsvr32 /s trialoc.dll
regsvr32 /s tdc.ocx
regsvr32 /s MSR2C.DLL
regsvr32 /s msident.dll
regsvr32 /s msieftp.dll
regsvr32 /s xmsconf.ocx
regsvr32 /s ils.dll
regsvr32 /s msoeacct.dll
regsvr32 /s wab32.dll
regsvr32 /s wabimp.dll
regsvr32 /s wabfind.dll
regsvr32 /s oemiglib.dll
regsvr32 /s directdb.dll
regsvr32 /s inetcomm.dll
regsvr32 /s msoe.dll
regsvr32 /s oeimport.dll
regsvr32 /s msdxm.ocx
regsvr32 /s dxmasf.dll
regsvr32 /s laprxy.dll
regsvr32 /s l3codecx.ax
regsvr32 /s acelpdec.ax
regsvr32 /s mpg4ds32.ax
regsvr32 /s danim.dll
regsvr32 /s Daxctle.ocx
regsvr32 /s lmrt.dll
regsvr32 /s datime.dll
regsvr32 /s dxtrans.dll
regsvr32 /s dxtmsft.dll
regsvr32 /s wshom.ocx
regsvr32 /s wshext.dll
regsvr32 /s vbscript.dll
regsvr32 /s scrrun.dll mstinit.exe /setup
regsvr32 /s msnsspc.dll /SspcCreateSspiReg
regsvr32 /s msapsspc.dll /SspcCreateSspiReg
echo.
echo.
echo  修复成功！任意键退出！
pause>nul
:11 
@echo off
color 0A
prompt $g
title spcolsv.exe病毒(熊猫烧香变种)批处理专杀--by--www.nhxy-cfans.com
@echo 【使用说明】：强烈建议在安全模式下使用本工具进行查杀。
echo.
echo.
echo.
pause
cls
color 4F
color 0C
color 4F
color 0C
color 4F
color 0C
echo.
echo.
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::停止正在运行的spcolsv.exe进程，请稍候......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
TASKKILL /F /T /IM spcolsv.exe


color 4F
color 0C
color 4F
color 0C
color 4F
color 0C
echo.
echo.

@echo:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::删除drivers下的spcolsv.exe文件，请稍候......
@echo:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ATTRIB -R -H -S -A %SystemRoot%\System32\drivers\spcolsv.exe
DEL /F /Q /A -R -H -S -A %SystemRoot%\System32\drivers\spcolsv.exe

@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::删除每个分区下的setup.EXE和AUTORUN.INF文件,请稍候......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FOR %%a IN ( C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T: U: V: W: X: Y: Z: ) DO ATTRIB -R -H -S -A %%a\setup.EXE & DEL /F /Q /A -R -H -S -A %%a\setup.EXE & ATTRIB -R -H -S -A %%a\AUTORUN.INF & DEL /F /Q /A -R -H -S -A %%a\AUTORUN.INF


@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::删除注册表中自启动项,请稍候......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO Windows Registry Editor Version 5.00>svcshare.reg

ECHO [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\svcshare]>>svcshare.reg

ECHO [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>svcshare.reg
ECHO "svcshare"=->>svcshare.reg

REGEDIT /S svcshare.reg

DEL /F /Q svcshare.reg



@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::恢复注册表中不给设置显示隐藏文件的项目,请稍候......
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>>SHOWALL.reg
ECHO "CheckedValue"=->>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>>SHOWALL.reg
ECHO "CheckedValue"=dword:00000001>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
color 3f
echo.
@echo 病毒文件已清除! 
echo.
echo.

pause    
echo.
echo.
echo.
echo.
echo.
echo.
echo.
:12 
@ehco off
cls 
echo ╔-------------------------------------------------╗ 
echo ┆  别拿黑与白的对立      ┆ 
echo ┆    衡量你与我的距离      ┆ 
echo ┆      By:华夏      ┆ 
echo ╚-------------------------------------------------╝ 
title 阿呆专用 
prompt 行动-》 
color 0d 
rem 免疫D:盘
D:    
rem 创建一个Autorun.inf的文件夹 
md Autorun.inf  
rem 进入Autorun.inf文件夹
cd Autorun.inf  
rem 创建一个名为a.的文件夹
md a...

rem 免疫C:盘
C:    
rem 创建一个Autorun.inf的文件夹 
md Autorun.inf  
rem 进入Autorun.inf文件夹
cd Autorun.inf  
rem 创建一个名为a.的文件夹
md a...

rem 免疫E:盘
E:    
rem 创建一个Autorun.inf的文件夹 
md Autorun.inf  
rem 进入Autorun.inf文件夹
cd Autorun.inf  
rem 创建一个名为a.的文件夹
md a...  

rem 免疫F:盘
F:    
rem 创建一个Autorun.inf的文件夹 
md Autorun.inf  
rem 进入Autorun.inf文件夹
cd Autorun.inf  
rem 创建一个名为a.的文件夹
md a...  

:13
@echo off
@setlocal ENABLEDELAYEDEXPANSION
title 可屏蔽网址的批处理.
mode con cols=50 lines=56
echo *************************************************
echo *****************选择如下操作********************
echo.
echo.
echo ***************1.添加要屏蔽的网址****************
echo ***************2.删除已屏蔽的网址****************
echo ***************3.查找已屏蔽的网址****************
echo ***************4.退出****************************
echo.

copy C:\WINDOWS\system32\drivers\etc\hosts C:\WINDOWS\system32\drivers\etc\hosts.txt>nul

:chose
set /p enter=请你输入你的选择:
if not "%enter%"=="" set enter=%enter%
if /i "%enter%"=="1" goto add
if /i "%enter%"=="2" goto del
if /i "%enter%"=="4" goto end
if /i "%enter%"=="3" goto check
goto chose

:add
set /p input=输入要添加的网址
if /i "%input%"=="n" goto start
echo 127.0.0.1  %input%>>C:\WINDOWS\system32\drivers\etc\hosts.txt
echo 成功添加屏蔽网址%input%
echo 请准确的输入or按n退出!
copy C:\WINDOWS\system32\drivers\etc\hosts.txt C:\WINDOWS\system32\drivers\etc\hosts>nul
goto add

:del
echo ~_~你选择了删除操作切记务必最好输入完整的网址~_~
set /p del=输入要删除的网址:
if /i "%del%"=="n" goto start
@for /f "tokens=* delims=" %%i in ('findstr /i /v /c:%del% C:\WINDOWS\system32\drivers\etc\hosts.txt') do (
set var=%%i
echo !var!>>b.txt
)
copy b.txt C:\WINDOWS\system32\drivers\etc\hosts.txt>nul
del b.txt
echo 操作完成
echo 请准确的输入or按n退出!
copy C:\WINDOWS\system32\drivers\etc\hosts.txt C:\WINDOWS\system32\drivers\etc\hosts>nul
goto del

:check
for /f "tokens=2 delims= " %%i in ('findstr /i /c:"www" C:\WINDOWS\system32\drivers\etc\hosts.txt') do (set var=%%i
echo !var!
)
for /f "tokens=2 delims= " %%i in ('findstr /i /c:"bbs" C:\WINDOWS\system32\drivers\etc\hosts.txt') do (set var=%%i
echo !var!
)
copy C:\WINDOWS\system32\drivers\etc\hosts.txt C:\WINDOWS\system32\drivers\etc\hosts>nul
pause
cls
goto start

:end
copy C:\WINDOWS\system32\drivers\etc\hosts.txt C:\WINDOWS\system32\drivers\etc\hosts>nul
del C:\WINDOWS\system32\drivers\etc\hosts.txt
exit 

:14 
@echo off&setlocal enabledelayedexpansion
mode con cols=71 lines=9
for /l %%a in (1,1,8) do (
echo/
echo\
echo.
echo **********************************************************************
echo *************************强制与他人QQ聊天*****************************
echo **********************************************************************
echo    程序正在加载，请稍微等几十秒
color cf
ping -n 1 127.1>nul
color fc
color f1
ping -n 1 127.1>nul
cls
)
cls
:send
color 0A
echo 今天是%date%, 现在是北京时间:%time%
title 强制与他人QQ聊天
echo 华夏黑客联盟欢迎您---www.hchack.com
echo.
echo.
:send 
Set /p num=请输入你想要强制聊天的QQ号:
if /i "%num%"=="n" Exit 
start tencent://Message/?Uin=%num% 
cls 
Goto send 

:15 
call un3721.bat
:16 
exit
