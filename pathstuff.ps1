function Get-PathEnvironmentVariable {
    [System.Environment]::GetEnvironmentVariable("PATH", "Machine")
}

function Update-PathEnvironmentVariable {
    param(
        [string]$Directory
    )
    if( !(Test-Path $Directory) ) {
        Write-Error "Supplied directory $Directory was not found."
        return
    }
    $PATH = Get-PathEnvironmentVariable
    if( $PATH -notlike "*"+$Directory+"* ") {
        [System.Environment]::SetEnvironmentVariable("PATH","$PATH;$Directory", "Machine")
    }
}