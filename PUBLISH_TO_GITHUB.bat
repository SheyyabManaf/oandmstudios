@echo off
REM ============================================================
REM  O&M Studios - Publish / UPDATE website on GitHub Pages
REM  Just double-click this file any time you want to push the
REM  latest version of the site. (Repo: SheyyabManaf/oandmstudios)
REM  Live at: https://sheyyabmanaf.github.io/oandmstudios/
REM ============================================================
cd /d "%~dp0"
if not exist ".git" git init
git config user.name "Manaf Al-Sheyyab"
git config user.email "maalsheyyab@gmail.com"
git add -A
git commit -m "Update O&M Studios site" || echo (nothing new to commit)
git branch -M main
git remote remove origin >nul 2>&1
git remote add origin https://github.com/SheyyabManaf/oandmstudios.git
git push -u origin main --force
echo.
echo ============================================================
echo  Done. Live in about a minute at:
echo  https://sheyyabmanaf.github.io/oandmstudios/
echo  (If the form was just connected, test it after it reloads.)
echo ============================================================
pause
