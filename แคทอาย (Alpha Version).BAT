@echo off
  fsutil dirty query %systemdrive% >nul
  if %errorlevel% == 0 goto :IsRun
  ( echo Set UAC = CreateObject^("Shell.Application"^)
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1
  )> "%temp%\RunAdmin.vbs"
  "%temp%\RunAdmin.vbs"
  del "%temp%\RunAdmin.vbs"
goto :eof
:IsRun
:Loop
  chcp 874
  title Copyright 2025; Tanutdech  Boonluelak. (tanutdech@gmail.com) The MIT Licence
  cls
  echo.
  echo [0m      _/  _/  ______/ __/ ___/ ______/ _____/ __/  _/   
  echo      _/  _/  _/   _/  _/_/ _/ _/   _/     _/ _/   _/    
  echo [31m    _/  _/  ____/_/  _/   _/ _/   _/     _/  __/ _/     
  echo    __/ __/ _/   _/  _/   _/ ______/     _/ ______/      [0m
  echo.
  echo. Copyright 2025; Tanutdech  Boonluelak. batch file for Windows 10-11.
  echo.
  echo. [           [31mNETWORK[0m             ] [            [31mUTILITY[0m            ]
  echo. [  [31m1[0m.  Check Workgroup          ] [   [31ma[0m. Off Line Service         ]
  echo. [  [31m2[0m.  WhoIs Share              ] [   [31mb[0m. Clean and Speed Up       ]
  echo. [  [31m3[0m.  WhoIs Logon              ] [   [31mc[0m. Install Winget           ]
  echo. [  [31m4[0m.  Service Running          ] [   [31md[0m. Install Defender Guard   ]
  echo. [  [31m5[0m.  Hidden IP                ] [   [31me[0m. Lock and Unlock Folder   ]
  echo. [  [31m6[0m.  Unhidden IP              ] [   [31mf[0m. Batch file Obfuscator    ]
  echo. [  [31m7[0m.  Antinet Cut              ] [                               ]
  echo. [  [31m8[0m.  Disable Remote           ] [                               ]
  echo. [  [31m9[0m.  Block Firewall           ] [                               ]
  echo. [  [31m10[0m. Block Folder Share       ] [                               ]
  echo. [  [31m11[0m. Set DNS Google           ] [                               ]
  echo. [  [31m12[0m. Reset Network            ] [                               ]
  echo. [  [31m13[0m. Repair Network           ] [                               ]
  echo. [  [31m14[0m. Troubleshoot Connection  ] [                               ]
  echo. [  [31m15[0m. Analysis PORT ^& Virus    ] [                               ]
  echo.
  set /p c=Enter Menu Choice 
  if "%c%"=="1" net view & pause
  if "%c%"=="2" net share & pause
  if "%c%"=="3" net session & pause
  if "%c%"=="4" net start & Pause
  if "%c%"=="5" net config server /hidden:yes & pause
  if "%c%"=="6" net config server /hidden:no & pause
  if "%c%"=="7" call :AntiNetCut & pause
  if "%c%"=="8" call :CloseRemote & pause
  if "%c%"=="9" call :BlockFirewall & pause
  if "%c%"=="10" call :BlockFolderShare & pause
  if "%c%"=="11" call :DNSGoogle & pause
  if "%c%"=="12" call :ResetNet & pause
  if "%c%"=="13" call :RepairNet & pause
  if "%c%"=="14" call :Troubleshoot & pause
  if "%c%"=="15" call :Analysis & pause
  if "%c%"=="a" call :FixService & pause
  if "%c%"=="b" call :CleanUp & pause
  if "%c%"=="c" call :WinGet & pause
  if "%c%"=="d" call :DefenderGuard & pause
  if "%c%"=="e" call :LockAndUnlock & pause
  if "%c%"=="f" call :Obfuscate & pause
goto :Loop

:AntiNetCut
  for /f "tokens=1,2,13"  %%a in ('ipconfig') do if "%%b"=="Gateway" (
    for /f "tokens=1,2 eol=I" %%d in ('arp -a %%c') do call :SetStaticARP %%e
    goto :EOF
  )
  goto :EOF
  :SetStaticARP %1
  for /f "tokens=1,14"  %%a in ('ipconfig') do if "%%a"=="IPv4" (
    arp -s %%b %1
    msg %username% Set Static IP %%b in %1
  )
  arp -a
goto :eof

:CloseRemote
  REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
  REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 0 /f
goto :eof

:BlockFireWall
  netsh advfirewall firewall add rule name="Block1" dir=in protocol=tcp action=Block localport=1-442
  netsh advfirewall firewall add rule name="Block2" dir=in protocol=tcp action=Block localport=444-8442
  netsh advfirewall firewall add rule name="Block3" dir=in protocol=tcp action=Block localport=8444-65535
  netsh advfirewall firewall add rule name="Block4" dir=in protocol=udp action=Block localport=1-442
  netsh advfirewall firewall add rule name="Block5" dir=in protocol=udp action=Block localport=444-8442
  netsh advfirewall firewall add rule name="Block6" dir=in protocol=udp action=Block localport=8444-65535
goto :eof

:BlockFolderShare
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "AutoShareWks" /t REG_DWORD /d 0') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "AutoShareWks" /t REG_DWORD /d 0)
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "AutoShareServer" /t REG_DWORD /d 0') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "AutoShareServer" /t REG_DWORD /d 0)
goto :eof

:DNSGoogle
  netsh interface ip add dns name="Ethernet" addr=8.8.8.8
  netsh interface ip add dns name="Ethernet" addr=8.8.4.4 index=2
  netsh interface ip add dns name="WiFi" addr=8.8.8.8
  netsh interface ip add dns name="WiFi" addr=8.8.4.4 index=2
  netsh interface ip add dns name="Õ’‡∑Õ√Ï‡πÁµ" addr=8.8.8.8
  netsh interface ip add dns name="Õ’‡∑Õ√Ï‡πÁµ" addr=8.8.4.4 index=2
goto :eof

:ResetNet
  ipconfig /release
  ipconfig /flushdns
  ipconfig /renew
  netsh int ip reset
  netsh winsock reset
goto :eof

:RepairNet
  ipconfig /release
  ipconfig /release6
  ipconfig /flushdns
  netsh winsock reset 
  netsh winsock reset catalog 
  netsh int ip reset resetlog.txt
  netsh winhttp reset proxy
  net stop wwansvc
  net stop wlansvc
  net stop dot3svc
  net stop DHCP
  net stop netman /y
  timeout /t 5
  echo Renewing IP address
  net start wwansvc
  net start wlansvc
  net start dot3svc
  net start DHCP
  net start netman
  ipconfig /renew
  ipconfig /renew6
  ipconfig /registerdns
goto :eof

:Troubleshoot
  echo Troubleshooting connection
  ::goto pinging
:findgateway
  ::# Set varible for gateway
  echo.
  echo.
  ::# Define a temp variable 'DefaultGateway'
  For /f "tokens=3" %%* in (
     'route.exe print ^|findstr "\<0.0.0.0\>"'
     ) Do Set "DefaultGateway=%%*
  echo.
  echo Testing network card
  Title Testing network card
  ping 127.0.0.1 > nul 
  IF ERRORLEVEL 1 GOTO netcardfail
  ::IF ERRORLEVEL 0 GOTO alive   
  echo.
  echo.
  echo Network card is ok
  timeout /t 2
  cls
  echo. 
  echo.
  echo Testing connection to your router/Internet box
  Title Testing connection to your router and Internet box
  ping %defaultgateway% > nul 
  IF ERRORLEVEL 1 GOTO routerconnect
  ::IF ERRORLEVEL 0 GOTO alive  
  echo.
  echo.
  echo Your Connection to your Wireless box or router is working
  timeout /t 2
  cls
  echo. 
  echo.
  echo Testing Internet connection
  Title Testing Internet connection
  ::---------------
:pinging
  ::%windir%\System32\ping.exe 127.0.0.1
  @ping www.yahoo.com > nul
  ::pause
  @IF ERRORLEVEL 1 GOTO internetfail
  ::@IF ERRORLEVEL 0 GOTO alive  
  ::--------------
:alive
  echo.
  echo.
  echo Your Internet connection is fine
  timeout /t 2
  cls
:passed
  echo.
  echo.
  echo Everything passed!
  Title Everything passed!
  echo You have internet!
  echo If your browser isn't work then your browser is broken or hijacked
  echo Try another browser or scan your computer for malware.
goto :eof
:netcardfail
  cls
  color 0C
  echo.
  echo.
  echo Your network card communication has failed!
  echo Try another connection or usb network card.
goto :eof
:routerconnect
  cls
  color 0C
  echo.
  echo.
  echo Your connection to your router failed!
  echo This could be your cable or wireless connection
  echo Power cycle your router and internet box and wait 2 minutes to test again
goto :eof
:internetfail
  cls
  color 0C
  echo.
  echo.
  echo Your Internet connection failed!
  echo This may be your internet is down or your
  echo Router needs reset. Make sure you internet light on your
  echo Internet box is on.
  echo Power cycle your internet box and wait 2 minutes to test again.
  echo
  echo Delete network card driver, and reinstall
goto :eof

:FixService
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Alerter]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\Alerter" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ClipSrv]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSrv" /f /v "Start" /t REG_DWORD /d 3') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 3)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ERSvc]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\ERSvc" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FastUserSwitchingCompatibility]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\FastUserSwitchingCompatibility" /f /v "Start" /t REG_DWORD /d 3') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 3)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\helpsvc]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\helpsvc" /f /v "Start" /t REG_DWORD /d 3') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 3)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cisvc]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\cisvc" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\PolicyAgent" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Messenger]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\Messenger" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\Netlogon" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WmdmPmSp]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\WmdmPmSp" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RSVP]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\RSVP" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RDSessMgr]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\RDSessMgr" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\seclogon]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\seclogon" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SCardSvr]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCardSvr" /f /v "Start" /t REG_DWORD /d 3') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 3)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SCardDrv]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCardDrv" /f /v "Start" /t REG_DWORD /d 3') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 3)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SSDPSRV]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LmHosts]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\LmHosts" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TlntSvr]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\TlntSvr" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UPS]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\UPS" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upnphost]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\upnphost" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\uploadmgr]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\uploadmgr" /f /v "Start" /t REG_DWORD /d 3') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 3)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VSS]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /f /v "Start" /t REG_DWORD /d 2') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 2)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\WebClient" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WZCSVC]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\WZCSVC" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
  echo.[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WmiApSrv]
  for /f "tokens=*" %%a in ('reg add "HKLM\SYSTEM\CurrentControlSet\Services\WmiApSrv" /f /v "Start" /t REG_DWORD /d 4') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "Start" /t REG_DWORD /d 4)
goto :eof

:CleanUp
:harddisk
    :: Harddisk\C:\Windows
    echo | set /p="Cleaning %SystemRoot%\System32\winevt\Logs\*.* "
    for /f "tokens=*" %%l in ('wevtutil el') do (wevtutil cl "%%l")
    if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)
    for /d %%f in (^
        "%SystemRoot%\Downloaded Program Files",^
        "%SystemRoot%\Logs\CBS",^
        "%SystemRoot%\Offline Web Pages"
        "%SystemRoot%\Panther",^
        "%SystemRoot%\Prefetch",^
        "%SystemRoot%\SoftwareDistribution\Download",^
        "%SystemRoot%\Temp",^
    ) do if exist "%%~f" (
        echo | set /p="Deleting %%~f\*.* "
        pushd "%%~f" && (rd /s /q "%%~f" 2>nul & popd)
        if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)
    )

    :: Harddisk\C:\ProgramData
    for /d %%f in (^
        "%AllUsersProfile%\Dell\UpdatePackage\Log",^
        "%AllUsersProfile%\Microsoft\VisualStudio\Packages",^
        "%AllUsersProfile%\Microsoft\Windows Defender\Scans\History\Results\*",^
        "%AllUsersProfile%\Microsoft\WLSetup\Logs",^
        "%AllUsersProfile%\Package Cache",^
    ) do if exist "%%~f" (
        echo | set /p="Deleting %%~f\*.* "
        pushd "%%~f" && (rd /s /q "%%~f" 2>nul & popd)
        if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)
    )

    :: Harddisk\C:\Users
    for /d %%u in (%SystemDrive%\Users\*) do (
        for /d %%f in (^
            "%%u\.*",^
            "%%u\AppData\Local\CrashDumps",^
            "%%u\AppData\Local\Microsoft\CLR_v4.0\UsageLogs",^
            "%%u\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs",^
            "%%u\AppData\Local\Microsoft\Feeds Cache",^
            "%%u\AppData\Local\Microsoft\Internet Explorer\Recovery\*",^
            "%%u\AppData\Local\Microsoft\Terminal Server Client\Cache",^
            "%%u\AppData\Local\Microsoft\Windows\AppCache",^
            "%%u\AppData\Local\Microsoft\Windows\Explorer",^
            "%%u\AppData\Local\Microsoft\Windows\History",^
            "%%u\AppData\Local\Microsoft\Windows\INetCache",^
            "%%u\AppData\Local\Microsoft\Windows\INetCookies",^
            "%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files",^
            "%%u\AppData\Local\Microsoft\Windows\WebCache",^
            "%%u\AppData\Local\Microsoft\WLSetup\Logs",^
            "%%u\AppData\Local\Temp",^
            "%%u\AppData\Local\TortoiseGit",^
            "%%u\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content",^
            "%%u\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData",^
            "%%u\AppData\LocalLow\Microsoft\Internet Explorer\DOMStore",^
            "%%u\AppData\LocalLow\Microsoft\Windows\AppCache",^
            "%%u\AppData\Roaming\Downloaded Installations",^
            "%%u\AppData\Roaming\Microsoft Visual Studio\logs",^
            "%%u\AppData\Roaming\Microsoft\Office\Recent",^
            "%%u\AppData\Roaming\Microsoft\Windows\Cookies",^
            "%%u\AppData\Roaming\Microsoft\Windows\Recent",^
            "%%u\AppData\Roaming\Visual Studio Setup",^
        ) do if exist "%%~f" (
            echo | set /p="Deleting %%~f\*.* "
            pushd "%%~f" && (rd /s /q "%%~f" 2>nul & popd)
            if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)
        )
    )

    :: Harddisk\*:\$
    for /f %%d in ('wmic logicaldisk where "FileSystem='NTFS'" get name') do if exist "%%d\" (
        for /d %%f in ("%%d\$Extend\$UsnJrnl:$J:$DATA") do (
            echo | set /p="Deleting %%~f\*.* "
            fsutil usn deletejournal /d %%d > nul
            if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)
        )
        for /d %%f in ("%%d\$RECYCLE.BIN") do if exist "%%~f" (
            echo | set /p="Deleting %%~f\*.* "
            pushd "%%~f" && (rd /s /q "%%~f" 2>nul & popd)
            if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)
        )
    )

    :: Harddisk\Cleanmgr
    for %%i in (^
        "Active Setup Temp Folders",^
        "BranchCache",^
        "Downloaded Program Files",^
        "GameNewsFiles",^
        "GameStatisticsFiles",^
        "GameUpdateFiles",^
        "Internet Cache Files",^
        "Memory Dump Files",^
        "Offline Pages Files",^
        "Old ChkDsk Files",^
        "Previous Installations",^
        "Recycle Bin",^
        "Service Pack Cleanup",^
        "Setup Log Files",^
        "System error memory dump files",^
        "System error minidump files",^
        "Temporary Files",^
        "Temporary Setup Files",^
        "Temporary Sync Files",^
        "Thumbnail Cache",^
        "Update Cleanup",^
        "Upgrade Discarded Files",^
        "User file versions",^
        "Windows Defender",^
        "Windows Error Reporting Archive Files",^
        "Windows Error Reporting Queue Files",^
        "Windows Error Reporting System Archive Files",^
        "Windows Error Reporting System Queue Files",^
        "Windows ESD installation files",^
        "Windows Upgrade Log Files",^
    ) do (
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\%%~i" /t REG_DWORD /v StateFlags0100 /d 2 /f > nul
    )

    echo | set /p="Starting %SystemRoot%\system32\cleanmgr.exe... "
    cleanmgr.exe /sagerun:100 > nul
    if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)

    for %%i in (^
        "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU",^
        "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags",^
        "HKCU\SOFTWARE\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU",^
        "HKCU\SOFTWARE\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags",^
        "HKCU\SOFTWARE\Microsoft\Windows\Shell\BagMRU",^
        "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags",^
        "HKCU\SOFTWARE\Microsoft\Windows\ShellNoRoam\BagMRU",^
        "HKCU\SOFTWARE\Microsoft\Windows\ShellNoRoam\Bags",^
    ) do reg query "%%~i" > nul 2>&1 && if errorlevel 0 (
        echo | set /p="Deleting %%~i\*.* "
        reg delete "%%~i" /f > nul & reg add "%%~i" > nul
        if errorlevel 0 (echo [92m OK[0m) else (echo [97m ERROR[0m)
    )
  echo. [92m Clear Prefetch...[0m
  del %windir%\prefetch\*.* /q /s
  echo. [92m Clear Temporary all sub directory...[0m
  del %systemdrive%\*.tmp /q /s
  echo. [92m Clear Old file all sub directory...[0m
  del %systemdrive%\*.old /q /s
  echo. [92m Clear Check file all sub directory...[0m
  del %systemdrive%\*.chk /q /s
  echo. Set HIBERNATE [[92mON[0m]
  powercfg -h on
goto :eof

:Analysis
echo. -------------------------------------------------
echo. Check BAD Port...
echo. -------------------------------------------------
for /f "tokens=2,*" %%a in ('netstat -ano') do (
  for /f "delims=:. tokens=5" %%c in ('echo %%a') do (
    for /f "tokens=1,2" %%d in ('echo %%b') do (
      if %%e equ LISTENING (
        echo %%c  %%b
        if %%c equ 10000 echo. [ FOUND ] Drop Dumaru.Y
        if %%c equ 1001 echo. [ FOUND ] Silencer
        if %%c equ 10048 echo. [ FOUND ] Delf 
        if %%c equ 10080 echo. [ FOUND ] Drop MyDoom.B
        if %%c equ 10100 echo. [ FOUND ] Gift, Senna Spy
        if %%c equ 1026 echo. [ FOUND ] RSM
        if %%c equ 1080 echo. [ FOUND ] Drop MyDoom
        if %%c equ 1120 echo. [ FOUND ] Net Bus 
        if %%c equ 113 echo. [ FOUND ] Shiver
        if %%c equ 1170 echo. [ FOUND ] Psyber Stream
        if %%c equ 1234 echo. [ FOUND ] Ultors Trojan ^& Valvopausepause
        if %%c equ 12345 echo. [ FOUND ] Drop NetBus, GabanBus, Pie Bill Gates, X-Bill, Valvo line
        if %%c equ 12346 echo. [ FOUND ] NetBus 1.x
        if %%c equ 12349 echo. [ FOUND ] Bionet 
        if %%c equ 1243 echo. [ FOUND ] Sub Seven
        if %%c equ 1363 echo. [ FOUND ] ndm requester
        if %%c equ 1364 echo. [ FOUND ] ndm server
        if %%c equ 1368 echo. [ FOUND ] screen cast
        if %%c equ 1373 echo. [ FOUND ] hromgrafx
        if %%c equ 1377 echo. [ FOUND ] cichlid
        if %%c equ 139 echo. [ FOUND ] Drop Messenger Worm, Nuker
        if %%c equ 1433 echo. [ FOUND ] Wrom
        if %%c equ 1434 echo. [ FOUND ] Worm
        if %%c equ 16660 echo. [ FOUND ] Stacheldraht intruder-to-master
        if %%c equ 17300 echo. [ FOUND ] Drop Kuang2
        if %%c equ 18006 echo. [ FOUND ] Back Orifice 2000
        if %%c equ 18753 echo. [ FOUND ] Shaft master-to-daemon
        if %%c equ 1981 echo. [ FOUND ] ShockRave
        if %%c equ 2001 echo. [ FOUND ] Trojan Cow
        if %%c equ 20034 echo. [ FOUND ] NetBus 2 Pro
        if %%c equ 2023 echo. [ FOUND ] Ripper Pro
        if %%c equ 20432 echo. [ FOUND ] Shaft intruder-to-master
        if %%c equ 21 echo. [ FOUND ] DarkFTP 
        if %%c equ 2140 echo. [ FOUND ] Deep Throat 
        if %%c equ 21544 echo. [ FOUND ] Girl Friend 
        if %%c equ 22222 echo. [ FOUND ] Rux
        if %%c equ 2283 echo. [ FOUND ] Drop Dumaru.Y
        if %%c equ 23 echo. [ FOUND ] EliteWrap 
        if %%c equ 23432 echo. [ FOUND ] Asylum
        if %%c equ 25 echo. [ FOUND ] Jesrto 
        if %%c equ 2535 echo. [ FOUND ] Drop Beagle
        if %%c equ 25685 echo. [ FOUND ] Moon Pie 
        if %%c equ 27374 echo. [ FOUND ] Drop SubSeven, Sub Seven
        if %%c equ 2745 echo. [ FOUND ] Bagle Virus
        if %%c equ 27665 echo. [ FOUND ] Trinoo intruder-to-master
        if %%c equ 2989 echo. [ FOUND ] Rat backdoor
        if %%c equ 30100 echo. [ FOUND ] NetSphere
        if %%c equ 3024 echo. [ FOUND ] WinCrash
        if %%c equ 31 echo. [ FOUND ] Agent 31, Hackers Paradise, Masters Paradise
        if %%c equ 3127 echo. [ FOUND ] Drop MyDoom
        if %%c equ 3128 echo. [ FOUND ] Drop MyDoom
        if %%c equ 3131 echo. [ FOUND ] SubSari
        if %%c equ 31337 echo. [ FOUND ] Back Orifice, Baron Night, Bo Facil
        if %%c equ 31338 echo. [ FOUND ] Net Spy
        if %%c equ 31339 echo. [ FOUND ] Net Spy
        if %%c equ 3150 echo. [ FOUND ] Deep Throat, Invasor
        if %%c equ 33270 echo. [ FOUND ] Trinity master-to-daemon
        if %%c equ 33567 echo. [ FOUND ] Backdoor rootshell via inetd (from Lion worm)
        if %%c equ 33568 echo. [ FOUND ] Trojaned version of SSH (from Lion worm)
        if %%c equ 3410 echo. [ FOUND ] Drop Backdoor OptixPro
        if %%c equ 3700 echo. [ FOUND ] Portal of Doom
        if %%c equ 4000 echo. [ FOUND ] RA
        if %%c equ 40421 echo. [ FOUND ] Masters Paradise Trojan horse
        if %%c equ 4444 echo. [ FOUND ] Worm
        if %%c equ 44444 echo. [ FOUND ] Prosiak
        if %%c equ 4950 echo. [ FOUND ] ICQ Trojan
        if %%c equ 5554 echo. [ FOUND ] Drop Sasser
        if %%c equ 60008 echo. [ FOUND ] Backdoor rootshel via inetd (from Lion worm)
        if %%c equ 6267 echo. [ FOUND ] GW Girl 
        if %%c equ 6346 echo. [ FOUND ] Gnutella
        if %%c equ 6400 echo. [ FOUND ] The Thing
        if %%c equ 64666 echo. [ FOUND ] RSM
        if %%c equ 65000 echo. [ FOUND ] Stacheldraht master-to-daemon
        if %%c equ 65506 echo. [ FOUND ] Drop PhatBot, Agobot, Gaobot
        if %%c equ 666 echo. [ FOUND ] Rippe
        if %%c equ 6667 echo. [ FOUND ] Trinity intruder-to-master, master-to-daemon SubSeven server (default for V2.1 Icqfix and beyond)
        if %%c equ 6670 echo. [ FOUND ] Deep Throat
        if %%c equ 6711 echo. [ FOUND ] Sub Seven
        if %%c equ 6776 echo. [ FOUND ] Sub Seven
        if %%c equ 68 echo. [ FOUND ] Mspy 
        if %%c equ 6969 echo. [ FOUND ] GateCrash 
        if %%c equ 7300 echo. [ FOUND ] Net Spy 
        if %%c equ 7597 echo. [ FOUND ] Qaz
        if %%c equ 7626 echo. [ FOUND ] Gdoor 
        if %%c equ 7777 echo. [ FOUND ] GodMsg 
        if %%c equ 80 echo. [ FOUND ] Codered 
        if %%c equ 8012 echo. [ FOUND ] Ptakks
        if %%c equ 8866 echo. [ FOUND ] Drop Beagle.B
      )
    )
  )
)
goto :eof

:WinGet
  powershell $progressPreference = 'silentlyContinue'
  powershell Write-Host "Installing WinGet PowerShell module from PSGallery..."
  powershell Install-PackageProvider -Name NuGet -Force
  powershell Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery
  powershell Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..."
  powershell Repair-WinGetPackageManager
  powershell Write-Host "Done."
goto :eof

:DefenderGuard
  powershell Enable-WindowsOptionalFeature -Online -FeatureName Windows-Defender-ApplicationGuard
goto :eof

:LockAndUnLock
:: ---------- Create VBScript -----------------
pushd "%TEMP%"
 ( echo Dim objFolder, objShell, file, WS, TempPath
  echo Set objShell = CreateObject^("Shell.Application"^)
  echo Set objFolder = objShell.BrowseForFolder^(0, "Select Folder for Batch File", 0, ssfWINDOWS^)
  echo Set objFolder = objFolder.Self
  echo set WS=CreateObject^("WScript.Shell"^)
  echo TempPath = WS.ExpandEnvironmentStrings^("%TEMP%"^)
  echo Set file = CreateObject^("Scripting.FileSystemObject"^).OpenTextFile^(TempPath ^& "\IsPath.TXT", 2, True^)
  echo file.Write^(objFolder.Path^)
  echo file.Close
 )>BrowseFolder.vbs
 ( echo MsgBox " Access Denied!" )>ErrorPassword.vbs
 ( echo MsgBox " Folder Locked!" )>ErrorLocked.vbs
popd "%TEMP%"
:: ---------- Menu Control --------------------
set /a a=1
cls
echo.  1. Lock Folder  
echo.  2. Unlock Folder
set /p b=[ Enter your choice ] 
if "%b%"=="1" goto :Menu1
if "%b%"=="1" goto :Menu2
goto :eof
:Menu1
 echo.
 set /p p=[ Enter Password ] 
 wscript "%TEMP%\BrowseFolder.vbs"
 for /f "tokens=*" %%a in ('type "%TEMP%\IsPath.TXT"') do (
  if not "%p%" == "" (
   if not exist "%%a\Lock\" (
    attrib -r -s -h "%%a"
    attrib -r -s -h "%%a\desktop.ini"
    echo.[.ShellClassInfo]>"%%a\desktop.ini"
    echo.CLSID={20D04FE0-3AEA-1069-A2D8-08002B30309D}>>"%%a\desktop.ini"
    mkdir "%%a\Lock"
    attrib +r +s +h "%%a\lock" 
    mkdir "%%a\Lock\%p%"
    mkdir "%%a\Lock\nul\"
    attrib +r +s "%%a" 
    attrib +r +s +h "%%a\desktop.ini"
    echo y|cacls "%%a" /p everyone:n
   ) else (
    wscript "%TEMP%\ErrorLocked.VBS"
   )
  ) else (
   wscript "%TEMP%\ErrorPassword.VBS"
  )
 )
goto :eof
:Menu2
 echo.
 set /p p=[ Enter Password ] 
 wscript "%TEMP%\BrowseFolder.vbs"
 for /f "tokens=*" %%a in ('type "%TEMP%\IsPath.TXT"') do (
  if exist "%%a\Lock\%p%\" (
   echo y|cacls "%%a" /p everyone:f
   attrib -r -s -h "%%a"
   attrib -r -s -h "%%a\desktop.ini"
   del "%%a\desktop.ini"
   rd "%%a\Lock\nul\"
   echo y|rd "%%a\Lock" /s
   attrib -r -s "%%a"
  ) else (
   wscript "%TEMP%\ErrorPassword.VBS"
  )
 )
goto :eof

:Obfuscate
  cls
  echo.
  echo.Batch file Obfuscating...
  echo.
  echo.
  set /p c=[ Drag drop Target file ]
  (  echo.ˇ˛
     echo.cls  
     type %c% )>"%temp%\Obfuscate.txt"
  copy "%temp%\Obfuscate.txt" %c% >nul
  del "%temp%\Obfuscate.txt">nul
goto :eof


