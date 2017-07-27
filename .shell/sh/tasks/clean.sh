#!/bin/bash
. ./.shell/sh/utils/colors.sh

setColor red
echo '
[-] node_modules \
[-] artifact \
[-] dist \
'
resetColor

rm -rf \
    node_modules \
    artifact \
    dist \