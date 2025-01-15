@echo off
title SneakyBreaky - Scroll Lock Key Presser
echo Scroll Lock key press started. Press Ctrl+C to stop.

:: Use SendInput to simulate key presses without requiring focus
:loop
powershell -windowstyle hidden -command "$shell = New-Object -ComObject WScript.Shell; $shell.SendKeys('{SCROLLLOCK}'); $shell.SendKeys('{SCROLLLOCK}')"
timeout /t 5 /nobreak > nul
goto loop
