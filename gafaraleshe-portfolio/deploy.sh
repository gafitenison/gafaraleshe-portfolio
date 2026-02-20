# 1️⃣ Switch to main branch
git checkout main
git pull origin main

# 2️⃣ Build /out
npm run export

# 3️⃣ Copy /out to a temporary folder
cp -r out /tmp/deploy_out

# 4️⃣ Switch to gh-pages
git checkout gh-pages

# 5️⃣ Remove old files in gh-pages
git rm -r * 2>/dev/null || true

# 6️⃣ Copy the temp deploy files into gh-pages root
cp -r /tmp/deploy_out/* ./

# 7️⃣ Commit & push
git add .
git commit -m "Deploy latest /out build" || echo "No changes to commit"
git push origin gh-pages

# 8️⃣ Cleanup temp folder (optional)
rm -rf /tmp/deploy_out

# 9️⃣ Switch back to main
git checkout main

echo "✅ Deployment complete!"