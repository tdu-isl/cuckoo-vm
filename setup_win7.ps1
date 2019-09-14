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

# Enable Auto-login & Remote-RPC
reg add "hklm\software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v DefaultUserName /d /t REG_SZ /f
reg add "hklm\software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v DefaultPassword /d /t REG_SZ /f
reg add "hklm\software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v AutoAdminLogon /d 1 /t REG_SZ /f
reg add "hklm\system\CurrentControlSet\Control\TerminalServer" /v AllowRemoteRPC /d 0x01 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v LocalAccountTokenFilterPolicy /d 0x01 /t REG_DWORD /f

# Change Default GW
echo "[+] Change IP ==> 192.168.56.1 mask 255.255.255.0 gw 192.168.56.1"
netsh interface ipv4 set address "Local Area Connection" static 192.168.56.101 255.255.255.0 192.168.56.1

# Restart
echo "[+] Restart!"
Restart-Computer