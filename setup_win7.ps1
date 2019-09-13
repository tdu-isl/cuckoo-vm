# Firewall down
echo "[+] Firewall down"
netsh advfirewall set allprofiles state off

# Install Python2.7
echo "[+] Install Python27"
mv "C:\vagrant\py27.msi" "C:\py27.msi"
msiexec.exe /i "C:\py27.msi" /passive /norestart

## Path
$env:Path += ";C:\Python27"
[Environment]::SetEnvironmentVariable('PATH', $Env:Path, 'Machine')

# Install PythonPIL
echo "[+] Download PythonPIL"
python -m pip install pillow

# Disable UAC
echo "[+] Disable UAC"
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force

# Change Default GW
echo "[+] Change IP ==> 192.168.56.1 mask 255.255.255.0 gw 192.168.56.1"
netsh interface ipv4 set address "Local Area Connection" static 192.168.56.101 255.255.255.0 192.168.56.1

# Restart
echo "[+] Restart!"
Restart-Computer