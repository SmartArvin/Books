@Echo Off
:send
Set /p num=������Է���QQ����:
If /I "%num%"=="n"  Exit
start tencent://Message/?Uin=%num%
cls
Goto send
