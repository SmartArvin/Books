:: Replacer 2.62 Pre-release
:: www3.telus.net/_/replacer/
:: Email: undefined@telus.net

::ϵͳ�ļ��滻
::est���룬����

@echo off
title Replacer
:: Check operating system
:: ������ϵͳ�汾
ver | find "NT" >nul && (
echo/ ! Windows NT not supported.
pause >nul
goto:eof
)
setlocal disabledelayedexpansion enableextensions

:: Use components, if they exist
:: ������齨�Ļ���ʹ���齨
if exist "%~dp0Components\*.exe" (
set "path=%~dp0Components;%path%"
title Replacer *
) else (
set "path=%windir%\system32;%path%"
)

:: Temporary directory
:: ��ʱ�ļ���
set "dir=%~dp0.ReplacerTemp"
:: Use %tmp% for read-only media
:: �����ֻ���洢������ʹ�� %tmp% 
if not exist "%dir%" md "%dir%" 2>nul || (
set "dir=%tmp%\.ReplacerTemp"
md "%tmp%\.ReplacerTemp" 2>nul
)

:: Flags used to communicate with other scripts
:: �������ű�ͨѶ��flags
set flg="%dir%\..\.Flag_SafeToDel"
set fl2="%dir%\.Flag2_SafeToDel"
:: Files extracted
:: �������ļ�
set vbs="%dir%\Clear_WFP_Message.vbs"
:: Stores rewritten script
:: ������д�ű�
set "scr=%dir%\.CurrentScript"
:: Stores undo commands, incase system doesn't boot
:: ���泷���������ϵͳ������
set und="%windir%\ReplacerUndo.txt"
:: Stores deleted file
:: ����ɾ�����ļ�
set del="%dir%\DeletedFile_SafeToDel"

call:brk Purge

:: The additional VBScript is embedded at the bottom
:: ����vbsǶ�������
findstr/rc:"^[        ]" "%~0" >%vbs% 2>nul || (
echo/ ! Embedded file could not be extracted. Try using the Components package from:
echo/   http://www3.telus.net/_/replacer/Components.zip
echo/
echo/Press any key to quit.
pause >nul
call:brk Now
)

:: Check parameters
:: ������
if '%1'=='' (
goto:sys
) else (
echo/"%*" | find "?" >nul && (
  goto:hlp) || (if not '%2'=='' goto:hlp)
)

:scr Manage scripts
cls
title Replacer : %~n1
echo/Checking script...
echo/
call:chk "%~f1" || call:brk
pushd "%~dp1"
:: All scripts must contain a certain string to prevent binary files
:: from accidentally being specified and read as scripts
:: ���нű��������һ���ض����ַ����Ա���������ļ�������Ϊ�ű�
find/i ";; ReplacerScript" "%~f1" >nul 2>&1 || (
  echo/ ! Invalid Replacer script. It does not contain ";; ReplacerScript".
  echo/
  call:brk
)
copy/v/y "%~f1" "%scr%" >nul
:: Get script format and prompt for each optional file
:: ��ýű��ṹ����ʾÿ����ѡ�ļ�
for /f "usebackq tokens=1,2,3,4 delims=, eol=;" %%a in (
  "%scr%") do (
  setlocal
  call:idt "%%~b" "%%~c" "%%~d" "%%~a" && (
   call:exm "%%~a" && call:opt "%%~a"
  )
  endlocal
)
if not exist "%scr%-tmp%" (
  type nul > "%scr%-tmp"
)
copy/v/y "%scr%-tmp" "%scr%" >nul
:: Count files that will be replaced
:: �����ж��ٸ��ļ����滻
for /f "tokens=3 delims=:" %%* in (
  'find/c /v "" "%scr%"') do (
  if "%%*"==" 0" (
   echo/ ! No files to replace.
   echo/
   call:brk
  ) else (
   echo/
   echo/%%* file^(s^) will be replaced.
  )
)
echo/
echo/Press any key to start the script.
pause >nul
cls
:: Print and replace each file
:: ��ʵ���滻ÿ���ļ�
call:vbs
for /f "usebackq tokens=1,2,3,4 delims=, eol=;" %%a in (
  "%scr%") do (
  setlocal
  echo/ * %%~a:
  :: Tokens are: SysFile,Replacement,Ref#,Optional
  :: ���ƻ�Ϊ��ϵͳ�ļ����滻Դ������#����ѡ��
  call:seq "%%~a" "%%~b" "%%~c" "%%~d"
  echo/
  endlocal
)
type nul > %flg%
echo/
echo/Complete. Reboot to see changes.
echo/Press any key to quit.
pause >nul
del "%scr%"
del "%scr%-tmp"
call:brk Now

