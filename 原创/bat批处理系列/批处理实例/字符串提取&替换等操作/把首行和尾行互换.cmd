@echo off
:: Ŀ�ģ������к�β�л���
:: ˼·��
::     ��ȡ��һ�к����һ������(�����к����һ���ǿ��У�����ȡ�����Ƿǿյĵ�һ�кͷǿյ����һ������)��
:: Ȼ�������ı�������д����ȡ�������һ�У��� findstr �����˵�ԭ�ı��ĵ�һ�к����һ�У������һ��
:: ֮�������ȡ���ĵ�һ�С�
:: ��Ϊ findstr �������һ�����������ƣ������������һ��֮������һ�����У��Ա�֤��ȡ��׼ȷ��
:: ע�⣺�뱣֤test.txt��û�������ַ���û�������ظ����У��������в���Ϊ��
:: code by jm 2006-11-5 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=24563
copy test.txt test.bak>nul
echo.>>test.txt
set num=0
setlocal enabledelayedexpansion
for /f "delims=" %%i in (test.txt) do (
    set str=%%i
    set /a num+=1
    if !num! equ 1 set var=%%i
)
>test_.txt echo.%str%
findstr /b /e /v /c:"%str%" /c:"%var%" test.txt>>test_.txt
>>test_.txt echo.%var%
move test.bak test.txt
start test_.txt
goto :eof

@echo off
:: ���Դ�������Ϊ�ա��������ظ��������
:: ע�⣺��Ϊ findstr /n ͳ��������ʱ�򣬻�������һ������
:: ���ԣ���������п��еĻ����뱣֤���еĸ�������1
findstr /n .* test.txt>tmp1.txt
for /f "tokens=1* delims=:" %%i in (tmp1.txt) do (
    if %%i equ 1 set str=%%j
    set line=%%i&set var=%%j
)
>tmp2.txt echo %line%:%var%
findstr /b /v /c:"1:" /c:"%line%:" tmp1.txt>>tmp2.txt
echo 1:%str%>>tmp2.txt
echo.>>tmp2.txt
cd.>result.txt
for /f "tokens=1* delims=:" %%i in (tmp2.txt) do >>result.txt echo.%%j
del /q tmp1.txt tmp2.txt
start result.txt