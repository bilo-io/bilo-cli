#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

blueprints="/usr/local/bin/.shell/blueprints"

echoColor 'green' ' => creating webapi ...'

mkdir src
echoColor 'green' '[+] src/'

mkdir src/app
echoColor 'green' '[+] src/app/'

mkdir src/routes
echoColor 'green' '[+] src/routes'

cat $blueprints/server.webapi.js > server.js
echoColor 'green' '[+] server.js'

npm init
echoColor 'green-l' '[+] express'
npm install express --save

echoColor 'green-l' '[+] body-parser'
npm install body-parser --save

echoColor 'green-l' '[+] nodemon'
npm install nodemon --save