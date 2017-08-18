#!/bin/bash
. ./.shell/sh/utils/colors.sh

echoColor 'cyan-l' ' => creating webapp ...'

mkdir src
echoColor 'green' '[+] src/'

mkdir src/app
echoColor 'green' '[+] src/app/'

mkdir src/img
echoColor 'green' '[+] src/img/'

mkdir src/sass
echoColor 'green' '[+] src/sass/'

cat ./.shell/blueprints/index.html > src/index.html
echoColor 'green' '[+] src/index.html'

cat ./.shell/blueprints/README.md > README_default.md
echoColor 'green' '[+] README_Default.md'

echoColor 'cyan-l' '[.] creating Node app'
npm init

echoColor 'cyan-l' '
 => init-app: done
 '