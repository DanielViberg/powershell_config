function ShowFileExtension()
{
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "0"
    Pop-Location 
    Stop-Process -processName: Explorer -force 
}

ShowFileExtension

oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/aliens.omp.json | Invoke-Expression
