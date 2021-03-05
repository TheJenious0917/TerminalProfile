function prompt {
    $host.UI.RawUI.WindowTitle = $pwd
    $GitPromptSettings.EnableWindowTitle = $null

    $date = Get-Date
    $time = $date.toString("hh:mm:ss")

    Write-Host ""$env:USERNAME"@"$env:COMPUTERNAME" " -BackgroundColor DarkBlue -ForegroundColor White -NoNewline
    Write-Host " $pwd " -BackgroundColor Darkgreen -ForegroundColor White -NoNewline
    Write-Host " [$time] " -ForegroundColor White -backgroundcolor darkgray
    
    return "$(Write-VcsStatus) => "
}

import-module posh-git
Write-Host
