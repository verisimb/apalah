@echo off
SET NODE_PATH=
FOR /F "tokens=*" %%i IN ('where node') DO SET NODE_PATH=%%i

IF NOT EXIST "%NODE_PATH%" (
    echo Node.js not found.
    pause
    exit /b
)

REM Cek apakah node_modules sudah ada
IF NOT EXIST "node_modules" (
    echo Installing dependencies...
    npm install --no-interactive

    REM Periksa kesalahan instalasi
    IF NOT %ERRORLEVEL% EQU 0 (
        echo Error installing dependencies.
        pause
        exit /b
    )
)

REM Jalankan aplikasi Node.js tanpa membuka tab baru
call node index.js

REM Biarkan cmd tetap terbuka setelah menjalankan Node.js
pause
