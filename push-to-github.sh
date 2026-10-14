#!/usr/bin/env bash
set -e

echo "===================================================================="
echo "  Takar Somoy - Auto Push to abdurrhamanm40-netizen/takar-somoy"
echo "===================================================================="

cd "$(dirname "$0")"

if [ ! -d ".git" ]; then
  git init
fi

git checkout -B main
git add .
git commit -m "Complete Takar Somoy production web app" || true

git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/abdurrhamanm40-netizen/takar-somoy.git

git push -u origin main --force

echo "===================================================================="
echo "  Done! Code pushed to https://github.com/abdurrhamanm40-netizen/takar-somoy"
echo "===================================================================="
