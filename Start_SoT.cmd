@echo off
start "Sea of Thieves" "shell:AppsFolder\Microsoft.SeaofThieves_8wekyb3d8bbwe!AthenaClientShipping"

timeout /t 120 /nobreak > nul
Taskkill /f /im explorer.exe

:repeat
timeout /t 5 /nobreak > nul
tasklist /fi "IMAGENAME eq SoTGame.exe" | find "SoTGame.exe" > nul && goto :repeat
start "" "%WINDIR%\explorer.exe"


