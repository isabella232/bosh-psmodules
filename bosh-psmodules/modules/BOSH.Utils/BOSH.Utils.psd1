@{
RootModule = 'BOSH.Utils'
ModuleVersion = '0.1'
GUID = '1113e65d-b18e-4277-abc8-12c60a8f1f52'
Author = 'BOSH'
Copyright = '(c) 2017 BOSH'
Description = 'Common Utils on a BOSH deployed vm'
PowerShellVersion = '4.0'
FunctionsToExport = @('Write-Log','Open-Zip','New-Provisioner')
CmdletsToExport = @()
VariablesToExport = '*'
AliasesToExport = @()
PrivateData = @{
    PSData = @{
        Tags = @('Utils')
        LicenseUri = 'https://github.com/cloudfoundry-incubator/bosh-windows-stemcell-builder/blob/master/LICENSE'
        ProjectUri = 'https://github.com/cloudfoundry-incubator/bosh-windows-stemcell-builder'
    }
}
}
