@echo off
:: �Ե�ǰĿ¼��������ca��ͷ�ĺ������ֵ��ļ����и���
:: code by NaturalJ0 2006-9-27
setlocal ENABLEDELAYEDEXPANSION
for /f %%i in ('dir/b cb*.rmvb') do (
        call :GETNUM %%i
        if not !number!==# (
                ren %%i cb_!number!.rmvb 2>nul || echo cb_!number!.rmvb �Ѵ��ڣ�%%i �����ٸ���Ϊ cb_!number!.rmvb �����Լ��ֶ�����
        )
)
echo.
echo ������ϣ��������������
pause>nul
GOTO END

:GETNUM
set varstr=%1#
set number=#
:LOOP
if !varstr!==# GOTO ENDLOOP
set firstchar=!varstr:~0,1!
if !firstchar! GEQ 0 (
        if !firstchar! LEQ 9 (
                set number=!number!!firstchar!
        )
)
set varstr=!varstr:~1!
GOTO LOOP
:ENDLOOP
if not !number!==# set number=!number:~1!
:END