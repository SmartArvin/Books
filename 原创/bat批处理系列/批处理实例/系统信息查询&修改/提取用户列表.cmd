@echo off
:: ��ȡ��ǰ����������û�
:: Code by JM CMD@XP
for /f "skip=4 tokens=1-3" %%i in ('net user') do (
    if not "%%i"=="����ɹ���ɡ�" if not "%%i"=="" echo %%i
    if not "%%j"=="" echo %%j
    if not "%%k"=="" echo %%k
)
pause