:: Määritetään muutamia perusjuttuja
@echo off
chcp 65001
cls

echo Tervetuloa Jussin tiedostonsiirtorulettiin!
echo Tänään jännitämme, saavatko pelaajat tiedostonsa paikoilleen, vai menevätkö bitit solmuun!
echo:
:: Kysytään käyttäjältä pelin ja modin sijainnit ilman viimeistä takakenoa (koska en jaksanut alkaa putsailemaan inputteja)
echo Copypasteta pelin sijainti tähän ilman
set /p pelin-sijainti=viimeistä takakenoa eli \ -merkkiä (esim. C:\EpicGames\RS2V): 
echo Pelin sijainniksi määritetty %pelin-sijainti%
echo:

::modi: F:\SteamGames\steamapps\common\Rising Storm 2
echo Copypasteta pelin sijainti tähän ilman
set /p modin-sijainti=viimeistä takakenoa eli \ -merkkiä (esim. F:\SteamGames\steamapps\common\Rising Storm 2): 
echo Modin sijainniksi määritetty %modin-sijainti%
echo:


::Kopioidaan tiedostot
xcopy "%modin-sijainti%\Binaries\Win64\LaunchWinterWar.exe" "%pelin-sijainti%\Binaries\Win64\"
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\Maps\WinterWar\*.*" "%pelin-sijainti%\ROGame\BrewedPC\Maps\"
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\Packages\WinterWar\*.*" "%pelin-sijainti%\ROGame\BrewedPC\Packages\"
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\WwiseAudio\Windows\English(US)\*.*" "%pelin-sijainti%\ROGame\BrewedPC\WwiseAudio\Windows\English(US)\"
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
)
xcopy "%modin-sijainti%\ROGame\BrewedPC\WinterWar.u" "%pelin-sijainti%\ROGame\BrewedPC\"
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
)
xcopy "%modin-sijainti%\ROGame\Config\*.*" "%pelin-sijainti%\ROGame\Config\"
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
)
xcopy "%modin-sijainti%\ROGame\Localization\INT\WinterWar.int" "%pelin-sijainti%\ROGame\Localization\INT\"
IF %ERRORLEVEL% NEQ 0 ( 
   echo:
   echo Jotain meni pieleen, sori siitä.
   echo Closing down.
   pause >nul
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
pause >nul
)