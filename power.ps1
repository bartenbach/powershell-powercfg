# Changes powercfg policies

write-host "Setting High Performance Power Scheme..." -foregroundcolor "green"
powercfg /s SCHEME_MIN
write-host "Setting disk timeout to 45 minutes..." -foregroundcolor "green"
powercfg -x disk-timeout-ac 45
powercfg -x disk-timeout-dc 45
write-host "Done!" -foregroundcolor "green"
Write-Host "Press any key to continue ..."

$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")