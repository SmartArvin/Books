@echo off
:: �Ƚ�A�ļ��к�B�ļ������ļ�������ͬ(A��B�ļ����¾�����Ŀ¼)
:: ����в�ͬ��A�ļ����в�ͬ��д��a.txt��B�ļ����в�ͬ��д��b.txt
:: ��ͬ���ֵ��ļ���д��c.txt
:: code by jm 2006-8 CMD@XP
cd.>a.txt
cd.>b.txt
cd.>c.txt
dir /a-d /b "A�ļ��е�·��">list_a.txt
dir /a-d /b "B�ļ��е�·��">list_b.txt
for /f "delims=" %%i in (list_a.txt) do (
    find "%%i" list_b.txt>nul 2>nul && echo %%i>>c.txt || echo %%i>>a.txt
)
for /f "delims=" %%i in (list_b.txt) do (
    find "%%i" list_a.txt>nul 2>nul || echo %%i>>b.txt
)
del /q list_a.txt>nul 2>nul
del /q list_b.txt>nul 2>nul
start a.txt
start b.txt
start c.txt
goto :eof

����һ�ָ����ķ����ǣ�
:: ������3742668������˼·
@echo off
cd.>a.txt
cd.>b.txt
cd.>c.txt
dir /a-d /b "A�ļ��е�·��">list_a.txt
dir /a-d /b "B�ļ��е�·��">list_b.txt
findstr /v /x /g:list_b.txt list_a.txt>a.txt
findstr /v /x /g:list_a.txt list_b.txt>b.txt
findstr /x /g:list_a.txt list_b.txt>c.txt