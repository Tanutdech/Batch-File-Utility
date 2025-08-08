@echo off
:: ---------- Create VBScript -----------------
pushd "%TEMP%"
	(	echo Dim objFolder, objShell, file, WS, TempPath
		echo Set objShell = CreateObject^("Shell.Application"^)
		echo Set objFolder = objShell.BrowseForFolder^(0, "Select Folder for Batch File", 0, ssfWINDOWS^)
		echo Set objFolder = objFolder.Self
		echo set WS=CreateObject^("WScript.Shell"^)
		echo TempPath = WS.ExpandEnvironmentStrings^("%TEMP%"^)
		echo Set file = CreateObject^("Scripting.FileSystemObject"^).OpenTextFile^(TempPath ^& "\IsPath.TXT", 2, True^)
		echo file.Write^(objFolder.Path^)
		echo file.Close
	)>BrowseFolder.vbs
	(	echo MsgBox " Access Denied!"	)>ErrorPassword.vbs
	(	echo MsgBox " Folder Locked!"	)>ErrorLocked.vbs
	(	echo MsgBox " Unlocked!"	)>UnLocked.vbs
popd "%TEMP%"
:: ---------- Menu Control --------------------
:MainMenu
cls
echo.
echo. [ 1. Lock folder ...   ]
echo. [ 2. Unlock folder ... ]
echo.
set /p a=Enter your choice 
if %a%==1 call :Menu1
if %a%==2 call :Menu2
goto :MainMenu

:Menu1
	echo.
	set /p p= Enter Password 
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
	set /p p=Enter Password 
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
			wscript "%TEMP%\UnLocked.VBS"
		) else (
			wscript "%TEMP%\ErrorPassword.VBS"
		)
	)
goto :eof