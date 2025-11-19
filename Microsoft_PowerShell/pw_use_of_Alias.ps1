<# Aliases
An alias in PowerShell is a another shorter name for a command. PowerShell includes a set of built-in
aliases and you can also define your own aliases.
The Get-Alias cmdlet is used to find aliases. If you already know the alias for a command, the Name
parameter is used to determine what command the alias is associated with. #>

Get-Alias -Name gcm

<# The previous examples are most commonly used when you see someone using an alias that you’re
not familiar with and you’re trying to figure out what the actual command is that they’re using.
If you want to find aliases for a command, you’ll need to use the Definition parameter. #>

Get-Alias -Definition Get-Command, Get-Member