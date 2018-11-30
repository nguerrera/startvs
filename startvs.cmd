@echo off
setlocal
cd /d %~dp0

:: install latest CLI to .dotnet/
powershell -ExecutionPolicy Bypass .\installcli.ps1

:: set up environment
set DOTNET_MULTILEVEL_LOOKUP=0
set DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
set DOTNET_ROOT=%CD%\.dotnet
set PATH=%CD%\.dotnet;%PATH%

start devenv.exe %*