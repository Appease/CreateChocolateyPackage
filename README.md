####What is it?

A [PoshDevOps](https://github.com/PoshDevOps/PoshDevOps) task that creates one or more [Chocolatey](https://chocolatey.org/) packages

####How do I install it?

```PowerShell
Add-PoshDevOpsTask -Name "YOUR-TASK-NAME" -ModulePackageId "CreateChocolateyPackage"
```

####What parameters are available?

#####IncludeNuspecFilePath
A String[] representing included .nuspec file paths. Either literal or wildcard paths are supported.
```PowerShell
[String[]]
[Parameter(
    ValueFromPipelineByPropertyName = $true)]
$IncludeNuspecFilePath
```

#####ExcludeFileNameLike
A String[] representing .nuspec file names to exclude. Either literal or wildcard names are supported.
```PowerShell
[String[]]
[Parameter(
    ValueFromPipelineByPropertyName = $true)]
$ExcludeFileNameLike
```

#####Recurse
A Switch representing whether to recursively search directories below $IncludeNuspecFilePath.
```PowerShell
[Switch]
[Parameter(
    ValueFromPipelineByPropertyName = $true)]
$Recurse
```

#####OutputDirectoryPath
A String representing the path to the directory resulting .nupkg files should be place in.
```PowerShell
[String]
[Parameter(
    ValueFromPipelineByPropertyName = $true)]
$OutputDirectoryPath
```
#####Version
A String representing the version of the package. Default is value from .nuspec file. 
```PowerShell
[String]
[Parameter(
    ValueFromPipelineByPropertyName = $true)]
$Version
```

#####PathToChocolateyExe
A String representing the path to Chocolatey.exe . If not found, latest version will be installed. 
```PowerShell
[String]
[ValidateNotNullOrEmpty()]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$PathToChocolateyExe = 'C:\ProgramData\chocolatey\bin\chocolatey.exe'

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/w5g8u9ia977n5r8k?svg=true)
