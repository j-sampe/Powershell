# Notice that there are more properties than are displayed by default. Although these additional
# properties aren’t displayed by default, they can be selected from the pipeline by piping the command
# to the Select-Object cmdlet and using the Property parameter. The following example selects all of
# the properties by piping the results of Get-Service to Select-Object and specifying the * wildcard
# character as the value for the Property parameter.

Get-Service -Name w32time | Select-Object -Property Status, Name, DisplayName, ServiceName, Can*