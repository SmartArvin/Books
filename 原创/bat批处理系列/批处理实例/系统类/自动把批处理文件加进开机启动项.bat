�Զ����������ļ��ӽ����������� 
1.
@echo off 
@copy %0 "%userprofile%\����ʼ���˵�\����\����" 
@del %0

2.
@echo off
@copy %0 d:\autoexec.bat
@REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v autoexec.bat /t REG_SZ /d d:\autoexec.bat /f
@del %0