@echo off
:: Code by JM 2007-1-2��1-3 bbs.cn-dos.net CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26288
:: ������ʽ����ת��Ϊ����������
:: ˼·��
:: �����Ȱ����е���������ת��Ϊǰ����ո�İ���������(��Ҫ���⴦��)��
:: Ȼ�󣬰Ѱ��������ִӸ�λ����λ��һ��ȡ��������ȡ��ͬʱ����"��"��
:: ��λ���滻������λ�ľ������Ϊ���Ƚ�"��"ǰ��Ľ�λ��������Ӧ��0��
:: ���磺ĳ��"��"��ǰ���λ�ֱ�Ϊ"��"��"ʰ"�������"��"���滻Ϊ����
:: ������0����󣬰����еĿո�ȥ����

setlocal enabledelayedexpansion

set str=��Ǫ����ʰ��������㷡��������

echo.
echo           Ҫ�����������ֵ��%str%
echo --------------------------------------------------
:: ����������ת��Ϊ����������
for /f "tokens=1* delims=��" %%i in ("%str%") do set var1=%%i&set var2=%%j
call :replace_1 %var1%
set int=%var%
if not "%var2%"=="" (
    call :replace_1 %var2%
    set dec=!var:��=!
)
echo.
echo �������ְ��������Ľ��1��%int%.%dec%
:: ��ȡ����������
call :pickup %int%
:: ���ԭʼ��ֵ�������ֵ����һλ�ǲ������֣��Ӷ������Ƿ����ת��
if not "%int:~-1%"==" " (
    set tmp=!last!
    call :replace_2
)
echo.
echo �������ְ��������Ľ��2��%str_%%tmp%.%dec%
if not "%dec%"=="" (
    set result=%str_: =%%tmp%.%dec: =%
) else set result=%str_: =%%tmp%
echo.
echo --------------------------------------------------
echo            ���ս���ǣ�%result%
endlocal
pause>nul
goto :eof

:pickup
:: ��ȡ���������֣�����"��"������
set last=%2
if not %1 equ 0 (
    set str_=!str_! %1
) else (
    set str_=!str_! %zero%
    set tmp=
    set length=0
)
:: ��"�������"֮�����Ҫ��������
if "%4"=="��" (
    if not "%2"=="��" (
        call :replace %2 %6
    ) else set zero=0
)
shift
shift
if not "%1"=="" goto pickup
goto :eof

:replace
:: ��"��"����λ����
if "%2"=="" (
    set tmp=
) else (
    set tmp=%2
    set tmp=!tmp:~0,1!
)
set tmp=%1 %tmp%
call :replace_2
for /f "tokens=1,2" %%i in ("%tmp%") do set former=%%i&set later=%%j
:: �Ƚ��ַ��� %former% �� %later% �ĳ��̣������� if %former% lss %later% ���
set flag=!former:%later%=!
if "%flag%"=="%former%" (
    set zero=%former:~1%
    set flag=
    goto :eof
)
:get_length
set /a length+=1
if not "%later%"=="" set later=%later:~0,-1%&goto get_length
set zero=!former:~%length%!
goto :eof

:replace_1
set var=%1
set num=1
for %%i in (Ҽ �� �� �� �� ½ �� �� ��) do (
    call set var=%%var:%%i= !num! %%
    set /a num+=1
)
set var=%var:��= 0 �� %
goto :eof

:replace_2
set tmp=%tmp:ʰ=0%
set tmp=%tmp:��=00%
set tmp=%tmp:Ǫ=000%
set tmp=%tmp:��=0000%
set tmp=%tmp:��=00000000%
goto :eof

@echo off
:: code by youxi01 2007-1-3 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26288
:: ˵����ֻ�ܴ���1�����ڵ�����
setlocal enabledelayedexpansion
set str=��Ǫ������ʰ��������㷡��������
set /a Ǫ=1000,��=100,ʰ=10,��=1

for %%i in (Ҽ �� �� �� �� ½ �� �� ��) do (
   set/a a+=1
   call set str=%%str:%%i=!a!%%)
for /f "tokens=1* delims=��" %%i in ("%str%") do set rnd=%%i&set dec=%%j
for /f "tokens=1* delims=��" %%i in ("%rnd:��=%") do (
    if "%%j"=="" (
        set/a num1_=0
        call :test %%i 2
        ) else (call :test %%i 1 &call :test %%j 2))
for /f "tokens=2 delims==" %%i in ('set num1_') do set /a Res1+=%%i
for /f "tokens=2 delims==" %%i in ('set num2_') do set /a Res2+=%%i
set /a Res=%Res1%*10000+%Res2%

if "%dec%"=="" (echo !Res!) else echo !Res!.!dec:��=0!

pause>nul
:test
   set tmp=%1
   for /l %%i in (0 2 8) do (
       set tmp_=!tmp:~%%i,2!
       if not "!tmp_!"=="" (
           set tmp1=!tmp_:~0,1!
           set tmp2=!tmp_:~1,1!
           if "!tmp2!"=="" set tmp2=��
           call set /a num%2_%%i=!tmp1!*%%!tmp2!%%) else goto :eof)


@echo off
:: Code by tigerpower 2007-1-3  bbs.cn-dos.net CMD@XP
set USAGE=USAGE: %0 hanzi
setlocal enabledelayedexpansion
set daxie=��Ҽ��������½��ƾ�
for /l %%a in (0,1,9) do (set Arabic_poi!daxie:~%%a,1!=%%a)
for /l %%a in (0,1,9) do (set Arabic_int!daxie:~%%a,1!=+%%a)
set Arabic_poi��=.
set Arabic_intʰ=*10
set Arabic_int��=*100
set Arabic_intǪ=*1000
set Arabic_int��=)*10000
set Arabic_int��=)*100000000+(0

if "%1"=="" echo %USAGE%&&goto :eof
set input=%1��
set input=%input:���=��%

set point=0
:loop
if not "!input!"=="" (
set chr=!input:~,1!
if "!chr!"=="��" set point=1
if "!chr!"=="��" set wan=1
if "!chr!"=="��" set yi=1
if %point%==0 (set chr_int=!Arabic_int%chr%!&&set int=!int!!chr_int!) else (set chr_poi=!Arabic_poi%chr%!&&set poi=!poi!!chr_poi!)
set input=!input:~1!
goto loop)

if not defined int set int=0
if defined wan set int=(!int!
if defined yi (if not defined wan set int=(!int!^))

if defined yi (
for /l %%i in (0,1,22) do (
set ch=!int:~%%i,1!
if "!ch!"==")" set /a index=%%i+1&&goto next)
) else set /a int=!int!&&goto end
:next
set int_yi=!int:~0,%index%!
set /a index=%index%+11
set int_re=!int:~%index%!
set /a int_yi=%int_yi%
set /a int_re=%int_re%
for /l %%j in (0,1,8) do (
set ch=!int_re:~%%j,1!
if "!ch!"=="" set /a zero=8-%%j&&goto next2)
:next2
if defined yi (
for /l %%k in (1,1,%zero%) do set int_re=0!int_re!
set int=!int_yi!!int_re!)

:end
echo %int%%poi%
