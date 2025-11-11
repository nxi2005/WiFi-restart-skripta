@echo off
title Automatski Restart Wi-Fi
:loop
REM Provjera internetske veze
ping -n 1 google.com >nul 2>&1
if errorlevel 1 (
    echo Wi-Fi nije spojen, restartam adapter...
    netsh interface set interface "Wi-Fi" admin=disable
    timeout /t 5 >nul
    netsh interface set interface "Wi-Fi" admin=enable
    echo Wi-Fi restartan.
) else (
    echo Wi-Fi je spojen.
)
timeout /t 10 >nul
goto loop
