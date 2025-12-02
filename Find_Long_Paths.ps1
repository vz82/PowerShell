#A one-liner for finding paths longer than 260 chars - should work in PowerShell; if not, use the Terminal
cmd /c dir /s /b |? {$_.length -gt 260}