<# SupportsShouldProcess
SupportsShouldProcess adds WhatIf and Confirm parameters. This is only needed for commands
that make changes.#>
function Test-MESupportsShouldProcess {
        [CmdletBinding(SupportsShouldProcess)]
        param (
        $ComputerName
        )
    Write-Output $ComputerName
}

# Notice that there are now WhatIf and Confirm parameters

Get-Command -Name Test-MESupportsShouldProcess -Syntax

(Get-Command -Name Test-MESupportsShouldProcess).Parameters.Keys