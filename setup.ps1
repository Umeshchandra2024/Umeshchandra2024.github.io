# Setup script for Hugo blog with PaperMod theme (PowerShell)

Write-Host "Setting up Hugo blog with PaperMod theme..." -ForegroundColor Green

# Initialize git repository if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
}

# Add PaperMod theme as submodule
if (-not (Test-Path "themes/PaperMod")) {
    Write-Host "Adding PaperMod theme as submodule..." -ForegroundColor Yellow
    git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
    git submodule update --init --recursive
} else {
    Write-Host "PaperMod theme already exists. Updating..." -ForegroundColor Yellow
    git submodule update --init --recursive
}

Write-Host "Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To run the development server, use:" -ForegroundColor Cyan
Write-Host "  hugo server"
Write-Host ""
Write-Host "To build for production, use:" -ForegroundColor Cyan
Write-Host "  hugo"

