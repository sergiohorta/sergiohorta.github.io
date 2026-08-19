@echo off
cd /d "%~dp0"
quarto render
if errorlevel 1 goto error
echo.
echo Website rendered successfully in the _site folder.
pause
exit /b 0
:error
echo.
echo Rendering failed. Review the messages above.
pause
