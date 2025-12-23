# How to Run Your Hugo Site on umeshchandra2024.github.io

## Step 1: Install Hugo (Extended Version)

### Option A: Using Chocolatey (Recommended for Windows)
```powershell
choco install hugo-extended
```

### Option B: Manual Installation
1. Download Hugo Extended from: https://github.com/gohugoio/hugo/releases
2. Look for `hugo_extended_X.X.X_windows-amd64.zip` (latest version)
3. Extract the zip file
4. Add Hugo to your PATH:
   - Copy `hugo.exe` to a folder (e.g., `C:\Hugo\bin`)
   - Add that folder to your System PATH environment variable
   - Restart PowerShell/Terminal

### Option C: Using Scoop
```powershell
scoop install hugo-extended
```

## Step 2: Verify Hugo Installation
```powershell
hugo version
```
You should see something like: `hugo v0.121.0+extended windows/amd64`

## Step 3: Run the Setup Script
Navigate to your project directory and run:
```powershell
cd "c:\Users\Dharaneeswar Reddy\Desktop\Umesh1145\Umeshchandra2024.github.io"
.\setup.ps1
```

This will:
- Initialize git repository (if not already done)
- Add the PaperMod theme as a submodule
- Set up the theme dependencies

## Step 4: Configure Your Site (if config.yaml is empty)
If your `config.yaml` is empty, you'll need to create a basic configuration. A minimal config should include:
- baseURL
- theme: PaperMod
- title
- languageCode

## Step 5: Run the Development Server Locally
```powershell
hugo server
```

This will:
- Start a local development server
- Usually available at: http://localhost:1313
- Auto-reload when you make changes

To run with drafts visible:
```powershell
hugo server -D
```

## Step 6: Build for Production
```powershell
hugo
```

This creates a `public` folder with your static site files.

## Step 7: Deploy to GitHub Pages

### Automatic Deployment (Recommended)
Your repository already has a GitHub Actions workflow (`.github/workflows/hugo.yml`) that will automatically deploy when you push to the `main` branch.

1. **Initialize Git Repository** (if not already done):
   ```powershell
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. **Connect to GitHub Repository**:
   ```powershell
   git remote add origin https://github.com/umeshchandra2024/umeshchandra2024.github.io.git
   git branch -M main
   git push -u origin main
   ```

3. **Enable GitHub Pages**:
   - Go to your repository on GitHub
   - Settings → Pages
   - Under "Source", select "GitHub Actions"
   - The workflow will automatically deploy your site

4. **Your site will be available at**:
   - `https://umeshchandra2024.github.io` (after first deployment)

### Manual Deployment (Alternative)
If you prefer to deploy manually:
```powershell
hugo --baseURL "https://umeshchandra2024.github.io/"
```

Then push the `public` folder to the `gh-pages` branch.

## Troubleshooting

### Hugo command not found
- Make sure Hugo is installed and in your PATH
- Restart your terminal after installation
- Verify with `hugo version`

### Theme not found
- Run `.\setup.ps1` to install the theme
- Or manually: `git submodule update --init --recursive`

### Site not building
- Check that `config.yaml` has proper configuration
- Ensure the PaperMod theme is in `themes/PaperMod`
- Check for errors in the terminal output

## Quick Commands Reference

```powershell
# Run development server
hugo server

# Run with drafts
hugo server -D

# Build site
hugo

# Build with specific base URL
hugo --baseURL "https://umeshchandra2024.github.io/"

# Update theme
git submodule update --remote themes/PaperMod
```

