<#ForEach-Object
ForEach-Object is a cmdlet for iterating through items inline such as with PowerShell one-liners.
ForEach-Object streams the objects through the pipeline.
Although the Module parameter of Get-Command accepts multiple values that are strings, it only
accepts them via pipeline input by property name or via parameter input. In the following scenario,
if I want to pipe two strings by value to Get-Command for use with the Module parameter, I would
need to use the ForEach-Object cmdlet.
#>

'ActiveDirectory', 'SQLServer' | ForEach-Object {Get-Command -Module $_} | Group-Object -Property ModuleName -NoElement | Sort-Object -Property Count -Descending