#!/bin/bash
rm -rf rebase-demo
mkdir rebase-demo && cd rebase-demo
git init
echo "base" > file.txt
git add file.txt && git commit -m "base commit"

git checkout -b feature
echo "feature" >> file.txt
git commit -am "feature commit"

git checkout main
echo "main" >> file.txt
git commit -am "main commit"

git checkout feature
git rebase main
