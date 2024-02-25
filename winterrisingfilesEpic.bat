:: Disable echoing every command to UI
@echo off

:: Use UTF-8 Encoding
chcp 65001

:: clear screen
cls


echo Tervetuloa Jussin tiedostonsiirtorulettiin!
echo Tänään jännitämme, saavatko pelaajat tiedostonsa paikoilleen, vai menevätkö bitit solmuun!
echo Tämä ohjelma siirtää Steamiin asennetusta Talvisota-modista tarvittavat tiedostot Epic Gamesista asennettuun Rising Stormiin.
echo:

:: Kysytään käyttäjältä pelin ja modin sijainnit ilman viimeistä takakenoa (koska en jaksanut alkaa putsailemaan inputteja)
echo Copypasteta pelin sijainti (Epic Games!) tähän ilman
set /p pelin-sijainti=viimeistä takakenoa eli \ -merkkiä (esim. C:\EpicGames\RS2V): 
echo Pelin sijainniksi määritetty %pelin-sijainti%
echo:
echo Copypasteta modin sijainti (Steam!) tähän ilman
set /p modin-sijainti=viimeistä takakenoa eli \ -merkkiä (esim. C:\SteamGames\steamapps\common\Rising Storm 2): 
echo Modin sijainniksi määritetty %modin-sijainti%
echo:


::Kopioidaan tiedostot
xcopy "%modin-sijainti%\Binaries\Win64\LaunchWinterWar.exe" "%pelin-sijainti%\Binaries\Win64\" /Y /R
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
   exit /B
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\Maps\WinterWar\*.*" "%pelin-sijainti%\ROGame\BrewedPC\Maps\" /Y /R
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
   exit /B
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\Packages\WinterWar\*.*" "%pelin-sijainti%\ROGame\BrewedPC\Packages\" /Y /R
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
   exit /B
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\WwiseAudio\Windows\English(US)\*.*" "%pelin-sijainti%\ROGame\BrewedPC\WwiseAudio\Windows\English(US)\" /Y /R
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
   exit /B
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\WinterWar.u" "%pelin-sijainti%\ROGame\BrewedPC\" /Y /R
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
   exit /B
)
xcopy "%modin-sijainti%\ROGame\Config\*.*" "%pelin-sijainti%\ROGame\Config\" /Y /R
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
   exit /B
)
xcopy "%modin-sijainti%\ROGame\Localization\INT\WinterWar.int" "%pelin-sijainti%\ROGame\Localization\INT\" /Y /R
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
   exit /B
)

IF %ERRORLEVEL% == 0 ( 

:: Lopetellaan meemeilyllä
echo:
echo:
echo Aaron on :DDDD
echo:
echo:
echo Kaikki tiedostot kopioitu, olitpa reipas ja taitava!
echo Kiitos että käytit tuotettani, olet ihana!
echo Voit nyt sulkea ikkunan.
echo Ai niin, mikäli modi tämän jälkeen toimii, mutta lakkaa myöhemmin toimimasta, päivitä Talvisota-modi Steamista ja aja tämä uudestaan. Kthxbye!
pause >nul
exit /B 0
)
