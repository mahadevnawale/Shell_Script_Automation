#!/bin/bash

git status
sleep 3
git add .
sleep 3
git commit -m "automated commit"
git push origin main 

