@echo off
cd /d "%~dp0"
echo Checking Git and Quarto...
where git >nul 2>nul || (echo ERROR: Git is not available in PATH. Install Git for Windows first.& pause & exit /b 1)
where quarto >nul 2>nul || (echo ERROR: Quarto is not available in PATH.& pause & exit /b 1)
echo.
git status --short
echo.
echo Quarto will render the site and publish it to the gh-pages branch.
quarto publish gh-pages
pause
