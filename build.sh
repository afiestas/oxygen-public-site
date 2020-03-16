#!/bin/bash

set -x #echo on
npx hexo clean

#clean public and source dirs in each lang build
cleanBuild () {
  unlink source
  npx hexo clean
}

#generates a language inside a subfolder and cleans before exit
generateLang() {
  ln -s source_$1 source
  
  #change settings for this language
  cp _config.yml.template _config.yml
  sed -i '' 's/__LANG__/'$1'/g' _config.yml


  if [ $1 == "en" ]; then
    sed -i '' 's/__ROOT__//g' _config.yml
    sed -i '' 's/__URL__/http\:\/\/oxygen\.protofy\.xyz/g' _config.yml
  else
    sed -i '' 's/__ROOT__/'$1'\//g' _config.yml
    sed -i '' 's/__URL__/http\:\/\/oxygen\.protofy\.xyz\/'$1'\//g' _config.yml
  fi
  
  npx hexo generate

  if [ $1 == "en" ]; then
    cp -a public/. "../oxygen-project-public-site"
  else
    cp -a public/. "../oxygen-project-public-site/$1"
  fi

  cleanBuild
  rm -rf public
}

#should be clean, but still needed for idempotency
cleanBuild

#generate langs, maybe this can be changed to a loop
generateLang "en"
generateLang "es"
generateLang "fr" 

