@echo off
:: ��10���ڵ��������������������
:: ��Ϊ�����в��ܳ�����������޳�����
:: ����������Ŷ�
:: û�п�����������
:: ȱ�㣺��ʱ���������������ʽ������������
:: Code by JM 2007-1-16 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26749

set str1=������
setlocal enabledelayedexpansion

:begin
cls
set count=0
set item=0
set times=0
set expression=
set input1=
set input2=
set /p input1=     ��ָ��������������ֵĸ���(�˳���ֱ�Ӱ��س�)��
set /p input2=     �������������ʽ���ܳ��ֵ��������(�˳���ֱ�Ӱ��س�)��
if not defined input1 exit
if not defined input2 exit
cls

:loop
if %times% equ %input2% goto end
set expression=
set count=0
for /l %%i in (1,1,%input1%) do call :build
call :insert_sum
if %sum% lss 0 goto loop
set /a total+=%sum%&set /a item+=1
echo �� %item% ��(%times%/%input2%): %expression:~1%=%sum%
goto loop

:end
set /a aver=%total%/%item%
set /a mod=%total%%%%item%
echo.
echo %item% ����¼������ƽ��ֵ�ǣ�%total%/%item%=%aver%����%mod%
echo.
echo          �����������һ��
pause>nul
goto begin


:build
:: ����û�����ŶԵı��ʽ
set /a num=%random%%%10
set /a SN=%random%%%3
set expression=!str1:~%SN%,1!%num%%expression%
goto :eof

:insert_sum
:: ����������ŶԲ�����ÿ�����ʽ�Ľ��
set /a length=2*%input1%
set /a num1=%random%%%%input1%
if %num1% equ 0 set num1=1
for /l %%i in (1,2,%length%) do (
    set /a count+=1
    if !count! equ %num1% set num1=%%i&goto next
)
:next
set count=0
set /a bg=%num1%+3
set /a remain=(%length%-%bg%)/2+1
if %remain% neq 1 (
    set /a num2=%random%%%%remain%+1
) else set num2=1
for /l %%i in (%bg%,2,%length%) do (
    set /a count+=1
    if !count! equ %num2% set num2=%%i&goto add
)
:add
set /a dif=%num2%-%num1%
set expression=!expression:~0,%num1%!(!expression:~%num1%,%dif%!)!expression:~%num2%!
set sum=%expression:��=+%
set sum=%sum:��=-%
set sum=%sum:��=*%
set /a sum=%sum:~1%
set /a times+=1
goto :eof