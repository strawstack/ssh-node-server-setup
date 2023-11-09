#! /bin/bash

# Arguments
# 1 REPO_OWNER
# 2 REPO_URL

# Command
# ssh -i ~/.ssh/id_rsa root@host "bash -s" < deploy.sh REPO_OWNER REPO_URL

git config --global user.name "Github Actions"
git config --global user.email "actions@github.com"

rm -rf repo

git clone $2 repo
cd repo

npm install
pm2 restart server.mjs
