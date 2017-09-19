#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

blueprints_react="/usr/local/bin/.shell/blueprints/react"

echoColor 'cyan-l' "adding Redux data" 
echo -ne "name:"
read name
path="./src/app/data/$name"
mkdir $path

cat $blueprints_react/redux-reducer.js >> $path/reducer.js
echoColor 'green' "[+] - reducer.js"

cat $blueprints_react/redux-actions.js >> $path/actions.js
echoColor 'green' "[+] - actions.js"