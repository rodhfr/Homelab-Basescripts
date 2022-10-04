@ECHO ON
rclone copy %1 remote:path -P
ping 127.0.0.1 -n 30 > nul
