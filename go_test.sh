#!/usr/bin/env bash

find ${INPUT_TEST_DIR} -name "*.go" | while read f; do
    echo "${f%/*}"
done | sort | uniq | while read f; do
    go test "$f"
done
