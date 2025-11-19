<# It’s not uncommon to run a command numerous times when prototyping it. If you’re going to
perform some huge query from something such as Active Directory, query it once and store the
results in a variable and then work with the contents of the variable instead of constantly performing
some expensive query over and over again.
 #>

 $Me = Get-ADUser -Identity Miguel

# You could pipe the $Me variable to Get-Member to determine what the properties are.
 
 $Me | Get-Member

<# Then select the individual properties by piping the Users variable to Select-Object, all without ever
having to query Active Directory more than one time. #>

$Me | Select-Object -Property Name, LastLogonDate, LastBadPasswordAttempt