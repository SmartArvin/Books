@echo off
:: ����ϵͳ���ݣ��Զ�����ʾ��Ϣ
:: �����������ܵ� C#��������Ҫ .NET Framework 2.0 ����֧��
:: ������C:\Windows\System32\acwizard.ico�Լ������Լ�ϵͳ����ʵ���ڵ� .icoͼ�꣬�����������
:: Code by electronixtar 2007-1-15 CMD@XP
:: ������http://www.cn-dos.net/forum/viewthread.php?tid=26751

set "dnfpath=C:\Windows\Microsoft.NET\Framework"
set "est=DO_NOT_ZT_WITHOUT_PERMISSION"
for /f "delims=" %%v in ('dir /ad /b %dnfpath%\v?.*') do (
         if exist "%dnfpath%\%%v\csc.exe" set "cscpath=%dnfpath%\%%v\csc.exe"
)

< "%~f0" more +17 > "%temp%\estTrayTip.cs"
%cscpath% "/out:%cd%\estTrayTip.exe" "%temp%\estTrayTip.cs"
estTrayTip.exe C:\Windows\System32\acwizard.ico ��ʲô�� û������������û������������������Ϣ���������˰ɣ������˶�electronixtar�����ӡ� 2
:exe�Ĳ������ͣ�estTrayTip.exe ͼ��·�������⡡���ݡ���ʾͼ������Error��Info��None��Warning������ȡ2=Info��ÿ��������������ȷ��д
>nul ping 127.1 -n 1
del estTrayTip.exe

goto:eof

:estTrayTip

using System;
using System.Windows.Forms;
using System.Drawing;

namespace estTrayTip
{
    class Program
    {
        static void Main(string[] args)
        {
            NotifyIcon estIcon = new NotifyIcon();
            estIcon.Icon = new Icon(args[0]);
            estIcon.Visible = true;
            ToolTipIcon estToolTipIcon = new ToolTipIcon();
            switch(args[3])
            {
                case "1": 
                    estToolTipIcon = ToolTipIcon.Error; break;
                case "2":
                    estToolTipIcon = ToolTipIcon.Info; break;
                case "3":
                    estToolTipIcon = ToolTipIcon.None; break;
                case "4":
                    estToolTipIcon = ToolTipIcon.Warning; break;
            }
            estIcon.ShowBalloonTip(1,args[1],args[2],estToolTipIcon);
        }
    }
}
