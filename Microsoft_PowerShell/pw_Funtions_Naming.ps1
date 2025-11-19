<# When naming your functions in PowerShell, use a pascal case name with an approved verb and a singular noun. I also recommend prefixing the noun. For example: ApprovedVerb-PrefixSingularNoun.
In PowerShell, there’s a specific list of approved verbs which can be obtained by running Get-Verb. #>

Get-Verb | Sort-Object -Property Verb