@echo off
:: ������ʾ���룬�ܴ��� ����+��ĸ(���ִ�Сд)+���� ��ʽ�Ļ��������
:: ���ִ�Сд
:: �ԼӸ��죬����ʵ�������ö�٣�
:: ���ܴ�����ַ���
:: �ܵ����ţ�|
:: �ض�����ţ�<��>
:: ���ӷ��ţ�&
:: ���ֻ����ݷ��ţ�%��^
:: �������ţ�?��*��)��=��;��"
:: code by jm 2006-9-7 CMD@XP
cls
set input=
set /p input=           ������һ���ַ��� 
set output=
if not "%input%"=="" set input=%input%
:loop
for %%i in (0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ` ~ ! @ # $ ^( - + . / \ [ ] { } : ') do (
    (if %input:~-1% equ %%i set output=%output%%%i)&&set input=%input:~0,-1%
)
if not "%input%"=="" goto :loop
echo        ������ʾ���룬����� %output%
pause