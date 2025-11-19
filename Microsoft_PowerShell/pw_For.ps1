<# For
A For loop iterates through an array while a specified condition is true. The For loop is not something
that I use often, but it does have its uses.

In the next example, the loop will iterate four times by starting off with the number one and
continue as long as the counter variable “i” is less than five. It will sleep for a total of ten seconds.
#>

for ($i = 1; $i -lt 5; $i++) {
    Write-Output "Sleeping for $i seconds"
    Start-Sleep -Seconds $i
    }
