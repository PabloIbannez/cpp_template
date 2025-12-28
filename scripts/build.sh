#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status

# Create build directory if it doesn't exist
mkdir -p build
cd build

# Configure the project
# -DCMAKE_EXPORT_COMPILE_COMMANDS=ON generates compile_commands.json for IDEs
cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

# Build the project using all available cores but one
cmake --build . -- -j$(nproc --all | awk '{print $1-1}')

echo "Build complete."
