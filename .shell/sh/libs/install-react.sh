#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

echoColor 'cyan-l' ' => init-react ...'
# React
echoColor 'green-l' '[+] react, react-dom'
npm install \
    react \
    react-dom \
--save-dev
# React Router
echoColor 'green-l' '[+] react, react-dom'
npm install \
    react-router \
    react-router-dom \
--save
# Babel
echoColor 'green-l' '[+] babel: es2015, react'
npm install \
    babel-core \
    babel-loader \
    babel-preset-es2015 \
    babel-preset-react \
--save-dev
# Add files
# - INDEX.JS
echoColor 'green' '[+] src/index.js'
cat /usr/local/bin/.shell/blueprints/react/index.js > src/index.js

# - APP.JS
echoColor 'green' '[+] src/app/app.js'
cat /usr/local/bin/.shell/blueprints/react/app.js > src/app/app.js

mkdir src/app/components
mkdir src/app/containers
mkdir src/app/page
echoColor 'green' "
[+] src/app/components
[+] src/app/containers
[+] src/app/pages"

echoColor 'cyan-l' '
 => init-react: DONE
 '