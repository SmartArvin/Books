@echo off
for /f "delims== tokens=1*" %%a in (1.ini) do (
        if not "%%b"=="" (
                if not "%%a"=="���ศ��" (echo\%%a=%%b>>new.ini) else (
                for /f "delims=" %%v in ('find "���ศ��" ^<2.ini') do echo\%%v>>new.ini
                )
        ) else (echo\%%a>>new.ini)
)
del 1.ini
ren new.ini 1.ini