@{
    Name = 'CreateChocolateyPackage';
    Version = '0.0.1';
    Description = 'A PoshDevOps task that creates one or more Chocolatey packages';
    Contributors = @(@{Name='Chris Dostert'});
    ProjectUrl = 'https://github.com/PoshDevOps/CreateChocolateyPackage';
    Tags = @('Powershell','PoshDevOps','Chocolatey');
    License = @{SpdxId='Apache-2.0'};
    Dependencies = @{
        Chocolatey = @{
            Name = 'Chocolatey';
            Version = '0.9.9'
        }
    };
    Files=@(@{Include=@('.\*');Exclude=@('*.nuspec');Recurse=$true})
}