@echo off
REM ============================================================
REM  O&M Studios - Publish website to GitHub Pages
REM  Author: Manaf Al-Sheyyab
REM
REM  STEP 1 (one time): create an EMPTY repo on GitHub
REM     Go to https://github.com/new
REM       - Name:        oandmstudios
REM       - Visibility:  Public   (required for free GitHub Pages)
REM       - Do NOT add a README, .gitignore, or license
REM     Click "Create repository".
REM
REM  STEP 2: double-click THIS file (it lives inside the
REM     website folder). If asked to log in, use your GitHub
REM     Personal Access Token as the password (repo scope).
REM
REM  STEP 3: on github.com open the repo -> Settings -> Pages
REM     Source: Branch = main, Folder = / (root) -> Save.
REM
REM  Your live link (for your Instagram bio) will be:
REM     https://sheyyabmanaf.github.io/oandmstudios/
REM ============================================================

cd /d "%~dp0"

REM remove any leftover/broken git folder, start clean
if exist ".git" rmdir /s /q ".git"

git init
git config user.name "Manaf Al-Sheyyab"
git config user.email "maalsheyyab@gmail.com"
git add -A
git commit -m "O&M Studios booking site"
git branch -M main
git remote add origin https://github.com/SheyyabManaf/oandmstudios.git
git push -u origin main

echo.
echo ============================================================
echo  Pushed. Now enable Pages: repo - Settings - Pages -
echo  Branch: main / root - Save.
echo  Live at: https://sheyyabmanaf.github.io/oandmstudios/
echo ============================================================
pause
