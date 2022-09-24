@echo OFF
echo.
echo ----------------------------------
echo HomelabScriptbase by AntartidaLabs
echo           Youtube Video Downloader
echo                  Powered by yt-dlp
echo ----------------------------------
echo.
Rem cd /D "D:\torrent\youtube"
set /p "id=Enter Youtube Link: "
echo "Downloading..."
yt-dlp -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --embed-sub --write-auto-subs --sub-format srt/ass/best --sponsorblock-remove all %id%
echo "Complete! Ending Script... Check your Downloads Folder"
ping 127.0.0.1 -n 10 > nul
