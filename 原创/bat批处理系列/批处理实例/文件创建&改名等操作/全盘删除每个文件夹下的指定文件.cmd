@echo off
:: ȫ��ɾ�������������ļ����µ�a.ini
:: a.ini���ܴ��� ϵͳ+����+ֻ�� ����
:: fsutil��������ڹ���ԱȨ��������
:: code by jm 2006-9-12 CMD@XP
setlocal enabledelayedexpansion
for /f "delims=\" %%i in ('fsutil fsinfo drives^|find   ""') do (
    set drive_=%%i
    fsutil fsinfo drivetype !drive_:~0,2!|find "�̶�">nul && del /a /f /q /s !drive_:~0,2!\a.ini
)
echo        �Ѿ������з������a.iniɾ����ϣ���������˳�...
pause>nul 