
# Audio Switcher
**Small program to change the Audio Output in Windows**
- [Audio Switcher](#audio-switcher)
  - [Dependencies](#dependencies)
  - [Get IDs](#get-ids)
  - [Edit the source](#edit-the-source)
  - [Make the Switcher Exe](#make-the-switcher-exe)
  - [Icons](#icons)
  - [To DOs](#to-dos)


## Dependencies
- [AudioDeviceCmdlets](https://github.com/frgnca/AudioDeviceCmdlets)
- [PS2Exe](https://github.com/MScholtes/PS2EXE)

## Get IDs
To get the IDs of your outputs either run.
```
.\src\getID.ps1
```
or convert it to an exe and then run it. To make the executable look further down.
```
Invoke-PS2EXE .\src\getID.ps1 .\GetID.exe -NoConsole -iconFile .\icons\id.ico
```

## Edit the source
Look for the ID variables and change the numbers to the corresponding IDs. 
```
$speaker = '{0.0.0.00000000}.{95c09db4-60e4-4916-8cb1-b9f339c0740b}'
```

## Make the Switcher Exe
To convert the .ps1 file into an .exe file.
```
Invoke-PS2EXE .\src\switchAudio.ps1 .\AudioSwitcher.exe -NoConsole -iconFile .\icons\headphones.ico -noOutput
```

## Icons
**The icons have to be .ico files.**
[Headphones Icon](https://www.iconarchive.com/show/android-lollipop-icons-by-dtafalonso/Headphones-Play-Music-icon.html)
[ID Icon](https://www.iconarchive.com/show/flat-ios7-style-documents-icons-by-iynque/id-icon.html)

## To DOs
- [ ] Add userfriendliness
- [ ] Automatically detect Indexes of Output Devices
- [ ] Shortcuts
- [ ] Ability to change the mute state