#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh
echo "adding React page... name?"
read name
blueprints_react="/usr/local/bin/.shell/blueprints/react"
path="./src/app/pages/$name"
mkdir $path
echoColor 'green-l' "[+] $path"

cat $blueprints_react/component.js >> $path/component.js
echoColor 'green' "[+] - component.js"

cat $blueprints_react/redux-container.js >> $path/index.js
# sed "s/MyComponent/$name/g" $path/index.js
echoColor 'green' "[+] - index.js (container)"

cat $blueprints_react/redux-reducer.js >> $path/reducer.js
echoColor 'green' "[+] - reducer.js"

cat $blueprints_react/redux-actions.js >> $path/actions.js
echoColor 'green' "[+] - actions.js"

cat $blueprints_react/style.scss >> $path/style.scss
echoColor 'green' "[+] - style.scss"