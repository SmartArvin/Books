@echo off
:: Ŀ�ģ�
:: ����test.txt�б�����Ǵ���ֵ���ݣ�һ��һ����¼����������ϵĺ͡�
:: Ҫ���ʽ �������ʽ=�� ������ 1+2+3=6��
:: 
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26180
@echo off
:: ʹ�õݹ�
:: Code by qzwqzw 2006-12-31 CMD@XP
setlocal enabledelayedexpansion

for /f %%n in (test.txt) do (
    set /a i+=1
    set gn!i!=%%n
)
set gn
pause

for /l %%j in (1,1,%i%) do call :rec %%j
pause
goto :eof

:rec
setlocal

call set tmp=%%gn%1%%
set /a sum+=%tmp%
set /a lvl+=1
if %lvl% gtr 1 (
    set exp=%exp%+%tmp%
    set /a idx+=1
    echo !idx!:!exp!=%sum%
) else (set exp=%tmp%)

set /a nxt=%1+1
for /l %%j in (%nxt%,1,%i%) do call :rec %%j

endlocal & set idx=%idx%
goto :eof

@echo off&setlocal enabledelayedexpansion
:: modified by tao0610 2007-1-4
:: ����qzwqzw�Ĵ����޸Ķ������ܿ�FOR��Ƕ�׺�CALL�ݹ飬Ч������������
set n=1
for /f %%n in (test.txt) do (
    set /a i+=1
    set str!i!=%%n
)
set str
pause&echo.

:loop
set/a n+=1
if not defined str%n% goto end
for /f "tokens=1* delims==" %%a in ('set result 2^>nul') do (
set/a x+=1
set result!x!=%%b+!str%n%!
)
set/a f=n-1
if not defined flag!str%n%! for /l %%j in (1,1,%f%) do (
set/a x+=1
set result!x!=!str%%j!+!str%n%!
)
set/a flag!str%n%!+=1
goto :loop

:end
for /f "tokens=1* delims==" %%a in ('set result 2^>nul') do (
set/a id+=1
set/a %%a=%%b
echo !id!:%%b=!%%a!
)
pause&goto :eof
