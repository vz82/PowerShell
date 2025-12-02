#A one-liner for nailing down MS IIS Application Pool recycle events
Get-WinEvent -LogName System | Where-Object {$_.Message -like "*recycle*"}