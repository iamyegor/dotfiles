#!/bin/bash

# The commit to edit is expected as the first argument
commit_hash=$1

# Check if the HEAD is detached
branch_name=$(git symbolic-ref --short HEAD 2>/dev/null)

if [ -z "$branch_name" ]; then
    echo 'WARNING: You are in detached HEAD mode!'
    read -p 'Do you want to proceed with rebase? (yes/n): ' yn
    case $yn in
        [Yy][Ee][Ss] ) ;;
        [Nn]* ) echo 'Rebase cancelled.'; exit 1;;
        * ) echo 'Invalid input.'; exit 1;;
    esac
fi

# Proceed with the interactive rebase
git rebase -i ${commit_hash}^

