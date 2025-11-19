<#Error Handling

There are a couple of different ways to handle errors in PowerShell. Try / Catch is the more modern
way to handle errors #>

function Test-ErrorHandling {
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [string[]]$ComputerName
    )
    
    PROCESS {
        foreach ($Computer in $ComputerName) {
                try {
                    Test-WSMan -ComputerName $Computer -ErrorAction Stop
                }
                catch {
                    Write-Warning -Message "Unable to connect to Computer: $Computer"
                }
            }
        }
    }

Test-Function -ComputerName PC01