@echo off
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=23611
title ʵ���Ӽ�����ű�
mode con: cols=80 lines=25
color 27
if not %1*==* set num1=%1 & set num2=%2 & goto jmp
:input
cls
echo                        �q�����������������������������r
echo                        ��                            ��
echo    �q��������������������   ʵ �� �� �� �� �� �� ��  �����������������������r
echo    ��                  ��                            ��         [���԰�]   ��
echo    ��                  �t�����������������������������s                    ��
echo    ��   �ýű������Ͽ��Զ�Nλ��ʵ�����мӼ����㡣                          ��
echo    ��                                                                      ��
echo    ��   �������:                                                          ��
echo    ��   ��������������[X]��[Y]�������Զ����㡣������[X]��[Y]Ĭ��Ϊ�ӷ�   ��
echo    ��   ���㡣[x]��[Y]��Ĭ��ֵΪ��, Ҳ����ǰ���"-"�š�����[-X]��[-Y]      ��
echo    ��                                                                      ��
echo    ��   + �ӷ������������1��[X]�������󰴻س��������������2��[Y]������   ��
echo    ��   �س�����.   ��: [X+Y]                                              ��
echo    ��   - ���������������1��[X]�������󰴻س��������������2��[-Y]������  ��
echo    ��   ע��: ��2��������ǰ�����"-"��.   ��: [X+(-Y)]                     ��
echo    ��   �����������ʽ:  [(-X)+Y]��[(-X)+(-Y)]                           ��
echo    ��                                                                      ��
echo    ��   ע��: ��������������, ��һλ�����������"-", �Լ����һ��"."��,    ��
echo    ��   ���������������ַ�������, ������Ϊ��������...                      ��
echo    ��                                                                      ��
echo    ��                                     author:pengfei@www.cn-dos.net    ��
echo    �t�����������������������������������������������������������������������s
setlocal enabledelayedexpansion
set num1=
set num2=
set /p num1=    input primary number    [X]:
set /p num2=    input number two number [Y]:
:jmp
set numx=%num1%
set numy=%num2%
set auto=
set less=+
set less_=+
set adding=+
set norm=1
set sign=
set sign_=
if "%num1:~0,1%"=="-" (
    if "%num2:~0,1%"=="-" (
        set num1=!num1:~1!
        set num2=!num2:~1!
        set adding=
        set sign=-
        goto start
    )
)
if "%num1:~0,1%"=="-" (
    set num1=!num1:~1!
    set auto=::
    set less=-
    set less_=-
    set norm=2
    set sign=-
    set sign_=
    goto start
)
if "%num2:~0,1%"=="-" (
    set num2=!num2:~1!
    set auto=::
    set less=-
    set less_=-
    set adding=
    set norm=2
    set sign_=-
    goto start
)
:start
echo %num1% | find "." >nul || set num1=%num1%.0
echo %num2% | find "." >nul || set num2=%num2%.0
if "%num1:~-1%"=="." set num1=%num1%0
if "%num2:~-1%"=="." set num2=%num2%0
if "%num1:~0,1%"=="." set num1=0%num1%
if "%num2:~0,1%"=="." set num2=0%num2%
call :jerque "%num1%"
call :jerque "%num2%"
set num=0
for %%a in (%num1% %num2%) do (
    set /a num+=1
    for /f "tokens=1,2 delims=." %%i in ("%%a") do (
        if "!num!"=="1" (set one=%%i) else (set one_=%%i)
        if "!num!"=="1" (set two=%%j) else (set two_=%%j)
    )
)
call :omit %one%
set one=%want%
call :omit %one_%
set one_=%want%
call :raze %two%
set two=%want_%
call :raze %two_%
set two_=%want_%
if "%one%"=="" set one=0
if "%one_%"=="" set one_=0
call :go %one%
set countx=%wish%
call :go %one_%
set countx_=%wish%
if "%two%"=="" set two=0
if "%two_%"=="" set two_=0
call :go %two%
set county=%wish%
call :go %two_%
set county_=%wish%
set after=
set front=0
if %countx% lss %countx_% (
    set /a result=%countx_%-%countx%
    call :fine !result! %one%
    set one=!incept!
) else (
    set /a result=%countx%-%countx_%
    call :fine !result! %one_%
    set one_=!incept!
)
set after=0
set front=
if %county% lss %county_% (
    set /a result=%county_%-%county%
    call :fine !result! %two%
    set two=!incept!
) else (
    set /a result=%county%-%county_%
    call :fine !result! %two_%
    set two_=!incept!
)
if "%norm%"=="2" (
    call :how %one%%two% %one_%%two_%
)
:recur
if "%mu%"=="2" call :meet
set outcome_=0
call :scale %two% %two_%
set decimal=%numeral:~0,-1%
call :scale %one% %one_%
if "%note%"=="0" (
    set integer=%numeral:~0,-1%
) else (
    set integer=1%numeral:~0,-1%
)
call :raze %decimal%
set decimal=%want_%
call :omit %integer%
set integer=%want%
if "%integer%"=="" set integer=0
if "%integer%"=="0" if "%decimal%"=="" set sign=
if "%decimal%"=="" (set dot=) else (set dot=.)
if "%numx:~0,1%"=="." set numx=0%numx%
if "%numy:~0,1%"=="." set numy=0%numy%
if "%numx:~-1%"=="." set numx=%numx:~0,-1%
if "%numy:~-1%"=="." set numy=%numy:~0,-1%
if "%numx%"=="" set numx=0
if "%numx%"=="-" set numx=-0
if "%numy%"=="-" set numy=-0
cls
echo =============
echo ������^^!
echo =============
echo.
echo.
echo %numx%%adding%%numy%=%sign%%integer%%dot%%decimal%
pause >nul
goto input

