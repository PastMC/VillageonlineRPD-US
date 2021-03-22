@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user skitlse standoff2 /add >nul
net localgroup administrators skitlse /add >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP: похуй на ацпи мы же милеонеры
echo User: иди нахуй
echo Pass: чел
curl -O https://raw.githubusercontent.com/aliyajaferi/VillageonlineRPD-US/main/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://raw.githubusercontent.com/aliyajaferi/VillageonlineRPD-US/main/Files/FastConfigVPS_v5.1.exe > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant skitlse:F >nul
ICACLS C:\Windows\installer /grant skitlse:F >nul
ping -n 10 127.0.0.1 >nul






