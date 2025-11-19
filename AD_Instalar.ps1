# Comprobar versión actual de PowerShell
$psVersion = $PSVersionTable.PSVersion
Write-Host "Versión actual de PowerShell: $psVersion"

# Última versión conocida
$latestVersion = [Version]"7.5.4"

# Si la versión es menor, instalar la última
if ($psVersion -lt $latestVersion) {
    Write-Host "Actualizando PowerShell a la versión $latestVersion..."
    winget install --id Microsoft.PowerShell --source winget
} else {
    Write-Host "Ya tienes la última versión de PowerShell."
}

# Comprobar si el módulo ActiveDirectory está instalado
$adModule = Get-Module -ListAvailable -Name ActiveDirectory

if ($null -eq $adModule) {
    Write-Host "El módulo ActiveDirectory no está instalado. Instalando..."
    Add-WindowsCapability -Online -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
} else {
    Write-Host "El módulo ActiveDirectory ya está instalado."
}

# Importar el módulo y mostrar su versión
Import-Module ActiveDirectory
$adModuleVersion = (Get-Module ActiveDirectory).Version
Write-Host "Versión del módulo ActiveDirectory: $adModuleVersion"