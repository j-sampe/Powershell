<# Defining Public and Private Functions
You may have helper functions that you may want to get private that are only accessible by other
functions within the module and not accessible to be called directly by the users of your module.
There are a couple of different ways to accomplish this.
If you’re not following the best practices and only have a PSM1 file then your only option is to use
the Export-ModuleMember cmdlet.#>


function Get-PSVersionPrivate {
    $PSVersionTable
}
function Get-ComputerName {
    $env:COMPUTERNAME
}

Export-ModuleMember -Function Get-PSVersionPrivate