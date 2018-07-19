#!/bin/bash

yarn build
git add docs
echo "deploy (commit) message"
read commitMessage
git commit -m "$commitMessage"
git push origin master
