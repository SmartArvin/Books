@echo off
setlocal enabledelayedexpansion
set file=
set /p file=  ������Ҫ�������ļ�����(������չ��)��
set "file=%file:"=%"
for %%i in ("%file%") do set file=%%~fi
echo.
set replaced=
set /p replaced= �����뼴�����滻�����ݣ�
echo.
set all=
set /p all=  �������滻�ַ�����
for /f "delims=" %%i in ('type "%file%"') do (
    set str=%%i
    set "str=!str:%replaced%=%all%!"
    echo !str!>>"%file%"_tmp.txt
)
copy "%file%" "%file%"_bak.txt >nul 2>nul
move "%file%"_tmp.txt "%file%"
start "" "%file%"