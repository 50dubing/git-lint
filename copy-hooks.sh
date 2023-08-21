#!/bin/bash

# This script copies the 'commit-msg' file from the repository folder to .git/hooks folder.

repo_folder="."          # Path to repository folder (change this if needed)
hooks_folder=".git/hooks" # Path to .git/hooks folder

commit_msg_file="commit-msg" # Name of the commit-msg file

# Check if the 'commit-msg' file exists in the repository folder
if [ -f "$repo_folder/$commit_msg_file" ]; then
    # Copy the 'commit-msg' file to the .git/hooks folder
    cp "$repo_folder/$commit_msg_file" "$hooks_folder/$commit_msg_file"
    chmod +x "$hooks_folder/$commit_msg_file" # Ensure the copied file has execute permissions
    echo "Copied $commit_msg_file to .git/hooks folder."
else
    echo "$commit_msg_file not found in the repository folder."
fi
