#!/usr/bin/env bash

set -e

BRANCH_NAME=${TRAVIS_PULL_REQUEST_BRANCH:-$TRAVIS_BRANCH}

if [[ $BRANCH_NAME = "master" ]]
then
  node_modules/.bin/eslint-gh-release
fi