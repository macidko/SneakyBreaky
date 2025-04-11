@echo off
title NumLock Toggle - Simulate Key Press
echo NumLock key press started. Press Ctrl+C to stop.

:loop
powershell -windowstyle hidden -command "$wshell = New-Object -ComObject WScript.Shell; $wshell.SendKeys('{NUMLOCK}'); Start-Sleep -Milliseconds 200; $wshell.SendKeys('{NUMLOCK}')"
timeout /t 5 /nobreak > nul
goto loop
