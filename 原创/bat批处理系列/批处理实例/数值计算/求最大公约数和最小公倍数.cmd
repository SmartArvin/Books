@echo off
:: ����Ƚϴ�����ֵ�ʱ���ٶȻ�Ƚ���������52317��75569
:: Code by JM 2007-1-23 CMD@XP 2007-1-24 modified
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27054
setlocal enabledelayedexpansion

:begin
cls
set flag=
set num1=
set num2=
set /p num1= �������һ������
set /p num2= ������ڶ�������
if %num1% leq %num2% (set min=%num1%) else set min=%num2%
:: �� if �����Ը�Ϊ if %num1% gtr %num2% set /a num1=%num2%,num2=%num1% ��
:: �Դﵽ���ٱ�����Ŀ��Ŀ�ģ�����һ�� for �е� %min% �͵���Ӧ���޸�Ϊ %num1% 
for /l %%i in (%min%,-1,2) do (
    set GCD=%%i
    set /a mod1=%num1%%%%%i
    set /a mod2=%num2%%%%%i
    if !mod1! equ 0 if !mod2! equ 0 set flag=1&goto end
)

:end
if defined flag (
    set /a LCM=%num1%/%GCD%*%num2%
    echo %num1% �� %num2% �����Լ���� %GCD%����С�������� !LCM!
) else (
    set /a LCM=%num1%*%num2%
    echo %num1% �� %num2% ���Լ��Ϊ1����С�������� !LCM!
)
pause
goto begin


@echo off
:: չת���࣬�ٶȷǳ���
:: Code by ccwan Modified by JM 2007-1-24 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27054

set/p a=�����һ����
set/p b=����ڶ�����
:: ԭ�����룺set/a ab=%a%*%b%
set /a num_a=a,num_b=b
cls&echo.&echo/&echo\
echo %a% �� %b% ��   ���Լ��        ��С������
if %a% lss %b% goto restart

:loop
set/a num2=%a%%%b%
if %num2% gtr 0 set/a a=%b%&set/a b=%num2%&goto loop
goto show

:restart
set/a num1=%a%
set/a a=%b%
set/a b=%num1%
goto :loop

:show
:: ԭ�����룺set/a num=%ab%/%b%
set /a num=%num_a%/%b%*%num_b%
echo                     %b%                %num%
pause>nul
