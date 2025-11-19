# Explaints the use of Active Directory Power Shell.

# Use Get-Command with the Module parameter to determine what commands were added as part of
#the ActiveDirectory PowerShell module when the remote server administration tools were installed.

# Change identity by your AD id.

Get-Command -Module ActiveDirectory

    Read-Host -Prompt "Press any key to continue..."

get-aduser -identity Miguel -Properties *

    Read-Host -Prompt "Press any key to continue..."

Get-ADUser -Identity Miguel -Properties CannotChangePassword, Enabled, LastBadPasswordAttempt, LastLogonDate, LogonCount, MemberOf, Modified, PasswordExpired, PasswordLastSet, PasswordNeverExpires, PasswordLastSet, whenChanged, whenCreated

    Read-Host -Prompt "Press any key to continue..."

Get-ADUser -Identity Miguel | Get-Member

    Read-Host -Prompt "Press any key to continue..."

    Get-ADUser -Identity Miguel -Properties * | Get-Member