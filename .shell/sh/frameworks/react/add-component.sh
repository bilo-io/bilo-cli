#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

blueprints_react="/usr/local/bin/.shell/blueprints/react"

echoColor 'cyan-l' "adding React component" 
echo -ne "name:"
read name
path="./src/app/components/$name"
mkdir $path
echoColor 'green-l' "[+] $path"

cat $blueprints_react/component.js >> $path/index.js
# sed "s/MyComponent/$name/g" $path/index.js
echoColor 'green' "[+] - component.js"

cat $blueprints_react/style.scss >> $path/style.scss
echoColor 'green' "[+] - style.scss"