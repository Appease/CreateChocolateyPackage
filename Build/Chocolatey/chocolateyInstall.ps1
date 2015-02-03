try {

    . "$PSScriptRoot\Posh-CI-CreateChocolateyPackage\Install.ps1"

    Write-ChocolateySuccess 'Posh-CI-CreateChocolateyPackage'

} catch {

    Write-ChocolateyFailure 'Posh-CI-CreateChocolateyPackage' $_.Exception.Message

    throw 
}
