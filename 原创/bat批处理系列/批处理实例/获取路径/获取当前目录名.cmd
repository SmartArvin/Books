@echo off
:: ��ȡ��ǰĿ¼��
:: ��·���к��пո񡢸�̾�š���š�&��~��ʱ��Ҳ����ȷ��ȡ
set "cd_=%cd%"

:loop
set "cd_=%cd_:*\=%"
set "cd_tmp=%cd_:\=%"
if not "%cd_tmp%"=="%cd_%" goto loop
echo "%cd_%"
pause