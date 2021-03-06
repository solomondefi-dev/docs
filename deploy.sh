#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

GIT_SSH_COMMAND='ssh -i ~/.ssh/id_ed25519_solomon -F /dev/null' git push-s -f git@github.com:solomondefi/docs.git main:gh-pages

cd -