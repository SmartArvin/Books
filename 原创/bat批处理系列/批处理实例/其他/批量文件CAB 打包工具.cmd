@ECHO OFF
SET TT=��ë�������������ļ� CAB �������
COLOR 1F
TITLE %TT%
SET ERR=
SET C0=MAKECAB /D CompressionType=LZX /D CompressionMemory=21 /D MaxDiskSize=CDROM /D Cabinet=ON /D Compress=ON /D FolderSizeThreshold=5000000

:BEGIN
CLS
ECHO.
ECHO ���������������q�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�r
ECHO ���������������U�������������������������������������U
ECHO �������q�T�T�T�� ��ë�������������ļ� CAB �������! ���T�T�T�r
ECHO �������U�������U�������������������������������������U�������U
ECHO �������U�������t�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�s�������U
ECHO �������U�����������������������������������������������������U
ECHO �������U���� ������Ҫ�������ļ�������һ��ѹ�����أ��������� �U
ECHO �������U���� ���������� N �� CAB ��ʽ�ĵ���ѹ���ļ��������� �U
ECHO �������U�����������������������������������������������������U
ECHO �������U������ [1] �������ļ�������һ��ѹ������������������ �U
ECHO �������U������ [2] ��ÿ���ļ������ɵ���ѹ���ļ������������� �U
ECHO �������U������ [3] �������ļ������ɵ���ѹ���ļ������������� �U
ECHO �������U������ [Q] �˳������������������������������������� �U
ECHO �������U�����������������������������������������������������U
ECHO �������c�����������������������������������������������������f
ECHO �������U ע��1. ��ѹ���ļ��ĸ�Ŀ¼���뱾������ͬһ·���£����U
ECHO �������U���� 2. ��ѹ���ļ�����·��(������·��)�����пո񡣡��U
ECHO �������c�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�f
ECHO �������U����Ȩ���У���ë�ҡ����������������ǽ��������治�����U
ECHO �������t�����������������������������������������������������s
ECHO.
SET Choice=
SET /P Choice=����������ѡ��Ҫ���еĲ�����1/2/3/Q����Ȼ�󰴻س���

IF NOT '%Choice%'=='' SET Choice=%Choice:~0,1%
IF /I '%Choice%'=='1' GOTO LOOPA
IF /I '%Choice%'=='2' GOTO LOOPA
IF /I '%Choice%'=='3' GOTO LOOPD
IF /I '%Choice%'=='Q' EXIT
GOTO BEGIN

:LOOPA
IF /I '%Choice%'=='1' (
TITLE %TT% - ������һ��ѹ����
)
IF /I '%Choice%'=='2' (
TITLE %TT% - �����ɶ������ѹ���ļ�
)
IF "%Err%"=="" (
CLS
)
ECHO ��������ѹ�����ļ����ڵ�Ŀ¼������ Files
SET Ds=
SET /P Ds=
IF "%Ds%"=="" goto LOOPA
IF NOT EXIST %Ds% (
SET Err=1
ECHO.
CLS
ECHO ���������·�������ڣ�����������
ECHO.
GOTO LOOPA
)

IF /I '%Choice%'=='1' GOTO LOOPB
GOTO LOOPC

:LOOPB
CLS
ECHO ��������Ҫ�����ѹ�����ļ������� Drive.CAB
SET FCab=
SET /P FCab=
IF "%FCab%"=="" goto LOOPB
SET C=%C0% /D DiskDirectoryTemplate=.\ /D CabinetNameTemplate=%FCab%
SET TF=%TEMP%\Files.tmp
IF EXIST %TF% DEL %TF% >NUL
FOR /F %%i in ('dir /b %Ds%') do ECHO %Ds%\%%i >>%TF%
ECHO.
%C% /F %TF%
DEL /F /S /Q %TF% SETUP.INF SETUP.RPT >NUL
GOTO EXIT

:LOOPC
CLS
ECHO ��������Ҫ����� CAB ��ʽ�ļ�����·�������� OutFile
ECHO �����·�������ڣ����ڵ�ǰĿ¼���Զ�������
SET OUT=
SET /P OUT=
IF "%OUT%"=="" GOTO LOOPC
FOR /F %%I IN ('CD') DO SET P=%%I\%Ds%
SET C=%C0% /L %OUT% %P%\
ECHO.
FOR /F %%I IN ('dir /B %Ds%') do %C%%%I
GOTO EXIT

:LOOPD
TITLE %TT% - ֻѹ��һ���ļ�
IF "%Err%"=="" (
CLS
)
ECHO ��������Ҫ��Ҫѹ�����ļ�����·�������� Driver\NV4_Disp.SYS
ECHO ���� Driver �뱾������ͬһ�ļ�����
ECHO ��Ҳ����ѡ�� TAB ����������·�����ļ����ƣ���ɺ󰴻س�ȷ��
SET FileR=
SET /P FileR=
IF "%FileR%"=="" (
CLS
GOTO LOOPD
)
IF NOT EXIST "%FileR%" (
SET Err=1
ECHO.
CLS
ECHO ����������ļ�·�������ڣ�����������
ECHO.
GOTO LOOPD
)
GOTO LOOPE

:LOOPE
CLS
ECHO ��������Ҫ��Ҫ�����ѹ���ļ�·�������� Driver\NV4_Disp.CAB
ECHO ����������ļ�·�������� NV4_Disp.SY_ ����ʽ�����ڱ���������·��
ECHO.
ECHO ע�⣺�����������һ�������ڵ�·����Ϣ��ѹ����������
SET FileT=
SET /P FileT=
%C0% %FileR% %FileT%
GOTO EXIT

:EXIT
ECHO.
ECHO.
ECHO.
ECHO ����Ҫ�Ĳ����Ѿ�ȫ����ɣ���˲�. . .
ECHO.
ECHO ��ë�Ҹ�л����ʹ�ã��������ʲô�õĽ��飬�� QQ �ң�
ECHO.
ECHO.
ECHO �밴������˳�����. . .
PAUSE >NUL