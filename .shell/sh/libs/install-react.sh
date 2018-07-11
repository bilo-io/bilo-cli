#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

blueprints="/usr/local/bin/.shell/blueprints/"

echoColor 'cyan-l' ' => init-react ...'
# React
echoColor 'green-l' '[+] react, react-dom'
npm install \
    react \
    react-dom \
--save-dev
# React Router
echoColor 'green-l' '[+] react-router, react-router-dom'
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
    babel-preset-stage-2 \
--save-dev
# Add files
# - .BABELRC
echoColor 'green' '[+] .babelrc.js'
cat $blueprints/react/.babelrc > .babelrc
# - INDEX.HTML
echoColor 'green' '[+] src/index.js'
cat $blueprints/react/index.html > src/index.html
# - INDEX.JS
echoColor 'green' '[+] src/index.js'
cat $blueprints/react/index.js > src/index.js
# - APP.JS
echoColor 'green' '[+] src/app.js'
cat $blueprints/react/app.js > src/app.js

mkdir src/components
mkdir src/containers
mkdir src/data
mkdir src/pages
echoColor 'green' "
[+] src/components
[+] src/containers
[+] src/data
[+] src/pages"

echoColor 'cyan-l' '
 => init-react: DONE
 '