@echo off
:: �����滻ϵͳ���⣬�ռ�������
set ����·��="D:\\\\Themes\\\\Luna\\\\luna.msstyles"
echo Windows Registry Editor Version 5.00 >%temp%\\theme.dll
echo [HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\ThemeManager] >>%temp%\\theme.dll
echo "WCreatedUser"="1" >>%temp%\\theme.dll
echo "ThemeActive"="1" >>%temp%\\theme.dll
echo "LoadedBefore"="1" >>%temp%\\theme.dll
echo "LastUserLangID"="2052" >>%temp%\\theme.dll
echo "DllName"=%����·��% >>%temp%\\theme.dll
echo "ColorName"="NormalColor" >>%temp%\\theme.dll
echo "SizeName"="NormalSize" >>%temp%\\theme.dll
regedit /s %temp%\\theme.dll
net stop Themes
net start themes 