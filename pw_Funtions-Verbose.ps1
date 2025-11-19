<# Verbose Output
A better option is to use Write-Verbose instead of inline comments.
#>

function Test-Funtion {
    [CmdletBinding()]
    param (
    [ValidateNotNullOrEmpty()]
    [string[]]$ComputerName = $env:COMPUTERNAME
    )
        foreach ($Computer in $ComputerName) {
        Write-Verbose -Message "Attempting to perform some action on $Computer"
        Write-Output $Computer
        }
}

Test-Funtion PC01 -Verbose