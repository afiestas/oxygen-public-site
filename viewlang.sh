#!/bin/bash


rm -rf public 

#idempotency
[ -e source ] && unlink source

ln -s source_$1 source


cp _config.yml.template _config.yml
sed -i '' 's/__LANG__/'$1'/g' _config.yml
sed -i '' 's/__ROOT__//g' _config.yml

npx hexo serve

rm -rf public
unlink source
rm _config.yml