:sys Get system file
cls
set "sys="
echo/Drag the ORIGINAL system file to replace into this window.
echo/Then, press enter to continue.
echo/Or, type Q to quit.
call:get sys || goto:sys
call:quo sys
if /i %sys%=="Q" (
  call:brk Now
)
:: If only filename provided, scan for closest match
:: ���ֻ�ṩ���ļ�������Ѱ������ʵ�ƥ��
if %sys:\=%==%sys% (
  if not %sys:.=%==%sys% (
   call:scn %sys%
  )
)
if defined pth (
  for %%* in (%sys%) do (
   set sys="%pth%%%~nx*"
  )
)
call:chk %sys% || (
  echo/Press any key to continue.
  pause >nul
  goto:sys
)
:: Check if a script was given as system file
:: ��������Ľű��Ƿ�Ϊϵͳ�ļ�
for %%* in (%sys%) do (
  if /i "%%~x*"==".txt" (
   find/i ";; ReplacerScript" %%* >nul && (
    call:scr %%*
   )
  )
)
call:ver %sys% || goto:sys

:mod Get replacement file
cls
set "mod="
echo/Drag the REPLACEMENT %nam% into this window.
if exist %bak% (
  echo/Or, type RESTORE to restore the backup of %nam%.
)
echo/Then, press enter to continue.
echo/Or, type Q to quit.
call:get mod || goto:mod
call:quo mod
if /i %mod%=="Q" call:brk Now
if /i %mod%=="RESTORE" (call:rst || goto:mod)
call:chk %mod% || (
  echo/Press any key to continue.
  pause >nul
  goto:mod
)
if /i %mod%==%sys% (
  echo/ ! A file cannot replace itself.
  echo/
  echo/Press any key to continue.
  pause >nul
) && goto:mod

:cnf Confirm operation
cls
if %mod%==%bak% (
  echo/File will be restored.
) else (
  if exist %bak% (
   echo/File will not be backed up, backup already exists.
  ) else (
   for %%* in (%sys%) do (
    echo/File will be backed up to:
    echo/"%%~dpn*.backup"
   )
  )
)
echo/
echo/The current file:
echo/%sys%
echo/will be replaced with:
echo/%mod%
echo/
echo/Continue? ^(Y/N^)
call:get cnf || goto:cnf
call:quo cnf
if /i not "%cnf:~1,1%"=="Y" call:brk Now
cls

:vbs Start VBScript
:: A flag tells the VBScript when to exit, so WFP messages can still
:: be cleared after Replacer.cmd exits
:: һ��flag���Ը���vbs��ʱ�˳�����ô�����������˳�ʱ Windows�ļ�������WFP���Ͳ�������ʾ
if exist %flg% del %flg%
if not "%atr%"=="non" (
  start "" /belownormal wscript //b %vbs% %flg% || (
   echo/VBScript failed:
   echo/%vbs%
   echo/
  )
)
if exist "%scr%" exit/b

:rep Replace file
if exist %und% del/f %und%
if not exist "%scr%" (
  echo/ * %nam%:
)
:: Overwrite system files with replacement
:: ��ϵͳ�ļ��滻�ˣ�
if /i not %mod%==%bak% (
  if not exist %bak% (
   echo/   - Backing up...
   call:cpy %sys% %bak%
  )
)
:: Not all files are protected
:: �������е��ļ����Ǳ�������
if not "%atr%"=="non" (
  if exist %dll% (
   echo/   - Copying to DllCache...
   call:cpy %mod% %dll%
  )
  if exist %spf% (
   echo/   - Copying to ServicePackFiles...
   call:cpy %mod% %spf%
  )
  if exist %c86% (
   echo/   - Compressing to i386 folder...
   call:cpy %mod% %fil%
   call:cab %fil% %c86%
  )
  if exist %w86% (
   echo/   - Compressing to Windows i386 folder...
   call:cpy %mod% %fil%
   call:cab %fil% %w86%
  )
  if exist %d86% (
   echo/   - Copying to Driver Cache...
   call:cpy %mod% %d86%
  )
)
if /i %mod%==%bak% (
  echo/   - Restoring system file...
) else (
  echo/   - Replacing system file...
)
:: Simply renaming files circumvents WFP:
:: http://virtualplastic.net/html/art_hack.html#winxp
:: �򵥵İ�WFP�ļ�������
if exist %dlp% del/f %dlp% 2>nul
ren %sys% %dln% 2>nul || (
  echo/   ! Overwrite failed.
  echo/
  call:brk
)
del/f %dlp% 2>nul || (
  echo/   ! Warning: Temporary file could not be removed:
  echo/     %dlp%
)
call:cpy %mod% %sys%
if exist "%scr%" (
  exit/b
) else (
  type nul > %flg%
)

