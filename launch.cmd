start Fortnite.url
start Keys2XInput.lnk

:search
tasklist|find "FortniteClient-Win64-Ship"
IF %ERRORLEVEL% == 0 GOTO :found
TIMEOUT /T 1
GOTO :search

:found
taskkill /F /IM EpicGamesLauncher.exe
exit