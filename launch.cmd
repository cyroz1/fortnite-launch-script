start "" "com.epicgames.launcher://apps/Fortnite?action=launch&silent=true"

:search
"%SystemRoot%\System32\tasklist.exe" /FI "IMAGENAME eq FortniteClient-Win64-Shipping.exe" /FO CSV /NH | "%SystemRoot%\System32\find.exe" "FortniteClient-Win64-Shipping.exe"
IF %ERRORLEVEL% == 0 GOTO :found
"%SystemRoot%\System32\timeout.exe" /T 1
GOTO :search

:found
"%SystemRoot%\System32\taskkill.exe" /F /IM EpicGamesLauncher.exe
"%SystemRoot%\System32\taskkill.exe" /F /IM EpicWebHelper.exe
exit