<# Advanced Functions
Turning a function in PowerShell into an advanced function is really simple. One of the differences
in a function and an advanced function is that advanced functions have a number of common
parameters that are added to the function automatically. These common parameters include
parameters such as Verbose and Debug. #>

# Add CmdletBinding to turn the function into an advanced function.
function Test-MECmdletBinding {
        [CmdletBinding()] #<<-- This turns a regular function into an advanced function
        param (
        $ComputerName
    )
    Write-Output $ComputerName
}

# There are a couple of different ways to see the common parameters. One is by viewing the syntax using Get-Command.

Get-Command -Name Test-MECmdletBinding -Syntax

(Get-Command -Name Test-MECmdletBinding).Parameters.Keys