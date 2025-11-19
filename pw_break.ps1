<# Break is designed to break out of a loop. It’s also commonly used with the switch statement.#>

for ($i = 1; $i -lt 5; $i++) {

    Write-Output "Sleeping for $i seconds"
    Start-Sleep -Seconds $i

    if ($i -eq 3) {
        <# Action to perform if the condition is true #>
        break
    }
}