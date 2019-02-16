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
echo  5) CodeCombat
echo(
echo  6) Factorio
echo(
echo  7) RimWorld
echo(
echo  8) while True: Learn
echo(
echo  9) Yorg.io
echo(
echo  10) 0 A.D
echo(
echo  11) check notifier update
echo(
echo  12) gr-gamestranslations.eu
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
echo You selected CodeCombat
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/CodeCombat_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/cc/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==6 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected Factorio
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/Factorio.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/fctr/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==7 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected RimWorld
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/RimWorld_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/rw/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==8 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected while True: Learn
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/whileTrueLearn_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/wtl/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==9 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected Yorg.io
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/Yiorg_io_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/yorg/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)

if %ans%==10 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo You selected 0 A.D
echo(
cd curl-7.63.0-win64-mingw\bin\
curl.exe https://raw.githubusercontent.com/JimChrModder/gr-gamestranslations/master/0AD_version.md
echo(
echo Do you want to download it?
choice /c YN 
if !errorlevel!==1 ( start "" http://www.gr-gamestranslations.eu/index.php/category/0ad/ )
cd ..
cd ..
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
pause
cls
goto MAINPOINT
)


if %ans%==11 (
echo =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
echo Checking for update...
echo(
echo Current Version: 2.0
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

if %ans%==12 (
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
