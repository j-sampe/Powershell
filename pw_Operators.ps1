<# Comparison Operators
PowerShell contains a number of comparison operators which are used to compare values and to find
values that match certain patterns. Table 5-1 contains a list of comparison operators in PowerShell.

    -eq Equal to.
    -ne Not equal to.
    -gt Greater than.
    -ge Greater than or equal to.
    -lt Less than.
    -le Less than or equal to.
    -Like Match using the * wildcard character.
    -NotLike Does not match using the * wildcard character.
    -Match Matches the specified regular expression.
    -NotMatch Does not match the specified regular expression.
    -Contains Determines if a collection contains a specified value.
    -NotContains Determines if a collection does not contain a specific value.
    -In Determines if a specified value is in a collection.
    -NotIn Determines if a specified value is not in a collection.
    -Replace Replaces the specified value.

#>

# Test and play diferent options, simple sample.

$Naturals = 0..9

$Naturals -contains 9

