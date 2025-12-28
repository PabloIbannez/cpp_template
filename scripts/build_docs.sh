#!/bin/bash
set -e

# Ensure we are in the project root or adjust paths
# This assumes the script is run from the project root (./scripts/build_docs.sh)
# or you can navigate to docs/

echo "Building documentation..."

# 1. Run Sphinx
# -b html: Output HTML
# docs: Input directory (where conf.py and index.rst are)
# docs/_build/html: Output directory
sphinx-build -b html docs docs/_build/html

echo "----------------------------------------------------"
echo "Documentation built successfully!"
echo "Open the following file in your browser to view it:"
echo "file://$(pwd)/docs/_build/html/index.html"
echo "----------------------------------------------------"
