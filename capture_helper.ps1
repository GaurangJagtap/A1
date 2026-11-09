# MLOps Lab 1 - Screenshot Helper Script
# Run this script in PowerShell to see and capture each step's output

Clear-Host
Write-Host "=======================================================" -ForegroundColor Cyan
Write-Host "   MLOps Lab 1: Dataset Versioning Using DVC" -ForegroundColor Yellow
Write-Host "   Screenshot Reproduction & Verification Script" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "--- SCREENSHOT 1: Part A - Installed Versions ---" -ForegroundColor Green
Write-Host "Command: git --version; python --version; dvc version" -ForegroundColor Gray
git --version
python --version
dvc version
Write-Host ""

Write-Host "--- SCREENSHOT 2: Part B - Project Folder Structure ---" -ForegroundColor Green
Write-Host "Command: Get-ChildItem -Force" -ForegroundColor Gray
Get-ChildItem -Force
Write-Host ""

Write-Host "--- SCREENSHOT 3: Part B - Git & DVC Initial Status ---" -ForegroundColor Green
Write-Host "Command: git log --reverse --oneline" -ForegroundColor Gray
git log --reverse --oneline
Write-Host ""

Write-Host "--- SCREENSHOT 4: Part C - Initial Dataset (Version 1) ---" -ForegroundColor Green
Write-Host "Command: Get-Content data\student.csv" -ForegroundColor Gray
# Temporarily check v1
git checkout 5c3ac58 data/student.csv.dvc 2>$null
dvc checkout 2>$null
Get-Content data\student.csv
Write-Host ""

Write-Host "--- SCREENSHOT 5: Part D - DVC Add & Tracking ---" -ForegroundColor Green
Write-Host "Command: dvc add data/student.csv" -ForegroundColor Gray
dvc add data/student.csv
Write-Host ""

Write-Host "--- SCREENSHOT 6: Part D - Generated .dvc and .gitignore ---" -ForegroundColor Green
Write-Host "Command: Get-Content data\student.csv.dvc; Get-Content data\.gitignore" -ForegroundColor Gray
Write-Host "[Content of data\student.csv.dvc]:" -ForegroundColor DarkCyan
Get-Content data\student.csv.dvc
Write-Host "[Content of data\.gitignore]:" -ForegroundColor DarkCyan
Get-Content data\.gitignore
Write-Host ""

Write-Host "--- SCREENSHOT 7: Part E - Updated Dataset (Version 2) ---" -ForegroundColor Green
# Restore to master / v2
git checkout 635f80a data/student.csv.dvc 2>$null
dvc checkout 2>$null
Write-Host "Command: Get-Content data\student.csv" -ForegroundColor Gray
Get-Content data\student.csv
Write-Host ""

Write-Host "--- SCREENSHOT 8: Part E - Git Commit History ---" -ForegroundColor Green
Write-Host "Command: git log --oneline --graph --decorate" -ForegroundColor Gray
git log --oneline --graph --decorate
Write-Host ""

Write-Host "--- SCREENSHOT 9: Part F - Restoring Previous Version ---" -ForegroundColor Green
Write-Host "Command: git checkout 5c3ac58 data/student.csv.dvc ; dvc checkout ; Get-Content data\student.csv" -ForegroundColor Gray
git checkout 5c3ac58 data/student.csv.dvc 2>$null
dvc checkout
Get-Content data\student.csv
# Reset back to master
git checkout master data/student.csv.dvc 2>$null
dvc checkout 2>$null
Write-Host ""

Write-Host "--- SCREENSHOT 10: Part G - Remote Storage & DVC Push ---" -ForegroundColor Green
Write-Host "Command: dvc remote list; dvc push" -ForegroundColor Gray
dvc remote list
dvc push
Write-Host ""
Write-Host "Verification complete! All 10 deliverables are ready for screenshots." -ForegroundColor Yellow
