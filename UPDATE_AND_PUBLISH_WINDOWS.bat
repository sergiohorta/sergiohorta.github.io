@echo off
cd /d "%~dp0"
where git >nul 2>nul || (echo ERROR: Git is not available in PATH. Install Git for Windows first.& pause & exit /b 1)
where quarto >nul 2>nul || (echo ERROR: Quarto is not available in PATH.& pause & exit /b 1)

echo Current changes:
git status --short
echo.
set /p MSG=Commit message [Update website]: 
if "%MSG%"=="" set MSG=Update website

git add .
git diff --cached --quiet
if errorlevel 1 (
  git commit -m "%MSG%" || (echo ERROR committing changes.& pause & exit /b 1)
  git push || (echo ERROR pushing main branch.& pause & exit /b 1)
) else (
  echo No source changes to commit. Continuing with publication...
)

echo.
quarto publish gh-pages
pause
