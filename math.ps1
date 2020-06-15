function gcd {
	param([parameter(Mandatory)][long]$n, [parameter(Mandatory)][long]$m)
	[long]$r = $n % $m
	if ($r -ne 0) { 
		gcd $m $r
	}
	else {
		$m
	}
}

function lcm {
	param([long]$a, [long]$b)
	$res = gcd $a $b
	($a / $res)* $b
}
