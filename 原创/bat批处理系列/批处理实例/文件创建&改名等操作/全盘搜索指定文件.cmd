@echo off
:: ȫ������ָ�����ļ�
:: ע���ļ��е���ת��Ҫ���̷����\,�����Ȼص���Ŀ¼֮������cd /d����
:: �����������ϵ�ʱ���޷�ֱ����cd /d����ת��ϵͳ�̸�Ŀ¼
:: code by jm 2006-8-30
setlocal enabledelayedexpansion
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
  if exist %%i:\nul (
    for /f "tokens=3" %%z in ('dir /-c %%i:\') do set freesize=%%z
    if not "!freesize!"=="0" (
      pushd %%i:\
      for /r %%k in (.) do (
        if exist %%k\icon.ico echo %%k
      )
    )
  )
)
popd
pause