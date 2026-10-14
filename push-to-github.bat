@echo off
chcp 65001 > nul
echo ====================================================================
echo   Takar Somoy (টাকার সময়) - Auto Push to abdurrhamanm40-netizen/takar-somoy
echo ====================================================================
echo.

cd /d "%~dp0"

if not exist ".git" (
    git init
)

git checkout -B main
git add .
git commit -m "Complete Takar Somoy production web app"

git remote remove origin 2>nul
git remote add origin https://github.com/abdurrhamanm40-netizen/takar-somoy.git

echo.
echo Pushing all files to https://github.com/abdurrhamanm40-netizen/takar-somoy.git ...
git push -u origin main --force

echo.
echo ====================================================================
echo   সম্পন্ন! আপনার সব কোড GitHub-এ (abdurrhamanm40-netizen/takar-somoy) আপলোড হয়ে গেছে!
echo ====================================================================
pause
