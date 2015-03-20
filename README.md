####What is it?

A [PoshDevOps](https://github.com/PoshDevOps/PoshDevOps) task that creates one or more [Chocolatey](https://chocolatey.org/) packages

####How do I install it?

```PowerShell
Add-PoshDevOpsTask -Name "YOUR-TASK-NAME" -ModulePackageId "CreateChocolateyPackage"
```

####What parameters are available?

#####NuspecFilePaths
A String[] representing explicit paths to .nuspec files you want to pass to `choco pack`
```PowerShell
[String[]]
[ValidateCount(1,[Int]::MaxValue)]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$NuspecFilePath
```
#####OutputDirectoryPath
A String representing the output directory for `choco pack` output (i.e. .nupkg's)
```PowerShell
[String]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$OutputDirectoryPath
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/w5g8u9ia977n5r8k?svg=true)
