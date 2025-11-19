# Show some uses of the Get-Command.

# List evething in yout system than contains service, alias, cmdlets, programs and others.

Get-Command -Name *service*

# You can chose only one or more types of items.

Get-Command -Name *service* -CommandType Cmdlet, Function, Alias