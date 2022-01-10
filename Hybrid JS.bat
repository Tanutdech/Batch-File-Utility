/****** Batch Command portion **************
  @echo off
  cls
  cscript //E:JScript //nologo %0
  pause
  goto :eof
****************************************************************/

/*********************** JavaScript portion ********************/

  WScript.Echo("This is a message form JavaScript");


