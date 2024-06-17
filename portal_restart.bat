@echo off

REM Set the log file path
set logFile=C:\Path\To\Log\service_restart.log

REM Log the start time
echo %date% %time% - Script started. >> %logFile%

REM Wait for 1800 seconds (30 minutes)
timeout /t 1800 /nobreak

REM Log the service stop attempt
echo %date% %time% - Stopping the service... >> %logFile%

REM Stop the service
net stop "YourServiceName" >> %logFile% 2>&1

REM Log the service start attempt
echo %date% %time% - Starting the service... >> %logFile%

REM Start the service
net start "YourServiceName" >> %logFile% 2>&1

REM Log the completion time
echo %date% %time% - Script completed. >> %logFile%