function cdl($to) {
	Set-Location $to && Get-ChildItem
}

function gt($to) {
    $path = Resolve-Path $to -ErrorAction Stop
    Set-Location $path -ErrorAction Stop

    $saveAt = "$($HOME)\.custom\gthistory.txt"

    # Create history file if it does not yet exist
    If (!(Test-Path $saveAt)) {
        New-Item -ItemType File -Force -Path $saveAt
    }

    # Limit number of history entries (will delete earliest entries)
    $maxHistory = 10
    If ((Get-Content $saveAt | Measure-Object -Line).Lines -ge $maxHistory) {
        (Get-Content $saveAt | Select-Object -Skip 1) | Set-Content $saveAt
    }

    Add-Content $saveAt $path
}

# pd: shorthand for "previous directory", a function to enter a previously saved
# directory (as saved with the gt function).
function pd {
    # Sets up autocomplete. All results from history that contain the first arg
    # as a substring will be autocompleted with the tab key.
    Param (
        [ArgumentCompleter({
            $inp = $args[2];

            $history = "$($HOME)\.custom\gthistory.txt"
            $paths = Get-Content $history | Sort-Object | Get-Unique

            $paths | Where-Object { $_ -like "*$inp*" }
        })]
        [String] $arg
    )

    if ($args.count -gt 0) {
        $pathList = $arg, [system.String]::Join(" ", $args)
        $path = [system.String]::Join(" ", $pathList)
    } else {
        $path = $arg
    }

    Set-Location $path
}
