@echo off
:: ������չ��ĳ��������ȫ�̵����
:: Code by JM 2007-2-11 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27628
for /f "delims=" %%i in ('dir /a-d /b e:\ 2^>nul') do (
    set /a num%%~xi+=1
)
echo.&echo.
echo             E�̸�Ŀ¼���ļ�����ͳ�������
echo.&echo.
for /f "tokens=2,3 delims==." %%i in ('set num. 2^>nul') do echo 		%%i �ļ��� %%j ��
pause