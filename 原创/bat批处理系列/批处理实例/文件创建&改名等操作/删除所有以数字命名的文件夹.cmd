@echo off
:: ������û��ʲô�ر�֮����ֻ��Ϊ�˺ͺ���Ƚ�����Ĵ������Ƚ϶��ṩһ���Ƚ������ķ���
:: Code by JM 2007-1-26 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27090
for /f %%i in ('dir /ad /b^|findstr "^[0-9]*$"') do echo rd /s /q %%i
pause

@echo off
:: �Ƚ�����Ĵ���
:: ��������˷Ǵ����ֲ����� set /a ����ֵ���ص�
:: ��������1��2^31�Ҳ���08��09��ͷ��ʱ���ǳ���Ч
:: Code by NaturalJ0 2007-1-25 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27090
setlocal enabledelayedexpansion
for /f %%i in ('dir/ad/b') do (
        set /a folder=0
        set /a folder=%%i 2>nul
        if not "!folder!"=="0" echo rd /s /q %%i
)
pause