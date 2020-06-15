function coinflip() {
    
    $num = Get-Random -Maximum 2 -Minimum 0
    if ($num -eq 1) {
        Write-Output "Heads!"
    } 
    else {
        Write-Output "Tails!"
    }
}
