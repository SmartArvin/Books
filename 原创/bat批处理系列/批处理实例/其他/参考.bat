@echo off
color 0a
cls
set ·��=\\game\xz$

echo.���ڼ���Ƿ����ϱ�����... 
@net use J: "%·��%"
if exist J:\ goto nno
echo ĩ�����ϱ�����,����������ϵ.
pause>nul
exit
:nno
@net use /del J: >nul
:koko
cls
echo  ������������������������������������������������������������������������������
echo  ��  �������װ��Ĺ˿ͣ�                                                      ��
echo  ��                                                                          ��
echo  ��    ���~��                                                               ��
echo  ��    ������Ҫ�����ͼƬ���ĵ������,��Ϸ�浵....��������                 ��
echo  ��                                                                          ��
echo  ��    ���������ɵ���װ�л�ԭϵͳ�����������������ͻ���ʧ����              ��
echo  ��    �������Ҫ��������Ϸŵ�������Ϊ��׼���ġ�������������              ��
echo  ��                                                                          ��
echo  ��                                                                          ��
echo  ��               ע�����������������ϲ��ᱻ��ԭ�������κ�һ̨���Զ����Է��� ��
echo  ������������������������������������������������������������������������������
echo.
echo.
echo ����������˺ź�س�!�����û���˺������������½�һ���󰴻س������ʺŽ��ú������μǡ��Ա����´ε�½ʹ�á�
echo ---------------------------------------------------
set/p �û���=�û���:
echo ---------------------------------------------------
if %�û���% geq 1 goto start
echo MSGBox "�û�������Ϊ�������,����������!",48,"������ʾ��" >nos.vbs &&call nos.vbs &&del nos.vbs &&goto koko 
:start
set �û���|findstr "\<%search%\>" >nul
set search=%�û�% >nul
echo ������֤�û���%�û���%��
echo ���Ժ�........
if exist %·��%\%�û���% goto pass >nul
if not exist %·��%\%�û���% goto md >nul
:pass
rem ������֤
set errorlevel=>nul
echo �� ��%�û���%������û��Ѿ�����,��������������:
echo ---------------------------------------------------
set/p ����=����:
if %����% geq 1 goto yes
echo MSGBox "�������������,����������!",48,"��ܰ��ʾ��" >nos.vbs &&call nos.vbs &&del nos.vbs &&call %0
:yes
set ����|findstr "\<%pass%\>" >nul
set pass=%����% >nul
if errorlevel=1 cls &&echo MSGBox "���벻��Ϊ��Ŷ,����������ɣ���^_^",48,"��ܰ��ʾ��" >kong.vbs &&call kong.vbs  &&del kong.vbs &&call %0 
if exist %·��%\%�û���%\pass\%����% goto login >nul
if not exist %·��%\%�û���%\pass\%����% echo  MSGBox "������������������������ɣ���",48,"��ܰ��ʾ:" >run.vbs &&call run.vbs  &&del run.vbs &&call %0
:login
echo MSGBox "��ϲ~��������֤�ɹ�����ӭ���ĵ�¼! **�벻Ҫ�ϴ�ľ����Ŷ лл���ĺ�����***^_^",48,"��ܰ��ʾ��" 
cls
echo ���Ժ�.......
echo ����Ϊ��򿪡���������
NET USE u: /DELETE /YES >nul
net use u: %·��%\%�û���% /YES >nul
@explorer.exe u:\ 
exit
:md
echo     �û��������ڣ��Ƿ񴴽����û�?
echo.
echo   A: �������û�         B: ��������
echo.
set /p tw= >nul
if "%tw%"=="a" goto yesok
if "%tw%"=="A" goto yesok
if "%tw%"=="b" goto koko
if "%tw%"=="B" goto koko
:yesok
set errorlevel=>nul
echo ��Ϊ������û�����һ������:
echo ---------------------------------------------------
echo.
set/p ����=��     ��:
if %����% geq 1 goto oks
echo MSGBox "�������������,����������!",48,"��ܰ��ʾ��" >run.vbs &&call run.vbs  &&del run.vbs &&goto yesok 
:oks
set /p ����0=���ٴ�����:
if "%����0%"=="%����%" goto okss
echo MSGBox "�����������벻ͬ,����������!",48,"������ʾ��">no.vbs &&call no.vbs  &&del no.vbs &&goto yesok 
goto :yesok
:okss
set ����|findstr "\<%pass%\>" >nul
set pass=%����% >nul
if errorlevel=1 cls &&echo  MSGBox " ���벻��Ϊ��Ŷ,����������ɣ���^_^",48,"��ܰ��ʾ��" >run.vbs &&call run.vbs &&del run.vbs &&call %0 
md %·��%\%�û���% >nul
md %·��%\%�û���%\pass
attrib +h +s %·��%\%�û���%\pass
attrib +h +s %·��%\%�û���%
md %·��%\%�û���%\pass\%����%
echo MSGBox "��ϲ~�����ѳ�Ϊ�����ɡ��������������û����Ͽ��������ϷŽ�ȥ�ɣ�~*_^",48,"��ܰ��ʾ��"  >run.vbs &&call run.vbs &&del run.vbs >nul
cls
echo ���Ժ�.......
echo ����Ϊ��򿪡���������
NET USE u: /DELETE /YES >nul
net use u: %·��%\%�û���% /YES >nul
@explorer.exe u:\ 
exit