:fin Finished
echo/
echo/
echo/Complete. Reboot to see changes.
echo/Press any key to quit.
pause >nul
call:brk Now

goto:eof


:get Get input (var)
echo/
set/p "%~1= > " || exit/b1
echo/
exit/b

:quo Quote variable (var)
:: An ugly yet reliable method of removing quotes
:: һ������ª�����Ǻܿɿ���ɾ�����ŵķ���
call set "quo=%%%1%%"
set "quo=###%quo%###"
set "quo=%quo:"###=%"
set "quo=%quo:###"=%"
set "quo=%quo:###=%"
set %1="%quo%"
set "quo="
exit/b

:chk Check file (file)
if not exist %1 (
  echo/ ! File does not exist:
  echo/   %1
  echo/
  exit/b1
)
if exist %1\ (
  echo/ ! Folders not allowed:
  echo/   %1
  echo/
  exit/b1
)
echo/%1 | find "*" >nul && (
  echo/ ! Wildcards ^(*^) not allowed.
  echo/
  exit/b1
)
echo/%1 | find "?" >nul && (
  echo/ ! Wildcards ^(?^) not allowed.
  echo/
  exit/b1
)
exit/b0

:ver Verify file (file)
for %%* in (nam atr bak dll spf
  cab c86 w86 fln d86 dln) do set "%%*="
:: Filename
:: �ļ���
set "nam=%~nx1"
:: File path
:: �ļ�·��
set "pth=%~dp1"
call:\\%~n1 >nul 2>&1 || (
  :: Whether the file is protected
  :: �ļ��Ƿ񱻱���
  set "atr=wfp"
)
:: Some files have special filenames when used by WFP
:: ��Щ�ļ���WFP������ʱ����������ļ���
if not defined fln set "fln=%~nx1"
set "pth=%pth%%nam%"
:: Backup file
:: �����ļ�
set bak="%~dpn1.backup"
:: Files to replace
:: Ҫ�滻���ļ�
set dll="%windir%\system32\dllcache\%fln%"
set spf="%windir%\servicepackfiles\i386\%fln%"
set "cab=%fln%"
set "cab=%cab:~0,-1%_"
set c86="%systemdrive%\i386\%cab%"
set w86="%windir%\i386\%cab%"
set d86="%windir%\Driver Cache\i386\%fln%"
:: Temporary copy used when compressing file
:: ѹ���ļ�ʱ����ʱ����
set fil="%dir%\%~nx1"
:: Temporary name given to system file
:: ϵͳ�ļ�����ʱ����
set dln="%~nx1_SafeToDel"
set dlp="%~f1_SafeToDel"
exit/b0

:rst Restore backup
if not exist %bak% (
  echo/ ! Backup does not exist:
  echo/   %bak%
  echo/
  echo/Press any key to continue.
  pause >nul
  exit/b1
) else (
  set "mod=%bak%"
)
exit/b0

:cpy Copy file (source, target)
if not %2==%sys% (
  attrib -h -r -s %1
  if exist %2 (
   attrib -h -r -s %2
  )
)
copy/v/y %1 %2 >nul 2>&1 || (
  echo/ ! Copy failed.
  echo/
  call:brk
)
:: Write to undo file
:: д�볷���ļ�
if /i not %1==%bak% (
  if /i not %2==%bak% (
   >>%und% echo/del %2
   >>%und% echo/copy %bak% %2
  )
)
exit/b

