#  The Stop method can be used to stop a Windows service.

(Get-Service -Name w32time).Stop()