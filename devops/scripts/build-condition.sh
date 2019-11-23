#!/bin/bash

echo "Commit range - $TRAVIS_COMMIT_RANGE $1"
echo " Target -  $TARGET $2"

if [[ -z $1 ]]; then
    echo "Commit range cannot be empty"
    exit 1
fi

if [[ -z $2 ]]; then
    echo "Change path cannot be empty"
    exit 1
fi

git diff --name-only $1 | sort -u | uniq | grep $2 > /dev/null