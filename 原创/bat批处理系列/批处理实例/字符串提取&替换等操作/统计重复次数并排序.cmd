@echo off
:: Ŀ�ģ�
::     SearchNet.TXT��ÿ��ֻ��һ������ͳ��ÿ�������ظ��������������ظ������ɸߵ�������
:: ˼·��
::     ����sort�����е�������Ȼ��ͳ���ظ��������� ��+�ظ����� �ĸ�ʽд����ʱ�ļ�tmp2.txt��
::     ��ȡ�ظ����������֣��Ը�����Ϊ���Ƚ����Ը������������ļ�����dir�����ļ���(���ظ�����)����д��tmp3.txt��
::     ������ȡtmp3.txt�е����ݣ�Ȼ����tmp2.txt�в�����tmp3.txt��ƥ��ļ�¼��д������
::     �˷����������������ʱ�ļ�������Ч�ʱȽϸ�
:: code by jm 2006-11-25 CMD@XP
:: ������http://bbs.wuyou.com/viewthread.php?tid=86487
set num=-1
sort<SearchNet.TXT>tmp1.txt
cd.>tmp2.txt
cd.>tmp3.txt
cd.>result.txt

:: ͳ���ظ�����
setlocal enabledelayedexpansion
for /f %%i in (tmp1.txt) do (
    set /a num+=1
    set second=!first!
    set first=%%i
    if not "!second!"=="" if !second! neq !first! (>>tmp2.txt echo !second!  !num!&set num=0)
)
>>tmp2.txt echo %first%  %num%

:: ���ظ���������
md tmp && pushd tmp
for /f "tokens=2" %%i in (..\tmp2.txt) do (
    cd.>%%i
    for /l %%j in (1,1,%%i) do echo.>>%%i
)
>..\tmp3.txt dir /o-s /b

:: ���ظ�������ȡ��¼
for /f %%i in (..\tmp3.txt) do (
    >>..\result.txt findstr " %%i$" ..\tmp2.txt
)
popd && rd /q /s tmp
del tmp1.txt tmp2.txt tmp3.txt
start result.txt
goto :eof

����ͳ���ַ����ָ�������������(����������ʱ�ļ�)

@echo off
:: ͳ��ÿ���ַ����ֵĴ�������������ִ��������ַ�
:: ˼·��
::     ͨ����ȡÿ��λ�ϵ��ַ�������ͳһ�� �ַ��� ��ͷ��ĳЩ��̬������
::     �����������ͬ�����Լ�һ�Σ�Ȼ��ͨ�� set �ַ�������һ������ȡ
::     ������ �ַ��� ��ͷ�Ķ�̬���������� for ���������set �õú�����
::     ����������ʱ�ļ�����������ĸ��������
::
::     code by ���κ� remarked by jm 2006-11-29
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25182

setlocal ENABLEDELAYEDEXPANSION
set str=adadfdfseffserfefsefseetsdmg
set /a m=0,n=0,l=0

call :loop

:: ����������ִ��������ַ�
for /f "tokens=1,2 delims==" %%i in ('set �ַ���') do (
        echo %%i=%%j
        if %%j GTR !l! set l=%%j& set m=%%i
)

echo.���ִ�������%m%=%l%
pause
goto :EOF

:loop
call set m=%%str:~%n%,1%%
if not defined m goto :EOF
set /a "�ַ���%m%+=1"
set /a n+=1
goto loop


@echo off
:: ͳ���ַ����ִ���
:: ˼·��
:: ���� �Ȱ��ַ������Ϊ�Կո�ָ��ĵ��ַ���ɵ��ַ�����
::      Ȼ����for�����̽��ÿ���ַ��ڴ��г��ֵĴ���
::      �˷�������������ʱ�ļ������������ַ����г��ֵ�
::      �Ⱥ�˳����ʾ
::
:: code by zxcv remarked by jm 2006-11-29
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25182

setlocal EnableDelayedExpansion
set str=adadfdfseffserfefsefseetsdg

