@echo off
:: ���ĳ���ļ��д���500M�����
:: code by jm 2006-9-9 CMD@XP zxcv����
set size=0
setlocal enabledelayedexpansion
for /f "tokens=3" %%i in ('dir /a /s /-c "�ļ���"^|findstr "���ļ�"') do set size_=%%i
set /a size=%size:~0,-3%/1049
if %size% gtr 500 rd "�ļ���" && md "�ļ���"