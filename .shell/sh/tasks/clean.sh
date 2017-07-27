#!/bin/bash
. ./.shell/sh/utils/colors.sh

clear
setColor red
echo '
[-] node_modules/
[-] artifact/
[-] dist/'
resetColor

rm -rf \
    node_modules \
    artifact \
    dist \