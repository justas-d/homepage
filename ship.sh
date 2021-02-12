#!/bin/zsh

lua5.3 build.lua --release

cd ../output/ 
git add . 
git commit 
git push origin master
