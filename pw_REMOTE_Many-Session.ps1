<# One-To-Many Remoting

Sometimes you may need to perform a task interactively on a remote computer, but remoting is
much more powerful when performing a task on multiple remote computers at the same time. The
Invoke-Command cmdlet is used to remotely run a command against one or more remote computers
at the same time.#>

$Me = Get-Credential

Invoke-Command -ComputerName dc01, sql02, web01 {Get-Service -Name W32time} -Credential $Me