#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh
echo "adding React page... name?"
read name
path="./src/app/pages/$name"
echo "PATH: $path"
mkdir $path

cat /usr/local/bin/./.shell/blueprints/react/containers.js >> $path/index.js
sed "s/MyComponent/$name/g" $path/index.js
echoColor 'green' "[+] $path/index.js"

cat /usr/local/bin/./.shell/blueprints/react/component.js >> $path/component.js
echoColor 'green' "[+] $path/component.js"

cat /usr/local/bin/./.shell/blueprints/react/reducer.js >> $path/reducer.js
echoColor 'green' "[+] $path/reducer.js"

cat /usr/local/bin/./.shell/blueprints/react/actions.js >> $path/actions.js
echoColor 'green' "[+] $path/actions.js"