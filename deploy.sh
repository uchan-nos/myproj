#!/bin/sh -ex

target_branch="ghp-deploy"
repo_uri="https://${GH_TOKEN}@github.com/uchan-nos/myproj.git"

git config user.name "CircleCI deployer"
git config user.email "<>"
git checkout $target_branch
git reset --hard origin/main

gcc -o a.out a.c
echo "size of a.out is $(wc -c a.out)" > a.attr

git add a.out a.attr
git commit -m "[skip ci] updates GitHub Pages"
if [ $? -ne 0 ]; then
  echo "nothing to commit"
  exit 0
fi

git remote set-url origin $repo_uri
git push -f origin $target_branch
