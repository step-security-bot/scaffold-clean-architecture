#!/bin/bash

changes=$(git diff-tree --no-commit-id --name-only -r HEAD)
permitted_changes=$(echo "$changes" | grep -E 'README.md|CHANGELOG.md|gradle.properties')
if [ "$changes" = "$permitted_changes" ]; then
    echo "::set-output name=valid::true"
else
    echo "You have pushed not allowed file changes:"
    diff <(echo "$permitted_changes") <(echo "$changes")
    echo "::set-output name=valid::false"
fi