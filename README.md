####What is it?

A [Posh-CI](https://github.com/Posh-CI/Posh-CI) step that creates one or more [Chocolatey](https://chocolatey.org/) packages

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -ModulePackageId "Posh-CI-CreateChocolateyPackage"
```

####What parameters are available?

#####NuspecFilePaths
explicit paths to .nuspec files you want to pass to `nuget.exe pack`; default is all .nuspec files within your project root dir @ any depth
```PowerShell
[string[]][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$NuspecFilePaths
```
#####OutputDirectoryPath
the output directory to pass to `chocolatey pack`
```PowerShell
[string][Parameter(ValueFromPipelineByPropertyName=$true)]$OutputDirectoryPath='.'
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/1qk22qg7niqbgxhf?svg=true)
