@echo off
goto run

�����������ģ���һ���ı��ļ����������������
accident
n.��������,�¹ʣ�����(����)
across
prep.�����Խ�����ڵĶ��� ad.���������
active
adj.��Ծ�ģ����ݵģ������ģ��ڻ�е�
advertise
vt.���棬������Ϊ...����� vi.�ǹ��
after
prep.��...�Ժ���...���� adv.�Ժ󣬺���
����ô���ܰ����ŵ�����һ���ļ��У�������Ϊ��
accident     n.��������,�¹ʣ�����(����)
across     prep.�����Խ�����ڵĶ��� ad.���������
active     adj.��Ծ�ģ����ݵģ������ģ��ڻ�е�
advertise     vt.���棬������Ϊ...����� vi.�ǹ��
after     prep.��...�Ժ���...���� adv.�Ժ󣬺���

����ⷨ��
@echo off
:: code by jm 2006-9-21 CMD@XP
set /a num=1
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in (1.txt) do (
    set /a num+=1
    set /a mod=!num!%%2
    if !mod! equ 1 (set var=%%i) else (set str=%%i)
    if !mod! equ 1 echo !str!    !var!
)
pause
goto :eof

�������Ч�Ľⷨ��
:run
@echo off
:: code by 3742668 2006-9-21 CMD@XP
setlocal ENABLEDELAYEDEXPANSION
for /f "delims=" %%i in (1.txt) do (
    if "!str!" == "" ( set str=%%i
                     ) else (
                             echo !str!    %%i
                             set str=
                            )
    )
pause