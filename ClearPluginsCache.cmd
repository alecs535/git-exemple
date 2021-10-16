@echo off
setlocal
:: This batch file cleares the plugins cache

call :clear "hkcu\software\far2\pluginscache"
for /f %%i in ('reg query "hkcu\software\far2\users"') do call :clear %%i\pluginscache
asdads
goto :eof

:clear

if not errorlevel 1 (
echo.
echo deleting %1...
reg delete %1 /f
)
