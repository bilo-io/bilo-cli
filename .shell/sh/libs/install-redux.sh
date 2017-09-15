#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

echoColor 'cyan-l' ' => init-redux ...'

# React
echoColor 'green-l' '[+] redux, react-redux'
npm install \
    redux \
    react-redux \
    redux-thunk \
    redux-logger \
--save-dev

path="./src/app/"
blueprints_react="/usr/local/bin/.shell/blueprints/react"

echoColor 'green-l' "[+] $path"

cat $blueprints_react/redux-root-reducer.js >> $path/root-reducer.js
echoColor 'green' "[+] - root-reducer.js"

cat $blueprints_react/store.js >> $path/store.js
echoColor 'green' "[+] - store.js"