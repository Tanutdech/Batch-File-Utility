@echo off
title Security Configer and Install Application for Windows 10.
net session
if errorlevel 1 (
  @color 4F
  @cls
  @echo.
  @echo. Plase Run as Administator...
  @echo.
  @echo.                      
  @echo.  ____    _                            ____                  
  @echo. ^|  _ \  ^| ^|   __ _   ___    ___      ^|  _ \   _   _   _ __  
  @echo. ^| ^|_^) ^| ^| ^|  / _` ^| / __^|  / _ \     ^| ^|_^) ^| ^| ^| ^| ^| ^| ^'_ \ 
  @echo. ^|  __/  ^| ^| ^| ^(_^| ^| \__ \ ^|  __/     ^|  _ ^<  ^| ^|_^| ^| ^| ^| ^| ^|
  @echo. ^|_^|     ^|_^|  \__,_^| ^|___/  \___^|     ^|_^| \_^|  \__,_^| ^|_^| ^|_^|
  @echo.                            _          
  @echo.                           / \     ___ 
  @echo.                          / _ \   / __^|
  @echo.                         / ___ \  \__ \
  @echo.                        /_/   \_\ ^|___/
  @echo.    _       _           _       _     _        _             
  @echo.   / \   __^| ^|_ __ ___ ^(_^)_ __ ^(_^)___^| ^|_ __ _^| ^|_ ___  _ __ 
  @echo.  / _ \ / _` ^| ^'_ ` _ \^| ^| ^'_ \^| ^| __^| __^| _` ^| __^| _ \^| ^'__^|
  @echo. / ___ \ ^(_^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^| ^|__ \ ^|_ ^(_^| ^| ^|_ ^(_^) ^| ^|   
  @echo./_/   \_\__,_^|_^| ^|_^| ^|_^|_^|_^| ^|_^|_^|___/\__^|__,_^|\__^|___/^|_^|   
  @echo.
  @echo.
  @echo.                  
  @pause>nul
  goto :eof
)
:Main
  color 1F
  cls
  echo   /######              /##     /########                              
  echo  /##__  ##            ^| ##    ^| ##_____/                           
  echo ^| ##  \__/  /######  /######  ^| ##       /##   /##  /######       
  echo ^| ##       ^|____  ##^|_  ##_/  ^| #####   ^| ##  ^| ## /##__  ##  
  echo ^| ##        /#######  ^| ##    ^| ##__/   ^| ##  ^| ##^| ########  
  echo ^| ##    ## /##__  ##  ^| ## /##^| ##      ^| ##  ^| ##^| ##_____/   
  echo ^|  ######/^|  #######  ^|  ####/^| ########^|  #######^|  #######  
  echo  \______/  \_______/   \____/ ^|________/ \____  ## \_______/      
  echo                                          /##  ^| ##   
  echo                                        ^|  ######/                 
  echo                                         \______/     
  echo.
  echo Author: Tanutdech  Boonluelak (CatEye), 2026; The MIT Licence.
  echo Security Configer and Install Application for Windows 10.
  echo.
  echo.
  echo Press any key for Install.
  pause>nul
  color 0F
  set p="Audit Account Logon Events"
  auditpol /set /subcategory:"Logon" /success:enable /failure:enable 
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Enable System Protection"
  vssadmin resize shadowstorage /on=C: /for=C: /maxsize=10% >nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Disable Default Admin Shares Workgroups"
  reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d 0 /f >nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Disable Default Admin Shares Servers"
  reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d 0 /f>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Use AppLocker"
  secedit /export /cfg C:\applocker.inf>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Disable LAN Manager Hashes"
  reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v NoLMHash /t REG_DWORD /d 1 /f>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Disable SMBv1"
  sc config lanmanworkstation depend= bowser/mrxsmb20/nsi>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Disable Remote Desktop Protocol (RDP)"
  reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Enable Secure Boot"
  powershell -command "Confirm-SecureBootUEFI">nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Disable Unused Network Protocols"
  netsh interface ip delete arpcache>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Disable Remote Assistance"
  reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v fAllowToGetHelp /t REG_DWORD /d 0 /f>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Clear DNS Cache"
  ipconfig /flushdns>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Configure Windows Defender"
  powershell -command "Set-MpPreference -DisableRealtimeMonitoring $false">nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  powershell $progressPreference = 'silentlyContinue'
  powershell Write-Host "Installing WinGet PowerShell module from PSGallery..."
  powershell Install-PackageProvider -Name NuGet -Force
  powershell Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery
  powershell Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..."
  powershell Repair-WinGetPackageManager
  powershell Write-Host "Done."

  echo.Installing CatEye Context Menu...
  echo.[HKEY_CLASSES_ROOT\*\shell\runas]
  echo.[HKEY_CLASSES_ROOT\DesktopBackground\Shell\CatEye]
  for /f "tokens=*" %%a in ('reg add "HKCR\DesktopBackground\Shell\CatEye" /f /v "MUIVerb" /t REG_SZ /d "CatEye Menu"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "CatEye Menu")
  for /f "tokens=*" %%a in ('reg add "HKCR\DesktopBackground\Shell\CatEye" /f /v "icon" /t REG_SZ /d "shell32.dll,-16761"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-16761")
  for /f "tokens=*" %%a in ('reg add "HKCR\DesktopBackground\Shell\CatEye" /f /v "SubCommands" /t REG_SZ /d "Menu1;Menu3;Menu4;Menu5;Menu6;Menu7;Menu8;Menu9;Menu10;Menu11;Menu12;Menu13;Menu14;Menu15"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "SubCommands" /t REG_SZ /d "Menu1;Menu3;Menu4;Menu5;Menu6;Menu7;Menu8;Menu9;Menu10;Menu11;Menu12;Menu13;Menu14;Menu15")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu1]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu1" /f /v "MUIVerb" /t REG_SZ /d "Resource Monitor"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "Resource Monitor")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu1" /f /v "icon" /t REG_SZ /d "c:\Windows\system32\perfmon.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "c:\Windows\system32\perfmon.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu1\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu1\command" /f /ve /t REG_SZ /d "perfmon.exe /res"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "perfmon.exe /res")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu2]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu2" /f /v "MUIVerb" /t REG_SZ /d "Check User"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "Check User")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu2" /f /v "icon" /t REG_SZ /d "shell32.dll,-220"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-220")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu2\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu2\command" /f /ve /t REG_SZ /d "Netplwiz.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "Netplwiz.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu3]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu3" /f /v "MUIVerb" /t REG_SZ /d "MSCONFIG"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "MSCONFIG")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu3" /f /v "icon" /t REG_SZ /d "C:\Windows\system32\msconfig.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "C:\Windows\system32\msconfig.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu3\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu3\command" /f /ve /t REG_SZ /d "msconfig.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "msconfig.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu4]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu4" /f /v "MUIVerb" /t REG_SZ /d "Control Panel"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "Control Panel")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu4" /f /v "icon" /t REG_SZ /d "shell32.dll,-22"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-22")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu4\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu4\command" /f /ve /t REG_SZ /d "rundll32.exe shell32.dll Control_RunDLL"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "rundll32.exe shell32.dll Control_RunDLL")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu5]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu5" /f /v "MUIVerb" /t REG_SZ /d "REGEDIT"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "REGEDIT")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu5" /f /v "icon" /t REG_SZ /d "c:\Windows\regedit.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "c:\Windows\regedit.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu5\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu5\command" /f /ve /t REG_SZ /d "regedit.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "regedit.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu6]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu6" /f /v "MUIVerb" /t REG_SZ /d "MSInfo32"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "MSInfo32")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu6" /f /v "icon" /t REG_SZ /d "c:\windows\system32\msinfo32.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "c:\windows\system32\msinfo32.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu6\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu6\command" /f /ve /t REG_SZ /d "msinfo32.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "msinfo32.exe")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu7]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu7" /f /v "MUIVerb" /t REG_SZ /d "FireWall"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "FireWall")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu7" /f /v "icon" /t REG_SZ /d "shell32.dll,-16747"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-16747")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu7\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu7\command" /f /ve /t REG_SZ /d "mmc.exe wf.msc"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "mmc.exe wf.msc")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu8]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu8" /f /v "MUIVerb" /t REG_SZ /d "Device Manager"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "Device Manager")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu8" /f /v "icon" /t REG_SZ /d "shell32.dll,-316"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-316")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu8\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu8\command" /f /ve /t REG_SZ /d "mmc.exe devmgmt.msc"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "mmc.exe devmgmt.msc")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu9]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu9" /f /v "MUIVerb" /t REG_SZ /d "Disk Manager"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "Disk Manager")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu9" /f /v "icon" /t REG_SZ /d "shell32.dll,11"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,11")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu9\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu9\command" /f /ve /t REG_SZ /d "mmc.exe diskmgmt.msc"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "mmc.exe diskmgmt.msc")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu10]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu10" /f /v "MUIVerb" /t REG_SZ /d "Windows Setting"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "Windows Setting")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu10" /f /v "icon" /t REG_SZ /d "shell32.dll,-135"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-135")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu10\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu10\command" /f /ve /t REG_SZ /d "explorer ms-settings:"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "explorer ms-settings:")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu11]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu11" /f /v "MUIVerb" /t REG_SZ /d "Adapter Network"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "Adapter Network")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu11" /f /v "icon" /t REG_SZ /d "shell32.dll,-273"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-273")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu11\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu11\command" /f /ve /t REG_SZ /d "control ncpa.cpl"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "control ncpa.cpl")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu12]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu12" /f /v "MUIVerb" /t REG_SZ /d "User Account"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "MUIVerb" /t REG_SZ /d "User Account")
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu12" /f /v "icon" /t REG_SZ /d "shell32.dll,-220"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-220")
  echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu12\command]
  for /f "tokens=*" %%a in ('reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Menu12\command" /f /ve /t REG_SZ /d "Netplwiz.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "Netplwiz.exe")
  echo.[HKEY_CLASSES_ROOT\DesktopBackground\Shell\GodMode]
  for /f "tokens=*" %%a in ('reg add "HKCR\DesktopBackground\Shell\GodMode" /f /ve /t REG_SZ /d "God Mode"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "God Mode")
  for /f "tokens=*" %%a in ('reg add "HKCR\DesktopBackground\Shell\GodMode" /f /v "Icon" /t REG_SZ /d "control.exe"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Icon" /t REG_SZ /d "control.exe")
  echo.[HKEY_CLASSES_ROOT\DesktopBackground\Shell\GodMode\command]
  for /f "tokens=*" %%a in ('reg add "HKCR\DesktopBackground\Shell\GodMode\command" /f /ve /t REG_SZ /d "explorer shell:::{ED7BA470-8E54-465E-825C-99712043E01C}"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "explorer shell:::{ED7BA470-8E54-465E-825C-99712043E01C}")
  echo.[HKEY_CLASSES_ROOT\*\shell\runas]
  for /f "tokens=*" %%a in ('reg add "HKCR\*\shell\runas" /f /ve /t REG_SZ /d "Take Ownership"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "Take Ownership")
  for /f "tokens=*" %%a in ('reg add "HKCR\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d ""') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "NoWorkingDirectory" /t REG_SZ /d "")
  for /f "tokens=*" %%a in ('reg add "HKCR\*\shell\runas" /f /v "icon" /t REG_SZ /d "shell32.dll,-328"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-328")
  echo.[HKEY_CLASSES_ROOT\*\shell\runas\command]
  for /f "tokens=*" %%a in ('reg add "HKCR\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"&& icacls\"%1\"/grant administrators:F"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"&& icacls\"%1\"/grant administrators:F")
  for /f "tokens=*" %%a in ('reg add "HKCR\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"&& icacls\"%1\"/grant administrators:F"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"&& icacls\"%1\"/grant administrators:F")
  echo.[HKEY_CLASSES_ROOT\Directory\shell\runas]
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\runas" /f /ve /t REG_SZ /d "Take Ownership"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "Take Ownership")
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d ""') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "NoWorkingDirectory" /t REG_SZ /d "")
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\runas" /f /v "icon" /t REG_SZ /d "shell32.dll,-328"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-328")
  echo.[HKEY_CLASSES_ROOT\Directory\shell\runas\command]
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"/r /d y && icacls\"%1\"/grant administrators:F /t"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"/r /d y && icacls\"%1\"/grant administrators:F /t")
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"/r /d y && icacls\"%1\"/grant administrators:F /t"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f\"%1\"/r /d y && icacls\"%1\"/grant administrators:F /t")

  set p="Deny Terminal Server Connections"
  REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  set p="Deny Terminal Server Connections"
  REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 0 /f>nul
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)


  set p="Block Localport as Firewall and Open 443, 8443"
  netsh advfirewall firewall add rule name="Block1" dir=in protocol=tcp action=Block localport=1-442
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)
  netsh advfirewall firewall add rule name="Block2" dir=in protocol=tcp action=Block localport=444-8442
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)
  netsh advfirewall firewall add rule name="Block3" dir=in protocol=tcp action=Block localport=8444-65535
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)
  netsh advfirewall firewall add rule name="Block4" dir=in protocol=udp action=Block localport=1-442
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)
  netsh advfirewall firewall add rule name="Block5" dir=in protocol=udp action=Block localport=444-8442
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)
  netsh advfirewall firewall add rule name="Block6" dir=in protocol=udp action=Block localport=8444-65535
  if errorlevel 1 (echo.[0m[[31m Error! [0m] %p%) else (echo.[0m[[32m OK [0m] %p%)

  echo.Installing Application...
  winget install AIMP.AIMP
  winget install BandicamCompany.Bandicam
  winget install Mozilla.Firefox.th
  winget install VideoLAN.VLC
  winget install ACDSystems.ACDSee.Free

  echo.Installing Windows Defender Guard...
  powershell Enable-WindowsOptionalFeature -Online -FeatureName Windows-Defender-ApplicationGuard

goto :eof