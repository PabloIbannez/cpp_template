#!/bin/bash
set -e

if [ ! -d "build" ]; then
    echo "Build directory not found. Please run build.sh first."
    exit 1
fi

(
    cd build
    
    # --output-on-failure prints the log only if a test fails, keeping success clean
    ctest --output-on-failure
)
