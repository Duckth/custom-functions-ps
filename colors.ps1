function Get-Colors {
    [Enum]::GetValues([System.ConsoleColor]) | foreach { Write-Host "$_" -ForegroundColor $_ }
}

function Get-ColorsWithBackground {
    $colors = [enum]::GetValues([System.ConsoleColor])
    Foreach ($bgcolor in $colors) {
        Foreach ($fgcolor in $colors) { Write-Host "$fgcolor|"  -ForegroundColor $fgcolor -BackgroundColor $bgcolor -NoNewLine }
        Write-Host " on $bgcolor"
    }
}