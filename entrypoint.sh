#!/bin/bash

echo "============="

## shows the person's who is running the action username, 
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && commit -m "Update feed"

gut push --set-upstream origin main

echo "============="
