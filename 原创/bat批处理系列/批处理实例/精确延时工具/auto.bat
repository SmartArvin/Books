@echo on
title 智能更改P处理---by 彬(QQ:43142691)  %date%
:st
set Time=60
set 服务器路径=\\10.0.0.247\file$
set /a x=%random%%%100+1
set 壁纸文件名=随机壁纸\%x%
if not exist %服务器路径%\%壁纸文件名%.bmp goto st
set regadd=reg add "HKCU\Control Panel\Desktop
%regadd%" /v TileWallpaper /d "0" /f
%regadd%" /v Wallpaper /d "%服务器路径%\%壁纸文件名%.bmp" /f
%regadd%" /v WallpaperStyle /d "2" /f
gpupdate /force
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
sleep %Time%s
goto st