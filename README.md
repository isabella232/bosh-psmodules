# bosh-psmodules (DEPRECATED September 2020)

BOSH-PSModules will be deprecated by September 2020. The recommended approach for creating local BOSH Windows stemcells which can be deployed on [Cloud Foundry BOSH](https://bosh.io), is [`stembuild`](https://github.com/cloudfoundry-incubator/stembuild).

[Documentation on how to use `stembuild` can be found here.](https://bosh.io/docs/windows-stemcell-create/)

---

Powershell scripts to set up a Windows VM in a manner appropriate for a BOSH Stemcell.

Used by [stembuild](https://github.com/cloudfoundry-incubator/stembuild) and [bosh-windows-stemcell-builder](https://github.com/cloudfoundry-incubator/bosh-windows-stemcell-builder)

## Testing

Tests are written using the Pester testing framework and must be run in Powershell on a Windows environment.

The test suite for each module currently assumes that the tests are being run with the module as the current working directory.

This requires iterating through the module directories to run all the tests:

```
cd bosh-psmodules
foreach ($module in (Get-ChildItem "./modules").Name) {
  Push-Location "modules/$module"
    $results=Invoke-Pester -PassThru
    if ($results.FailedCount -gt 0) {
      $result += $results.FailedCount
    }
  Pop-Location
}
echo "Failed Tests: $result"
```

If you just need to test a single module, you could do this:

```
cd "bosh-psmodules\module\BOSH.<module>"
Invoke-Pester
```

