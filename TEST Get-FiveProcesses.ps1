function Get-FiveProcesses {
        Get-Process | Select-Object -First 5

}

Get-FiveProcesses