#A script for finding path lengths
#UnauthorizedAccessException messages may occur!
$pathToScan = "C:\Windows"  # Set the path to scan here - the lengths for (sub-directories will be scanned as well)
$outputFilePath = "C:\temp\PathLengths.txt" # This must be a file in a directory that already EXISTS and does not require admin rights to write to
$writeToConsoleAsWell = $true   # Writing to the console set will be slower
 
#Opening a new file stream (quite fast) and write all the paths and their lengths to it:
$outputFileDirectory = Split-Path $outputFilePath -Parent
if (!(Test-Path $outputFileDirectory)) { New-Item $outputFileDirectory -ItemType Directory }
$stream = New-Object System.IO.StreamWriter($outputFilePath, $false)
Get-ChildItem -Path $pathToScan -Recurse -Force | Select-Object -Property FullName, @{Name="FullNameLength";Expression={($_.FullName.Length)}} | Sort-Object -Property FullNameLength -Descending | ForEach-Object {
    $filePath = $_.FullName
    $length = $_.FullNameLength
    $string = "$length : $filePath"
     
    #Output to the Console:
    if ($writeToConsoleAsWell) { Write-Host $string }
  
    #Write to the file:
    $stream.WriteLine($string)
}
$stream.Close()