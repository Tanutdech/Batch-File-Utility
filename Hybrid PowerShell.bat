<############## Batch portion #########################
@echo off
cls
powershell -noprofile "iex (gc \"%~f0\" | out-string)"
pause
goto :eof
######################################################>

<############# Power Shell portion ###################>
Write-host "This is a message form PowerShell"



