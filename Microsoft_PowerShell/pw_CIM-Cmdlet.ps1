<# CIM (Common Information Model) cmdlets were introduced in PowerShell version 3.0. The CIM
cmdlets are designed so they can be used on both Windows and non-Windows machines. Moving
forward, the WMI cmdlets will be deprecated so my recommendation is to use the CIM cmdlets
instead of the older WMI ones.
The CIM cmdlets are all contained within a module. To obtain a list of the CIM cmdlets, simply use
Get-Command with the Module parameter as shown in the following example #>

Get-Command -Module CimCmdlets