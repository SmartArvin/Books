@echo off
goto begain

�ѱ��ű����ڲ���Ŀ¼��ֱ������
ע�⣺����Ŀ¼�µ�1 2 3 4�ļ��н���ȫ�´������뱣֤���ĸ��ļ�����û����Ҫ����
���ű����������Դ�����磬jm��2006-8-15�����˲����޸�
�ų�for 98/ME/2000/XP/2003
ֻ������XP��2003��ϵͳ

:begain
title ϵͳ�����Զ���װ����
color 1f
md 1 2 3 4 >nul 2>nul
for %%i in (*.exe) do (
    (echo %%i|findstr "updfile">nul 2>nul && move %%i 1) || (
    echo %%i|findstr "_sfx_cab_exe_package">nul 2>nul && move %%i 2) || (
    echo %%i|findstr "update.exe">nul 2>nul && move %%i 3) || (
    echo %%i|findstr "_sfx_cab_exe_path">nul 2>nul && move %%i 4)
)
If not exist *.exe (goto auto_install) else (goto list)
:list
echo.
echo              ========================================================
echo.
for %%i in (*.exe) do echo                %%i ��Ҫ�ֶ���װ
echo.
echo              ========================================================
echo.
echo               �����Զ���װ�Ĳ�����װ���֮�����ֶ���װ��������
:auto_install
echo.
echo              ========================================================
echo.
echo               ���п��Զ���װ�Ĳ����Ѿ����ֱ���� Ŀ¼ 1 2 3 4 �С�
echo.
echo                            �����������...
pause>nul
cd /d 1
for %%i in (*.exe) do start /wait %%i /q
cd /d 2
for %%i in (*.exe) do start /wait %%i /passive /norestart /o /n
cd /d 3
for %%i in (*.exe) do start /wait %%i -n -o -z
cd /d 4
for %%i in (*.exe) do start /wait %%i /passive /norestart /o /n