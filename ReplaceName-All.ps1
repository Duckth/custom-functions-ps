function ReplaceName-All {
	param([parameter(Mandatory)]$ToReplace,[parameter(Mandatory)]$NewValue)
	gci . | Rename-Item -NewName {$_.Name.Replace($ToReplace, $NewValue)}
}



