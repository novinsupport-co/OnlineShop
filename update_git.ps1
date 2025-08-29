# update_git.ps1
# این اسکریپت فایل .gitignore را بروزرسانی می‌کند، فایل‌های غیرضروری را حذف و commit و push می‌کند.

# مسیر ریشه پروژه
$projectPath = "C:\wamp64\www\OnlineShop"
cd $projectPath

# فایل .gitignore را ایجاد یا بروزرسانی می‌کنیم
@"
# سیستم و IDE
*.log
.DS_Store
/.idea
/.vscode
/.phpunit.cache
/.fleet
/.zed

# محیط
.env
.env.backup
.env.production
Homestead.json
Homestead.yaml

# Composer & Node
/vendor
/node_modules

# Public & Storage
/public/build
/public/hot
/public/storage
/storage/*.key
/storage/pail

# دیگر
.phpactor.json
.phpunit.result.cache
/auth.json
Thumbs.db
"@ | Out-File -Encoding UTF8 -FilePath ".gitignore" -Force

Write-Host ".gitignore ساخته/بروزرسانی شد." -ForegroundColor Green

# فایل‌های غیرضروری از Git حذف شوند
git rm -r --cached . > $null 2>&1

# همه تغییرات اضافه شود
git add .

# commit جدید زده شود
git commit -m "Update .gitignore and remove unnecessary files"

# push به remote
git push origin main

Write-Host "تمام مراحل کامل شد: commit و push انجام شد." -ForegroundColor Green
