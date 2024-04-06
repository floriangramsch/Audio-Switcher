
# Audio Switcher
**Small program to change the Audio Output**
- [Audio Switcher](#audio-switcher)
  - [Get Indexes](#get-indexes)
  - [Edit the source](#edit-the-source)
  - [Make the Switcher Exe](#make-the-switcher-exe)
  - [Icons](#icons)


## Get Indexes
To get the Indexes of your outputs either run
```
.\src\getIndex.ps1
```
or convert it to an exe and then run it. To make the executable look further down.
```
Invoke-PS2EXE .\src\getIndex.ps1 .\GetIndex.exe -NoConsole -iconFile .\icons\id.ico
```

## Edit the source
Look for the ID variables and change the numbers to the corresponding indexes. Here you could change the 2 into your index.
```
$lautsprecher_id = 2
```

## Make the Switcher Exe
Visit [PS2Exe](https://github.com/MScholtes/PS2EXE) and follow the instructions.
Then convert the .ps1 file into an .exe file.
```
Invoke-PS2EXE .\src\switchAudio.ps1 .\AudioSwitcher.exe -NoConsole -iconFile .\icons\headphones.ico -noOutput
```

## Icons
The icons have to be .ico files.
[Headphones Icon](https://www.iconarchive.com/show/android-lollipop-icons-by-dtafalonso/Headphones-Play-Music-icon.html)
[Index Icon](https://www.iconarchive.com/show/flat-ios7-style-documents-icons-by-iynque/id-icon.html)