#Show file extensions and hidden folders
$RegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty "$RegPath" -Name "HideFileExt" -Value 0 -Type Dword
Set-ItemProperty "$RegPath" -Name "Hidden" -Value 1 -Type Dword 