@echo off
rem  ========��ȡ�ļ�(��)������=============
:: code by pengfi,modified by jm 2006-9-13
:: ��forȡ�����ļ���������drahs----������Ҫ�������ڵڶ���������ַ�λ��
:: �ô����ٶȺܿ�
cd.>attrib.txt
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in ('dir /a /b /s "%systemroot%\system32"') do (
    set var=%%~ai
    set attrib_=
    if not "!var:~1,1!"=="-" set attrib_=+!var:~1,1!
    if not "!var:~3,1!"=="-" set attrib_=!attrib_! +!var:~3,1!
    if not "!var:~4,1!"=="-" set attrib_=!attrib_! +!var:~4,1!
    if not "!attrib_!"=="" echo attrib !attrib_! "%%i">>attrib.txt
)
goto :eof

:: ����һ�ַ���
:: ͨ���ַ��滻��ʵ��
:: �ٶȽ���һ����������ǧ���ļ��м�ʮ����Ĳ���
@echo off
:: ��ȡĳ���ļ������������ļ��м����ļ�������
:: Code by JM 2006-9-13 Thanks pengfei
rem  ========��ȡ�ļ�(��)������=============
cd.>attrib.txt
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in ('dir /a /b /s "%systemroot%\system32"') do (
    set attrib_=%%~ai
    set attrib_=!attrib_:h=+h !
    set attrib_=!attrib_:r=+r !
    set attrib_=!attrib_:s=+s !
    set attrib_=!attrib_:a=!
    set attrib_=!attrib_:d=!
    set attrib_=!attrib_:-=!
    if not "!attrib_!"=="" echo attrib !attrib_! "%%i">>attrib.txt
)
goto :eof

:: �޸İ汾���ȵڶ�����΢����һ���
@echo off
:: ��ȡĳ���ļ������������ļ��м����ļ�������
:: Code by JM 2006-9-13 Thanks pengfei
rem  ========��ȡ�ļ�(��)������=============
cd.>attrib.txt
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in ('dir /a /b /s "%systemroot%\system32"') do (
    set attrib_=%%~ai
    set attrib_=!attrib_:~1,4!
    set attrib_=!attrib_:h=+h !
    set attrib_=!attrib_:r=+r !
    set attrib_=!attrib_:s=+s !
    set attrib_=!attrib_:a=!
    set attrib_=!attrib_:-=!
    if not "!attrib_!"=="" echo attrib !attrib_! "%%i">>attrib1.txt
)
