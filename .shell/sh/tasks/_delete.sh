#!/bin/bash
. ./.shell/sh/utils/colors.sh

DeleteAllFiles() {
    bash ./.shell/sh/tasks/clean.sh
    setColor red
    echo -ne '[-] src/
[-] .babelrc 
[-] server.js 
[-] package.json 
[-] package-lock.json 
[-] webpack.config.js  
[-] README_default.md
'
    resetColor

    rm -rf \
    src \
    .babelrc \
    server.js \
    package.json \
    package-lock.json \
    webpack.config.js  \
    README_default.md 
}

PromptDelete() {
    setColor red
    echo -ne '[-] WARNING: This will delete all files!
Continue? (y/n):'
resetColor
    read response
    case "$response" in
        y|Y|yes|Yes|YES) DeleteAllFiles;;
        *) 
        setColor cyan-l
        echo 'nothing deleted!'
        resetColor;;
    esac
    shift
}

PromptDelete