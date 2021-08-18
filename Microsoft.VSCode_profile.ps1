function prompt {
    $Date = Get-Date -Format 'hh:mm:ss tt'

    # Test for Admin / Elevated
    $IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

    $GitPromptSettings.EnableWindowTitle = $null

    #Decorate the CMD Prompt
    Write-Host ""
    Write-Host ($(if ($IsAdmin) { 'Elevated ' } else { '' })) -BackgroundColor DarkRed -ForegroundColor White -NoNewline
    Write-Host " $env:USERNAME@$env:COMPUTERNAME " -BackgroundColor DarkBlue -ForegroundColor White -NoNewline
    Write-Host " $pwd "  -ForegroundColor White -BackgroundColor DarkGreen -NoNewline
    
    Write-Host " [$date] " -ForegroundColor White

    return "$(Write-VcsStatus) => "
}

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -PredictionSource History
Write-Host 'importing posh-git' -ForegroundColor Yellow
Import-Module posh-git
Write-Host