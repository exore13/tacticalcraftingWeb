@echo off
title Webserver Launcher
@echo Time is in  (hour-minutes-day-month-year)
:start
cls
@echo (%time%) Server starting...

mkdir logs
rename "logs\latest.txt" "log_%time:~0,2%h-%time:~3,2%m_%DATE:/=%.txt"

miniweb.exe > logs\latest.txt

@echo (%time%) Server closed/crashed...
@echo.
@echo Restarting server...
@echo.
timeout 5 > NUL
goto start