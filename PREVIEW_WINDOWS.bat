@echo off
cd /d "%~dp0"
echo Checking Quarto...
quarto check
if errorlevel 1 goto error
echo.
echo Starting local preview. Close this window to stop the server.
quarto preview
exit /b 0
:error
echo.
echo Quarto was not found or returned an error.
echo Open a terminal and run: quarto --version
pause
