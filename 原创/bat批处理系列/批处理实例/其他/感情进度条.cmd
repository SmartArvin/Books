@echo off
:: Code by  tao0610 2006-12-5 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=25345

set a=��&set b=69&set c=%% 
set space=                                                                      
:start
set a=%a%��
set/a b-=2
set/a num+=3
if %num%==12 set/a b-=1
call set space=%%space:~0,%b%%%
if %num% gtr 100 set num=���&&set c=
echo.
echo.
color fc
echo                     ����������      ��q��r   �ҩ�������
echo                     ���쳤����  �� /���Ũ�\ �� �멧��Զ��
echo                     ���ؾé���      ��  ��     �㩧ӵ�Щ�
echo                     ����������   �Ұ���һ����    ��������
echo   ���������......
echo  ������������������������������������������������������������������������������
echo  ��%a%%space%%num%%c%��
echo  ������������������������������������������������������������������������������
ping/n 2 127.1>nul
if "%num%" neq "���" cls&goto start
for /l %%a in (1,1,10) do color cf&ping/n 1 127.1>nul&color fc&ping/n 1 127.1>nul

