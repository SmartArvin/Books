:: ����ҽ��Сдת��д
:: qzwqzw@bbs.cn-dos.net
:: 2007-01-01
::������http://www.cn-dos.net/forum/viewthread.php?tid=26230
@echo off
setlocal EnableDelayedExpansion

set tbl1=��Ҽ��������½��ƾ�
set tbl2=�ֽ�Ԫʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ

:test_
setlocal
set /p num=�������С��һ����Ԫ��:

for /f "tokens=1,2 delims=." %%f in ("%num%") do (
    set num2=%%g00
    set num=%%f!num2:~0,2!
)

:loop
call set rmb=%%tbl1:~%num:~-1,1%,1%%%%tbl2:~%bit%,1%%%rmb%
set /a bit+=1
set num=%num:~0,-1%
if not "%num%"=="" goto loop

set rmb=%rmb:��ʰ=��%
set rmb=%rmb:���=��%
set rmb=%rmb:��Ǫ=��%
set rmb=%rmb:����=��%
set rmb=%rmb:����=��%

set rmb=%rmb:��Ԫ=Ԫ��%
set rmb=%rmb:����=����%
set rmb=%rmb:����=����%
set rmb=%rmb:����=��%

set rmb=%rmb:���=��%
set rmb=%rmb:���=��%
set rmb=%rmb:����=��%
set rmb=%rmb:����=��%

echo �����%rmb%

endlocal
goto test_



:: ���ֽ��ת��д
::code by youxi01@cn-dos.net
::date 2006-1-1(Happy new year!best wishes to everyone!)
::������http://www.cn-dos.net/forum/viewthread.php?tid=26230
@echo off
setlocal enabledelayedexpansion
set /a a=0,b=0,c=0

::================================
::���õ�λ���ƣ�
SET NAME0=Ǫ
SET NAME1=��
SET NAME2=ʰ
SET NAME3=
::================================

::=============================================
::�������ֶ�Ӧ�Ĵ�д���ĺ���
for %%i in (�� Ҽ �� �� �� �� ½ �� �� ��) do (
     set BIG!a!=%%i
     set /a a+=1)
::=============================================

::=======================================================================
::�����¡��������Ĵ�������У�Ҫ�õ�"#"�����ֽ��ж���(������λ)���Ա��ȡ��
::�������÷��ǳ���"#"�ĵط�������Ϊ�ա�
set BIG#=
::=======================================================================

set EN=

::====================================================
::�������������ֽ��д����ֱ�ȡ���������ֺ�С������;

set /p EN=�������Ǯ��(1000������)��
for /f "tokens=1,2* delims=." %%i in ("%EN%") do (
      set "round=%%i"
      set "dec=%%j00" 2>nul)
::=====================================================
set /a round=%round:,=%
set dec=%dec:~0,2%

:test
   set /a b+=1
   ::=============================================
   ::ÿ��λ����Ϊһ�飬��ԭ�������ݽ��н�ȡ��
   if %round% gtr 9999 (
      set num!b!=!round:~-4!
      set round=!round:~0,-4!
      goto :test) else set num!b!=!round!
   ::==============================================

::=====================================================
::�ֱ��1��2��3�����ݽ��д����ֱ��赥λ��Ԫ������
::ͬʱ���ֱ𽫷��ص����ݴ���str1,str2,str3(����%3������)��
call :test1 %num1% Ԫ 1
call :test1 %num2% �� 2
call :test1 %num3% �� 3
::======================================================

::====================================================================
::ȥ�����ִ�д������"��"�����磬1002������������Ϊ��"Ҽǧ�㷡Ԫ��"
::���������й���һ��Ķ�������;ͬʱ������ֱ���str1,str2,str3(%2����)��
call :test2 %str1% 1
call :test2 %str2% 2
call :test2 %str3% 3
::=====================================================================

::==============================================================
::��ֹ����2,0000,1002.00��ʽ���ִ���(�����Ϊ��2����1ǧ��2Ԫ��)
if "!str2!"=="����" set str2=��
::===============================================================

set str=%str3%%str2%%str1%
set str=%str:��Ԫ=Ԫ%
set str=%str:����=��%
set str=%str:����=��%

::��ֹ��������Ϊ0��
if "%str%"=="Ԫ" set str=��Ԫ

::��С���������ֽ��д���
if "%dec%"=="00" (set dec=��) else (
    set /a dec1=!dec:~0,1!
    set /a dec2=!dec:~1,1!
    if !dec1! EQU 0 (set dec1=��) else call set dec1=%%BIG!dec1!%%��
    if !dec2! EQU 0 (set dec2=) else call set dec2=%%BIG!dec2!%%��
    set dec=!dec1!!dec2!
)
echo.
echo ========================
echo ������Ľ�Ǯ��Ŀ��дΪ��
echo.
echo %str:����=��%%dec%
echo ========================
pause>nul

:test1
    if not "%1"=="" (
        set temp=####%1
        set temp=!temp:~-4!
        for /l %%i in (0 1 3) do (
               set tmp%%i=!temp:~%%i,1!
               if defined tmp%%i (
                  if !tmp%%i! GTR 0 (call set str%3=!str%3!%%BIG!tmp%%i!%%!NAME%%i!) else (
                         call set str%3=!str%3!%%BIG!tmp%%i!%%)))
       set str%3=!str%3!%2
       ) else set str%3=
     goto :eof

:test2
     set tmp=%1
     set tmp=%tmp:����=��%
     set str%2=%tmp:����=��%
     goto :eof