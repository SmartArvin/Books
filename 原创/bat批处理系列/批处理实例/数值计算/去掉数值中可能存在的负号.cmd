:: ȥ��ĳ����ֵ���ܴ��ڵĸ���
:: Ҫ����ʹ���ַ����滻��估if���
@echo off
:: Code by qzwqzw 2007-1-17 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26802
set /p a=input
:: aȡֵ�������޸���Сһ��
set /a b=(a*2+1)%%2*a 
ecoh %b%
:: ����ʹ����λ��������
:: set /a "b=(a^(a>>31))-(a>>31)"
pause
goto :eof

@echo off
:: Code by JM 2007-1-16 CMD@XP
set input=
set /p input=������ʵ����
for /f "tokens=* delims=-" %%i in ("%input%") do echo %%i
pause

