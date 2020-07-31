function Get-Version {
	$PSVersionTable.PSVersion
}

function Get-WindowsVersion {
	(Get-ComputerInfo).WindowsVersion
}

