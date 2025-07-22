# Enable Remote Desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0

# Enable Remote Desktop through the firewall
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# Optional: Allow Network Level Authentication (more secure)
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Value 1

Write-Output "Remote Desktop has been enabled and firewall rules updated."
