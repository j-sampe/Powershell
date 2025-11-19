<# Pipeline Input
Commands can accept pipeline input by value (by type) or by property name. You can write your functions just like the native commands so they can accept either one or both of these types of input.
To accept pipeline input by value, specified the ValueFromPipeline parameter attribute for that particular parameter.

A PROCESS block is required to process each of these items if you’re accepting an array as input. If
you’re only accepting a single value as input, a process block isn’t necessary, but I still recommend
going ahead and specifying it for consistency.#>
function Test-Funtion {
    [CmdletBinding()]
        param (
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]

            [string[]]$ComputerName
            )

        PROCESS {
        Write-Output $ComputerName
        }
}

Test-Funtion -ComputerName PC01