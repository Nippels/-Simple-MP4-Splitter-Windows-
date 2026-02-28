@echo off
setlocal enabledelayedexpansion

cd /d "%~dp0"

echo ====================================
echo SIMPLE MP4 SPLITTER
echo ====================================
echo.

set /p MINUTES=Split Zeit in Minuten eingeben: 
set /a SEGMENT_TIME=MINUTES*60

echo.
echo Segmentzeit = %SEGMENT_TIME% Sekunden
echo.

set FIRSTFILE=

for %%F in (*.MP4) do (
    set FIRSTFILE=%%F
    goto :found
)

:found
if "%FIRSTFILE%"=="" (
    echo ❌ Kein MP4 File gefunden!
    pause
    exit /b
)

echo Verarbeite !FIRSTFILE!
echo.

ffmpeg -i "!FIRSTFILE!" ^
-c:v copy ^
-c:a aac -b:a 320k ^
-ar 48000 ^
-f segment ^
-segment_time %SEGMENT_TIME% ^
-reset_timestamps 1 ^
"!~nFIRSTFILE!_part%%03d.mp4"

echo.
echo Fertig!
pause
