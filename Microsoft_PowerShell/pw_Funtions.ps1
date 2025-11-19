<# Function
A function in PowerShell is declared with the function keyword followed by the function name and
then an open and closing curly brace. The code that the function will execute is contained within
those curly braces. 

There’s a good chance of name conflict with functions named something like Get-Version and default
commands in PowerShell or commands that others may write. This is why I recommend prefixing
the noun portion of your functions to help prevent naming conflicts. In the following example, I’ll
use the prefix “ME”

#>

function Get-MEVersion {
    $PSVersionTable.PSVersion
}

Get-MEVersion

# Once loaded into memory, you can see functions on the Function PSDrive.

Get-ChildItem -Path Function:\Get-*Version

<# If you want to remove these functions from your current session, you’ll have to remove them from
the Function PSDrive or close and re-open PowerShell. #>

Get-ChildItem -Path Function:\Get-*Version | Remove-Item

<# If the functions were loaded as part of a module, the module can simply be unloaded to remove
them. 

Remove-Module -Name <ModuleName>

#>