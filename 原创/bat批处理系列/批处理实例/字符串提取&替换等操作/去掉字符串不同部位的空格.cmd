@echo off
:: ȥ����ո�
:: Code by JM 2006-11-28 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25172
set "str=   ab c&>!   " 
for /f "tokens=*" %%i in ("%str%") do echo "��%%i��"
pause
goto :eof

@echo off
:: ȥ����ո�
:: Code by JM 2006-11-28 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25172
set "str=   ab c&>!   " 
:intercept
if "%str:~0,1%"==" " set "str=%str:~1%"&goto intercept
echo "��%str%��"
pause
goto :eof

@echo off
:: ȥ���ҿո�
:: Code by JM 2006-11-28 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25172
set "str=   ab c&>!   " 
:intercept
if "%str:~-1%"==" " set "str=%str:~0,-1%"&goto intercept
echo "��%str%��"
pause
goto :eof

@echo off
:: ȥ����β�ո�ո�
:: Code by JM 2006-11-28 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25172
set "str=   ab c&>!   " 

:intercept_left
if "%str:~0,1%"==" " set "str=%str:~1%"&goto intercept_left

:intercept_right
if "%str:~-1%"==" " set "str=%str:~0,-1%"&goto intercept_right
echo "��%str%��"
pause
goto :eof

@echo off
:: ȥ�����пո�ո�
:: Code by JM 2006-11-28 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25172
set "str=   ab c&>!   " 
set "str=%str: =%"
echo "��%str%��"
pause
goto :eof

@echo %dbg% off
cls && echo. && echo.
:Redtek 2006 ȥ���Һ��пո�ı������������෽��ʵ����ʾ
::  Ϊ��ʾ���������÷��㣬���ԡ���ǩ����Ρ��ڵĴ��붼���Զ���ʹ��
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25172

set "var=               My name is Redtek            "
rem  ע������ Call �еĲ����������ŵģ����ò����Զ��ſո����Ϊ�ָ�������
call :ȥ���ո�  %var%
echo. && echo.
call :ȥ�Ҳ�ո�  "%var%"
rem  ȥ�ַ����е����ҿո�
rem  Ϊ��ʾ���������õķ��㣬���沽�轫���±�дȥ���ҿո�Ĵ���Σ����Զ���ʹ�á�
echo. && echo.
call :ȥ���߿ո�  "%var%"  %var%
goto :eof


:ȥ���ո�

        rem  �����滻ԭ�������� var �� �� ^%1�������ݿ�ͷ�ִ������һ���滻Ϊ^1����
        rem  ��Ϊ�� Call �����Ժ󣬲����еĿո��ȫ�����ˡ������ò����ָ������ԣ���
        rem  ���ԣ���Ȼ�Ǹ�Ҫ����λ�� ^%1 ��ߵĿո�Ҳ��ȫû�ˡ�

        call set "ȥ��ո��ı���=%%var:*%1=%1%%

        echo  ԭ�ַ�����                [%var%]
        echo  ȥ���ո����ַ�����        [%ȥ��ո��ı���%]
        goto  :eof


:ȥ�Ҳ�ո�

        rem �������ֵ������������������������á�
        rem ~nx �������ˡ���������չ��һ���ļ����������ԣ�
        rem ��Ȼ�ǺϷ����ļ�������Ȼ�ļ�������Ŀո�����Ч�����õġ�����

        set ȥ�ҿո��ı���=%~nx1

        echo  ԭ�ַ�����                [%var%]
        echo  ȥ�Ҳ�ո����ַ�����        [%ȥ�ҿո��ı���%]
        goto  :eof        
        

:ȥ���߿ո�

        rem ԭ����ȥ��߿ո���ȥ�ұ߿ո��൱��������ʾ����ĺ��ã���
        rem �������ڼ���û����������ȥ���ȥ�ҿո�Ĵ�������£����������ʾ��

        set ȥ���ҿո��ı���=%~nx1
        call set "ȥ���ҿո��ı���=%%ȥ���ҿո��ı���:*%2=%2%%"

        echo  ԭ�ַ�����                [%var%]
        echo  ȥ���ҿո����ַ�����        [%ȥ���ҿո��ı���%]
        goto :eof