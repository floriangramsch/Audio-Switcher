Import-Module AudioDeviceCmdlets

function Show-AudioOutputID {
    $output = Get-AudioDevice -Playback
    $output.Id | Set-Clipboard
    # $output | Get-Member -MemberType Property 
    Write-Host "Current Device: $($output.Name) `nID: $($output.Id)`nIndex: $($output.Index)`n`n`t`tID copied to clipboard!"
}
Show-AudioOutputID