::code by youxi01@xp_cmd,2007-3-28
::��ʼ
@echo off
setlocal enabledelayedexpansion
color 1f
title ����ʹ�ö˿ڷ�������

:��ʼ����
set "space=                   "

::�����ʼ����
::����������Լ�������Ϊ��ȫ�Ľ���
if not exist ProcessList.ini (
echo System
echo smss.exe
echo csrss.exe
echo winlogon.exe
echo services.exe
echo lsass.exe
echo svchost.exe
echo spoolsv.exe
echo Explorer.EXE

echo realsched.exe
echo SOUNDMAN.EXE
echo ctfmon.exe
echo QQ.exe
echo TIMPlatform.exe

echo alg.exe
echo Qzone.exe
echo Maxthon.exe
echo TTPlayer.exe
echo conime.exe
echo QQPlayerSvr.exe
echo NOTEPAD.EXE
echo cmd.exe
echo tasklist.exe
echo wmiprvse.exe)>>ProcessList.ini
for /f %%i in (ProcessList.ini) do set "%%i=A"

echo                               �q�����������r
echo           �q�������������������� ����˵�� �������������������r
echo           ��                  �t�����������s                ��
echo           ��   �������ܹ���⵱ǰ������������н�����ʹ�õ� ��
echo           ��                                                ��
echo           ���˿ڣ����ܹ��Էǳ������������ʾ //             �� 
echo           �t�������������������������������������������������s
echo.
echo            ���ڲ�ѯ�����Ե�...
echo          �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo          �U ������              ��ʶ����    Э������   �˿�  �U
echo          �U _________________________________________________�U

::��ѯ���̵�PID��
::��ȡ���̵�PID�ţ�������ֵ����Ϊ�ý��̵� ����
for /f "skip=4 tokens=1,2" %%i in ('tasklist') do set %%j=%%i

::��ѯ��TCPЭ��ʹ�õĶ˿�
call :QueryPort TCP 5
echo          �U _________________________________________________�U
call :QueryPort UDP 4
echo          �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
echo           �����������...
pause>nul
if !num! GTR 0 (goto :NO) else goto :OK

:NO
echo.
echo           ����������ļ�������ܴ��ڷ���
echo.
echo           ���½���Ϊδ������̣�������ʹ�ö˿�ͨ�ţ�����Ϊľ�� ^>^>
echo           ____________________________________________________
for /l %%i in (1 1 %num%) do  (
    if not defined !UnPro%%i! echo !UnPro%%i! && set !UnPro%%i!=A )
goto :exit

:OK
echo.
echo           ����������ļ�����������ƺ��ǰ�ȫ�ġ�
echo           ____________________________________________________

:exit
pause>nul
exit

::��ѯ�˿�����"����"
::����˵����
REM PortType ΪЭ�����ͣ�����ΪTCP��Ҳ����ΪUDP
REM Num Ϊ�����ţ�TCPЭ���еĵ��������ΪPID�ţ���UDP����Ϊ���ĸ���

:QueryPort PortType Num
    for /f "skip=4 tokens=2,%2" %%i in ('netstat -ano -p %1') do (
        call :LineUp "�U !%%j!" 21 Pro 
        for /f "tokens=2 delims=:" %%a in ("%%i") do set Port=%%a
        if /I defined !%%j! (set ProType=������) else (
             set ProType=δ����
             set/a num+=1
             set UnPro!num!=!%%j! 
           )
        call :LineUp !ProType! 8 ProType
        call :LineUp %1 10 PortType
        call :LineUp !Port! 6 Port
        echo          !Pro! !ProType! !PortType! !Port!�U
      )
    goto :eof

::����Ŀ��
::����˵����
REM OBJ Ϊ����Ҫ�����Ķ���LenΪ��������ĳ��ȣ�NameΪ���صı�������
:LineUp OBJ Len Name
    set obj=%~1%space%
    set %3=!obj:~0,%2!