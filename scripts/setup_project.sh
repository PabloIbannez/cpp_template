#!/bin/bash
set -e

# Check if a project name was provided
if [ -z "$1" ]; then
    echo "Usage: ./setup_project.sh <new_project_name>"
    exit 1
fi

NEW_NAME=$1
PLACEHOLDER="PROJECT_NAME_PLACEHOLDER"

echo "Initializing project: $NEW_NAME"

# 1. Detect OS for sed compatibility (MacOS vs Linux)
# MacOS requires an empty string for the backup extension with -i
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED_CMD="sed -i ''"
else
    SED_CMD="sed -i"
fi

# 2. Replace placeholder in all files (excluding .git and this script)
# We look for files containing the placeholder and run sed on them
grep -rl "$PLACEHOLDER" . --exclude-dir=.git --exclude="setup_project.sh" | while read -r file ; do
    echo "Updating $file..."
    eval "$SED_CMD 's/$PLACEHOLDER/$NEW_NAME/g' \"$file\""
done

# 3. Rename the include directory
if [ -d "include/$PLACEHOLDER" ]; then
    echo "Renaming directory include/$PLACEHOLDER to include/$NEW_NAME..."
    mv "include/$PLACEHOLDER" "include/$NEW_NAME"
fi

echo "----------------------------------------------------"
echo "Project '$NEW_NAME' is ready!"
echo "Next steps:"
echo "1. conda env create -f environment.yml"
echo "2. conda activate ${NEW_NAME}_env"
echo "3. ./scripts/build.sh"
echo "4. ./scripts/build_docs.sh"
echo "5. ./scripts/run_tests.sh"
echo "6. Remove the .git directory and initialize a new git repository."
echo "7. Remove the current setup_project.sh script."
echo "----------------------------------------------------"
