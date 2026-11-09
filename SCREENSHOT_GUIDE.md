# Complete Screenshot & Submission Guide
## MLOps Lab Activity 1: Dataset Versioning using DVC

This guide explains **exactly where, when, and how to take every screenshot** required for your assignment submission.

---

### Screenshot 1: Environment Setup & Installed Tool Versions (Part A)
* **What it proves:** Git, Python, and DVC are successfully installed and available on your system.
* **Command to run in PowerShell:**
  ```powershell
  git --version; python --version; dvc version
  ```
* **What to capture:**
  The terminal output displaying:
  - `git version 2.x.x`
  - `Python 3.12.x`
  - `DVC version: 3.67.x`
* **Deliverable label:** `Screenshot_01_Installed_Versions.png`

---

### Screenshot 2: Project Folder Structure (Part B)
* **What it proves:** The project repository `DatasetVersioning` was created with initial directory structure.
* **Command to run in PowerShell:**
  ```powershell
  Get-ChildItem -Force
  ```
  *(Or capture a screenshot of the VS Code Explorer pane showing the folder `DatasetVersioning` with `.git`, `.dvc`, `data`, and `README.md`).*
* **What to capture:** The directory listing showing `.dvc`, `.git`, `data`, etc.
* **Deliverable label:** `Screenshot_02_Project_Folder.png`

---

### Screenshot 3: Git & DVC Repository Initialization (Part B)
* **What it proves:** Git and DVC repositories were initialized and the initial commit was created.
* **Command to run in PowerShell:**
  ```powershell
  git log --reverse --oneline
  ```
* **What to capture:** The terminal output showing the root commit:
  `97c7066 Initialize Git and DVC`
* **Deliverable label:** `Screenshot_03_Git_DVC_Init.png`

---

### Screenshot 4: Initial Dataset – Version 1 (Part C)
* **What it proves:** Folder `data/` and initial dataset `student.csv` (Version 1) were created.
* **Command to run in PowerShell:**
  ```powershell
  Get-Content data\student.csv
  ```
  *(Or open `data/student.csv` in VS Code / Notepad and take a screenshot).*
* **What to capture:**
  ```csv
  Roll No,Name,Marks
  1,Amit,80
  2,Priya,91
  3,Rahul,75
  4,Sneha,88
  ```
* **Deliverable label:** `Screenshot_04_Dataset_V1.png`

---

### Screenshot 5: Track Dataset using DVC (Part D)
* **What it proves:** DVC successfully started tracking `data/student.csv`.
* **Command to run in PowerShell:**
  ```powershell
  dvc add data/student.csv
  ```
* **What to capture:**
  Terminal showing `dvc add data/student.csv` output and instruction to run:
  `git add 'data\.gitignore' 'data\student.csv.dvc'`
* **Deliverable label:** `Screenshot_05_DVC_Add_V1.png`

---

### Screenshot 6: Generated `.dvc` Pointer & `.gitignore` File (Part D)
* **What it proves:** DVC generated the content-addressable hash metadata in `.dvc` and added `student.csv` to `.gitignore`.
* **Command to run in PowerShell:**
  ```powershell
  Get-Content data\student.csv.dvc; Get-Content data\.gitignore
  ```
* **What to capture:**
  The output showing MD5 hash `af4d905fe0adbc269b3ba8e736b2b2e9` and `/student.csv` inside `.gitignore`.
* **Deliverable label:** `Screenshot_06_DVC_File_And_Gitignore.png`

---

### Screenshot 7: Updated Dataset – Version 2 (Part E)
* **What it proves:** Dataset was modified by adding 3 students (Vikram, Pooja, Rohan), updating Amit's marks (to 95), and removing Rahul.
* **Command to run in PowerShell:**
  ```powershell
  Get-Content data\student.csv
  ```
* **What to capture:**
  ```csv
  Roll No,Name,Marks
  1,Amit,95
  2,Priya,91
  4,Sneha,88
  5,Vikram,85
  6,Pooja,92
  7,Rohan,78
  ```
* **Deliverable label:** `Screenshot_07_Dataset_V2_Updated.png`

---

### Screenshot 8: Git Commit History (Part E)
* **What it proves:** Both versions of the dataset pointers were committed into Git history.
* **Command to run in PowerShell:**
  ```powershell
  git log --oneline --graph --decorate
  ```
* **What to capture:**
  Commit history showing:
  - `Update student dataset to v2 (added 3 records, updated Amit marks, removed Rahul)`
  - `Add student dataset v1 with DVC`
  - `Initialize Git and DVC`
* **Deliverable label:** `Screenshot_08_Git_Commit_History.png`

---

### Screenshot 9: Restoring Previous Dataset Version (Part F)
* **What it proves:** You successfully restored Version 1 of the dataset using `git checkout` and `dvc checkout`.
* **Command to run in PowerShell:**
  ```powershell
  git checkout 5c3ac58 data/student.csv.dvc
  dvc checkout
  Get-Content data\student.csv
  ```
* **What to capture:**
  Terminal showing `dvc checkout` modifying `data\student.csv` and `Get-Content` showing the original 4 records (Roll No 1 to 4 with Rahul included and Amit marks = 80).
* **Deliverable label:** `Screenshot_09_Restored_Previous_Version.png`

---

### Screenshot 10: Remote Storage Configuration & DVC Push (Part G)
* **What it proves:** Configured local remote storage `../dvc-storage` and pushed the dataset version.
* **Command to run in PowerShell:**
  ```powershell
  dvc remote list
  dvc push
  Get-ChildItem -Recurse ..\dvc-storage
  ```
* **What to capture:**
  Terminal showing remote `localstorage` pointing to `..\dvc-storage`, `dvc push` output (`1 file pushed` or `Everything is up to date`), and directory listing showing the stored MD5 hash file.
* **Deliverable label:** `Screenshot_10_DVC_Remote_Push.png`

---

## Final Submission Checklist
Ensure your submitted ZIP file (`DatasetVersioning_Submission.zip`) contains:
1. `DatasetVersioning/` folder with complete project structure:
   - `data/student.csv`
   - `data/student.csv.dvc` (and `student.csv.dvc` at root)
   - `.dvc/`
   - `.gitignore`
   - `README.md`
2. `screenshots/` folder containing all 10 captured screenshots named clearly.
3. `Reflection_Answers.docx` (or exported PDF) answering all Part H reflection questions.
