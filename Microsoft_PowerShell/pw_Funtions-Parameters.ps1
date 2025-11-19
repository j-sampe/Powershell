<# Parameters
Don’t statically assign values! Use parameters and variables. When it comes to naming your
parameters, use the same name as the default cmdlets for your parameter names whenever possible. #>

function Get-MEParameterCount {
        param (
            [string[]]$ParameterName
        )
            foreach ($Parameter in $ParameterName) {
                $Results = Get-Command -ParameterName $Parameter -ErrorAction SilentlyContinue
                [pscustomobject]@{
                ParameterName = $Parameter
                NumberOfCmdlets = $Results.Count
            }
        }
    }

Get-MEParameterCount -ParameterName ComputerName, Computer, ServerName, Host, Machine