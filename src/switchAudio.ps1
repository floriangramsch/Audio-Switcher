Import-Module AudioDeviceCmdlets
Import-Module BurntToast

function Switch-AudioOutput {
    # The current Output Device
    $output = Get-AudioDevice -Playback

    # Setting the IDs
    $speaker_id = '{0.0.0.00000000}.{95c09db4-60e4-4916-8cb1-b9f339c0740b}'
    $chat_id = '{0.0.0.00000000}.{e4662fbe-d068-4c97-881a-8ad134e225f8}' #Headset
    $game_id = '{0.0.0.00000000}.{8f95bf1e-a220-4879-8b05-215836bc0524}' #Headset

    $speaker = Get-AudioDevice -Id $speaker_id
    $chat = Get-AudioDevice -Id $chat_id
    $game = Get-AudioDevice -Id $game_id

    if ($output.Id -eq $speaker_id) {
        # Setting headset
        Set-AudioDevice -CommunicationOnly -Id $chat_id | Out-Null
        Set-AudioDevice -DefaultOnly -Id $game_id | Out-Null

        # Notification
        $message = "Switched to $($game.Name)."
        New-BurntToastNotification -Text $message
    } elseif ($output.Id -eq $chat_id) {
        # Setting speaker
        Set-AudioDevice -Id $speaker_id | Out-Null

        # Notification
        $message = "Switched to $($speaker.Name)."
        New-BurntToastNotification -Text $message
    } elseif ($output.Id -eq $game_id) {
        # Setting speaker
        Set-AudioDevice -Id $speaker_id | Out-Null

        # Notification
        $message = "Switched to $($speaker.Name)."
        New-BurntToastNotification -Text $message
    }
}

Switch-AudioOutput
