# 设置 code page utf-8
chcp 65001

#------------------------------- Import Modules BEGIN -------------------------------
# PSReadLine
Import-Module PSReadLine
# Enable Prediction History
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function ForwardWord
# Advanced Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key "Shift+Spacebar" -Function MenuComplete

# Atuin
atuin init powershell | Out-String | Invoke-Expression

#------------------------------- Import Modules END ----------------------------------





#------------------------------- Functions BEGIN --------------------------------------
#$env:PYTHONSTARTUP = "$env:USERPROFILE/.pythonstartup"
#------------------------------- Functions END ----------------------------------------





#------------------------------- Alias BEGIN -------------------------------------------
function gcp {Get-Command $args | Select-Object Path}
#------------------------------- Alias END ---------------------------------------------