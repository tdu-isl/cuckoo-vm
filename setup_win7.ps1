# Firewall down
echo "[+] Firewall down"
netsh advfirewall set allprofiles state off

# Install Python2.7
echo "[+] Download Python27"
$python_download_url = "https://www.python.org/ftp/python/2.7.16/python-2.7.16.msi"
$python_download_path = "C:\python27.msi"
bitsadmin /TRANSFER "DownloadPython27" /PRIORITY HIGH $python_download_url $python_download_path

echo "[+] Install Python27"
msiexec.exe /i "C:\python27.msi" /passive /norestart

# Install PythonPIL
echo "[+] Download PythonPIL"
$pypil_download_url = "http://effbot.org/downloads/PIL-1.1.7.win32-py2.7.exe"
$pypil_download_path = "C:\pypil.exe"
bitsadmin /TRANSFER "DownloadPythonPIL" /PRIORITY HIGH $pypil_download_url $pypil_download_path

echo "[+] Install PythonPIL"
C:\pypil.exe /s /v"/qn REBOOT=ReallySuppress"

# Disable UAC
echo "[+] Disable UAC"
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force

# Change Default GW
echo "[+] Change Default GW ==> 192.168.56.1"
netsh interface ipv4 set address "Local Area Connection 2" static 192.168.56.101 255.255.255.0 192.168.56.1
echo "[+] Restart!"
Restart-Computer