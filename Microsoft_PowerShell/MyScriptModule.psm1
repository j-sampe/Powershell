<# Script Modules
A script module in PowerShell is simply a file containing one or more functions that’s saved as a
PSM1 file instead of a PS1 file.
How do you create a script module? You’re probably guessing with a command named something
like New-Module. Your assumption would be wrong. While there is a command in PowerShell
named New-Module, that command creates a dynamic module, not a script module. Always be
sure to read the help for a command even when you think you’ve found the command you need.#>

# help New-Module

function Get-MrPSVersion {
    $PSVersionTable
    }
function Get-MrComputerName {
   $env:COMPUTERNAME
   }


# Before to use You could manually import the file with the Import-Module cmdlet.

# Import-Module C:\MyScriptModule.psm1