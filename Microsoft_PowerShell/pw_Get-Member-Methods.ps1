# Methods are an action that can be taken. Use the MemberType parameter to narrow down the results
# of Get-Member to only show the methods for Get-Service.

Get-Service -Name w32time | Get-Member -MemberType Method