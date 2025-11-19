<# Parameters
Don’t statically assign values! Use parameters and variables. When it comes to naming your
parameters, use the same name as the default cmdlets for your parameter names whenever possible.

Why did I use ComputerName and not Computer, ServerName, or Host for my parameter name?
It’s because I wanted my function standardized like the default cmdlets.#>

function Test-Function {
    param (
        $ComputerName
    )
Write-Output $ComputerName
}

Test-Function ThatsTheName