Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run "capture-cam-audio.cmd", 0
WshShell.Run "capture-screen.cmd", 0
Set WshShell = Nothing
