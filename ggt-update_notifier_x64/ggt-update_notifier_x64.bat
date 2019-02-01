@echo off
setlocal enabledelayedexpansion
color 0a

:MAINPOINT
echo checking internet connection...
Ping www.google.nl -n 1 -w 1000
cls
if errorlevel 1  ( echo There is no internet connection! Please check your internet.) else ( goto ggt_update_notifier)
set CurrentVersion="1.0"
pause
goto MAINPOINT


:ggt_update_notifier

echo ===============--- Menu ---===============
echo(
echo  1) TWRII
echo(
echo  2) TWA
echo(
echo  3) Software Inc
echo(
echo  4) Foundation
echo(
echo  5) check notifier update
echo(
echo  6) gr-gamestranslations.eu
echo =========================================
echo(
set /p ans="Please Select your option:"
echo(
echo(

if %ans%==1 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected TWRII
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TWRII_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/twrii/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==2 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected TWA
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/TWA_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/twa/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==3 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected Software Inc
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/SoftwareInc_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/s-i/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==4 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected Foundation
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/Foundation_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/fdt/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==5 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo Checking for update...
echo(
echo Current Version: 1.0
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/ggt_online_version.md
echo(
echo Do you want to update it?
choice /c YN 
if !errorlevel!==1 ( start "" https://github.com/JimChrModder/gr-gamestranslations )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==6 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo Visiting gr-gamestranslations.eu ...
start "" http://www.gr-gamestranslations.eu
echo(
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
) else ( echo Invalid option! Please try again.
pause
cls
goto MAINPOINT
)
)
