<# While
Similar to the Do While loop, a While loop runs as long as the specified condition is true. The
difference however, is that a While loop evaluates the condition at the top of the loop before any
code is run so it doesn’t run at all if the condition evaluates to false.#>

$date = Get-Date -Date 'November 23'

while ($date.DayOfWeek -ne 'Thursday') {
    $date = $date.AddDays(1)
}

Write-Output $date