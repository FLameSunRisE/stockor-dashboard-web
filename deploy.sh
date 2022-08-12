# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy : github page deploy'
# 部署到 分支為 gh-pages
git push -f https://github.com/FLameSunRisE/stockor-dashboard-web.git main:gh-pages

cd -