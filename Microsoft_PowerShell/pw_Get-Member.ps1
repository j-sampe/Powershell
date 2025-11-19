# Get-Member helps you discover what objects, properties, and methods are available for commands.
# Any command that produces object based output can be piped to Get-Member. A property is a
# characteristic about an item.

Get-Service -Name w32time | Get-Member