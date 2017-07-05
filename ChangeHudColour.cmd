@echo off
echo ================================
echo ChangeHudColour
echo Scripted By Ev0l
echo USAGE: select red, blue, green or default
echo ================================

set FILE = "%userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics\GraphicsConfigurationOverride.xml"
echo " ENTER COLOUR FROM OPTIONS ABOVE (red, blue, green or default): "
set /p HUDCOLOUR=

echo [-] Finding Directory
cd %userprofile%\appdata\local\Frontier Developments\Elite Dangerous\Options\Graphics || echo DIRECTORY NOT THERE 
echo [-] removing file
if exist GraphicsConfigurationOverride.xml del GraphicsConfigurationOverride.xml

REM echo colour entered is "%HUDCOLOUR%"
if "%HUDCOLOUR%" == "red" goto red 
if "%HUDCOLOUR%" == "blue" goto blue
if "%HUDCOLOUR%" == "green" goto green
if "%HUDCOLOUR%" == "default" goto default
goto nocolourmatched

:red
echo SELECTED RED
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
echo [-] Creating New GraphicsConfigurationOverride.xml File
echo ^<?xml version=^"1.0^" encoding=^"UTF-8^" ?^> > GraphicsConfigurationOverride.xml
echo ^<GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo ^</GraphicsConfig^> >> GraphicsConfigurationOverride.xml
echo COLOUR SUCCESSFULLY RESET TO DEFAULT!
goto end

:nocolourmatched
echo you entered an invalid colour. please try again.


:end
pause