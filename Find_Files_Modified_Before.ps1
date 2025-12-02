#A one-liner for finding files (recursively) last MODIFIED BEFORE Jan. 31, 2019
Get-ChildItem -Recurse | Where-Object { $_.LastWriteTime -lt "01/31/2019" }
#Add this line to remove these also | Remove-Item -Force