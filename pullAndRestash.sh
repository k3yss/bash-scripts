#!/bin/bash

git stash
git switch master
git pull
git checkout @{-1}
git rebase master
git stash pop 

