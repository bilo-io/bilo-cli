#!/bin/bash
. /usr/local/bin/.shell/sh/utils/colors.sh

blueprints="/usr/local/bin/.shell/blueprints"

echo -ne "project name: "
read projectName
mkdir $projectName
cd ./$projectName
pwd

echoColor 'cyan-l' ' => creating webapp ...'

mkdir src
echoColor 'green' '[+] src/'

mkdir src/app
echoColor 'green' '[+] src/app/'

mkdir src/img
echoColor 'green' '[+] src/img/'

mkdir src/sass
echoColor 'green' '[+] src/sass/'

cat $blueprints/index.html > src/index.html
echoColor 'green' '[+] src/index.html'

cat $blueprints/README.md > README_default.md
echoColor 'green' '[+] README_Default.md'

cat $blueprints/.gitignore > .gitignore
echoColor 'green' '[+] .gitignore'

cat $blueprints/preview.html > preview.html
echoColor 'green' '[+] .preview.html'

echoColor 'cyan-l' '[.] creating Node app'
npm init

echoColor 'cyan-l' '
 => init-app: done
 '