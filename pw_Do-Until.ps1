<# Do
There are two different Do loops in PowerShell. Do Until runs while the specified condition is false.#>

$number = Get-Random -Minimum 1 -Maximum 10

do {
    $guess = Read-Host -Prompt "What's your guess?"
    if ($guess -lt $number) {
        Write-Output 'Too low!'
        }
    elseif ($guess -gt $number) {
        Write-Output 'Too high!'
        }
}

until ($guess -eq $number)