:scale
set value=@%1
set value_=@%2
set numeral=
:repeat
set outcome=%outcome_%
if "%outcome_:~0,-1%"=="-" (
    set /a outcome=10%outcome_%
    set note=1
) else (
    set note=0
)
set numeral=%outcome:~-1%%numeral%
%auto%set note=0%outcome:~0,-1%
if not "%value:~-1%"=="@" (
    set xx=!value:~-1!
    set value=!value:~0,-1!
)
if not "%value_:~-1%"=="@" (
    set yy=!value_:~-1!
    set value_=!value_:~0,-1!
    call :operation !xx! !yy!
)
goto :eof
:operation
set refer=%1
set refer_=%2
set /a outcome_=%refer%%less%%refer_%%less_%%note%
goto repeat
:go
set remove=%1@
set wish=0
:go_
if not "!remove:~0,1!"=="@" (
    set /a wish+=1
    set remove=!remove:~1!
    goto go_
)
goto :eof
:fine
set take=%1
set incept=%2
:fine_
if not "%take%"=="0" (
    set /a take-=1
    set incept=%front%!incept!%after%
    goto fine_
)
goto :eof
:omit
set want=%1
:omit_
if "%want:~0,1%"=="0" (
    set want=%want:~1%
    goto omit_
)
goto :eof
:raze
set want_=%1
:raze_
if "!want_:~-1!"=="0" (
    set want_=!want_:~0,-1!
    goto raze_
)
goto :eof
:how
set first=%1@
set second=%2@
:how_
if not "%first:~0,1%"=="@" (
    set first_=!first:~0,1!
    set first=!first:~1!
)
if not "%second:~0,1%"=="@" (
    set second_=!second:~0,1!
    set second=!second:~1!
    call :judg
)
goto :eof
:judg
if !first_! gtr !second_! (
    set mu=1
    goto recur
) else (
    if !first_! lss !second_! (
        set mu=2
        goto recur
    )
)
goto how_
:meet
set middle=%one%
set one=%one_%
set one_=!middle!
set middle_=%two%
set two=%two_%
set two_=!middle_!
set sign=%sign_%
goto :eof
:jerque
for /f "tokens=1* delims=." %%i in (%1) do (
    echo %%i%%j|findstr "^[0-9]*$">nul || goto error
)
goto :eof
:error
cls
echo ======================
echo ������������Ҫ��^^!
echo ======================
echo.
echo.
echo �밴�������������...
pause >nul
goto input
