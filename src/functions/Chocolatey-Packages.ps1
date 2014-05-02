function Chocolatey-Packages {

  Write-Debug "Running 'Chocolatey-Packages'.";
  $localonly = $true;
  $versionsObj = Chocolatey-Version('all');

  Write-Host "<?xml version=\"1.0\" encoding=\"utf-8\"?>
<packages>";
  foreach ($package in $versionsObj) {
    Write-Host "  <package id=""$($package.Name)"" version=""$($package.found)"" />";
  }
  Write-Host "</packages>";
}
