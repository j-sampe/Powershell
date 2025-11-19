# Solicitar la cuenta de correo del usuario
$mail = Read-Host "Introduce la cuenta de correo del usuario"

# Buscar el usuario por el atributo 'mail'
$usuario = Get-ADUser -Filter "mail -eq '$mail'" -Properties mail, sAMAccountName, DistinguishedName, ObjectGUID, Enabled, LockedOut

# Mostrar resultados o mensaje de error
if ($usuario) {
    Write-Host "`nInformación del usuario:`n"
    $usuario | Select-Object mail, sAMAccountName, DistinguishedName, ObjectGUID, Enabled, LockedOut | Format-List

    # Mostrar estado de la cuenta
    Write-Host "`nEstado de la cuenta:"
    if ($usuario.Enabled) {
        Write-Host "✅ El usuario está habilitado."
    } else {
        Write-Host "❌ El usuario está deshabilitado."
    }

    if ($usuario.LockedOut) {
        Write-Host "🔒 El usuario está bloqueado."
    } else {
        Write-Host "🔓 El usuario no está bloqueado."
    }
} else {
    Write-Host "`nNo se encontró ningún usuario con el correo '$mail' en Active Directory." -ForegroundColor Red
}