#!/usr/bin/env sh

set -e

cd web

echo 'zerodao.net' > CNAME

git init

git add -A

git commit -m 'deploy'

git push -f git@github.com:ZeroDAO/www-zerodao-net.git master:gh-pages

cd -
