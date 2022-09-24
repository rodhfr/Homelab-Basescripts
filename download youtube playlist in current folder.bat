@echo OFF
echo Don't run this program at a system privileged folder!
Rem adaptable archiving
Rem -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s"
echo.
echo ----------------------------------
echo HomelabScriptbase by AntartidaLabs
echo        Youtube Playlist Downloader
echo                  Powered by yt-dlp
echo ----------------------------------
echo.
echo **You can right click to paste**
set /p "id=Enter Playlist Youtube Link: "
echo.
IF NOT EXIST "%cd%"\youtube-playlist (
	ECHO the folder youtube-playlist don't exist, creating one to download playlist.
	MKDIR "%cd%"\youtube-playlist
)	ELSE ( echo The folder %cd% is present. initiating download...
)
ping 127.0.0.1 -n 1 > nul
cd "%cd%"\youtube-playlist
echo.
echo Beware! All your videos will be downloaded to: 
echo %cd%
ping 127.0.0.1 -n 3 > nul
echo.
echo Starting Download...
echo To cancel, type ctrl+c and answer YES.
ping 127.0.0.1 -n 10 > nul
yt-dlp -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" --embed-sub --write-auto-subs --sub-format srt/ass/best --sponsorblock-remove all %id%
echo.
echo "Sucess! Ending Script..."
ping 127.0.0.1 -n 6 > nul


