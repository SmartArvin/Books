@echo off
:: �Ѷ����ı�ƴ�ӳ���;���ӵ�һ��
:: <nul ����ʡ�ԣ�ʡ�Ե����޷�������ȥ
for /f "tokens=*" %%i in (Դ�ļ�.txt) do set /p "var=%%i;" <nul >>Ŀ���ļ�.txt
exit

��һ�ַ�����
set tmpstr=
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in (1.txt) do set tmpstr=!tmpstr! %%i
echo %tmpstr%
pause
exit

����һ�ֲ����ñ����ӳٵķ������ܼ��ݳ�Ӣ��˫����������������ַ���
@echo off
:: code by jm 2006-12-14
for /f "delims=" %%i in (1.txt) do call set "var=%%var%%%%i"
echo "%var%"
pause