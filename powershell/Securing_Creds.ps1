#Setting up Credentials and getting the user name and securing the Password

$credential = Get-Credential
$credential.UserName | ConvertFrom-SecureString | Set-Content ./UserName.txt
$credential.Password | ConvertFrom-SecureString | Set-Content .\PASSWORD.txt

$encryptedUserName = Get-Content .\UserName.txt | ConvertTo-SecureString
$encryptedPwd = Get-Content .\PASSWORD.txt | ConvertTo-SecureString

$credential = New-Object System.Management.Automation.PsCredential($encryptedUserName, $encryptedPwd)

## Use $credential object now for supplying username and password