#!/bin/bash

# Function to check for unmerged files
function check_conflicts() {
    if git ls-files --unmerged | grep -q '^[^ ]'; then
        return 1
    else
        return 0
    fi
}

# Check if rebasing
if [ -d ".git/rebase-merge" ] || [ -d ".git/rebase-apply" ]; then
    # Check for merge conflicts
    if check_conflicts; then
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

