<# Do While is just the opposite, it runs as long as the specified condition is evaluated to true.#>

$number = Get-Random -Minimum 1 -Maximum 10

Write-Output $number

do {
    $guess = Read-Host -Prompt "What's your guess?"
    if ($guess -lt $number) {
        Write-Output 'Too low!'
    }
    elseif ($guess -gt $number) {
        Write-Output 'Too high!'
    }
}

while ($guess -ne $number)