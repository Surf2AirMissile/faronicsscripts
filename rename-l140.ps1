# Script made by Sam K - 8-14/25
# Specify the lab name manually below
$labName = "L140"

# Get the serial number of the device
$serialNumber = (Get-WmiObject -Class Win32_BIOS).SerialNumber

# Create the new computer name
$newName = "$labName-$serialNumber"

# Get the current computer name
$currentName = $env:COMPUTERNAME

# Check if the current name matches the desired name
if ($currentName -ne $newName) {
    # Rename the computer and force a restart
    Rename-Computer -NewName $newName -Force
} else {
    Write-Host "Computer name is already correct. No changes made."
}