@echo off
:: Ŀ�ģ���������������ֵ�����ǲ�ʹ����ʱ����
:: Code by JM 2007-1-24 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=27078

set var1=abc
set var2=123
echo ����ǰ�� var1=%var1% var2=%var2%
set var1=%var2%& set var2=%var1%
:: & ���� && Ҳ����
echo ������ var1=%var1% var2=%var2%
pause

:: ���������ֵ����ֵ�����н�����������ķ�����
:: ��һ�ַ�����

set /a num1=123,num2=456
echo ����ǰ�� num1=%num1% num2=%num2%
set /a num1=%num2%,num2=%num1%
:: set num1=%num2%& set num2=%num1% Ҳ�ǿ��Ե�
echo ������ num1=%num1% num2=%num2%
pause

:: �ڶ��ַ�����
:: ������ֵ��Χ�����ƣ��� num_a �� num_b �ĺͱ�����2^-31~2^31-1�����Χ��
set /a num_a=123,num_b=456
echo ����ǰ�� num_a=%num_a% num_b=%num_b%
set /a num_a=%num_a%+%num_b%-%num_a%,num_b=%num_a%+%num_b%-%num_b%
echo ������ num_a=%num_a% num_b=%num_b%
pause

:: ���ϴ����������ͬһ����еı���ֵ���Ժ������вŻᷢ���仯���ص�(���˱����ӳٵ����)

@echo off
:: �����������������
:: Code by pengfei 2007-1-24 CMD@XP
set a=2
set b=3
echo a=%a%  b=%b%
set /a "a=b^a"
set /a "b=b^a"
set /a "a=b^a"
echo a=%a%  b=%b%
:: ���������������ı�
set /a a=a+b
set /a b=a-b
set /a a=a-b
echo a=%a%  b=%b%
pause