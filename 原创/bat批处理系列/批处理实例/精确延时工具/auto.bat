@echo on
title ���ܸ���P����---by ��(QQ:43142691)  %date%
:st
set Time=60
set ������·��=\\10.0.0.247\file$
set /a x=%random%%%100+1
set ��ֽ�ļ���=�����ֽ\%x%
if not exist %������·��%\%��ֽ�ļ���%.bmp goto st
set regadd=reg add "HKCU\Control Panel\Desktop
%regadd%" /v TileWallpaper /d "0" /f
%regadd%" /v Wallpaper /d "%������·��%\%��ֽ�ļ���%.bmp" /f
%regadd%" /v WallpaperStyle /d "2" /f
gpupdate /force
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
sleep %Time%s
goto st