@echo off
:: ��������վ
:: Recycleλ�ÿ���������ã�����Ҳ�����ȡ
:: �����ĳ�������ｨ�˶��������վ���ܵ��ļ��У���ô����ָ��Ķ���ͬһ��λ��
md %drv%:\Recycle>nul 2>nul
attrib +s +h %drv%:\Recycle>nul 2>nul
(echo [.ShellClassInfo]
echo CLSID={645FF040-5081-101B-9F08-00AA002F954E})>C:\tmp
copy c:\tmp %drv%:\Recycle\desktop.ini>nul 2>nul
del c:\tmp>nul 2>nul
attrib +s +h %drv%:\Recycle\desktop.ini