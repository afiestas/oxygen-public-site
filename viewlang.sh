#!/bin/bash


rm -rf public 

#idempotency
[ -e source ] && unlink source

ln -s source_$1 source
npx hexo serve

rm -rf public
unlink source