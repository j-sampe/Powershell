# Show the use of -PassThru, simple way to stop and start a service.

# Firts stoping a service

Get-Service -Name W32Time | Stop-Service -PassThru

# Second startin a service

Get-Service -Name W32Time | Start-Service -PassThru