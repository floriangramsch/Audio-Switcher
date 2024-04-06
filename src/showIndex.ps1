Import-Module AudioDeviceCmdlets

function Show-AudioOutputId {
    $output = Get-AudioDevice -Playback
    Write-Host "Current Index is: $($output.Index)"
}
Show-AudioOutputId