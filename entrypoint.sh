#!/bin/bash

echo "============================="

git config --global user.name "${GITHUB_ACTOR}"

# Set git user email from environment variable or default
git config --global user.email "${INPUT_EMAIL}"

# Set safe directory for GitHub Actions
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update RSS Feed" 
git push --set-upstream origin main


echo "============================="