@ECHO OFF
set "reply=y"
set /p "reply=Time of the week to do the Firefox  semanal backup, you need to close it. Close Firefox now? [y|n]: "
if /i not "%reply%" == "y" goto :eof
echo Closing Firefox...
taskkill /IM firefox.exe >nul
cd C:\Users\souza\AppData\Roaming\Mozilla\Firefox\Profiles
echo Zipping Files to upload...
ping -n 20 127.0.0.1>nul
7z u -t7z -r C:\Users\souza\Documents\FirefoxBackup\firefox_backup profile 
rclone sync C:\Users\souza\Documents\FirefoxBackup cryptsouzafrodolfo:Firefox --verbose
:EOF