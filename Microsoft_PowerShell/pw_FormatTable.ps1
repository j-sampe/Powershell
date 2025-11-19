<# Use the Format-Table cmdlet to manually override the formatting and show the output in a table
instead of a list.
 #>

Get-Service -Name w32time | Select-Object -Property Status, DisplayName, Can* | Format-Table