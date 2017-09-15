#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh
echo "adding React container... name?"
read name
path="./src/app/containers/$name"
blueprints_react="/usr/local/bin/./.shell/blueprints/react"
echo "PATH: $path"
mkdir $path

echo $blueprints_react/containers.js >> $path/index.js
sed "s/MyComponent/$name/g" $path/index.js
echoColor 'green' "[+] - index.js"

echo $blueprints_react/component.js >> $path/component.js
echoColor 'green' "[+] - component.js"

echo $blueprints_react/reducer.js >> $path/reducer.js
echoColor 'green' "[+] - reducer.js"

echo /actions.js >> $path/actions.js
echoColor 'green' "[+] - actions.js"