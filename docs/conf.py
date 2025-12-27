import os
import sys
import subprocess

# --- Project Information ---
project = 'PROJECT_NAME_PLACEHOLDER'
copyright = '2025, Pablo Ibáñez-Freire'
author = 'Pablo Ibáñez-Freire'
version = '0.1.0'

# --- General Configuration ---
extensions = [
    'breathe',            # Bridge to Doxygen
    'sphinx_rtd_theme',   # Theme
]

# Breathe Configuration
breathe_projects = {
    "PROJECT_NAME_PLACEHOLDER": "_build_doxygen/xml"
}
breathe_default_project = "PROJECT_NAME_PLACEHOLDER"

# --- Doxygen Execution ---
# Run Doxygen automatically when building Sphinx docs
# This ensures the XML is always up to date
def run_doxygen(app):
    """Run the doxygen make command in the current directory."""
    try:
        subprocess.call('doxygen', cwd=os.path.dirname(__file__))
    except OSError as e:
        sys.stderr.write("doxygen execution failed: %s" % e)

def setup(app):
    app.connect("builder-inited", run_doxygen)

# --- Options for HTML output ---
html_theme = 'sphinx_rtd_theme'
