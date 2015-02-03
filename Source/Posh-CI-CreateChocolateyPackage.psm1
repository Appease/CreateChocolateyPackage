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

function Invoke-CIStep(
[string][Parameter(Mandatory=$true)]$NuspecFilePaths,
[string]$OutputDirectoryPath){
    EnsureChocolateyInstalled
    
    foreach($nuspecFilePath in $NuspecFilePaths)
    {        
        # invoke nuget pack
        Push-Location $OutputDirectoryPath
        chocolatey pack $nuspecFilePath
        Pop-Location

        # handle errors
        if ($LastExitCode -ne 0) {
            throw $Error
        }
    }

}

Export-ModuleMember -Function Invoke-CIStep
