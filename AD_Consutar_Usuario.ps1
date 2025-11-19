# Solicitar el valor para el parámetro -Identity
$identity = Read-Host "Introduce el valor para -Identity (por ejemplo, sAMAccountName, DN, GUID)"

# Intentar obtener el usuario de AD
try {
    $usuario = Get-ADUser -Identity $identity -Properties * -ErrorAction Stop
    Write-Host "`nInformación del usuario:`n"
    $usuario | Format-List
} catch {
    Write-Host "`nEl usuario con -Identity '$identity' no existe en Active Directory." -ForegroundColor Red
}