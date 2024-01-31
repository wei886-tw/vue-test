#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<wei886-tw>.github.io
# git push -f git@github.com:<wei886-tw>/<wei886-tw>.github.io.git main

# if you are deploying to https://<wei886-tw>.github.io/<vue-test>
git push -f git@github.com:wei886-tw/vue-test.git main:gh-pages

cd -