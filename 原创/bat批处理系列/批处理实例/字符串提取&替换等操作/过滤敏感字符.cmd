@echo off
:: ��������ȷ�����ض������
:: Code by 3742668 2006-9-10
:: Modified by jm 2006-9-12
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=22938
:start
setlocal
    cls
    set /p var=�������ַ�:
:: ��Ӧ���ڴ˴����һ�����˵��������ŵ����
:: �Է�ֹcall��ʱ�򣬰�����a"&b��%var%�����ǲ��е���������  -jm���
    set "var=%var:"=%"
    call :filter "%var%"
endlocal
goto start

:filter
setlocal
    set "str=%~1��"
    set "str=%str:|=%"
    set "str=%str:&=%"
    set "str=%str:"=%"
    echo �����Ժ���ַ�Ϊ: %str:~0,-1%
    pause
endlocal
goto :eof


��ص����£�


bat���������ַ�


����д bat��һ��С��Ϸ�����ֵ�ʱ���Ҿ��о���������� �����bat����ʵ�� ������������ַ����й��� ��ʱʹ�õļ��ַ�������
Codz: 
if "%1"=="Ҫ���˵��ַ�" echo ��������ǷǷ��ַ� 
��: if "%1"=="wrongpassword" echo ������� 

set errorlevel=0 
echo Ҫ���˵��ַ�|find "Ҫ���˵��ַ�" 
if "%errorlevel%"=="0" echo ����������ǷǷ��ַ� 
if "%errorlevel%"=="1" echo ���ַ������ڷǷ��б���



��Ҫ��ʹ�������ַ��� �����ַ������Թ������� �� Ӣ����ĸ ���� �� �����ַ� ��������

��Ҫ���ˡ�_+|-=\[]{};':,./">~`!@#$%^&*()_+|-=\[]{};':,./<>? ��(�����ո��tab��ֵ)��ʱ�� ����Ҫ����

Codz: 
echo "anyword"|find "anywrod"

ע�⵽��ʲô��ͬ���� �ǵ� ���Ǽ�����""������anyword ���ǹ��˵��˲�û��� ��������Ҫ���˵��ַ� ����ʲô�� �ǵ� ����" �ַ����� �ź����� ���ַ��� �޷������Ĺ���"�ַ����� ��" ȡֵ Ϊ���� �� ż���� ʱ�� ��find�������� ���� ������ ��ͬ���ܻᱨ��

������� ������ �Ұ���֮�� ���ڰ����� ����һ�� û�˻ش� 

��ʵ��Ҫ������ ��������ô�ļ� ������д������֤�����С���� �����ڲ�ͬ����³���ķ�Ӧ

������дһ����֤�����¼��С����

ע����������֤�ַ�Ϊph4nt0m��ʱ�� ��Ȩ��¼

Codz: 
@echo off 
cls 
:allyesno 
set errorlevel=>nul 
echo �������¼���� 
set/p password= 
echo "%password%"|findstr "ph4nt0m" 
if "%errorlevel%"=="0" echo ������ȷ&goto end 
echo �������&goto allyesno 
:end 
echo ��ɹ���¼ϵͳ



��bat����Ϊkey.batִ��

ִ�н��

Codz: 
C:test>key 
�������¼���� 
test 
������� 
�������¼���� 
ph4nt0m 
"ph4nt0m" 
������ȷ 
��ɹ���¼ϵͳ



��ʵ �� ����Ĵ�����������һ��Ŀ�����֤�Ѿ��㹻�� ���� Ҫ�ﵽ���ǵ�Ŀ�� �����ַ����˻�����
���ǻ�����ʽִ�п���

ִ�н��
Codz: 
C:test>key 
�������¼���� 
test 
������� 
�������¼���� 
" 
"""|findstr "ph4nt0m" 
������� 
�������¼���� 
ph4nt0m 
"ph4nt0m" 
������ȷ 
��ɹ���¼ϵͳ



�������� ����������" �ַ���ʱ�� ���򱨴��� ����ʾ������ Ϊʲô�������أ� �����ٿ���������﷨�ṹ echo "%password%"|findstr "ph4nt0m" ��%password%="��ʱ�� ����echo """|findstr "ph4nt0m"

֮���Ի���� ��echo�������й� ���ǿ����漸�����

Codz: 
I:>echo "|cd 
"|cd 

I:>echo ""|cd 
I: 

I:>echo """|cd 
"""|cd 

I:>echo """"|cd 
I:



��"Ϊ������ʱ�� ���ӡ���� ��"Ϊż����ʱ���� ִ�� | �ַ���������� �������ִ�е�������cd

����������һ���취�ƹ�echo�ı������� ����set������echo ��������

Codz: 
@echo off 
cls 
:allyesno 
set errorlevel=>nul 
echo �������¼���� 
set/p password= 
set |findstr "ph4nt0m" 
if "%errorlevel%"=="0" echo ������ȷ&goto end 
echo �������&goto allyesno 
:end 
echo ��ɹ���¼ϵͳ



ִ�н������

Codz: 
�������¼���� 
test 
������� 
�������¼���� 
" 
������� 
�������¼���� 
ph4nt0m 
password=ph4nt0m 
������ȷ 
��ɹ���¼ϵͳ 

C:\test>



�����һ����������

���ǻ���������D ���������� ��һ�ַ�ʽִ��

Codz: 
�������¼���� 
test 
������� 
�������¼���� 
ph4nt0mallyesno 
password=ph4nt0mallyesno 
������ȷ 
��ɹ���¼ϵͳ 

C:test>



���ڳ������֤��ʽ�� set |findstr "ph4nt0m" ����ֻҪ����ph4nt0m�ַ��� ���� ����������ȷ���� ��������ph4nt0mallyesno Ҳͨ����

Ϊ�˱���������� �������� ƥ�����\<\> �����ݽ��м��� �޸ĺ�ĳ��� ����

Codz: 
@echo off 
cls 
:allyesno 
set errorlevel=>nul 
echo �������¼���� 
set/p password= 
set |findstr "\<ph4nt0m\>" 
if "%errorlevel%"=="0" echo ������ȷ&goto end 
echo �������&goto allyesno 
:end 
echo ��ɹ���¼ϵͳ



ִ�н��

Codz: 
�������¼���� 
test 
������� 
�������¼���� 
ph4nt0mallyesno 
������� 
�������¼���� 
ph4nt0m 
password=ph4nt0m 
������ȷ 
��ɹ���¼ϵͳ 

C:test>



����ٽ����� ���� ���� 

Codz: 
@echo off 
cls 
:allyesno 
set errorlevel=>nul 
echo �������¼���� 
set/p password= 
rem ��������ַ�������������һ�ַ�_+|-=[]{};':,./">~`!@#$%^&*()_+|-=[]{};':,./<>? �����ʹ��ƥ��ģʽ<> 
rem ��Ҫ˫д���ַ� 
rem ��������Ϊ������ַ� " 
set password|findstr "\<ph4nt0m\>" 
if "%errorlevel%"=="0" echo ������ȷ&goto end 
echo �������&goto allyesno 
:end 
set password=>nul 
echo ��ɹ���¼ϵͳ



ע���������ַ��������ַ�\��ʱ�� ��Ҫ���ַ�˫д\\ 
�� set password|findstr "\<\\\>"
��¼��ʱ�� ֻ��Ҫдһ��\����Ҫ˫д

" �ַ� ��������Ϊ�����ַ��� ��������ַ�������������һ�ַ�_+|-=[]{};':,./">~`!@#$%^&*()_+|-=[]{};':,./<>? �����ʹ��ƥ��ģʽ\<\>