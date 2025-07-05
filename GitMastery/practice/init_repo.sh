#!/bin/bash
mkdir git-demo && cd git-demo
git init
git config user.name "Dibyadyuti"
git config user.email "you@example.com"
touch README.md
git add .
git commit -m "Initial commit"
