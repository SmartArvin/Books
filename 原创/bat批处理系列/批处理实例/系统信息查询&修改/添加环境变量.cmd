set regpath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
::ϵͳ��������
::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
::�û���������
::HKEY_CURRENT_USER\Environment
reg add "%regpath%" /v "<name>" /d "<data>"

:: �������<>�����������Ҫ��������ƺ�ֵ�Ϳ�����