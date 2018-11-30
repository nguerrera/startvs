$RepoRoot = "$PSScriptRoot"

if (!$env:DOTNET_INSTALL_DIR)
{
    $env:DOTNET_INSTALL_DIR="$RepoRoot\.dotnet\"
}
if (!(Test-Path $env:DOTNET_INSTALL_DIR))
{
    mkdir $env:DOTNET_INSTALL_DIR | Out-Null
}

Invoke-WebRequest "https://raw.githubusercontent.com/dotnet/cli/master/scripts/obtain/dotnet-install.ps1" -OutFile "$env:DOTNET_INSTALL_DIR\dotnet-install.ps1"

& "$env:DOTNET_INSTALL_DIR\dotnet-install.ps1" -Channel master
