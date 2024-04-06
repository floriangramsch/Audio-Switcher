Import-Module AudioDeviceCmdlets
Import-Module BurntToast

function Switch-AudioOutput {
    # The current Output Device
    $output = Get-AudioDevice -Playback

    # Setting the IDs
    $lautsprecher_id = 2
    $chat_id = 5 #Kopfhoerer
    $game_id = 6 #Kopfhoerer
    $lautsprecher = Get-AudioDevice -Index $lautsprecher_id
    $chat = Get-AudioDevice -Index $chat_id
    $game = Get-AudioDevice -Index $game_id

    # Setting headset
    if ($output.Index -eq $lautsprecher_id) {
        Set-AudioDevice -CommunicationOnly -Index $chat_id
        Set-AudioDevice -DefaultOnly -Index $game_id

        # Notification
        $message = "Switched to $($game.Name)."
        New-BurntToastNotification -Text $message
    }
    # Setting speaker
    elseif ($output.Index -eq $chat_id -or $output.Index -eq $game_id) {
        Set-AudioDevice -Index $lautsprecher_id

        # Notification
        $message = "Switched to $($lautsprecher.Name)."
        New-BurntToastNotification -Text $message
    }
}

Switch-AudioOutput
