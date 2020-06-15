#Torrent function
function torrent {
Start-Process -FilePath "C:\Program Files (x86)\Deluge\deluge.exe" -ArgumentList "$args[0]"
}