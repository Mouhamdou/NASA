@echo off
REM Lance le script PowerShell pour démarrer un serveur local
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0start_server.ps1"
