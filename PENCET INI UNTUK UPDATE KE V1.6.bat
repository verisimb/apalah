@echo off

REM Cek apakah Node.js terinstal
where node > nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Node.js not found.
    pause
    exit /b
)

echo Updating dependencies...
npm install --no-interactive

REM Periksa kesalahan instalasi
IF NOT %ERRORLEVEL% EQU 0 (
    echo Error updating dependencies.
    pause
    exit /b
)

echo Dependencies updated successfully.
echo.
echo SUKSES UPDATE MOCHABOT V1.6
echo.
pause
exit /b
