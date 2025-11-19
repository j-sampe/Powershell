<# Notice that simply piping Get-Service to Format-List made it return additional properties. This
doesn’t occur with every command and is actually due to the way the formatting for that particular
command is setup behind the scenes.
The number one thing to be aware of with the format cmdlets is they produce format objects which
are different than normal objects in PowerShell.

What this means is format commands can’t be piped to most other commands. They can be piped to
some of the Out-* commands, but that’s about it. This is why you want to perform any formatting
at the very end of the line (format right).

#>

Get-Service -Name w32time | Format-List | Get-Member
