#!/bin/bash

# Function to check for unmerged files
function check_conflicts() {
    # Using git diff to list unmerged files
    if git diff --name-only --diff-filter=U | grep -q '.*'; then
        echo "True"
        return 1  # There are unmerged files
    else
        echo "False"
        return 0  # No unmerged files
    fi
}

# Check if rebasing
if [ -d ".git/rebase-merge" ] || [ -d ".git/rebase-apply" ]; then
    # Check for merge conflicts and store the result
    check_conflicts
    conflict_status=$?

    # Only prompt if there are unresolved conflicts
    if [ $conflict_status -eq 1 ]; then
        echo "Merge conflicts detected during rebase."
        read -p "Do you want to proceed with amending? (y/n): " yn
        case $yn in
            [Yy]* ) ;;
            [Nn]* ) echo "Amend cancelled."; exit 1;;
            * ) echo "Please answer yes or no."; exit 1;;
        esac
    fi
fi

# Add all resolved files and amend commit
git add .
git commit --amend --no-edit

