#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

DeleteAllFiles() {
    echoColor 'red-l' '
[-] /usr/local/bin/.shell/
[-] /usr/local/bin/.shell/bilo
'
    resetColor
    sudo rm -rf \
        /usr/local/bin/.shell \
        /usr/local/bin/.shell/bilo
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