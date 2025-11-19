# TypeName tells you what type of object was returned. In this example, a System.ServiceProcess.ServiceController
# object was returned. This is often abbreviated as the portion of the TypeName just after the last
# period or ServiceController in this example.
# Once you know what type of object a command produces, you’ll be able to use this information to
# find commands which accept that type of object as input.

Get-Command -ParameterType ServiceController