:cab Compress file (source, target)
attrib -r -s -h %2
:: Overwrite compressed backup files (generally in i386 folders)
:: ����ѹ���ı����ļ���ͨ���� i386 Ŀ¼��
makecab/v1 %1 %2 >nul 2>&1 || (
  echo/ ! Compress failed.
  echo/
  call:brk
)
del %fil% 2>nul
exit/b

:hlp Display help
echo/Replaces protected system files.
echo/
echo/ Usage:
echo/  %~n0 "ScriptFile"
echo/
echo/ Example:
echo/  %~n0 "C:\Replacer\Script.txt"
echo/
echo/ Script syntax:
echo/  ;; ReplacerScript
echo/  ; Comment
echo/  SystemFileName [,ReplacementFile] [,Reference#] [,Optional]
echo/
echo/ Script example:
echo/  ;; ReplacerScript
echo/  ; Replace Notepad, Calc, Paint
echo/  notepad.exe,notepad.new
echo/  calc.exe,files\calc.new
echo/  mspaint.exe,"C:\Files\paint.new"
echo/  ; Prompt to optionally restore Notepad from backup
echo/  notepad.exe,RESTORE,Optional
echo/
echo/ See readme.txt for ReferenceNumber details.
exit/b

:idt Identify script format (last 3 tokens, sys)
:: Ugly method of determining which tokens are which
:: ����Ӧ���ƻ��ġ���ª������
set "sys=%~4"
if /i "%~1"=="Restore" (
  if "%~2" LSS "9" (
   if "%~2"=="" (
    set "typ=R--"
   ) else (
    if "%~2" GEQ "0" (
     if /i "%~3"=="Optional" (
      set "typ=RNO"
     ) else (
      if /i "%~3"=="" (
       set "typ=RN-"
      )
     )
    )
   )
  ) else (
   if /i "%~2"=="Optional" (
    set "typ=R-O"
   )
  )
) else (
  if "%~1" LSS "9" (
   if "%~1"=="" (
    set "typ=---"
   ) else (
    if "%~1" GEQ "0" (
     if /i "%~2"=="Optional" (
      set "typ=-NO"
     ) else (
      if /i "%~2"=="" (
       set "typ=-N-"
      )
     )
    )
   )
  ) else (
   if /i "%~1"=="Optional" (
    set "typ=--O"
   ) else (
    if "%~2" LSS "9" (
     if "%~2"=="" (
      set "typ=M--"
     ) else (
      if "%~2" GEQ "0" (
       if "%~3"=="" (
        set "typ=MN-"
       ) else (
        if /i "%~3"=="Optional" (
         set "typ=MNO"
        )
       )
      )
     )
    ) else (
     if /i "%~2"=="Optional" (
      set "typ=M-O"
     )
    )
   )
  )
)
if not defined typ (
  echo/ ! Format of line unknown.
  echo/
  exit/b1
) else (
  call:\%typ% "%~1" "%~2" "%~3"
)
exit/b0

:exm Examine script (sys)
call:scn "%~1"
if not exist "%pth%\%~nx1" (
  echo/ ! System file not found:
  echo/   "%~1"
  echo/
  exit/b1
)
if /i not "%mod%"=="Restore" (
  if not exist "%mod%" (
   echo/ ! Replacement file not found:
   echo/   "%mod%"
   echo/
   exit/b1
  )
)
if not "%num%"=="" (
  find/i ":\\%~n1%num%" "%~f0" >nul 2>&1 || (
   echo/ ! Invalid reference number:
   echo/   "%~nx1,%num%"
   echo/
   exit/b1
  )
)
exit/b0

:opt Handles optional lines in scripts (sys)
if /i "%opt%"=="Optional" (
  echo: ? Replace optional file "%~1"? ^(Y/N^)
  setlocal enabledelayedexpansion
  call:get var
  if /i "!var!"=="Y" (
   endlocal
   call:fmt "%sys%,%mod%,%num%,%opt%"
   exit/b
  ) else (
   endlocal
  )
) else (
  call:fmt "%sys%,%mod%,%num%,%opt%"
  exit/b1
)
exit/b0

:fmt Format script
:: Fill in tokens if any are missing
:: �������©��������ƻ�
set "var=%~1"
set "var=%var:,,=, ,%"
set "var=%var:,,=, ,%"
>>"%scr%-tmp" echo/%var%
exit/b0

:seq Run sequence (4 ordered tokens)
:: Used when replacing files from script
:: ���ýű��滻�ļ�ʱʹ��
set "pth="
if not "%~3"==" " (
  call:\\%~n1%~3
) else (
  call:scn %1
)
set "sys=%pth%%~nx1"
if /i "%~2"=="Restore" (
  set "mod=%pth%%~n1.backup"
) else (
  set "mod=%~f2"
)
call:quo sys
call:quo mod
call:chk %sys% || exit/b
call:chk %mod% || exit/b
call:ver %sys% || exit/b
call:rep
exit/b0

:scn Scan Folders
:: Finds the most likely file match when only filename is given
:: (during scripts or system file input)
:: ���ֻ�������ļ��������������ʵ�ƥ�䣨�ڽű���ϵͳ�ļ������ʱ��
set "pth=%~1"
if not "%pth:\=%" == "%pth%" (
  set "pth=%~dp1"
) else (
  set "pth="
  call:\\%~n10 2>nul && exit/b0
  :: More common paths at top
  :: ͨ��·��
  for %%* in (
   "%windir%"
   "%windir%\system32"
   "%windir%\system32\drivers"
   "%windir%\system"
   "%programfiles%\Outlook Express"
   "%programfiles%\Windows Media Player"
   "%windir%\Resources\Themes\Luna"
   "%programfiles%\Movie Maker"
   "%programfiles%\Windows NT"
   "%windir%\PCHEALTH\HELPCTR\Binaries"
   "%windir%\Fonts"
   "%programfiles%\Internet Explorer"
   "%programfiles%\Internet Explorer\Connection Wizard"
   "%commonprogramfiles%\Microsoft Shared\MSInfo"
   "%programfiles%\Windows NT\Accessories"
   "%programfiles%\Windows NT\Pinball"
   "%commonprogramfiles%\System"
   "%windir%\system32\Restore"
   "%windir%\system32\srchasst"
   "%windir%\system32\usmt"
   "%commonprogramfiles%\Microsoft Shared\Speech"
   "%programfiles%\NetMeeting"
   "%commonprogramfiles%\System\Mapi\1033"
   "%commonprogramfiles%\Adobe\Calibration"
   "%programfiles%\Symantec\LiveUpdate"
   "%programfiles%\WildTangent\Apps\CDA"
   "%programfiles%\Stardock\Object Desktop\IconPackager"
  ) do (
   if not exist %fl2% (
    if exist "%%~*\%~nx1" (
     set "pth=%%~*\"
     type nul > %fl2%
    )
   )
  )
  if exist %fl2% del %fl2%
)
exit/b0

:brk Exit Replacer ([Purge] [Now])
:: Clean up and exit
:: �����˳�
if not "%~1"=="Purge" (
  if not "%~1"=="Now" (
   echo/
   echo/Press any key to quit.
   pause >nul
  )
)
if /i not "%~1"=="Purge" if exist "%scr%" popd
for %%* in (%vbs% %fil% %flg%
  %fl2% "%scr%" %del% "%scr%-tmp" %dlp%
) do if exist %%* del/f %%* >nul 2>&1
if /i not "%~1"=="Purge" (
  if exist "%dir%" rd "%dir%" 2>nul
  endlocal
  :: Use a hard exit to prevent other loops from continuing
  :: ���������ѭ����Ӳ�˳�
  exit
)
exit/b0

:: List of special files requiring more (or less) steps
:: �г���Ҫ���࣯���ٲ���������ļ�
:\\Luna
set "fln=luna.mst"
set "atr=wfp"
exit/b0
:\\Shellstyle
if /i not "%pth:Homestead=%"=="%pth%" (
  set "fln=home_ss.dll"
)
if /i not "%pth:Metallic=%"=="%pth%" (
  set "fln=metal_ss.dll"
)
if /i not "%pth:NormalColor=%"=="%pth%" (
  set "fln=blue_ss.dll"
)
if /i not "%pth:\system32\=%"=="%pth%" (
  set "fln=class_ss.dll"
)
set "atr=wfp"
exit/b0
:\\Marlett
set "atr=non"
exit/b
:\\Comctl32
if /i not "%pth%"=="%windir%\system32\" (
  set "atr=non"
)
exit/b
:\\Commdlg
if /i not "%pth%"=="%windir%\system\" (
  set "atr=non"
)
exit/b
:\\Notepad
if /i not "%pth%"=="%windir%\" (
  set "atr=non"
)
exit/b
:\\Uxtheme.dll
set "atr=wfp"
:\\Comctl320
set "pth=%windir%\system32\"
exit/b
:\\Comctl321
set "pth=%windir%\WinSxS\x86_Microsoft.Windows.Common-Controls_6595b64144ccf1df_6.0.0.0_x-ww_1382d70a\"
exit/b
:\\Comctl322
set "pth=%windir%\WinSxS\x86_Microsoft.Windows.Common-Controls_6595b64144ccf1df_6.0.10.0_x-ww_f7fb5805\"
exit/b
:\\Comctl323
set "pth=%windir%\WinSxS\x86_Microsoft.Windows.Common-Controls_6595b64144ccf1df_6.0.2600.1331_x-ww_7abf6d02\"
exit/b
:\\Comctl324
set "pth=%windir%\WinSxS\x86_Microsoft.Windows.Common-Controls_6595b64144ccf1df_6.0.2600.1515_x-ww_7bb98b8a\"
exit/b
:\\Comctl325
set "pth=%windir%\WinSxS\x86_Microsoft.Windows.Common-Controls_6595b64144ccf1df_6.0.2600.2180_x-ww_a84f1ff9\"
exit/b
:\\Commdlg0
set "pth=%windir%\system\"
exit/b
:\\Commdlg1
set "pth=%windir%\system32\"
exit/b
:\\Notepad0
set "pth=%windir%\"
exit/b
:\\Notepad1
set "pth=%windir%\system32\"
exit/b
:\\Shellstyle0
set "pth=%windir%\system32\"
exit/b
:\\Shellstyle1
set "pth=%windir%\Resources\Themes\Luna\Shell\NormalColor\"
exit/b
:\\Shellstyle2
set "pth="%windir%\Resources\Themes\Luna\Shell\Metallic\"
exit/b
:\\Shellstyle3
set "pth=%windir%\Resources\Themes\Luna\Shell\Homestead\"
exit/b

