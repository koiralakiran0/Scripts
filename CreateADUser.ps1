# Import AD Module
Import-Module ActiveDirectory

# Grab variables from user
$firstname = Read-Host -Prompt "Please enter the first name"
$lastname = Read-Host -Prompt "Please enter the last name"

# Create the AD User
New-ADUser `
    -Name "$firstname $lastname" `
    -GivenName $firstname `
    -Surname $lastname `
    -UserPrincipalName "$firstname.$lastname" `
    -AccountPassword (ConvertTo-SecureString "P@$$w0rd123" -AsPlainText -Force) `
    -Path "OU=Domain Users,OU=instructorpaul,DC=instructorpaul,DC=com" `
    -ChangePasswordAtLogon 1