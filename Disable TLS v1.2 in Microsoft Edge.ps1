<#
Disable TLS v1.2 in Microsoft Edge system wide.
Note: TLS v1 and TLS v1.1 are already disabled by default.

https://learn.microsoft.com/en-us/deployedge/microsoft-edge-policies#tlsciphersuitedenylist
https://wiki.mozilla.org/Security/Server_Side_TLS

Run this script as Admin
After running this, TLS v1.3 will only be used, if a website doesn't support TLS v1.3, you won't be able to visit it.

TLS v1.3 has many new security feautres and improvements over its previous versions.
#>




$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '1'  
$Value        = '0xC02B' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force


$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '2'  
$Value        = '0xC02F' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force



$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '3'  
$Value        = '0xC02C' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force


$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '4'  
$Value        = '0xC030' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force


$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '5'  
$Value        = '0xCCA9' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force


$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '6'  
$Value        = '0xCCA8' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force


$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '7'  
$Value        = '0x009E' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force



$RegistryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Edge\TLSCipherSuiteDenyList\'  
$Name         = '8'  
$Value        = '0x009F' 
If (-NOT (Test-Path $RegistryPath)) {   New-Item -Path $RegistryPath -Force | Out-Null } 
New-ItemProperty -Path $RegistryPath -Name $Name -Value $Value -PropertyType string -Force
