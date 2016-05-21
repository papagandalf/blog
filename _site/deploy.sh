#!/bin/shell

sudo rm -r _site
sudo jekyll serve
cp -r _site/* ../blog
cd ../blog
git add . -A
echo "enter commit message: "
read commitMessage
git commit -m "$commitMessage"
git push

