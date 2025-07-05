# 🔧 GitMastery Cheat Sheet

## 🔹 Init & Config
- `git init` – Initialize a repository
- `git config --global user.name "Your Name"`
- `git config --global user.email "you@example.com"`

## 🔹 Basic Workflow
- `git status`
- `git add .`
- `git commit -m "message"`
- `git push origin main`

## 🔹 Branching & Merging
- `git branch <name>`
- `git checkout -b <name>`
- `git merge <branch>`

## 🔹 Rebase
- `git rebase main`
- `git rebase -i HEAD~3`

## 🔹 Undo & Reset
- `git reset --soft HEAD~1`
- `git revert <commit>`

## 🔹 Remote
- `git remote add origin <url>`
- `git pull origin main`
