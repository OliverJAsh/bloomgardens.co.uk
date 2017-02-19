#!/bin/bash

set -euo pipefail

./scripts/build.sh
git checkout gh-pages
cp -r ./target/* .
git add .
git reset ./node_modules ./target
git commit --message "Build"
git checkout -
