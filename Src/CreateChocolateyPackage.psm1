# halt immediately on any errors which occur in this module
$ErrorActionPreference = "Stop"

function EnsureChocolateyInstalled(){
    # install chocolatey
    try{
        Get-Command choco -ErrorAction Stop | Out-Null
    }
    catch{             
        iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
    }   
}

function Invoke-PoshDevOpsTask(

[String[]]
[ValidateCount(1,[Int]::MaxValue)]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$NuspecFilePath,

[String]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$OutputDirectoryPath){

    EnsureChocolateyInstalled
    
    foreach($nuspecFilePathItem in $NuspecFilePath)
    {
        if($OutputDirectoryPath){

            Write-Debug "`$OutputDirectoryPath is: $OutputDirectoryPath"
            Push-Location ( Resolve-Path $OutputDirectoryPath)
        
        }
        else{
            
            Write-Debug "`$OutputDirectoryPath not set;"
            Push-Location ( Resolve-Path . )
        
        }
                
        # invoke nuget pack
        chocolatey pack (resolve-path $nuspecFilePathItem)

        # revert location
        Pop-Location

        # handle errors
        if ($LastExitCode -ne 0) {
            throw $Error
        }
    }

}

Export-ModuleMember -Function Invoke-PoshDevOpsTask
