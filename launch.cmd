Fortnite.url

:search
tasklist|find "FortniteClient-Win64-Ship"
IF %ERRORLEVEL% == 0 GOTO :found
TIMEOUT /T 1
GOTO :search

:found
taskkill /F /IM EpicGamesLauncher.exe
taskkill /F /IM EpicWebHelper.exe
GOTO :search2

:search2
tasklist|find "CrashReportClient.exe"
IF %ERRORLEVEL% == 0 GOTO :found2
TIMEOUT /T 1
GOTO :search2

:found2
taskkill /F /IM CrashReportClient.exe

exit