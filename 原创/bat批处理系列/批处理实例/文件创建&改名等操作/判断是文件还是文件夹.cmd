@echo off
if exist test\nul (echo ���ļ���) else echo ���ļ�
pause
goto :eof

@echo off
pushd test 2>nul&&echo ���ļ���||echo ���ļ�
popd
pause
goto :eof

@echo off
set "cur_dir=%cd%"
cd /d test 2>nul&&echo ���ļ���||echo ���ļ�
cd /d "%cur_dir%"
pause
goto :eof