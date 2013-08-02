#!/bin/bash

ORIG_PWD="$(pwd)"
cd "$(dirname "$0")"

git submodule update --init

if [ -d build ]; then
    rm -rf build
    if [ -d build ]; then
        echo "Unable to remove build directory"
        cd "$ORIG_PWD"
        exit $?
    fi
fi

cd "$ORIG_PWD"
