@echo off
echo ================================
echo ChangeHudColour
echo Scripted By Ev0l
echo USAGE: select red, blue, green or default for colours.
echo        for backup/restore functions, enter "backup" or "restore"
echo ================================

:select
set FILE = "%userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics\GraphicsConfigurationOverride.xml"
echo " ENTER COLOUR FROM OPTIONS ABOVE (red, blue, green or default) or the following commands (backup or restore): "
set /p HUDCOLOUR=

REM echo colour entered is "%HUDCOLOUR%"
if "%HUDCOLOUR%" == "red" goto red 
if "%HUDCOLOUR%" == "blue" goto blue
if "%HUDCOLOUR%" == "green" goto green
if "%HUDCOLOUR%" == "default" goto default
if "%HUDCOLOUR%" == "backup" goto backup
if "%HUDCOLOUR%" == "restore" goto restore
goto nocolourmatched

:backup
echo SELECTED BACKUP
echo [-] Copying existing GraphicsConfigurationOverride.xml File to backup location
copy "%userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics\GraphicsConfigurationOverride.xml" "%userprofile%\GraphicsConfigurationOverride.xml.bkp" || echo CANNOT BACKUP FILE && goto end
echo [-] Backup Complete -  please find your backup in the directory "%userprofile%\GraphicsConfigurationOverride.xml.bkp"
echo --- to restore this file at a later date use the command restore.
goto end

:restore
echo SELECTED RESTORE
cd %userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics || echo ED GRAPHICS DIRECTORY DOES NOT EXIST OR INACCESSIBLE && goto end
echo [-] Removing Existing XML File
if exist GraphicsConfigurationOverride.xml del GraphicsConfigurationOverride.xml || echo CANNOT DELETE ORIGINAL XML FILE && goto end
echo [-] Copying existing GraphicsConfigurationOverride.xml File from previous backup to live location
copy "%userprofile%\GraphicsConfigurationOverride.xml.bkp" "%userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics\GraphicsConfigurationOverride.xml" || echo CANNOT RESTORE FILE && goto end
echo [-] Restore Complete -  If your game is running, please restart it for the changes to take effect
goto end

:red
echo SELECTED RED
echo [-] Finding Directory
cd %userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics || echo ED GRAPHICS DIRECTORY DOES NOT EXIST OR INACCESSIBLE && goto end
echo [-] Removing Original File
if exist GraphicsConfigurationOverride.xml del GraphicsConfigurationOverride.xml || echo CANNOT DELETE ORIGIN XML FILE
echo [-] Creating New GraphicsConfigurationOverride.xml File
echo ^<?xml version=^"1.0^" encoding=^"UTF-8^" ?^> > GraphicsConfigurationOverride.xml
echo ^<GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo     ^<GUIColour^> >> GraphicsConfigurationOverride.xml
echo         ^<Default^> >> GraphicsConfigurationOverride.xml
echo             ^<LocalisationName^>Standard^</LocalisationName^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixRed^> 2, 0, 0 ^</MatrixRed^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixGreen^> 0, 0.30, 0 ^</MatrixGreen^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixBlue^> 0, 1.1, 2 ^</MatrixBlue^> >> GraphicsConfigurationOverride.xml
echo         ^</Default^> >> GraphicsConfigurationOverride.xml
echo     ^</GUIColour^> >> GraphicsConfigurationOverride.xml
echo ^</GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo COLOUR SUCCESSFULLY CHANGED TO RED!
goto end


:green
echo SELECTED GREEN
echo [-] Finding Directory
cd %userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics || echo ED GRAPHICS DIRECTORY DOES NOT EXIST OR INACCESSIBLE && goto end
echo [-] Removing Original File
if exist GraphicsConfigurationOverride.xml del GraphicsConfigurationOverride.xml || echo CANNOT DELETE ORIGIN XML FILE
echo [-] Creating New GraphicsConfigurationOverride.xml File
echo ^<?xml version=^"1.0^" encoding=^"UTF-8^" ?^> > GraphicsConfigurationOverride.xml
echo ^<GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo     ^<GUIColour^> >> GraphicsConfigurationOverride.xml
echo         ^<Default^> >> GraphicsConfigurationOverride.xml
echo             ^<LocalisationName^>Standard^</LocalisationName^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixRed^> 0.2, 0, 0 ^</MatrixRed^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixGreen^> -2, 1, 0 ^</MatrixGreen^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixBlue^> 0, 0, 1 ^</MatrixBlue^> >> GraphicsConfigurationOverride.xml
echo         ^</Default^> >> GraphicsConfigurationOverride.xml
echo     ^</GUIColour^> >> GraphicsConfigurationOverride.xml
echo ^</GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo COLOUR SUCCESSFULLY CHANGED TO GREEN!
goto end

:blue
echo SELECTED BLUE
echo [-] Finding Directory
cd %userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics || echo ED GRAPHICS DIRECTORY DOES NOT EXIST OR INACCESSIBLE && goto end
echo [-] Removing Original File
if exist GraphicsConfigurationOverride.xml del GraphicsConfigurationOverride.xml || echo CANNOT DELETE ORIGIN XML FILE
echo [-] Creating New GraphicsConfigurationOverride.xml File
echo ^<?xml version=^"1.0^" encoding=^"UTF-8^" ?^> > GraphicsConfigurationOverride.xml
echo ^<GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo     ^<GUIColour^> >> GraphicsConfigurationOverride.xml
echo         ^<Default^> >> GraphicsConfigurationOverride.xml
echo             ^<LocalisationName^>Standard^</LocalisationName^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixRed^> 0.22, 0.07, 0.7 ^</MatrixRed^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixGreen^> -1, 1, 0.81 ^</MatrixGreen^> >> GraphicsConfigurationOverride.xml
echo             ^<MatrixBlue^> 1, 0.02, -0.06 ^</MatrixBlue^> >> GraphicsConfigurationOverride.xml
echo         ^</Default^> >> GraphicsConfigurationOverride.xml
echo     ^</GUIColour^> >> GraphicsConfigurationOverride.xml
echo ^</GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo COLOUR SUCCESSFULLY CHANGED TO BLUE!
goto end

:default
echo SELECTED DEFAULT
echo [-] Finding Directory
cd %userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics || echo ED GRAPHICS DIRECTORY DOES NOT EXIST OR INACCESSIBLE && goto end
echo [-] Removing Original File
if exist GraphicsConfigurationOverride.xml del GraphicsConfigurationOverride.xml || echo CANNOT DELETE ORIGIN XML FILE
echo [-] Creating New GraphicsConfigurationOverride.xml File
echo ^<?xml version=^"1.0^" encoding=^"UTF-8^" ?^> > GraphicsConfigurationOverride.xml
echo ^<GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo ^</GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo COLOUR SUCCESSFULLY RESET TO DEFAULT!
goto end

:nocolourmatched
echo you entered an invalid colour. please try again.
echo . 
goto select

:writeerror
echo UNABLE TO WRITE TO GraphicsConfigurationOverride.xml
goto end

:end
pause