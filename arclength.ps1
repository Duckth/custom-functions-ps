
function f($x) {
    $x*$x
}

function Get-ArcLength($n) {
    $a = @()
    $a += 0
    $b = 1
    $dx = $b/$n
    $sqdx = [Math]::Pow($dx,2)
    for($i = 1; $i -lt $n+1; $i++) {
        $a += $dx*$i
    }
    for($i = 0; $i -lt $n; $i++) {
        $yip1 = f($a[$i+1])
        $yi = f($a[$i])
        $dy = [Math]::Pow($yip1 - $yi,2)
        $result += [Math]::Sqrt($sqdx+$dy)
    }
    $roundedresult = [Math]::Round($result,9)
    $roundedresult
}

