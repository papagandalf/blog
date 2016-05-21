#!/bin/shell

rm -r _site
sudo jekyll serve
rm -r ../../theBlog-dep/blog/*
cp -r _site/* ../../theBlog-dep/blog/
cd ../../theBlog-dep/blog
git add . -A
echo "enter commit message: "
read commitMessage
git commit -m "$commitMessage"
git push
cd ../../theBlog/blog
