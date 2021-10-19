$url = "https://raw.githubusercontent.com/itspaulknoll/ansible-windows/master/scripts/Upgrade-PowerShell.ps1"
$file = "$env:SystemDrive\temp\Upgrade-PowerShell.ps1"
$username = "test"
$password = ""

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

# version can be 3.0, 4.0 or 5.1
&$file -Version 5.1 -Username $username -Password $password -Verbose
