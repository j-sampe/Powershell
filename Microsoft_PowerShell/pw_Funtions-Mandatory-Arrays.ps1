<# Parameter Validation
Validate input early on. Why allow your code to continue on a path when it’s not possible to
successfully complete without valid input?
Always type the variables that are being used for your parameters (specify a datatype).

Specified String as the datatype for the ComputerName parameter.

The problem is that it’s valid to not specify a computer name at all and at least
one computer name needs to be specified otherwise the function can’t possibly complete successfully.
This is where the Mandatory parameter attribute comes in handy.
#>

function Test-Function {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string[]]$ComputerName
    )
Write-Output $ComputerName
}

Test-Function -ComputerName PC01, PC02, PC03