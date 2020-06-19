#!/bin/zsh

lua build.lua --release

cd ../output/ 
git add . 
git commit 
git push origin gh-pages
