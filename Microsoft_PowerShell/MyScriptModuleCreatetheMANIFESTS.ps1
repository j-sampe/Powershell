<# Module Manifests
All modules should have a module manifest. A module manifest contains metadata about your
module. The file extension for a module manifest file is PSD1. Not all files with a PSD1 extension
are module manifests. They can also be used for things such as storing the environmental portion of
a DSC (Desired State Configuration) configuration. New-ModuleManifest is used to create a module
manifest. Path is the only value that’s required. However, the module won’t work if root module
isn’t specified. It’s a good idea to specify Author and Description in case you decide to upload your
module to a Nuget repository with PowerShellGet since those values are required in that scenario.
The version of a module without a manifest is 0.0 (This is a dead giveaway that the module doesn’t
have a manifest).#>

#The module manifest can be created with all of the recommended information.

New-ModuleManifest -Path .\MyScriptModule.psd1 -RootModule MyScriptModule -Author 'You Here' -Description 'MyScriptModule' -CompanyName 'yourcompany.com'
