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

#------------------------------- Import Modules END ----------------------------------





#------------------------------- Functions BEGIN --------------------------------------
#$env:PYTHONSTARTUP = "$env:USERPROFILE/.pythonstartup"
#------------------------------- Functions END ----------------------------------------





#------------------------------- Alias BEGIN -------------------------------------------
function prb { pdm run python $home/Codes/01-Developing/016-beandas_by_pdm/beandas/beandas/cli.py $args}
#------------------------------- Alias END ---------------------------------------------