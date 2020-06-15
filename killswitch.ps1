
function killswitch {
	param([int]$Sec, [String]$Proc)
	Start-Sleep -Seconds $Sec
	kill -Name $Proc
}

