@echo off
:: ɾ���ظ����У������ܱ�������
:: �Բ����ϱ����������򡢱��������������Ƶ��ı����޷���ȷ����
:: code by  youxi01 modified by jm 2006-10-31
(echo ����ظ��к���ļ����ݣ�& echo.)>str_.txt
for /f "delims=" %%i in (test.txt) do (
    if not defined %%i set %%i=A & echo %%i>>str_.txt)
start str_.txt