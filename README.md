![](https://ci.appveyor.com/api/projects/status/w5g8u9ia977n5r8k?svg=true)

####What is it?

An [Appease](https://github.com/Appease/Appease) task template that creates one or more [Chocolatey](https://chocolatey.org/) packages

####How do I install it?

```PowerShell
Add-AppeaseTask `
    -DevOpName YOUR-DEVOP-NAME `
    -Name YOUR-TASK-NAME `
    -TemplateId CreateChocolateyPackage
```

####What parameters are required?
None

####What parameters are optional?

#####IncludeNuspecPath
description: a `string[]` representing included .nuspec file paths. Either literal or wildcard paths are supported.
default: all .nuspec files at any depth starting at the root dir of the project 

#####ExcludeNuspecNameLike
description: a `string[]` representing .nuspec file names to exclude. Either literal or wildcard names are supported.

#####Recurse
description: a `Switch` representing whether to recursively search directories below $IncludeNuspecPath.

#####Version
description: a `string` representing the version of the package. Default is value from .nuspec file.

