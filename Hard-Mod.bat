@echo off
cls
echo Protecting srcds from crashes...
echo If you want to close srcds and this script, close the srcds window and type Y depending on your language followed by Enter.
title ZPS_2
:srcds
echo (%time%) srcds started.
...
SET SteamAppId=17505
start /wait srcds.exe -console -game zps +map zps_8houses787_random -port 27016 +maxplayers 24 +fps_max 0 +sv_lan 0 -tickrate 100 +log on -nocrashdialog
...
echo (%time%) WARNING: srcds closed or crashed, restarting.
goto srcds