@echo off
:: ��ʾ���̷�����
:: ���κ�@cn-dos.net - 2006-06-11 - CMDWinXP
setlocal ENABLEDELAYEDEXPANSION
rem ��ȡ������Ϣ
for /f "tokens=1,2 delims= " %%a in ('echo list disk ^|diskpart ^|findstr /r /c:"���� [0-9] "') do (
        @echo select disk=%%b>%%b.script
        @echo list partition>>%%b.script
        @echo exit>>%%b.script
        rem ִ�нű�,��ȡ���̷�����Ϣ
        for /f "tokens=1,2 delims= " %%m in ('diskpart /s %%b.script ^|findstr /r /c:"���� [0-9] "') do (
                rem ��ȥ��չ�ķ�����
                set /a num=%%n-1
        )
        del %%b.script
        echo ���� %%b        ���� !num! ������
)
pause