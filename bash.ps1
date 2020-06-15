function vim ($File){
    bash -c "vim $File"
}

function nano ($File){
    bash -c "nano $File"
}

function grep ($Content) {
	bash -c "grep '$Content'"
}
