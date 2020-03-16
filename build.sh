#!/bin/bash

set -x #echo on

#clean public and source dirs in each lang build
cleanBuild () {
  rm -rf public
  unlink source
}

#generates a language inside a subfolder and cleans before exit
generateLang() {
  echo $1
  ln -s source_en source
  npx hexo generate

  if [ $1 == "en" ]; then
    cp -a public/. "../oxygen-project-public-site"
  else
    cp -a public/. "../oxygen-project-public-site/$1"
  fi
  
  cleanBuild
}

#should be clean, but still needed for idempotency
cleanBuild

#generate langs, maybe this can be changed to a loop
generateLang "en"
generateLang "es"
generateLang "fr" 

