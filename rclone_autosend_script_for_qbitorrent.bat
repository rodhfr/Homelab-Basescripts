@ECHO ON
rclone copy %1 antartidagdrive:emby -P
ping 127.0.0.1 -n 30 > nul