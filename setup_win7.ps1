# Firewall down
echo "[+] Firewall down"
netsh advfirewall set allprofiles state off

# Disable Windows-Update
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d 1 /f
NET STOP WUAUSERV

# Install Python2.7
echo "[+] Install Python27"
mv C:\vagrant\py27.msi C:\Users\vagrant\Downloads
Start-Process msiexec.exe -Wait '/i "C:\Users\vagrant\Downloads\py27.msi" /passive /norestart'

## Path
$env:Path += ";C:\Python27"
[Environment]::SetEnvironmentVariable('PATH', $Env:Path, 'Machine')

# Install PythonPIL
echo "[+] Download PythonPIL"
C:\Python27\python -m pip install pillow

# Disable UAC
echo "[+] Disable UAC"
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force

# Enable Auto-login & Remote-RPC
echo "[+] Enable Auto-login & Remote-RPC"
reg add "hklm\software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v DefaultUserName /d "vagrant" /t REG_SZ /f
reg add "hklm\software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v DefaultPassword /d "vagrant" /t REG_SZ /f
reg add "hklm\software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v AutoAdminLogon /d 1 /t REG_SZ /f
reg add "hklm\system\CurrentControlSet\Control\TerminalServer" /v AllowRemoteRPC /d 0x01 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v LocalAccountTokenFilterPolicy /d 0x01 /t REG_DWORD /f

# Set agent.py
echo "[+] Move agent.py"
mv C:\vagrant\agent.py 'C:\Users\vagrant\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'


# Restart
echo "[+] Restart!"
Restart-Computer
