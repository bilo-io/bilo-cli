#!/bin/bash
. ./.shell/sh/utils/colors.sh

echoColor 'cyan-l' ' => init-express ...'
npm install \
    express \
    express-history-api-fallback \
--save

echoColor 'green' ' [+] server.js'

cat ./.shell/blueprints/server.webapp.js > server.js

echoColor 'cyan-l' ' => init-express: done'