:: List of script line formats
:: �ű��и�ʽ���б�
:\RNO
set "mod=Restore"
set "num=%~2"
set "opt=%~3"
exit/b
:\R-O
set "mod=Restore"
set "num="
set "opt=%~2"
exit/b
:\RN-
set "mod=Restore"
set "num=%~2"
set "opt="
exit/b
:\R--
set "mod=Restore"
set "num="
set "opt="
exit/b
:\-N-
set "mod=%sys%"
set "num=%~1"
set "opt="
exit/b
:\-NO
set "mod=%sys%"
set "num=%~1"
set "opt=%~2"
exit/b
:\--O
set "mod=%sys%"
set "num="
set "opt=%~1"
exit/b
:\M--
set "mod=%~1"
set "num="
set "opt="
exit/b
:\MN-
set "mod=%~1"
set "num=%~2"
set "opt="
exit/b
:\M-O
set "mod=%~1"
set "num="
set "opt=%~2"
exit/b
:\MNO
set "mod=%~1"
set "num=%~2"
set "opt=%~3"
exit/b
:\---
set "mod=%sys%"
set "num="
set "opt="
exit/b

:: Clear_WFP_Message.vbs -- clears the WFP message
:: ���WFP��Ϣ�Ľű�
        ' Clears WFP message
        ' ���WFP��Ϣ
        const win="Windows File Protection"
        const wi2="Unable To Locate Component"
        set arg=wscript.arguments
        if arg.count then
         flg=arg.item(0)
         else wscript.echo "Bad parameters."
          wscript.quit
        end if
        set w=wscript.createobject("wscript.shell")
        set f=wscript.createobject("scripting.filesystemobject")
        x=999
        while x > 0
         if w.appactivate(win) then
          w.sendkeys "{ESC}"
          w.sendkeys "{TAB}{ENTER}"
         end if
         if w.appactivate(wi2) then
          w.sendkeys "{ESC}{TAB}{ENTER}"
         end if
         if f.fileexists(flg) then
          x=45
          f.deletefile(flg)
         end if
         wscript.sleep 333
         x=x-1
        wend