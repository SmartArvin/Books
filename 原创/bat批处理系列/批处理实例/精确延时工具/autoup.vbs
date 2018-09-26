on error resume next 
set shell=createobject("wscript.shell") 
wscript.sleep 1000
shell.run "auto.bat /start",0 
