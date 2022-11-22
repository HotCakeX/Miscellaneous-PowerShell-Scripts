# Removes all Bitlocker key protectors for Drive C, replace it with other drives if needed
(get-bitLockerVolume -MountPoint "C:").KeyProtector.keyprotectorid | ForEach-Object {Remove-BitLockerKeyProtector -MountPoint "C:" -keyprotectorId $_}
