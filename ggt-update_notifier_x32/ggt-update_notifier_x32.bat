@echo off
setlocal enabledelayedexpansion
color 0a

:MAINPOINT
echo checking internet connection...
Ping www.google.nl -n 1 -w 1000 | find "Reply" > nul
cls
if errorlevel 1  ( echo There is no internet connection! Please check your internet.) else ( goto ggt_update_notifier)
pause
goto MAINPOINT


:ggt_update_notifier

echo ===============--- Menu ---===============
echo(
echo  1) Show Translations Versions
echo(
echo  2) Check for Update Notifier Latest Version
echo(
echo  3) visit gr-gamestranslations.eu
echo(
echo =========================================
echo(
set /p ans="Please Select your option:"
echo(
echo(

if %ans%==1 ( goto TR_VER)
if %ans%==2 ( goto UN_LV )
if %ans%==3 ( start "" http://www.gr-gamestranslations.eu/ )
goto MAINPOINT
:::::::::::::::::::::::::::TranslationVersions::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--------------
:TR_VER
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TranslationVersionsWin.md
cd ..
cd ..
echo 11) "BACK"
echo(
echo(
echo Do you want to download any translation?
choice /c YN
if !errorlevel!==1 ( goto DOWNLOAD ) else (
goto MAINPOINT
)



:DOWNLOAD
set /p selected_option="Please select your option:"
echo(
echo(
if %selected_option% LSS 1 ( echo "Invalid Option! Please try again"
goto DOWNLOAD
)
if %selected_option% GTR 11 ( echo "Invalid Option! Please try again"
goto DOWNLOAD
)
if %selected_option%==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/twrii/ )
if %selected_option%==2 ( start "" http://www.gr-gamestranslations.eu/index.php/category/s-i/ ) 
if %selected_option%==3 ( start "" http://www.gr-gamestranslations.eu/index.php/category/twa/ )
if %selected_option%==4 ( start "" http://www.gr-gamestranslations.eu/index.php/category/fdt/ )
if %selected_option%==5 ( start "" http://www.gr-gamestranslations.eu/index.php/category/cc/ )
if %selected_option%==6 ( start "" http://www.gr-gamestranslations.eu/index.php/category/fctr/ )
if %selected_option%==7 ( start "" http://www.gr-gamestranslations.eu/index.php/category/rw/ )
if %selected_option%==8 ( start "" http://www.gr-gamestranslations.eu/index.php/category/wtl/ )
if %selected_option%==9 ( start "" http://www.gr-gamestranslations.eu/index.php/category/yorg/ )
if %selected_option%==10 ( start "" http://www.gr-gamestranslations.eu/index.php/category/0ad/ )
if %selected_option%==11 ( goto MAINPOINT ) 
pause
cls
goto TR_VER
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::_________



:::::::::::::::::::::::::::::::::::UN_LV:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::---------
:UN_LV
echo Current Version: 2.0
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/ggt_online_version.md
cd ..
cd ..
echo(
echo Do you want to download the Latest Version?
choice /c YN
if !errorlevel!==1 ( start "" https://github.com/JimChrModder/gr-gamestranslations/archive/master.zip ) else (
pause )
goto MAINPOINT
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::_________

