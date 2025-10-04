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
  title Batch File Utility (Gramma Version). Author: Tanutdech  Boonluelak; 2025.
  chcp 437
  echo.[47m
  cls
  echo.[1;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[2;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[3;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[4;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[5;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[6;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[7;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[8;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[9;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[10;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[11;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[12;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[13;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[14;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[15;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[16;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[17;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[18;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[19;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[20;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[21;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;47mﬂ[30;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[22;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;40mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[23;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;40mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[30;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[24;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[25;20H[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ[37;47mﬂ
  echo.[18;56H[30mCatEye
  echo.[01H[37;40m[Batch File Utility (Gramma Version)][47m
  echo.[02H[30m[  1. Block Firewall Remote IP      ]
  echo.[03H[30m[  2. Open HTTPs and Block All Port ]
  echo.[04H[30m[  3. Kill All Process My Computer  ]
  echo.[05H[30m[  4. Lock and UnLock Folder        ]
  echo.[06H[30m[  5. Set DNS at Google             ]
  echo.[07H[30m[  6. Block and Close Share Remote  ]
  echo.[08H[30m[  7. Install Winget                ]
  echo.[09H[30m[  8. Install Defender Guard        ]
  echo.[10H[30m[  9. Install CatEye Contextmenu    ]
  echo.[11H[30m
  set /p c=Enter your choice ^>
  if %c%==1 call :BlockIP
  if %c%==2 call :BlockAllPort
  if %c%==3 call :KillAll
  if %c%==4 call :LockAndUnlock
  if %c%==5 call :DNSGoogle
  if %c%==6 call :BlockAndClose
  if %c%==7 call :Winget
  if %c%==8 call :DefenderGuard
  if %c%==9 call :ContextMenu
  echo.[40m
goto :Loop

:BlockIP
  echo.
  set /p IP=Enter IP ^>
  netsh advfirewall firewall add rule name="BlockTCPIP" dir=in protocol=tcp action=Block  remoteip=%IP%
  netsh advfirewall firewall add rule name="BlockUDPIP" dir=in protocol=udp action=Block  remoteip=%IP%
  pause
goto :eof

:BlockAllPort
  netsh advfirewall firewall add rule name="Block1" dir=in protocol=tcp action=Block localport=1-442
  netsh advfirewall firewall add rule name="Block2" dir=in protocol=tcp action=Block localport=444-8442
  netsh advfirewall firewall add rule name="Block3" dir=in protocol=tcp action=Block localport=8444-65535
  netsh advfirewall firewall add rule name="Block4" dir=in protocol=udp action=Block localport=1-442
  netsh advfirewall firewall add rule name="Block5" dir=in protocol=udp action=Block localport=444-8442
  netsh advfirewall firewall add rule name="Block6" dir=in protocol=udp action=Block localport=8444-65535
  pause
goto :eof

:KillAll
  pushd "%TEMP%"
  ( echo.    strComputer ^= ^".^"
    echo.    Set objWMIService ^= GetObject^(^"winmgmts^:^\^\^" ^& strComputer ^& ^"^\root^\CIMV2^"^)
    echo.    Set colItems ^= objWMIService.ExecQuery^( _
    echo.        ^"SELECT * FROM Win32_Process^", , 48^)
    echo.    For Each objItem In colItems
    echo.        objItem.Terminate
    echo.    Next
  )>KillAll.VBS
  start KillAll.VBS>nul
  popd "%TEMP%"
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

:DNSGoogle
  netsh interface ip add dns name="Ethernet" addr=8.8.8.8
  netsh interface ip add dns name="Ethernet" addr=8.8.4.4 index=2
  netsh interface ip add dns name="WiFi" addr=8.8.8.8
  netsh interface ip add dns name="WiFi" addr=8.8.4.4 index=2
  netsh interface ip add dns name="Õ’‡∑Õ√Ï‡πÁµ" addr=8.8.8.8
  netsh interface ip add dns name="Õ’‡∑Õ√Ï‡πÁµ" addr=8.8.4.4 index=2
  pause
goto :eof

:BlockAndClose
  REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
  REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 0 /f
  reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "AutoShareWks" /t REG_DWORD /d 0
  reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v "AutoShareServer" /t REG_DWORD /d 0
  pause
goto :eof

:Winget
  powershell $progressPreference = 'silentlyContinue'
  powershell Write-Host "Installing WinGet PowerShell module from PSGallery..."
  powershell Install-PackageProvider -Name NuGet -Force
  powershell Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery
  powershell Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..."
  powershell Repair-WinGetPackageManager
  powershell Write-Host "Done."
  pause
goto :eof

:DefenderGuard
  powershell Enable-WindowsOptionalFeature -Online -FeatureName Windows-Defender-ApplicationGuard
  pause
goto :eof

:ContextMenu
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
  echo.[HKEY_CLASSES_ROOT\Directory\shell\Command Prompt Here]
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\Command Prompt Here" /f /v "icon" /t REG_SZ /d "shell32.dll,-153"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] "icon" /t REG_SZ /d "shell32.dll,-153")
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\Command Prompt Here" /f /ve /t REG_SZ /d "Command &Prompt Here"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "Command &Prompt Here")
  echo.[HKEY_CLASSES_ROOT\Directory\shell\Command Prompt Here\command]
  for /f "tokens=*" %%a in ('reg add "HKCR\Directory\shell\Command Prompt Here\command" /f /ve /t REG_SZ /d "cmd.exe /k cd %1"') do if not errorlevel 1 (echo.[0m[[32m OK [0m] @ /t REG_SZ /d "cmd.exe /k cd %1")
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
  pause
goto :eof
