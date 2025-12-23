#!/bin/bash

# Setup script for Hugo blog with PaperMod theme

echo "Setting up Hugo blog with PaperMod theme..."

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
fi

# Add PaperMod theme as submodule
if [ ! -d "themes/PaperMod" ]; then
    echo "Adding PaperMod theme as submodule..."
    git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
    git submodule update --init --recursive
else
    echo "PaperMod theme already exists. Updating..."
    git submodule update --init --recursive
fi

echo "Setup complete!"
echo ""
echo "To run the development server, use:"
echo "  hugo server"
echo ""
echo "To build for production, use:"
echo "  hugo"

