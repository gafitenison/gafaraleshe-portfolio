#!/bin/zsh
# Safe deploy script: main -> gh-pages -> Hostinger

# 1️⃣ Switch to main branch and pull latest
echo "Switching to main branch..."
git checkout main
git pull origin main

# 2️⃣ Install dependencies
echo "Installing dependencies..."
npm install

# 3️⃣ Build static site
echo "Building /out folder..."
npm run export

# 4️⃣ Switch to gh-pages branch
echo "Switching to gh-pages branch..."
git checkout gh-pages

# 5️⃣ Remove old tracked files
echo "Removing old files..."
git rm -r * 2>/dev/null || true  # ignore errors if nothing tracked

# 6️⃣ Copy new /out contents into gh-pages safely
echo "Copying new build..."
rsync -av ../out/ ./

# 7️⃣ Commit and push
echo "Committing and pushing to gh-pages..."
git add .
git commit -m "Deploy latest build"
git push origin gh-pages

# 8️⃣ Switch back to main
git checkout main
echo "Deployment complete!"