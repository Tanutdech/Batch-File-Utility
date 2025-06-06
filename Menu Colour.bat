::' ---------- Batch portion -------------------
  rem^ &@echo OFF
  rem^ &cls
  rem^ &chcp 437
  rem^ &cls
  rem^ &echo.[47;36m                                                                   
  rem^ &echo.[47;36m   __  __                        ____        _                     
  rem^ &echo.[46;37m  ^|  \/  ^|  ___  _ __   _   _   / ___^| ___  ^| ^|  ___   _   _  _ __ 
  rem^ &echo.[46;37m  ^| ^|\/^| ^| / _ \^| '_ \ ^| ^| ^| ^| ^| ^|    / _ \ ^| ^| / _ \ ^| ^| ^| ^|^| '__^|
  rem^ &echo.[44;37m  ^| ^|  ^| ^|^|  __/^| ^| ^| ^|^| ^|_^| ^| ^| ^|___^| ^(_^) ^|^| ^|^| ^(_^) ^|^| ^|_^| ^|^| ^|   
  rem^ &echo.[44;37m  ^|_^|  ^|_^| \___^|^|_^| ^|_^| \__^,_^|  \____^|\___/ ^|_^| \___/  \__^,_^|^|_^|   
  rem^ &echo.[44;37m                                                                   
  rem^ &echo.[40;37m
  rem^ &echo.  
  rem^ &echo.Author by : Tanutdech  Boonluelak. ThaiBatchFile.Blogspot.com; 2023.
  rem^ &setlocal EnableDelayedExpansion
  rem^ &set /p p1=[ Drag and Drop input Text File] 
  rem^ &cls
  rem^ &set /a c=2
  rem^ &for %%a in (40 41 42 43 44 45 46 47) do ( set /a d=1 &  set /a c+=2 &  for %%b in (30 31 32 33 34 35 36 37) do ( echo.[!c!;!d!H[%%a;%%bm%%a;%%bm &    set /a d+=8 &    set /a e=%%a-40 &    set /a f=%%b-30  ))  
  rem^ &echo.[2;0H[40;37mANSI Color Escape Value in Batch File.
  rem^ &echo.[19;1H
  rem^ &set /p p2=[ Type ANSI Escape Color Value from Choice menu ] 
  rem^ &set /p p3=[ Type ANSI Escape Color Value from Text Menu   ] 
  rem^ &wscript //nologo //e:vbscript %0 %p1% "%p2%" "%p3%"
  rem^ &goto :eof
  rem^ &endlocal
'--------------- VBS portion ------------------
Dim file, content, a ,count ,line
Set args = Wscript.Arguments
Set file = CreateObject("Scripting.FileSystemObject").OpenTextFile(args(0), 1)
content = file.ReadAll
content = replace(content,chr(34), "")
a = Split(content,vbCRLF)
Set file = CreateObject("Scripting.FileSystemObject").OpenTextFile(args(0), 2)
content = "@echo off" & vbCRLF
content = content & "set /a a=1" & vbCRLF
content = content & ":MainMenu" & vbCRLF
content = content & "echo." & chr(27) & "[" & args(2) & vbCRLF
content = content & "cls" & vbCRLF
content = content & "rem This Logo or Banner area" & vbCRLF
content = content & "rem This Logo or Banner area" & vbCRLF
content = content & "rem This Logo or Banner area" & vbCRLF
content = content & "rem This Logo or Banner area" & vbCRLF
content = content & "rem This Logo or Banner area" & vbCRLF
count = 0
Do While count<ubound(a)
  line = a(count)
  count = count + 1
  content = content & "if %a%==" & count & " ( echo." & chr(27) & "[" & args(1) & line & ") else ( echo." & chr(27) & "[" & args(2) & line & ")" & vbCRLF
Loop
content = content & "echo." & chr(27) & "[" & args(2) & vbCRLF
content = content & "echo. Press Airrow Key select menu or Escape to exit" & vbCRLF
content = content & "for /F %%k in ('PowerShell Write-Host $Host.UI.RawUI.ReadKey(\" & chr(34) & "NoEcho,IncludeKeyDown\" & chr(34) & "^).VirtualKeyCode') do set " & chr(34) & "key=%%k" & chr(34) & vbCRLF
content = content & "if %key% == 27 goto :EOF" & vbCRLF
content = content & "if %key% == 38 goto :Up" & vbCRLF
content = content & "if %key% == 37 goto :Left" & vbCRLF
content = content & "if %key% == 39 goto :Right" & vbCRLF
content = content & "if %key% == 40 goto :Down" & vbCRLF
content = content & "if %key% == 13 goto :Enter" & vbCRLF
content = content & "goto :MainMenu" & vbCRLF
content = content & ":Down" & vbCRLF
content = content & ":Left" & vbCRLF
content = content & "set /a a=%a%+1" & vbCRLF
content = content & "if %a% == " & count+1 & " set /a a=1" & vbCRLF
content = content & "goto :MainMenu" & vbCRLF
content = content & ":Up" & vbCRLF
content = content & ":Right" & vbCRLF
content = content & "set /a a=%a%-1" & vbCRLF
content = content & "if %a% == 0 set /a a=" & count & vbCRLF
content = content & "goto :MainMenu" & vbCRLF
content = content & ":Enter" & vbCRLF
count = 0
Do While count<ubound(a)
  count = count + 1
  content = content & "if %a%==" & count & " call :Menu" & count & vbCRLF
Loop
content = content & "goto :MainMenu" & vbCRLF & vbCRLF
count = 0
Do While count<ubound(a)
  count = count + 1
  content = content & ":Menu" & count & vbCRLF
  content = content & "rem Area Command Menu " & count & vbCRLF
  content = content & "goto :eof" & vbCRLF & vbCRLF 
Loop
file.Write(content)