rem ����ַ���
:analyze
set str_tmp=%str_tmp% %str:~0,1%
set str=%str:~1%
if not "%str%" == "" goto analyze

rem 
for %%i in (%str_tmp%) do call :exclude %%i

pause
exit

:exclude
for %%i in (%counted%) do if "%1"=="%%i" goto :eof
set counted=%counted% %1
call :count %1
goto :eof

:count
for %%i in (%str_tmp%) do if "%1"=="%%i" set /a %1+=1
echo %1 !%1!
goto :eof

@echo off
:: ͳ���ַ����ֵĴ���
:: ˼·��
::     ����ַ������Կո�ָ�������ַ���
::     ͨ�� shift ��call ��ͬ�Ĳ���������
::     set ����������������������ͳһ�Ŀ�ͷ
::     ���ͨ�� set ����ʾ��Щ����
::
::     code by redtek ;modified by zxcv ; remarked by jm 2006-11-29
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25182

setlocal EnableDelayedExpansion
set str=adadfdfseffserfefsefseetsdg

:loop
set str_tmp=%str_tmp% %str:~0,1% && set str=%str:~1%
if not "%str%" == "" goto loop

call :start %str_tmp%
set . 
echo ���ִ�������:%max%=%maxN%
pause
exit

:start
if [%1]==[] ( goto :eof ) else ( set /a  .%1+=1 )
if !.%1! GTR !maxN! set maxN=!.%1!&& set max=.%1
shift
goto :start

@echo off
:: �ۺ����Ϸ���������Ĵ�������
:: code by zxcv 2006-11-29
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25182

setlocal EnableDelayedExpansion
set str=adadfdfseffserfefsefseetsdgadadfdfseffserfefsefseetsdga

:loop
set str$=%str$% %str:~0,1%&set str=%str:~1%
if not "%str%" == "" goto loop

for %%n in (%str$%) do (
  set /a .%%n+=1
if !.%%n! GTR !maxN! set maxN=!.%%n!&&set max=%%n)
set .
echo ���ִ�������:%max%=%maxN%
pause
exit

@echo off&setlocal
:: sort֮��ͨ���Ƚ���һ��ȡ�������ݺ���һ�ε������Ƿ������ͳ���ظ�����
:: ���ͬʱ���汾�κ��ϴε�������Ҫ�ܴ�ļ���
:: ע��Ҫ�Ѵ����ĳ�ֵ����Ϊ1��for���ĺ�����֮���ܽ����������
:: code by bagpipe  2006-12-16 remarked by JM
:: ������http://bbs.wuyou.com/viewthread.php?tid=86487
set /a n=1
for /f %%a in ('type 1.txt^|sort') do (
call :pp %%a
)
:pp
if not defined bb goto b
if "%bb%"=="%1" (set /a n+=1) else (>>ko.txt echo %bb%  %n%��&set /a n=1)
:b
set bb=%1
goto :eof

@echo off&setlocal enabledelayedexpansion
:: �������ܵĴ���
:: �� for /l ������ÿ�� findstr ���ַ����ȣ�
:: Ȼ���ͬһ���ȵ��� sort �����򣬴Ӷ�ͻ����
:: sort ֻ�ܰ��ַ�λ��С��������һ����
:: code by bagpipe 2006-12-16 remarked by JM
:: ������http://bbs.wuyou.com/viewthread.php?tid=86487
set a=[0-9]
for /l %%a in (1,1,3) do (
call :pp !a!
set a=!a![0-9]
)
goto c
:pp
for /f %%x in ('findstr "^%1$" aa.txt^|sort') do @echo %%x >>dd.txt
goto :eof

:c
set /a n=1
for /f %%a in ('type dd.txt') do (
call :pp %%a
)
:pp
if not defined bb goto b
if "%bb%"=="%1" (set /a n+=1) else (>>ko.txt echo %bb%  %n%��&set /a n=1)
:b
set bb=%1
goto :eof