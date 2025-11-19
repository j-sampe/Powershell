<# Show how to use Sessions and Credentials #>

# Declare the variable $Me and use to store your credentials with get-credentials

$Me = Get-Credential

# Show the stored credentials

Write-Output $Me

$Session = New-PSSession -ComputerName localhost -Credential $Me

Invoke-Command -Session $Session {(Get-Service -Name W32time).Status()}

Get-PSSession
Remove-PSSession