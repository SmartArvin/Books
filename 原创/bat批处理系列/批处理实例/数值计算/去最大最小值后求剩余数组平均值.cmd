@echo off
:: һ������ȥ�����ֵ����Сֵ֮������������ƽ��ֵ
:: Code by 3742668 2006-5-25 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=20794
set Count=10                       rem �μӼ�������ĸ���
call :GetNum %Count%          rem ���������
echo Ҫ���������Ϊ:%Num%
call :EditNum %Num%
pause
exit

:EditNum
    set /a intMax=1,intMin=2147483647      rem ���������ֻ�ܴ���32λ����
    setlocal enabledelayedexpansion
    for %%i in (%*) do (if %%i GEQ !intMax! set /a intMax=%%i) & (if %%i LEQ !intMin! set /a intMin=%%i)
    for %%j in (%*) do set /a intCount=!intCount! + 1
    echo ��%intCount%����������������С�ֱ�Ϊ%intMax%,%intMin%
    set total=%Num: =+%
    set /a total=%total%
    set /a total=(%total% - %intMax% - %intMin%) / (%intCount% - 2)
    echo ����Ϊ:%total%
goto end

:GetNum
    if "%Flag%" == "%1" goto end
    set Num=%Num% %Random%
    set /a Flag = %Flag% + 1
goto GetNum

:end 
    endlocal
    set Flag=
    set intMax=
    set intMin=
    set intCount=
    set total=
goto :eof

:: Average.cmd - Eval average of a batch of numbers
:: Will Sort - 2006-06-03 - CMD@WinXP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=20794
@echo off
call :GetNum
echo Ҫ���������Ϊ:%return%
call :Average %return%
echo ȥ�����ֵ����Сֵ��ƽ����Ϊ %return%
goto :eof

:GetNum
if "%_n%"=="" setlocal
set _n=-
set /p _n=������һ��������ֱ�ӻس��������룩��
if "%_n%"=="-" endlocal&set return=%return%&goto :eof
set /a _i=_n
if "%_i%" NEQ "%_n%" (echo ��Ч���������ݣ�%_n%
) else set return=%return% %_i%
goto GetNum

:Average
setlocal EnableDelayedExpansion
if "%3"=="" set return=N/A&goto :eof
set /a iMax=%1,iMin=%1
for %%i in (%*) do (    
    if %%i GTR !iMax! set /a iMax=%%i
    if %%i LSS !iMin! set /a iMin=%%i
    set /a iTotal+=%%i
    set /a iCount+=1
)
set /a return=(iTotal-iMax-iMin) / (iCount-2)
endlocal&set return=%return%&goto :eof



:: Average.cmd - Eval average of a batch of numbers
:: Will Sort - 2006-06-03 - CMD@WinXP
:: modified by zh159 2006-7-24 �Է���ֵ��գ��Ա�ѭ������
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=20794
@echo off
set return=
call :GetNum
echo Ҫ���������Ϊ:%return%
call :Average %return%
echo ȥ�����ֵ����Сֵ��ƽ����Ϊ %return%
goto :eof

:GetNum
if "%_n%"=="" setlocal
set _n=-
set /p _n=������һ��������ֱ�ӻس��������룩��
if "%_n%"=="-" endlocal&set return=%return%&goto :eof
set /a _i=_n
if "%_i%" NEQ "%_n%" (echo ��Ч���������ݣ�%_n%
) else set return=%return% %_i%
goto GetNum

:Average
setlocal EnableDelayedExpansion
if "%3"=="" set return=N/A&goto :eof
set /a iMax=%1,iMin=%1
for %%i in (%*) do (    
    if %%i GTR !iMax! set /a iMax=%%i
    if %%i LSS !iMin! set /a iMin=%%i
    set /a iTotal+=%%i
    set /a iCount+=1
)
set /a return=(iTotal-iMax-iMin) / (iCount-2)
endlocal&set return=%return%&goto :eof
set return=