# Hugo Blog with PaperMod Theme

This is a Hugo static site using the PaperMod theme, similar to s3v3ru5.github.io.

## Setup

1. Install Hugo (extended version recommended):
   - Download from https://gohugo.io/getting-started/installing/

2. Add the PaperMod theme as a submodule:
   ```bash
   git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
   ```

3. Run the development server:
   ```bash
   hugo server
   ```

4. Build for production:
   ```bash
   hugo
   ```

## Deployment to GitHub Pages

1. Create a GitHub repository named `umeshchandra2024.github.io`
2. Push your code to the repository
3. Enable GitHub Pages in repository settings
4. Set the source to the `main` branch (or `master`)

## Content Structure

- Posts go in `content/posts/`
- Menu items are configured in `config.yaml`
- Theme customization can be done in `config.yaml` under `params`

