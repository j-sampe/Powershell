# The most important and first think to do is run Update-Help.

# Update help if is the first time or you are added new commands.

# Uncomment the folow line to start or update.
##Update-Help -UICulture en-US

# Show help about command
Get-Help -Name Get-Help

# To see the examples, type:
get-Help -Name Get-Help -examples

# Similar to ShowWindow but use whit everything you can send any output to a window. Why not ?

$PSVersionTable | Out-GridView