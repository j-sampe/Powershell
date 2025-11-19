<# One-To-One Remoting

If you need to run a PowerShell command against one remote computer and need it to be an
interactive session, then one-to-one remoting is what you’re after. This type of remoting is provided
via the Enter-PSSession cmdlet.
In the last chapter, I stored my domain admin credentials in a variable named Cred. If you haven’t
already done so, go ahead and store your domain admin credentials in the Cred variable.
#>

$Cred = Get-Credential

<# This allows you to enter the credentials one time and use them to elevate on a per command basis
without having to enter them more than once, as long as your current PowerShell console or ISE
session is active.
Create a one-to-one PowerShell remoting session to the domain controller named dc01. #>

Enter-PSSession -ComputerName dc01 -Credential $Cred

Exit-PSSession
