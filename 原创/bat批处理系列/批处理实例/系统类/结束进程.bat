@echo off
echo                      ��������޷������Ľ���
title                           ��������
color fc
echo                       ��ѡ������ķ���
set tm1=%time:~0,2%
set tm2=%time:~3,2%
set tm3=%time:~6,2%
echo                    ����ʱ�䣺%tm1%��%tm2%��%tm3%��
echo                  ���� 1 �󰴻س��������������Ľ���
echo                  ���� 2 �󰴻س���, �������ѵĽ���
echo                  ���� 3 �󰴻س�����ѡ���˳�
echo                  ��ӭ����ǳ�������
echo                  ��վ:bbs.verybat.cn
echo                                           by������
echo.
@set /p start=��ѡ�� (1��2��3=�˳�) �󰴻س���:
if "%start%"=="1" goto 1
if "%start%"=="2" goto 2 
if "%start%"=="3" goto 3
:1
start taskmgr.exe
set/p a=������������̵�����(��Ҫ������̺����.exe):
taskkill /f /im %a%.exe
@taskkill /f /im taskmgr.exe
cls
echo �Ѿ�������....
pause>nul
exit
:2
start taskmgr.exe
set/p a=������������̵�����(��Ҫ������̺����.exe):
ntsd -c q -pn %a%.exe
@taskkill /f /im taskmgr.exe
cls
echo �Ѿ�������....
pause>nul
exit
:3
exit