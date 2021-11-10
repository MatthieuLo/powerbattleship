$GameBoard = [System.Collections.ArrayList]::new()

function Get-Dashboard {
    for ($i=0; $i -lt $GameBoard.Count; $i++) {
        for ($j=0; $j -lt $GameBoard[$i].Count; $j++) {
            Write-Host -NoNewline $GameBoard[$i][$j] " "
        }
        Write-Host ""
    }
}

function Set-Newgame {
    $initrow = $("~", "~", "~", "~", "~", "~", "~", "~", "~", "~")
    
    for ($i=0; $i -lt 10; $i++) {
        [void]$GameBoard.Add($initrow)
    }
}

Clear-Host
Set-Newgame
Get-Dashboard