Import-Module AudioDeviceCmdlets
Import-Module BurntToast

function Switch-AudioOutput {
    # The current Output Device
    $output = Get-AudioDevice -Playback

    # Setting the IDs
    $speaker_id = '{0.0.0.00000000}.{95c09db4-60e4-4916-8cb1-b9f339c0740b}'
    $chat_id = '{0.0.0.00000000}.{f40c6c9b-4572-4b93-8b0b-7b6cad9e393d}' #Headset
    $game_id = '{0.0.0.00000000}.{f5d66610-546f-4a91-b994-977bbd843869}' #Headset

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
