<# Remote PowerShell

Get-Command can be used with the ParameterName parameter to determine what commands have a ComputerName parameter.

In order to use the PowerShell remoting commands that are demonstrated from this point forward
in this chapter, PowerShell version 2.0 or higher must exist on the remote computer and PowerShell
remoting must be enabled on the remote computer

#>

Get-Command -ParameterName ComputerName

# PowerShell remoting can be enabled or re-enabled using the Enable-PSRemoting cmdlet.

# Enable-PSRemoting